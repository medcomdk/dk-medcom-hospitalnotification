### Scope and usage 
This profile is used as the MessageHeader resource for the MedCom HospitalNotification message. Constraints and rules from MedComMessagingMessageHeader are inherited to this profile, but MedComHospitalNotificationMessageHeader is further restricted as carbon-copy is not allowed.
The MedComHospitalNotificationMessageHeader contains an id which shall be globally unique for each message and an event code which shall be *hospital-notification-message* for a HospitalNotification message. Additionally, is it required to include a serviceprovider organization in the message.

<img alt="MedComHospitalNotificationMessageHeader references a sender and receiver organization in terms of the MedComMessagingOrganization, and a focus which is a reference to a MedComHospitalNotificationEncounter. From the MedComHospitalNotificationEncounter is a MedComCorePatient and a MedComCoreOrganization referenced." src="./hospitalnotification/HospitalNotificationMessageHeader.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationMessageHeader.

### Report of admission 

The request for a report of admission from a municipality shall  be sent when a patient is initially admitted either as an inpatient or emergency admission or when an patient admitted as an inpatient is moved to a hospital in another region. Technically this includes setting the MessageHeader.extension.reportOfAdmissionFlag to 'true' and include a reference to the receiver of the report of admission in the element MessageHeader.extension.reportOfAdmissionRecipient. Section 2.1, in the [use case document](https://medcomdk.github.io/dk-medcom-hospitalnotification/#12-use-cases) describes more thoroughly in which cases the report of admission flag shall be sat to 'true'. The request for a report of admission should be made automatically. 