### Scope and usage 
This profile is used as the Encounter resource for the HospitalNotification message. The HospitalNotificationEncounter inherits from the MedComCoreEncounter. 
Besides the references shown on the figure below, the MedComHospitalNotificationEncounter contains an episode of care identifier, a status describing the status of the encounter e.g., if the patient is *onleave* and the class of the admission, which can be either *inpatient* or *emergency*. Both status and class shall be included in all messages and depending on the status of the encounter, the status and class shall be assigned to different codes. [Here you the find the combination of codes](https://medcomdk.github.io/dk-medcom-hospitalnotification/#hospitalnotification-codes-in-fhir).

The HospitalNotification message is sent without patient consent, why only a limited data set is allowed to transmit due to Danish legislation. For this reason, is the HospitalNotificationEncounter profile quite narrow. <a href="https://medcomdk.github.io/dk-medcom-hospitalnotification/#clinical-guidelines" target="_blank">More information about the legal aspects can be found here</a>. 

The figure below shows the references from a MedComHospitalNotificationEncounter.

<img alt="The MedComHospitalNotificationEncounter references a subject which is a MedComCorePatient and a serviceProvider organization which is a MedComCoreOrganization." src="./hospitalnotification/HospitalNotificationEncounter.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationEncounter.

### Service Provider

The element Encounter.serviceProvider describes the organization or hospital department in charge of the patient's admission. 
The element references a MedComMessagingOrganization or MedComCoreOrganization, since MedComMessaigingOrganization inherits properties from MedComCoreOrganization.

The sender of a HospitalNotification (MessageHeader.sender) and the serviceProvider (Encounter.serviceProvider) may be the same hospital department, hence be represented referencing the same instance of a Organization resource, which shall be a MedComMessagingOrganization. However, the sender organisation may be a higher-level deparment (in the SOR register)than the serviceProvider organisation, and in this case they shall be represented referencing two different instances of a Organization resource.

[An example of different serviceProvider and sender organisation can be found here](http://medcomfhir.dk/ig/hospitalnotification/Bundle-m908i967-9ie3-9023-b9ec-98108695f01d.html). Other examples will have the same organisation as serviceProvider and sender.

### Timestamps 

The Encounter profile contains four timestamps each representing a different time during a hospitalisation. Common for the four timestamps is that they represent the time of the event, e.g. the patient's physical attendance at the hospital (Encounter.period.start) or a patient going on leave from the hospital  (Encounter.extension:leavePeriod.start).  

|FHIR-element|Description|Event|See example [MISSING LINKS]|
|-----|------|------| ------| 
|Encounter.period.start|Start hospital stay, i.e. the actual beginning of the meeting between the health care professional and patient|Patient is physical attendant at the hospital|HospitalNotification Encounter - STIN and HospitalNotification Encounter - STAA|
|Encounter.period.end|End hospital stay, i.e. the actual end of the meeting between the health care professional and patient|Patient leaves the hospital after discharge or when a patient dies (on arrival or during hospital stay)| HospitalNotification Encounter - SLHJ and HospitalNotification Encounter - MORS|
|Encounter.extension:leavePeriod.start|Patient starts leave, i.e. the actual beginning of a leave-period, when the patient leaves the hospital|Patient leaves the hospital to go on leave.|HospitalNotification Encounter - STOR|
|Encounter.extension:leavePeriod.end|Patient ends leave, i.e. the actual end of a leave-period, when the patient returns to the hospital|Patient is physical attendant at the hospital after a period of leave|HospitalNotification Encounter - SLOR|

#### Start and end of hospital stay
As described above, the timestamp of start and end of hospital stay are included in the element Encounter.period.start and Encounter.period.end, respectively. 
Encounter.period.start shall always be present, despite it is not a start hospital stay HospitalNotification being sent. 

In cases where a patient is transferred to a hospital in the same region or in another region, or a hospitalisation changes from 'acute ambulant' to 'inpatient', a new start hospital stay HospitalNotification shall be sent. These three cases shall result in a new instance of the Encounter profile and be given a new Encounter.period.start representing the time of the change in the hospitalisation. All cases are described in the [Clinical guidelines for application](https://medcomdk.github.io/dk-medcom-hospitalnotification/#11-clinical-guidelines-for-application).

#### Leave
To express the timestamps for a period of leave, the MedComHospitalNotificationLeavePeriodExtension shall be used. 

When a patient goes on leave the Encounter.extension:leavePeriod.start shall be used, and when the patient returns from leave both Encounter.extension:leavePeriod.start and Encounter.extension:leavePeriod.end shall be present. 

The cardinality of MedComHospitalNotificationLeavePeriodExtension is 0..1 meaning that only one period of leave can be included in a HospitalNotification to avoid confusion about which period of leave is the current. In case a patient goes on leave several times during the same hospitalisation, the period shall be described in separate HospitalNotifications, that are being sent when each period of leave occurs. 

#### Death
When a patient dies either on arrival or during hospital stay, the timestamp Encounter.period.end represents the time the encounter ended i.e the time of death. The Encounter.period.start shall also be populated. If a patient dies either on arrival Encounter.period.start shall be equal to Encounter.period.end and if the patient dies during hospital stay Encounter.period.start shall represent the actual beginning of the hospital stay. A HospitalNotification can only be interpreted as describing a deceased patient when the element Patient.deaceased = 'true'.  
