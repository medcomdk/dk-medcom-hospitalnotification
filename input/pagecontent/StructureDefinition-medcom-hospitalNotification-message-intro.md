### Scope and usage 
This profile is the root profile of MedCom HospitalNotification message. This profile is inherited from the MedComMessagingMessage.
The following figure represent the profiles that should be included in a MedCom FHIR HospitalNotification message.

<img alt="Shows the structure of a HospitalNotification message. The MedComHospitalNotificationMessage includes a MedComHospitalNotificationMessageHeader and a MedComMessagingProvenance. MedComHospitalNotificationMessageHeader references a sender and receiver organization in terms of the MedComMessagingOrganization, and a focus which is a reference to a MedComHospitalNotificationEncounter. From the MedComHospitalNotificationEncounter is a MedComCorePatient and a MedComCoreOrganization referenced." src="./hospitalnotification/HospitalNotification.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The Bundle containing the HospitalNotification message is selfcontained, why it shall contain one instance of the MedComHospitalNotificationMessageHeader. By convention the cardinality is shown as 0..*.

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationMessage.  


### Simplified examples of the HospitalNotification message flow

The simplified examples contains the required content of a HospitalNotification message


The messages illustrates an admission, discharge, and leave of a hospitalized patient. Also a cancelled messages is illustrated below. The patient, service provider organization, sender and receiver information is identical, since all messages are send from a hospital to a municipality.

> Note: Some of the information does not fulfill the requirements in the IG. This accounts for the id’s and organization identifiers. These are made up to simplify the example.

> Note: Please notice, that in the following examples is the Provenance resources listed as an array. This is just an example of an order, the Provenance resources may be listed in any order. 

* [Simplified example of a MedComHospitalNotificationMessage for admit and finished stay.](./hospitalnotification/HNAdmitFinish.png)
* [Simplified example of a MedComHospitalNotificationMessage for admit, onleave, end onleave and finished stay.](./hospitalnotification/HNAdmitOnleaveEndFinish.png) 
* [Simplified example of a cancelled MedComHospitalNotificationMessage message.](./hospitalnotification/HNAdmitEnteredInError.png)




