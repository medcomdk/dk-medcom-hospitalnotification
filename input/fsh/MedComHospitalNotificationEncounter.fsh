Profile: MedComHospitalNotificationEncounter
Parent: MedComCoreEncounter
Id: medcom-hospitalNotification-encounter
Description: "Encounter derivation that handles hospital notification when a patient is admitted to a hospital. The hospital notification is always send from a hospital. The receiver of the message is the patients home municipalicy. The hospital notification is send for example when patient is admitted, on leave, returned from leave, finished hospital stay."
* status MS
* status from $HNEncounterStatus
* status 1..1
* status ^short = "in-progress | onleave | finished | entered-in-error"
* class from $HNEncounterClass
* class ^short = "inpatient | emergency | other"
* type 0..0
* serviceType 0..0
* priority 0..0
* episodeOfCare 1.. MS
* episodeOfCare.identifier 1.. MS
* episodeOfCare ^definition = "Shall contain an episode of care identifier for the entire hospitalization"
* episodeOfCare[lpr3identifier] MS
* episodeOfCare[lpr3identifier].identifier SU
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

// All use cases associated with inpatient hospitalization
Instance: a790f964-88d3-4652-bbc8-81d2f3d035f8
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - STIN"
Description: "Example of HospitalNoticication inpatient Encounter in progress with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: b9846c24-0335-11ed-b939-0242ac120002
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - RE_STIN"
Description: "Example of HospitalNoticication updating an inpatient Encounter in progress with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2020-12-15T13:44:14Z //updated here
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: c9782061-ce63-41b5-8be6-655812d23332
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - AN_STIN"
Description: "Example of HospitalNoticication canceling an inpatient Encounter with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #entered-in-error
* class = $ActCodes#IMP 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: d56e9c54-23d2-43a4-816e-951d2a6e3281
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - STOR"
Description: "Example of HospitalNoticication inpatient Encounter on leave with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #onleave
* class = $ActCodes#IMP 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:a8e9917e-4081-5f99-905c-54246ae72867" 
* period.start = 2020-10-20T10:21:56Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: e07c4bd4-cfad-4c4d-9c4b-e4ba3424a65b
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - SLOR"
Description: "Example of HospitalNoticication inpatient Encounter End leave with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:a8e9917e-4081-5f99-905c-54246ae72867" 
* period.start = 2020-10-20T10:21:56Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: f405ba2d-467a-4e92-9acc-9dc2a629760f
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - SLHJ (inpatient)"
Description: "Example of HospitalNoticication inpatient Encounter finished with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #finished
* class = $ActCodes#IMP 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:b0172334-fa5e-5dfe-acb8-2a5b7aee3143" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

//Embedded Encounter with admitted patient deceased
Instance: gcab7218-9584-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - MORS (inpatient)"
Description: "Example of HospitalNoticication inpatient Encounter finished, patient deceased"
* identifier.value = "7b9f8497-3314-4535-8f86-20df7b5f4d55"
* status = #finished
* class = $ActCodes#IMP
* subject = Reference(t82fb8a3-6725-41e2-a615-2b1cfcfe9931)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:150d589a-d7e0-50cd-9651-fd9cad93be68"
* period.start = 2021-01-13T13:44:14Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)


// All use cases associated with acute ambulant hospitalization
Instance: h2cb16ce-af8c-46f3-be9e-89406ef3e7b5
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - STAA"
Description: "Example of HospitalNoticication acute ambulant Encounter in progress with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #in-progress
* class = $ActCodes#EMER 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: i458ddc8-fea4-41c3-992b-ff73cb6f657b
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - RE_STAA"
Description: "Example of HospitalNoticication updating an acute ambulant Encounter in progress with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #in-progress
* class = $ActCodes#EMER 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2020-12-15T13:44:14Z //updated here
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: j245dcc2-8668-4fcf-ae5f-d49a50bfc2d4
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - AN_STAA"
Description: "Example of HospitalNoticication canceling an acute ambulant Encounter with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #entered-in-error
* class = $ActCodes#EMER 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: kbbad98c-3310-404a-af0c-7e3739d7b49f
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - SLHJ (acute ambulant)"
Description: "Example of HospitalNoticication acute ambulant Encounter finished with of839e87-4e44-4977-b38e-92b5a6f187b5 as serviceProvider"
* identifier.value = "1234567890"
* status = #finished
* class = $ActCodes#EMER 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:b0172334-fa5e-5dfe-acb8-2a5b7aee3143" 
* period.start = 2020-10-15T13:44:14Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)

//Embedded Encounter with admitted patient deceased
Instance: l001c640-6b5d-414c-b6bd-e00ec6d4ceee
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - MORS (acute ambulant)"
Description: "Example of HospitalNoticication acute ambulant Encounter finished, patient deceased"
* identifier.value = "7b9f8497-3314-4535-8f86-20df7b5f4d55"
* status = #finished
* class = $ActCodes#EMER
* subject = Reference(t82fb8a3-6725-41e2-a615-2b1cfcfe9931)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:150d589a-d7e0-50cd-9651-fd9cad93be68"
* period.start = 2021-01-13T13:44:14Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)
