Profile: MedComHospitalNotificationEncounter
Parent: MedComCoreEncounter
Id: medcom-hospitalNotification-encounter
Description: "Encounter derivation that handles hospital notification when a patient is admitted to a hospital. The hospital notification is always send from a hospital. The receiver of the message is the patients home municipalicy. The hospital notification is send for example when patient is admitted, on leave, returned from leave, finished hospital stay."
* status MS
* status from MedComHospitalNotificationEncounterStatus
* status 1..1
* status ^short = "in-progress | onleave | finished | entered-in-error"
* class from MedComHospitalNotificationEncounterClass
* class ^short = "inpatient | emergency | other"
* type 0..0
* serviceType 0..0
* priority 0..0
* episodeOfCare 1.. MS
* episodeOfCare.identifier 1.. MS
* episodeOfCare ^definition = "Shall contain an episode of care identifier for the entire hospitalization"
* episodeOfCare[lpr3identifier].reference ..0
* episodeOfCare.reference ..0
* basedOn ..0
* participant ..0
* appointment ..0
* period 1.. MS
* period ^definition = "The start and end time of the encounter. For notification of hospitalization an start interval is always known as the notification of adminssion is trigged by the arrival of a patient. There a period will always exist as the notification of admission always starts the communication flow. Please that the encounter.period values always referes to the encounter start and end. The period of the leave of absence is not part of the notification of hospitalization FHIR resource ."
* period.start 1.. MS
* period.start ^definition = "Encounter Starting time.  \r\nFor the notificationOfHospitalization a starting time is the timestamp that is registered by the hospital at patient physical arrival at the ward or emergency department."
* length ..0
* reasonCode ..0
* reasonReference ..0
* diagnosis ..0
* account ^definition = "The set of accounts and issurance information that may be used for billing for this Encounter. The account element shall not be used in NotificationOfHospitalStayEncounter"
* hospitalization ..0
* location ..0
* serviceProvider 1.. MS
* partOf ..0


Instance: 7790f964-88d3-4652-bbc8-81d2f3d035f8
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedCom Hospital Notification Encounter in progress"
Description: "Example of MedCom Hospital Noticication inpatient Encounter in progress with 12ee0dde-a672-462f-820d-5efe832d73c9 as serviceProvider"
* identifier.value = "1234567890"
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "87654321-1234-1234-1234-123456789012" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(bf839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: 556e9c54-23d2-43a4-816e-951d2a6e3281
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedCom Hospital Notification Encounter on leave"
Description: "Example of MedCom Hospital Noticication inpatient Encounter on leave with 12ee0dde-a672-462f-820d-5efe832d73c9 as serviceProvider"
* identifier.value = "1234567890"
* status = #onleave
* class = $ActCodes#IMP 
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "87654321-1234-1234-1234-123456789012" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(12ee0dde-a672-462f-820d-5efe832d73c9)

Instance: 8405ba2d-467a-4e92-9acc-9dc2a629760f
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedCom Hospital Notification Encounter in progress"
Description: "Example of MedCom Hospital Noticication inpatient Encounter in progress with 12ee0dde-a672-462f-820d-5efe832d73c9 as serviceProvider"
* identifier.value = "1234567890"
* status = #finished
* class = $ActCodes#IMP 
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "87654321-1234-1234-1234-123456789012" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(12ee0dde-a672-462f-820d-5efe832d73c9)

//Embedded Encounter with admit before patient is deceased
Instance: d6145390-62ad-4cd0-8fe0-9679a34c44a9
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedCom Hospital Notification Encounter admitted before deceased"
Description: "Example of MedCom Hospital Noticication inpatient Encounter when patient is admitted"
* identifier.value = "7b9f8497-3314-4535-8f86-20df7b5f4d55"
* status = #in-progress
* class = $ActCodes#IMP
* subject = Reference(5b72c625-0570-4111-b272-f0351344f8b6)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "200040a2-e05d-4af3-91e7-5febfa8ad0b3"
* period.start = 2021-01-10T13:44:14Z
* serviceProvider = Reference(bca68510-fe3b-4161-aba0-908a693eb54f)

//Embedded Encouner with admitted patient deceased
Instance: 8405ba2d-467a-4e92-9acc-9dc2a629760fWhenDeceased
InstanceOf: MedComHospitalNotificationEncounter
Title: "MedCom Hospital Notification Encounter finished"
Description: "Example of MedCom Hospital Noticication inpatient Encounter finished, patient deceased"
* identifier.value = "7b9f8497-3314-4535-8f86-20df7b5f4d55"
* status = #finished
* class = $ActCodes#IMP
* subject = Reference(382fb8a3-6725-41e2-a615-2b1cfcfe9931)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientsregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "200040a2-e05d-4af3-91e7-5febfa8ad0b3"
* period.start = 2021-01-13T13:44:14Z
* serviceProvider = Reference(bca68510-fe3b-4161-aba0-908a693eb54f)
