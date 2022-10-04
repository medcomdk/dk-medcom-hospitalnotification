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

