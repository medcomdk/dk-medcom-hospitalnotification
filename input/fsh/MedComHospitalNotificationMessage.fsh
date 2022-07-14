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
Expression: "entry.ofType(MessageHeader).all(resource.conformsTo('http://medcomfhir.dk/fhir/hospitalnotification/StructureDefinition/medcom-hospitalNotification-messageHeader'))"

Invariant: medcom-hospitalNotification-2
Description: "Entry shall contain exactly one patient resource"
Severity: #error
Expression: "entry.where(resource.is(Patient)).count() = 1"

Invariant: medcom-hospitalNotification-3
Description: "All provenance resources shall contain activities from medcom-hospitalNotification-messageActivities valueset"
Severity: #error
Expression: "entry.ofType(Provenance).all(resource.activity.memberOf('http://medcomfhir.dk/fhir/dk-medcom-terminology/ValueSet/medcom-hospitalNotification-messageActivities'))"

// use cases associated with inpatient hospitalization
Instance: a5e5b880-c087-4055-b9ec-99108695f81d
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - STIN"
Description: "Example of MedCom HospitalNotification  - STIN. Admit inpatient."
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
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
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0


Instance: bfab3e80-9584-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - RE_STIN"
Description: "Example of MedCom HospitalNotification RE_STIN. Revise Admission"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/cc47c1e2-78e6-4291-b071-f423a4f7fbfe"
* entry[=].resource = cc47c1e2-78e6-4291-b071-f423a4f7fbfe
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Encounter/b9846c24-0335-11ed-b939-0242ac120002"
* entry[=].resource = b9846c24-0335-11ed-b939-0242ac120002
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5" //service provider Org
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/b5f7de8c-957a-11ec-b909-0242ac120002"
* entry[=].resource = b5f7de8c-957a-11ec-b909-0242ac120002
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0


Instance: c83671a4-9584-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - AN_STIN"
Description: "Example of MedCom HospitalNotification - AN_STIN. Cancel Admission"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/d8749b54-1aeb-4089-8941-8d876bdffc51"
* entry[=].resource = d8749b54-1aeb-4089-8941-8d876bdffc51
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Encounter/c9782061-ce63-41b5-8be6-655812d23332"
* entry[=].resource = c9782061-ce63-41b5-8be6-655812d23332
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/c67ecb1c-957a-11ec-b909-0242ac120002"
* entry[=].resource = c67ecb1c-957a-11ec-b909-0242ac120002
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0

Instance: d3128d9b-cede-4c7f-8904-809eab322d7d
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - STOR"
Description: "Example of MedCom HospitalNotification - STOR. Start Leave"
* type = $BundleType#message
* timestamp = 2020-10-20T10:21:56Z
* entry[+].fullUrl = "MessageHeader/e563a2b2-bf92-4b13-bbd2-0a021a95bded"
* entry[=].resource = e563a2b2-bf92-4b13-bbd2-0a021a95bded
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Encounter/d56e9c54-23d2-43a4-816e-951d2a6e3281"
* entry[=].resource = d56e9c54-23d2-43a4-816e-951d2a6e3281
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0" //admit prov
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/dc421d0a-cded-470f-9a53-2ddba7583baa" //start leave prov
* entry[=].resource = dc421d0a-cded-470f-9a53-2ddba7583baa

Instance: e94de8ee-bd94-475e-b454-b8fbbef8a685
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - SLOR"
Description: "Example of MedCom HospitalNotification - SLOR End Leave"
* type = $BundleType#message
* timestamp = 2020-10-20T10:21:56Z
* entry[+].fullUrl = "MessageHeader/f47254da-f170-46f0-b624-4778a9c92b1f"
* entry[=].resource = f47254da-f170-46f0-b624-4778a9c92b1f
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Encounter/e07c4bd4-cfad-4c4d-9c4b-e4ba3424a65b"
* entry[=].resource = e07c4bd4-cfad-4c4d-9c4b-e4ba3424a65b
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0" //admit
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/dc421d0a-cded-470f-9a53-2ddba7583baa" //start leave
* entry[=].resource = dc421d0a-cded-470f-9a53-2ddba7583baa
* entry[+].fullUrl = "Provenance/e4db4939-7c60-4ac6-aefc-523f809ccba6" //end leave
* entry[=].resource = e4db4939-7c60-4ac6-aefc-523f809ccba6

Instance: f4aa42a4-86db-4e68-9b38-9dda0dfd5774
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - SLHJ (inpatient)"
Description: "Example of MedCom HospitalNotification - SLHJ Discharge inpatient"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/g1affa53-c157-4080-abb0-8e681524f969"
* entry[=].resource = g1affa53-c157-4080-abb0-8e681524f969
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Encounter/f405ba2d-467a-4e92-9acc-9dc2a629760f"
* entry[=].resource = f405ba2d-467a-4e92-9acc-9dc2a629760f
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0" //admit
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/dc421d0a-cded-470f-9a53-2ddba7583baa" //start leave
* entry[=].resource = dc421d0a-cded-470f-9a53-2ddba7583baa
* entry[+].fullUrl = "Provenance/e4db4939-7c60-4ac6-aefc-523f809ccba6" //end leave
* entry[=].resource = e4db4939-7c60-4ac6-aefc-523f809ccba6
* entry[+].fullUrl = "Provenance/f710698c-83eb-4c3e-81c8-fe8e40baf524" //discharge
* entry[=].resource = f710698c-83eb-4c3e-81c8-fe8e40baf524



//Example of patient deceased message
Instance: g099bbf3-3fca-4722-a248-bfe1aa956410
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - MORS (inpatient)"
Description: "Example of MedCom HospitalNotification - MORS. Discharge when patient is deceased"
* type = $BundleType#message
* timestamp = 2021-01-13T13:44:14Z
* entry[+].fullUrl = "MessageHeader/hefc6d95-6161-4493-99c9-f359488dedb8"
* entry[=].resource = hefc6d95-6161-4493-99c9-f359488dedb8
* entry[+].fullUrl = "Patient/t82fb8a3-6725-41e2-a615-2b1cfcfe9931"
* entry[=].resource = t82fb8a3-6725-41e2-a615-2b1cfcfe9931
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Encounter/gcab7218-9584-11ec-b909-0242ac120002"
* entry[=].resource = gcab7218-9584-11ec-b909-0242ac120002
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0" //admit
* entry[=].resource = a7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/g9942adb-197a-4e30-bec8-566e3a113efe"
* entry[=].resource = g9942adb-197a-4e30-bec8-566e3a113efe


// use cases associated with acute ambulant hospitalization


Instance: h1c8e4a8-6b45-4669-94ad-2a99ad96bf03
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - STAA"
Description: "Example of MedCom HospitalNotification - STAA. Admit acute ambulate patient."
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029"
* entry[=].resource = i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Encounter/h2cb16ce-af8c-46f3-be9e-89406ef3e7b5"
* entry[=].resource = h2cb16ce-af8c-46f3-be9e-89406ef3e7b5
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Provenance/h60bd482-9c47-43c5-9b77-1134eaa2d5f0"
* entry[=].resource = h60bd482-9c47-43c5-9b77-1134eaa2d5f0


Instance: i3c2c3c0-ee07-41fd-b1a2-359eb0ccabe4
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - RE_STAA"
Description: "Example of MedCom HospitalNotification RE_STAA. Revise Admission"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/k06f2487-7aab-4e35-9a80-70431060a7e8"
* entry[=].resource = k06f2487-7aab-4e35-9a80-70431060a7e8
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Encounter/i458ddc8-fea4-41c3-992b-ff73cb6f657b"
* entry[=].resource = i458ddc8-fea4-41c3-992b-ff73cb6f657b
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5" //service provider Org
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/h60bd482-9c47-43c5-9b77-1134eaa2d5f0"
* entry[=].resource = h60bd482-9c47-43c5-9b77-1134eaa2d5f0
* entry[+].fullUrl = "Provenance/if89e89e-f8a3-4a88-b605-765008d1cb44"
* entry[=].resource = if89e89e-f8a3-4a88-b605-765008d1cb44


Instance: j1f8b295-821f-4d2f-9ec4-71f228ed65fe
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - AN_STAA"
Description: "Example of MedCom HospitalNotification - AN_STAA. Cancel Admission"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/l3398a98-37ed-4bff-8e19-cc78ccb5b5f2"
* entry[=].resource = l3398a98-37ed-4bff-8e19-cc78ccb5b5f2
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Encounter/j245dcc2-8668-4fcf-ae5f-d49a50bfc2d4"
* entry[=].resource = j245dcc2-8668-4fcf-ae5f-d49a50bfc2d4
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/h60bd482-9c47-43c5-9b77-1134eaa2d5f0"
* entry[=].resource = h60bd482-9c47-43c5-9b77-1134eaa2d5f0
* entry[+].fullUrl = "Provenance/j762d089-2298-4774-ae0b-f83f65bf5640"
* entry[=].resource = j762d089-2298-4774-ae0b-f83f65bf5640

Instance: kcab461b-f44e-4d97-a041-ef7e64800587
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - SLHJ (acute ambulant)"
Description: "Example of MedCom HospitalNotification - SLHJ Discharge inpatient"
* type = $BundleType#message
* timestamp = 2020-10-15T13:44:14Z
* entry[+].fullUrl = "MessageHeader/m9bea09c-e662-4d59-b84f-9af570b57f42"
* entry[=].resource = m9bea09c-e662-4d59-b84f-9af570b57f42
* entry[+].fullUrl = "Patient/t33cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = t33cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Encounter/kbbad98c-3310-404a-af0c-7e3739d7b49f"
* entry[=].resource = kbbad98c-3310-404a-af0c-7e3739d7b49f
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/h60bd482-9c47-43c5-9b77-1134eaa2d5f0"
* entry[=].resource = h60bd482-9c47-43c5-9b77-1134eaa2d5f0
* entry[+].fullUrl = "Provenance/ka776a3e-3eca-407b-9f81-b8c16f089874" //discharge
* entry[=].resource = ka776a3e-3eca-407b-9f81-b8c16f089874



//Example of patient deceased message
Instance: ld31e08a-b91f-49c3-841a-ce80e6380517
InstanceOf: MedComHospitalNotificationMessage
Title: "HospitalNotification Message - MORS (acute ambulant)"
Description: "Example of MedCom HospitalNotification - MORS. Discharge when patient is deceased"
* type = $BundleType#message
* timestamp = 2021-01-13T13:44:14Z
* entry[+].fullUrl = "MessageHeader/nabb68aa-c97b-4905-a60c-71ff3209fd51"
* entry[=].resource = nabb68aa-c97b-4905-a60c-71ff3209fd51
* entry[+].fullUrl = "Patient/t82fb8a3-6725-41e2-a615-2b1cfcfe9931"
* entry[=].resource = t82fb8a3-6725-41e2-a615-2b1cfcfe9931
* entry[+].fullUrl = "Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"
* entry[=].resource = of839e87-4e44-4977-b38e-92b5a6f187b5
* entry[+].fullUrl = "Encounter/l001c640-6b5d-414c-b6bd-e00ec6d4ceee"
* entry[=].resource = l001c640-6b5d-414c-b6bd-e00ec6d4ceee
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/h60bd482-9c47-43c5-9b77-1134eaa2d5f0"
* entry[=].resource = h60bd482-9c47-43c5-9b77-1134eaa2d5f0
* entry[+].fullUrl = "Provenance/l17de5f5-abb0-4701-93aa-6b0d7b4127bc"
* entry[=].resource = l17de5f5-abb0-4701-93aa-6b0d7b4127bc


