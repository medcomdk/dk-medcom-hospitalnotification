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
* period.end MS
* period.start ^definition = "Encounter Starting time. \r\nFor the notificationOfHospitalization a starting time is the timestamp that is registered by the hospital at patient physical arrival at the ward or emergency department."
* length ..0
* reasonCode ..0
* reasonReference ..0
* diagnosis ..0
* account ^definition = "The set of accounts and issurance information that may be used for billing for this Encounter. The account element shall not be used in NotificationOfHospitalStayEncounter"
* hospitalization ..0
* location ..0
* serviceProvider 1.. MS
* partOf ..0
* extension contains medcom-hospitalnotifiation-leave-period-extension named leavePeriod 0..1 MS SU
* obeys medcom-hospitalNotification-6

Invariant: medcom-hospitalNotification-6
Description: "When the status = 'onleave', the timestamp for beginning of a leave (extension.valuePeriod.start) shall be present."
Severity: #error
Expression: "where(status = 'onleave').extension.value.start.exists() or status != 'onleave'"


// All use cases associated with inpatient hospitalization
Instance: a790f964-88d3-4652-bbc8-81d2f3d035f8
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - STIN"
Description: "Example of MedComHospitalNotificationEncounter 'Start hospital stay - admitted'. Only Valid if used in a Bundle."
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(t33cef33-3626-422b-955d-d506aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2022-12-07T12:00:00Z
* serviceProvider = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)


Instance: b9846c24-0335-11ed-b939-0242ac120002
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - RE_STIN"
Description: "Example of MedComHospitalNotificationEncounter 'Revise Start hospital stay - admitted'. Only Valid if used in a Bundle."
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(48393486-81c6-11ed-a1eb-0242ac120002)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2022-12-07T13:00:00Z //updated here
* serviceProvider = Reference(abb09e14-81c6-11ed-a1eb-0242ac120002)

Instance: c9782061-ce63-41b5-8be6-655812d23332
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - AN_STIN"
Description: "Example of MedComHospitalNotificationEncounter 'Cancellation Start hospital stay - admitted'. Only Valid if used in a Bundle."
* status = #entered-in-error
* class = $ActCodes#IMP 
* subject = Reference(d6eeaca6-81c6-11ed-a1eb-0242ac120002)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2022-12-07T12:00:00Z
* serviceProvider = Reference(05266a00-81c7-11ed-a1eb-0242ac120002)

Instance: d56e9c54-23d2-43a4-816e-951d2a6e3281
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - STOR"
Description: "Example of MedComHospitalNotificationEncounter 'Start leave'. Only Valid if used in a Bundle."
* status = #onleave
* class = $ActCodes#IMP 
* subject = Reference(97404d10-81c8-11ed-a1eb-0242ac120002)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:a8e9917e-4081-5f99-905c-54246ae72867" 
* period.start = 2022-12-07T12:00:00Z
* extension[leavePeriod].valuePeriod.start = 2022-12-13T14:00:10Z
* serviceProvider = Reference(b79a7914-81c8-11ed-a1eb-0242ac120002)

Instance: e07c4bd4-cfad-4c4d-9c4b-e4ba3424a65b
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - SLOR"
Description: "Example of MedComHospitalNotificationEncounter 'End leave'. Only Valid if used in a Bundle."
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(519d5170-81ca-11ed-a1eb-0242ac120002)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:a8e9917e-4081-5f99-905c-54246ae72867" 
* period.start = 2022-12-07T12:00:00Z
* extension[leavePeriod].valuePeriod.start = 2022-12-13T14:00:10Z
* extension[leavePeriod].valuePeriod.end = 2022-12-14T15:30:00Z
* serviceProvider = Reference(5961ade8-81ca-11ed-a1eb-0242ac120002)

Instance: f405ba2d-467a-4e92-9acc-9dc2a629760f
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - SLHJ (inpatient)"
Description: "Example of MedComHospitalNotificationEncounter 'End hospital stay - patient completed to home/primary sector' (inpatient). Only Valid if used in a Bundle."
* status = #finished
* class = $ActCodes#IMP 
* subject = Reference(6841b54e-81cd-11ed-a1eb-0242ac120002)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:b0172334-fa5e-5dfe-acb8-2a5b7aee3143" 
* period.start = 2022-12-07T12:00:00Z
* period.end = 2022-12-18T09:45:30Z
* serviceProvider = Reference(8d813af0-81cd-11ed-a1eb-0242ac120002)

//Embedded Encounter with admitted patient deceased
Instance: gcab7218-9584-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - MORS (inpatient)"
Description: "Example of MedComHospitalNotificationEncounter 'Deceased' (inpatient). Only Valid if used in a Bundle."
* status = #finished
* class = $ActCodes#IMP
* subject = Reference(t82fb8a3-6725-41e2-a615-2b1cfcfe9931)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:150d589a-d7e0-50cd-9651-fd9cad93be68"
* period.start = 2022-12-07T12:00:00Z
* period.end = 2022-12-09T09:45:30Z
* serviceProvider = Reference(840b4046-81ce-11ed-a1eb-0242ac120002)


// All use cases associated with acute ambulant hospitalization
Instance: h2cb16ce-af8c-46f3-be9e-89406ef3e7b5
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - STAA"
Description: "Example of MedComHospitalNotificationEncounter 'Start hospital stay - acute ambulant'. Only Valid if used in a Bundle."
* status = #in-progress
* class = $ActCodes#EMER 
* subject = Reference(fdc1fc66-81d0-11ed-a1eb-0242ac120002)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2022-12-01T10:00:04Z
* serviceProvider = Reference(1f5882b4-81d1-11ed-a1eb-0242ac120002)

Instance: kbbad98c-3310-404a-af0c-7e3739d7b49f
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - SLHJ (acute ambulant)"
Description: "Example of MedComHospitalNotificationEncounter 'End hospital stay - patient completed to home/primary sector' (acute ambulant). Only Valid if used in a Bundle."
* status = #finished
* class = $ActCodes#EMER 
* subject = Reference(6c16f41e-81d1-11ed-a1eb-0242ac120002)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:b0172334-fa5e-5dfe-acb8-2a5b7aee3143" 
* period.start = 2022-12-01T10:00:04Z
* period.end = 2022-12-02T22:00:09Z
* serviceProvider = Reference(0465ec66-81d2-11ed-a1eb-0242ac120002)

//Embedded Encounter with admitted patient deceased
Instance: l001c640-6b5d-414c-b6bd-e00ec6d4ceee
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - MORS (acute ambulant)"
Description: "Example of MedComHospitalNotificationEncounter 'Deceased' (acute ambulant). Only Valid if used in a Bundle."
* status = #finished
* class = $ActCodes#EMER
* subject = Reference(384b4a58-81d2-11ed-a1eb-0242ac120002)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:150d589a-d7e0-50cd-9651-fd9cad93be68"
* period.start = 2022-12-01T10:00:04Z
* period.end = 2022-12-02T07:00:00Z
* serviceProvider = Reference(66c12a92-81d2-11ed-a1eb-0242ac120002)

Instance: m790f964-98d3-4852-bac8-83d2f3d035f8
InstanceOf: MedComHospitalNotificationEncounter
Title: "HospitalNotification Encounter - STIN"
Description: "Example of MedComHospitalNotificationEncounter 'Start hospital stay - admitted'. With different serviceProvider and sender organisation in the Bundle. Only Valid if used in a Bundle."
* status = #in-progress
* class = $ActCodes#IMP 
* subject = Reference(b00ea1c0-81d2-11ed-a1eb-0242ac120002)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* period.start = 2022-12-07T12:00:00Z
* serviceProvider = Reference(of839e87-4e44-4977-b38e-92b5a6f187b5)