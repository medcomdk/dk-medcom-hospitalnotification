CodeSystem: MedComMessagingActivityCodes
Id: medcom-messaging-activityCodes
Title: "MedComMessagingActivityCodes"
Description: "Activity codes for MedCom messages"
* #new-message "A new message has been sent"
* #forward-message "A message has been forwarded and potentially changed"
* #reply-message "A message has been replied to"
* #retract-message "A message has been retracted/cancelled"
* #modified-message "A message has been modified"
* #admit-emergency "Start hospital stay-acute ambulant"
* #revise-admit-emergency "Update of Start hospital stay-acute ambulant"
* #cancel-admit-emergency "Cancellation of start hospital stay-acute ambulant"
* #admit-inpatient "Start hospital stay-admission"
* #revise-admit-inpatient "Update of start hospital stay-admission"
* #cancel-admit-inpatient "Cancellation of start hospital stay-admission"
* #start-leave-inpatient "Start leave"
* #revise-start-leave-inpatient "Update of Start leave"
* #cancel-start-leave-inpatient "Cancellation of Start leave"
* #end-leave-inpatient "End leave"
* #revise-end-leave-inpatient "Update of End leave"
* #cancel-end-leave-inpatient "Cancellation of End leave"
* #discharge-emergency-home "End hospital Stay - patient discharged to home/primary sector"
* #discharge-inpatient-home "End hospital Stay - patient discharged to home/primary sector"
* #revise-discharge-emergency-home "Update of End hospital Stay"
* #revise-discharge-inpatient-home "Update of End hospital Stay"
* #cancel-discharge-emergency-home "Cancellation of End hospital Stay"
* #cancel-discharge-inpatient-home "Cancellation of End hospital Stay"


ValueSet: MedComMessagingActivityCodesValueset
Id: medcom-messaging-activityCodes-ValueSet
Title: "MedComMessagingActivityCodes"
Description: "ValueSet containing activity codes for MedCom messages"
* include codes from system MedComMessagingActivityCodes