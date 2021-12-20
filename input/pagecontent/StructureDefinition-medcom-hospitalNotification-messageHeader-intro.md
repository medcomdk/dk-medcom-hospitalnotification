### Scope and usage 
This profile is used as the MessageHeader resource for the MedCom HospitalNotification message. Constraint and rules from MedComMessagingMessageHeader is inherited to this profile, but MedComHospitalNotificationMessageHeader is further restricted as carbon-copy is not allowed.
The MedComHospitalNotificationMessageHeader contains an id which shall be globally unique for each message and an event code which shall be *hospital-notification-message* for a HospitalNotification message.

<img alt="HospitalNotification" src="./hospitalnotification/HospitalNotificationMessageHeader.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationMessageHeader.

