Alias: $ActivityCode = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-activityCodes


ValueSet: MedComHospitalNotificationMessageActivities
Id: medcom-hospitalNotification-messageActivities
Title: "MedComHospitalNotificationMessageActivityCodes"
Description: "ValueSet containg activity codes for hospital notification messages"
* $ActivityCode#admit-emergency "Start hospital stay-acute ambulant"
* $ActivityCode#revise-admit-emergency "Update of Start hospital stay-acute ambulant"
* $ActivityCode#cancel-admit-emergency "Cancellation of start hospital stay-acute ambulant"
* $ActivityCode#admit-inpatient "Start hospital stay-admission"
* $ActivityCode#revise-admit-inpatient "Update of start hospital stay-admission"
* $ActivityCode#cancel-admit-inpatient "Cancellation of start hospital stay-admission"
* $ActivityCode#start-leave-inpatient "Start leave"
* $ActivityCode#revise-start-leave-inpatient "Update of Start leave"
* $ActivityCode#cancel-start-leave-inpatient "Cancellation of Start leave"
* $ActivityCode#end-leave-inpatient "End leave"
* $ActivityCode#revise-end-leave-inpatient "Update of End leave"
* $ActivityCode#cancel-end-leave-inpatient "Cancellation of End leave"
* $ActivityCode#discharge-emergency-home "End hospital Stay - patient discharged to home/primary sector"
* $ActivityCode#discharge-inpatient-home "End hospital Stay - patient discharged to home/primary sector"
* $ActivityCode#revise-discharge-emergency-home "Update of End hospital Stay"
* $ActivityCode#revise-discharge-inpatient-home "Update of End hospital Stay"
* $ActivityCode#cancel-discharge-emergency-home "Cancellation of End hospital Stay"
* $ActivityCode#cancel-discharge-inpatient-home "Cancellation of End hospital Stay"


