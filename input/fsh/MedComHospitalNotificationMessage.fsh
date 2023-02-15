Profile: MedComHospitalNotificationMessage
Parent: MedComMessagingMessage
Id: medcom-hospitalNotification-message
Description: "A message for a HospitalNotification. The message is triggered as patients are admitted, onleave or has finished a hospital stay in order to notify the relevant Municipalicy home care"
* entry ^short = "Message content (MedComHospitalNotificationMessageHeader, MedComMessagingOrganization, MedComMessagingProvenance, MedComHospitalNotificationEncounter, MedComCorePatient) - Open"
* obeys medcom-hospitalNotification-1
* obeys medcom-hospitalNotification-2
* obeys medcom-hospitalNotification-3
* obeys medcom-hospitalNotification-4
* obeys medcom-hospitalNotification-5
* id ^short = "A unique identifier for a bundle. The element must be updated with a new value each time a new message is sent."
* timestamp ^short = "Holds information about when a bundle is created."

Invariant: medcom-hospitalNotification-1
Description: "The message header shall conform to medcom-hospitalNotification-messageHeader profile"
Severity: #error
Expression: "entry.ofType(MessageHeader).all(resource.conformsTo('http://medcomfhir.dk/fhir/hospitalnotification/StructureDefinition/medcom-hospitalNotification-messageHeader'))"

Invariant: medcom-hospitalNotification-2
Description: "Entry shall contain exactly one patient resource"
Severity: #error
Expression: "entry.where(resource.is(Patient)).count() = 1"

Invariant: medcom-hospitalNotification-3
Description: "All provenance resources shall contain activities from medcom-hospitalNotification-messageActivities valueset"
Severity: #error
Expression: "entry.ofType(Provenance).all(resource.activity.memberOf('http://medcomfhir.dk/fhir/dk-medcom-terminology/ValueSet/medcom-hospitalNotification-messageActivities'))"

Invariant: medcom-hospitalNotification-4
Description: "The system of Patient.identifier shall be 'urn:oid:1.2.208.176.1.2', which represents an official Danish CPR-number"
Severity: #error
Expression: "entry.resource.ofType(Patient).identifier.system = 'urn:oid:1.2.208.176.1.2'"

Invariant: medcom-hospitalNotification-5
Description: "The receiver of a HospitalNotification shall always be a primary receiver."
Severity: #error
Expression: "Bundle.entry.resource.ofType(MessageHeader).destination.extension.value.code = 'primary'"

// use cases associated with inpatient hospitalization
Instance: a5e5b880-c087-4055-b9ec-99108695f81d
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - STIN"
Description: "Example of MedComHospitalNotificationMessage 'Start hospital stay - admitted'"
* type = $BundleType#message
* timestamp = 2022-12-07T12:00:01+02:00
* entry[+].fullUrl = "MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc7b5404"
* entry[=].resource = b9b4818e-02de-4cc4-b418-d20cbc7b5404
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Encounter/a790f964-88d3-4652-bbc8-81d2f3d035f8"
* entry[=].resource = a790f964-88d3-4652-bbc8-81d2f3d035f8
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d" 
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0


Instance: bfab3e80-9584-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - RE_STIN"
Description: "Example of MedComHospitalNotificationMessage 'Update Start hospital stay - admitted'"
* type = $BundleType#message
* timestamp = 2022-12-07T14:00:01+02:00
* entry[+].fullUrl = "MessageHeader/cc47c1e2-78e6-4291-b071-f423a4f7fbfe"
* entry[=].resource = cc47c1e2-78e6-4291-b071-f423a4f7fbfe
* entry[+].fullUrl = "Patient/48393486-81c6-11ed-a1eb-0242ac120002"
* entry[=].resource = 48393486-81c6-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Encounter/b9846c24-0335-11ed-b939-0242ac120002"
* entry[=].resource = b9846c24-0335-11ed-b939-0242ac120002
* entry[+].fullUrl = "Organization/abb09e14-81c6-11ed-a1eb-0242ac120002" //service provider Org
* entry[=].resource = abb09e14-81c6-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/8858e7e6-81c6-11ed-a1eb-0242ac120002"
* entry[=].resource = 8858e7e6-81c6-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/b5f7de8c-957a-11ec-b909-0242ac120002"
* entry[=].resource = b5f7de8c-957a-11ec-b909-0242ac120002
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0


Instance: c83671a4-9584-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - AN_STIN"
Description: "Example of MedComHospitalNotificationMessage 'Cancellation Start hospital stay - admitted'"
* type = $BundleType#message
* timestamp = 2022-12-07T15:00:01+02:00
* entry[+].fullUrl = "MessageHeader/d8749b54-1aeb-4089-8941-8d876bdffc51"
* entry[=].resource = d8749b54-1aeb-4089-8941-8d876bdffc51
* entry[+].fullUrl = "Patient/d6eeaca6-81c6-11ed-a1eb-0242ac120002"
* entry[=].resource = d6eeaca6-81c6-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Encounter/c9782061-ce63-41b5-8be6-655812d23332"
* entry[=].resource = c9782061-ce63-41b5-8be6-655812d23332
* entry[+].fullUrl = "Organization/05266a00-81c7-11ed-a1eb-0242ac120002" //service provider Org
* entry[=].resource = 05266a00-81c7-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/eefc2dfa-81c6-11ed-a1eb-0242ac120002"
* entry[=].resource = eefc2dfa-81c6-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/c67ecb1c-957a-11ec-b909-0242ac120002"
* entry[=].resource = c67ecb1c-957a-11ec-b909-0242ac120002
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0

Instance: d3128d9b-cede-4c7f-8904-809eab322d7d
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - STOR"
Description: "Example of MedComHospitalNotificationMessage 'Start leave'"
* type = $BundleType#message
* timestamp = 2022-12-13T14:00:11+02:00
* entry[+].fullUrl = "MessageHeader/e563a2b2-bf92-4b13-bbd2-0a021a95bded"
* entry[=].resource = e563a2b2-bf92-4b13-bbd2-0a021a95bded
* entry[+].fullUrl = "Patient/97404d10-81c8-11ed-a1eb-0242ac120002"
* entry[=].resource = 97404d10-81c8-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Encounter/d56e9c54-23d2-43a4-816e-951d2a6e3281"
* entry[=].resource = d56e9c54-23d2-43a4-816e-951d2a6e3281
* entry[+].fullUrl = "Organization/a39d4a04-81c8-11ed-a1eb-0242ac120002"
* entry[=].resource = a39d4a04-81c8-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/b79a7914-81c8-11ed-a1eb-0242ac120002" //service provider Org
* entry[=].resource = b79a7914-81c8-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0" //admit prov
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/dc421d0a-cded-470f-9a53-2ddba7583baa" //start leave prov
* entry[=].resource = dc421d0a-cded-470f-9a53-2ddba7583baa

Instance: e94de8ee-bd94-475e-b454-b8fbbef8a685
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - SLOR"
Description: "Example of MedComHospitalNotificationMessage 'End leave'"
* type = $BundleType#message
* timestamp = 2022-12-14T15:30:01+02:00
* entry[+].fullUrl = "MessageHeader/f47254da-f170-46f0-b624-4778a9c92b1f"
* entry[=].resource = f47254da-f170-46f0-b624-4778a9c92b1f
* entry[+].fullUrl = "Patient/519d5170-81ca-11ed-a1eb-0242ac120002"
* entry[=].resource = 519d5170-81ca-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Encounter/e07c4bd4-cfad-4c4d-9c4b-e4ba3424a65b"
* entry[=].resource = e07c4bd4-cfad-4c4d-9c4b-e4ba3424a65b
* entry[+].fullUrl = "Organization/55ba5884-81ca-11ed-a1eb-0242ac120002"
* entry[=].resource = 55ba5884-81ca-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/5961ade8-81ca-11ed-a1eb-0242ac120002" //service provider Org
* entry[=].resource = 5961ade8-81ca-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0" //admit
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/dc421d0a-cded-470f-9a53-2ddba7583baa" //start leave
* entry[=].resource = dc421d0a-cded-470f-9a53-2ddba7583baa
* entry[+].fullUrl = "Provenance/e4db4939-7c60-4ac6-aefc-523f809ccba6" //end leave
* entry[=].resource = e4db4939-7c60-4ac6-aefc-523f809ccba6

Instance: f4aa42a4-86db-4e68-9b38-9dda0dfd5774
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - SLHJ (inpatient)"
Description: "Example of MedComHospitalNotificationMessage 'End hospital stay - patient completed to home/primary sector' (inpatient)"
* type = $BundleType#message
* timestamp = 2022-12-18T09:45:31+02:00
* entry[+].fullUrl = "MessageHeader/g1affa53-c157-4080-abb0-8e681524f969"
* entry[=].resource = g1affa53-c157-4080-abb0-8e681524f969
* entry[+].fullUrl = "Patient/6841b54e-81cd-11ed-a1eb-0242ac120002"
* entry[=].resource = 6841b54e-81cd-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Encounter/f405ba2d-467a-4e92-9acc-9dc2a629760f"
* entry[=].resource = f405ba2d-467a-4e92-9acc-9dc2a629760f
* entry[+].fullUrl = "Organization/8d813af0-81cd-11ed-a1eb-0242ac120002" //service provider Org
* entry[=].resource = 8d813af0-81cd-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/7e692262-81cd-11ed-a1eb-0242ac120002"
* entry[=].resource = 7e692262-81cd-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0" //admit
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/f710698c-83eb-4c3e-81c8-fe8e40baf524" //discharge
* entry[=].resource = f710698c-83eb-4c3e-81c8-fe8e40baf524



//Example of MedComHospitalNotificationMessage patient deceased message
Instance: g099bbf3-3fca-4722-a248-bfe1aa956410
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - MORS (inpatient)"
Description: "Example of MedComHospitalNotificationMessage 'Deceased' (inpatient)"
* type = $BundleType#message
* timestamp = 2022-12-09T09:45:31+02:00
* entry[+].fullUrl = "MessageHeader/hefc6d95-6161-4493-99c9-f359488dedb8"
* entry[=].resource = hefc6d95-6161-4493-99c9-f359488dedb8
* entry[+].fullUrl = "Patient/t82fb8a3-6725-41e2-a615-2b1cfcfe9931"
* entry[=].resource = t82fb8a3-6725-41e2-a615-2b1cfcfe9931
* entry[+].fullUrl = "Encounter/gcab7218-9584-11ec-b909-0242ac120002"
* entry[=].resource = gcab7218-9584-11ec-b909-0242ac120002
* entry[+].fullUrl = "Organization/753bdcba-81ce-11ed-a1eb-0242ac120002"
* entry[=].resource = 753bdcba-81ce-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/840b4046-81ce-11ed-a1eb-0242ac120002" //service provider Org
* entry[=].resource = 840b4046-81ce-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0" //admit
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/g9942adb-197a-4e30-bec8-566e3a113efe"
* entry[=].resource = g9942adb-197a-4e30-bec8-566e3a113efe


// use cases associated with acute ambulant hospitalization


Instance: h1c8e4a8-6b45-4669-94ad-2a99ad96bf03
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - STAA"
Description: "Example of MedComHospitalNotificationMessage 'Start hospital stay - acute ambulant'"
* type = $BundleType#message
* timestamp = 2022-12-01T10:00:05+02:00
* entry[+].fullUrl = "MessageHeader/i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029"
* entry[=].resource = i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029
* entry[+].fullUrl = "Patient/fdc1fc66-81d0-11ed-a1eb-0242ac120002"
* entry[=].resource = fdc1fc66-81d0-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Encounter/h2cb16ce-af8c-46f3-be9e-89406ef3e7b5"
* entry[=].resource = h2cb16ce-af8c-46f3-be9e-89406ef3e7b5
* entry[+].fullUrl = "Organization/103fbebe-81d1-11ed-a1eb-0242ac120002"
* entry[=].resource = 103fbebe-81d1-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/1f5882b4-81d1-11ed-a1eb-0242ac120002" //service provider Org
* entry[=].resource = 1f5882b4-81d1-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/h60bd482-9c47-43c5-9b77-1134eaa2d5f0"
* entry[=].resource = h60bd482-9c47-43c5-9b77-1134eaa2d5f0


Instance: kcab461b-f44e-4d97-a041-ef7e64800587
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - SLHJ (acute ambulant)"
Description: "Example of MedComHospitalNotificationMessage 'End hospital stay - patient completed to home/primary sector' (acute ambulant)"
* type = $BundleType#message
* timestamp = 2022-12-02T22:00:10+02:00
* entry[+].fullUrl = "MessageHeader/m9bea09c-e662-4d59-b84f-9af570b57f42"
* entry[=].resource = m9bea09c-e662-4d59-b84f-9af570b57f42
* entry[+].fullUrl = "Patient/6c16f41e-81d1-11ed-a1eb-0242ac120002"
* entry[=].resource = 6c16f41e-81d1-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Encounter/kbbad98c-3310-404a-af0c-7e3739d7b49f"
* entry[=].resource = kbbad98c-3310-404a-af0c-7e3739d7b49f
* entry[+].fullUrl = "Organization/e5682f5e-81d1-11ed-a1eb-0242ac120002"
* entry[=].resource = e5682f5e-81d1-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/0465ec66-81d2-11ed-a1eb-0242ac120002" //service provider Org
* entry[=].resource = 0465ec66-81d2-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/h60bd482-9c47-43c5-9b77-1134eaa2d5f0"
* entry[=].resource = h60bd482-9c47-43c5-9b77-1134eaa2d5f0
* entry[+].fullUrl = "Provenance/ka776a3e-3eca-407b-9f81-b8c16f089874" //discharge
* entry[=].resource = ka776a3e-3eca-407b-9f81-b8c16f089874



//Example of MedComHospitalNotificationMessage patient deceased message
Instance: ld31e08a-b91f-49c3-841a-ce80e6380517
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - MORS (acute ambulant)"
Description: "Example of MedComHospitalNotificationMessage 'Deceased' (acute ambulant)"
* type = $BundleType#message
* timestamp = 2022-12-02T07:00:01+02:00
* entry[+].fullUrl = "MessageHeader/nabb68aa-c97b-4905-a60c-71ff3209fd51"
* entry[=].resource = nabb68aa-c97b-4905-a60c-71ff3209fd51
* entry[+].fullUrl = "Patient/384b4a58-81d2-11ed-a1eb-0242ac120002"
* entry[=].resource = 384b4a58-81d2-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Encounter/l001c640-6b5d-414c-b6bd-e00ec6d4ceee"
* entry[=].resource = l001c640-6b5d-414c-b6bd-e00ec6d4ceee
* entry[+].fullUrl = "Organization/55eb90b8-81d2-11ed-a1eb-0242ac120002"
* entry[=].resource = 55eb90b8-81d2-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/66c12a92-81d2-11ed-a1eb-0242ac120002" //service provider Org
* entry[=].resource = 66c12a92-81d2-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/h60bd482-9c47-43c5-9b77-1134eaa2d5f0"
* entry[=].resource = h60bd482-9c47-43c5-9b77-1134eaa2d5f0
* entry[+].fullUrl = "Provenance/l17de5f5-abb0-4701-93aa-6b0d7b4127bc"
* entry[=].resource = l17de5f5-abb0-4701-93aa-6b0d7b4127bc


// use cases associated with inpatient hospitalization
Instance: m908i967-9ie3-9023-b9ec-98108695f01d
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - STIN (different sender and serviceProvider)"
Description: "Example of MedComHospitalNotificationMessage 'Start hospital stay - admitted'. With different serviceProvider and sender Organization."
* type = $BundleType#message
* timestamp = 2022-12-07T12:00:01+02:00
* entry[+].fullUrl = "MessageHeader/o9b4818e-12de-5cc4-c418-d30cbc7b5404"
* entry[=].resource = o9b4818e-12de-5cc4-c418-d30cbc7b5404
* entry[+].fullUrl = "Patient/b00ea1c0-81d2-11ed-a1eb-0242ac120002"
* entry[=].resource = b00ea1c0-81d2-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5" // service provider org
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Encounter/m790f964-98d3-4852-bac8-83d2f3d035f8"
* entry[=].resource = m790f964-98d3-4852-bac8-83d2f3d035f8
* entry[+].fullUrl = "Organization/bea5b49e-81d2-11ed-a1eb-0242ac120002"
* entry[=].resource = bea5b49e-81d2-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Organization/cd72967c-81d2-11ed-a1eb-0242ac120002" 
* entry[=].resource = cd72967c-81d2-11ed-a1eb-0242ac120002
* entry[+].fullUrl = "Provenance/m7cf3888-6f52-5e4d-939c-d2575d24fba0"
* entry[=].resource = m7cf3888-6f52-5e4d-939c-d2575d24fba0

// use cases associated with inpatient hospitalization
Instance: n73ccf30-80b9-4bd2-bf50-1ac1914498f0
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - STIN (with two episodeOfCare-identifiers)"
Description: "Example of MedComHospitalNotificationMessage 'Start hospital stay - admitted' (with two episodeOfCare-identifiers)"
* type = $BundleType#message
* timestamp = 2022-12-07T12:00:01+02:00
* entry[+].fullUrl = "MessageHeader/1ca19ddf-31bc-4597-8739-968c38dd88f8"
* entry[=].resource = 1ca19ddf-31bc-4597-8739-968c38dd88f8
* entry[+].fullUrl = "Patient/545fd5e6-a924-11ed-afa1-0242ac120002"
* entry[=].resource = 545fd5e6-a924-11ed-afa1-0242ac120002
* entry[+].fullUrl = "Encounter/ne70f2b8-a924-11ed-afa1-0242ac120002"
* entry[=].resource = ne70f2b8-a924-11ed-afa1-0242ac120002
* entry[+].fullUrl = "Organization/a8ec5ae1-e324-453d-9d9f-39ffe41f308a"
* entry[=].resource = a8ec5ae1-e324-453d-9d9f-39ffe41f308a
* entry[+].fullUrl = "Organization/2565d3de-082e-4368-9160-4c719071026b" 
* entry[=].resource = 2565d3de-082e-4368-9160-4c719071026b
* entry[+].fullUrl = "Provenance/4e9f2c26-9d9b-4239-ade6-e26c130e855e"
* entry[=].resource = 4e9f2c26-9d9b-4239-ade6-e26c130e855e
