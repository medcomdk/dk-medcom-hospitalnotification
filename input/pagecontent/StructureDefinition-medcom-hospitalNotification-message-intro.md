### Scope and usage 
This profile is the root profile of MedCom HospitalNotification message. This profile is inherited from the MedComMessagingMessage.
The following figure represent the profiles that shall be included in a MedCom FHIR HospitalNotification message.

<img alt="Shows the structure of a HospitalNotification message. The MedComHospitalNotificationMessage includes a MedComHospitalNotificationMessageHeader and a MedComMessagingProvenance. MedComHospitalNotificationMessageHeader references a sender and receiver organization in terms of the MedComMessagingOrganization, and a focus which is a reference to a MedComHospitalNotificationEncounter. From the MedComHospitalNotificationEncounter is a MedComCorePatient and a MedComCoreOrganization referenced." src="./hospitalnotification/HospitalNotification.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The Bundle containing the HospitalNotification message is selfcontained, why it shall contain one instance of the MedComHospitalNotificationMessageHeader. By convention the cardinality is shown as 0..*.

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationMessage.  







