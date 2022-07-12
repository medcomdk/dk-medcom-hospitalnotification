Profile: MedComHospitalNotificationMessage
Parent: MedComMessagingMessage
Id: medcom-hospitalNotification-message
Description: "A message for a HospitalNotification. The message is triggered as patients are admitted, onleave or has finished a hospital stay in order to notify the relevant Municipalicy home care"
* entry ^short = "Message content (MedComHospitalNotificationMessageHeader, MedComMessagingOrganization, MedComMessagingProvenance, MedComHospitalNotificationEncounter, MedComCorePatient) - Open"
* obeys medcom-hospitalNotification-1
* obeys medcom-hospitalNotification-2
* obeys medcom-hospitalNotification-3
* id ^short = "A unique identifier for a bundle. The element must be updated with a new value each time a new message is sent."
* timestamp ^short = "Holds information about when a bundle is created."

Invariant: medcom-hospitalNotification-1
Description: "The message header shall conform to medcom-hospitalNotification-messageHeader profile"
Severity: #error
Expression: "entry.ofType(MessageHeader).all(resource.conformsTo('http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-hospitalNotification-messageHeader'))"

Invariant: medcom-hospitalNotification-2
Description: "Entry shall contain exactly one patient resource"
Severity: #error
Expression: "entry.where(resource.is(Patient)).count() = 1"

Invariant: medcom-hospitalNotification-3
Description: "All provenance resources shall contain activities from medcom-hospitalNotification-messageActivities valueset"
Severity: #error
Expression: "entry.ofType(Provenance).all(resource.activity.memberOf('http://medcomfhir.dk/fhir/dk-medcom-terminology/ValueSet/medcom-hospitalNotification-messageActivities'))"


Instance: 15e5b880-c087-4055-b9ec-99108695f81d
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom HospitalNotification Message Admit Example"
Description: "Example of MedCom HospitalNotification Admit"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/29b4818e-02de-4cc4-b418-d20cbc7b5404"
* entry[=].resource = 29b4818e-02de-4cc4-b418-d20cbc7b5404
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Encounter/7790f964-88d3-4652-bbc8-81d2f3d035f8"
* entry[=].resource = 7790f964-88d3-4652-bbc8-81d2f3d035f8
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/bf839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = bf839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Provenance/d7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = d7cf3888-6f42-4e4d-929c-d2475d24fba0

Instance: 53128d9b-cede-4c7f-8904-809eab322d7d
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom HospitalNotification Message Start Leave Example"
Description: "Example of MedCom HospitalNotification Start Leave"
* type = $BundleType#message
* timestamp = 2020-10-20T10:21:56Z
* entry[+].fullUrl = "MessageHeader/b563a2b2-bf92-4b13-bbd2-0a021a95bded"
* entry[=].resource = b563a2b2-bf92-4b13-bbd2-0a021a95bded
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Encounter/556e9c54-23d2-43a4-816e-951d2a6e3281"
* entry[=].resource = 556e9c54-23d2-43a4-816e-951d2a6e3281
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/d7cf3888-6f42-4e4d-929c-d2475d24fba0" //admit prov
* entry[=].resource = d7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/dc421d0a-cded-470f-9a53-2ddba7583baa" //start leave prov
* entry[=].resource = dc421d0a-cded-470f-9a53-2ddba7583baa

Instance: 094de8ee-bd94-475e-b454-b8fbbef8a685
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom HospitalNotification Message End Leave Example"
Description: "Example of MedCom HospitalNotification End Leave"
* type = $BundleType#message
* timestamp = 2020-10-20T10:21:56Z
* entry[+].fullUrl = "MessageHeader/e47254da-f170-46f0-b624-4778a9c92b1f"
* entry[=].resource = e47254da-f170-46f0-b624-4778a9c92b1f
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Encounter/7790f964-88d3-4652-bbc8-81d2f3d035f8"
* entry[=].resource = 7790f964-88d3-4652-bbc8-81d2f3d035f8
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/bf839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = bf839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Provenance/d7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = d7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/dc421d0a-cded-470f-9a53-2ddba7583baa"
* entry[=].resource = dc421d0a-cded-470f-9a53-2ddba7583baa
* entry[+].fullUrl = "Provenance/04db4939-7c60-4ac6-aefc-523f809ccba6"
* entry[=].resource = 04db4939-7c60-4ac6-aefc-523f809ccba6

Instance: 04aa42a4-86db-4e68-9b38-9dda0dfd5774
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom HospitalNotification Message Discharge Example"
Description: "Example of MedCom HospitalNotification Discharge"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/01affa53-c157-4080-abb0-8e681524f969"
* entry[=].resource = 01affa53-c157-4080-abb0-8e681524f969
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Encounter/8405ba2d-467a-4e92-9acc-9dc2a629760f"
* entry[=].resource = 8405ba2d-467a-4e92-9acc-9dc2a629760f
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/2710698c-83eb-4c3e-81c8-fe8e40baf524"
* entry[=].resource = 2710698c-83eb-4c3e-81c8-fe8e40baf524
* entry[+].fullUrl = "Provenance/d7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = d7cf3888-6f42-4e4d-929c-d2475d24fba0



//Example of patient deceased message
Instance: e099bbf3-3fca-4722-a248-bfe1aa956410
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom HospitalNotification Message Discharge Deceased Example"
Description: "Example of MedCom HospitalNotification Discharge when patient is deceased"
* type = $BundleType#message
* timestamp = 2021-01-13T13:44:14Z
* entry[+].fullUrl = "MessageHeader/8efc6d95-6161-4493-99c9-f359488dedb8"
* entry[=].resource = 8efc6d95-6161-4493-99c9-f359488dedb8
* entry[+].fullUrl = "Patient/382fb8a3-6725-41e2-a615-2b1cfcfe9931"
* entry[=].resource = 382fb8a3-6725-41e2-a615-2b1cfcfe9931
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Encounter/1cab7218-9584-11ec-b909-0242ac120002"
* entry[=].resource = 1cab7218-9584-11ec-b909-0242ac120002
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/09942adb-197a-4e30-bec8-566e3a113efe"
* entry[=].resource = 09942adb-197a-4e30-bec8-566e3a113efe


Instance: 883671a4-9584-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom HospitalNotification Message Cancel Admission Example"
Description: "Example of MedCom HospitalNotification Cancel Admission"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/01affa53-c157-4080-abb0-8e681524f969"
* entry[=].resource = 01affa53-c157-4080-abb0-8e681524f969
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Encounter/8405ba2d-467a-4e92-9acc-9dc2a629760f"
* entry[=].resource = 8405ba2d-467a-4e92-9acc-9dc2a629760f
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/467ecb1c-957a-11ec-b909-0242ac120002"
* entry[=].resource = 467ecb1c-957a-11ec-b909-0242ac120002
* entry[+].fullUrl = "Provenance/d7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = d7cf3888-6f42-4e4d-929c-d2475d24fba0

Instance: 6fab3e80-9584-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationMessage
Title: "MedCom HospitalNotification Message Revise Admission Example"
Description: "Example of MedCom HospitalNotification Revise Admission"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/51b27813-8aa8-4fa1-846b-aeabf5afb7d4"
* entry[=].resource = 51b27813-8aa8-4fa1-846b-aeabf5afb7d4
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Encounter/7790f964-88d3-4652-bbc8-81d2f3d035f8"
* entry[=].resource = 7790f964-88d3-4652-bbc8-81d2f3d035f8
* entry[+].fullUrl = "Organization/bf839e87-4e44-4977-b38e-92b5a6f187b5" //service provider Org
* entry[=].resource = bf839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/35f7de8c-957a-11ec-b909-0242ac120002"
* entry[=].resource = 35f7de8c-957a-11ec-b909-0242ac120002
* entry[+].fullUrl = "Provenance/d7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = d7cf3888-6f42-4e4d-929c-d2475d24fba0