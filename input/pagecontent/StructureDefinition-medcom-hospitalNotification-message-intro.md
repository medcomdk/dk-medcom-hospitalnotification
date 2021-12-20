### Scope and usage 
This profile is the root profile of MedCom HospitalNotification message. This profile is inherited from the MedComMessagingMessage.
The following figure represent the profiles that should be included in a MedComHospitalNotificationMessage.

<img alt="HospitalNotification" src="./hospitalnotification/HospitalNotification.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The Bundle containing the HospitalNotification message is selfcontained, why it shall contain one instance of the MedComMessagingMessageHeader. By convention the cardinality is shown as 0..*.

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComHospitalNotificationMessage.  


### Description using examples for the HospitalNotification message flow.
Please notice, that in the following examples is the Provenance resources listed as an array. This is just an example of an order, the Provenance resources may be listed in any order. 

#### How to send HospitalNotificationMessages for the same encounter
This section describes how a HospitalNotificationMessage flows.

Please refer to the following examples:  

* [Simplified example of a MedComHospitalNotificationMessage for admit and finished stay ](./hospitalnotification/HNAdmitFinish.png)
* [Simplified example of a MedComHospitalNotificationMessage for admit, onleave, end onleave and finished stay ](./hospitalnotification/HNAdmitOnleaveEndFinish.png)

#### Message entered in error    
This section describes how message entered in error shall be handled.

Please refer to the following example:  
* [Simplified example of a MedComHospitalNotificationMessage entered in error ](./hospitalnotification/HNAdmitEnteredInError.png)




