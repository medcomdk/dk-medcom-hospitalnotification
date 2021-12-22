### Scope and usage 
This profile is the root profile of MedCom HospitalNotification message. This profile is inherited from the MedComMessagingMessage.
The following figure represent the profiles that should be included in a MedComHospitalNotificationMessage.

<img alt="Shows the structure of a HospitalNotification message. The MedComHospitalNotificationMessage includes a MedComHospitalNotificationMessageHeader and a MedComMessagingProvenance. MedComHospitalNotificationMessageHeader references a sender and receiver organization in terms of the MedComMessagingOrganization, and a focus which is a reference to a MedComHospitalNotificationEncounter. From the MedComHospitalNotificationEncounter is a MedComCorePatient and a MedComCoreOrganization referenced." src="./hospitalnotification/HospitalNotification.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The Bundle containing the HospitalNotification message is selfcontained, why it shall contain one instance of the MedComHospitalNotificationMessageHeader. By convention the cardinality is shown as 0..*.

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationMessage.  


### Simplified examples of the HospitalNotification message flow
Please notice, that in the following examples is the Provenance resources listed as an array. This is just an example of an order, the Provenance resources may be listed in any order. 
Not all information that is required in a HospitalNotification message are displayed in the examples. 

#### How to send HospitalNotification messages for the same encounter
This section describes how a HospitalNotificationMessage flows, when handling an admission, leave and discharge of a patient.

Please refer to the following examples:  
* [Simplified example of a MedComHospitalNotificationMessage for admit and finished stay ](./hospitalnotification/HNAdmitFinish.png)
* [Simplified example of a MedComHospitalNotificationMessage for admit, onleave, end onleave and finished stay ](./hospitalnotification/HNAdmitOnleaveEndFinish.png)

#### HospitalNotification Message entered in error    
This section describes how message entered in error should be handled.

Please refer to the following example:  
* [Simplified example of a MedComHospitalNotificationMessage entered in error ](./hospitalnotification/HNAdmitEnteredInError.png)




