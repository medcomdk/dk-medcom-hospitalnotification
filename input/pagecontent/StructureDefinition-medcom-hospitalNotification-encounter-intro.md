### Scope and usage 
This profile is used as the Encounter resource for the HospitalNotification message. The HospitalNotificationEncounter inherits from the MedComCoreEncounter. 
Besides the references shown on the figure below, the MedComHospitalNotificationEncounter contains an episode of care identifier, a status describing the status of the encounter e.g., if the patient is *onleave* and the class of the admission, which can be either *inpatient* or *emergency*. Both status and class shall be included in all messages and depending on the status of the encounter, the status and class shall be assigned to different codes. [Here you the find the combination of codes](https://medcomdk.github.io/dk-medcom-hospitalnotification/#hospitalnotification-codes-in-fhir).

The HospitalNotification message is sent without patient consent, why only a limited data set is allowed to transmit due to Danish legislation. For this reason, is the HospitalNotificationEncounter profile quite narrow. <a href="https://medcomdk.github.io/dk-medcom-hospitalnotification/#clinical-guidelines" target="_blank">More information about the legal aspects can be found here</a>. 

The figure below shows the references from a MedComHospitalNotificationEncounter.

<img alt="The MedComHospitalNotificationEncounter references a subject which is a MedComCorePatient and a serviceProvider organization which is a MedComCoreOrganization." src="./hospitalnotification/HospitalNotificationEncounter.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationEncounter.

### Service Provider
The service provider is the organization or department in charge of the patients admission. 
The service provider can be described using MedComMessaging Organization or MedComCoreOrganization, since MedComMessaiging Organization inherits properties from MedComCore Organization. 