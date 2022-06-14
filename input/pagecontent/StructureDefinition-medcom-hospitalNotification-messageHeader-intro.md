### Scope and usage 
This profile is used as the MessageHeader resource for the MedCom HospitalNotification message. Constraints and rules from MedComMessagingMessageHeader are inherited to this profile, but MedComHospitalNotificationMessageHeader is further restricted as carbon-copy is not allowed.
The MedComHospitalNotificationMessageHeader contains an id which shall be globally unique for each message and an event code which shall be *hospital-notification-message* for a HospitalNotification message. Additionally, is it required to include a serviceprovider in the message.

<img alt="MedComHospitalNotificationMessageHeader references a sender and receiver organization in terms of the MedComMessagingOrganization, and a focus which is a reference to a MedComHospitalNotificationEncounter. From the MedComHospitalNotificationEncounter is a MedComCorePatient and a MedComCoreOrganization referenced." src="./hospitalnotification/HospitalNotificationMessageHeader.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationMessageHeader.

