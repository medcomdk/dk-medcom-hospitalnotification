CodeSystem: MedComMessagingStatisticalCodes
Id: medcom-messaging-statisticalCodes
Title: "MedComMessagingStatisticalCodes"
Description: "Statistical Codes for MedCom VANS messages"
* #MCM:FDIS20#AcuteAmbulant "Start hospital stay-acute ambulant"
* #MCM:FDIS20#AdmissionInpatient "Start hospital stay-admission"
* #MCM:FDIS20#OnLeave "Start leave"
* #MCM:FDIS20#EndOfLeave "end leave"
* #MCM:FDIS20#EndHospitalStay "End hospital Stay - patient discharged to home/primary sector"
* #MCM:FDIS91#outpatient "Outpatient"
* #MCM:FDIS91#decease "Decease"
* #MCM:FDIS91#carecoordination "Care Coordination"
* #MCM:FDIS91#assistive-devices "Assistive Devices"
* #MCM:FDIS91#medicine "Medicine"
* #MCM:FDIS91#psychiatry-social-disability "Psychiatry, Social, Disability"
* #MCM:FDIS91#healthcare "Healthcare"
* #MCM:FDIS91#nursing "Nursing"
* #MCM:FDIS91#telemedicine "Telemedicine"
* #MCM:FDIS91#training "Training"
* #MCM:FDIS91#discharge "Discharge"
* #MCM:FDIS91#regarding-referral "Regarding Referral"
* #MCM:FDIS91#assessment "Assessment"
* #MCM:FDIS91#examination-results "Examination Results"
* #MCM:FDIS91#other "Other"
* #MCM:FCTL#ok "The message was accepted and processed without error"
* #MCM:FCTL#transient-error	"Some internal unexpected error occurred - wait and try again"
* #MCM:FCTL#fatal-error "The message was rejected because of a problem with the content"

ValueSet: MedComMessagingVansStatisticalCodeCombinations
Id: medcom-messaging-vansStatisticalCodeCombinations
Title: "MedComMessagingVansStatisticalCodeCombinations"
Description: "MedCom Messaging Vans StatisticalCode Combinations"
* include codes from system MedComMessagingStatisticalCodes


