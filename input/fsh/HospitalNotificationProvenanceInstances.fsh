// Provenances for Inpatient hospitalizations
// Admit instance
Instance: a7cf3888-6f42-4e4d-929c-d2475d24fba0
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - STIN"
Description: "HospitalNotification Provenance - STIN. The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity.coding = $ActivityCode#admit-inpatient
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// Revise admit instance
Instance: b5f7de8c-957a-11ec-b909-0242ac120002
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - RE_STIN"
Description: "HospitalNotification Provenance. The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(cc47c1e2-78e6-4291-b071-f423a4f7fbfe) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:45:15Z
* recorded = 2020-10-15T13:46:15Z
* activity.coding = $ActivityCode#revise-admit-inpatient 
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404)

// Cancel admit instance
Instance: c67ecb1c-957a-11ec-b909-0242ac120002
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - AN_STIN"
Description: "HospitalNotification Provenance. The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(d8749b54-1aeb-4089-8941-8d876bdffc51) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:45:15Z
* recorded = 2020-10-15T13:46:15Z
* activity.coding = $ActivityCode#cancel-admit-inpatient
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #removal
* entity.what = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404)

//start leave
Instance: dc421d0a-cded-470f-9a53-2ddba7583baa
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - STOR"
Description: "HospitalNotification Provenance - STOR. The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(e563a2b2-bf92-4b13-bbd2-0a021a95bded)
* occurredDateTime = 2020-10-20T10:21:56Z
* recorded = 2020-10-20T10:21:56Z
* activity.coding = $ActivityCode#start-leave-inpatient
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404)

// End leave example
Instance: e4db4939-7c60-4ac6-aefc-523f809ccba6
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - SLOR"
Description: "HospitalNotification Provenance - SLOR. The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(f47254da-f170-46f0-b624-4778a9c92b1f)
* occurredDateTime = 2020-10-25T09:12:34Z
* recorded = 2020-10-25T09:12:34Z
* activity.coding = $ActivityCode#end-leave-inpatient
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(e563a2b2-bf92-4b13-bbd2-0a021a95bded)

// discharge inpatient
Instance: f710698c-83eb-4c3e-81c8-fe8e40baf524
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - SLHJ (inpatient)"
Description: "HospitalNotification Provenance  - SLHJ (inpatient). The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(g1affa53-c157-4080-abb0-8e681524f969)
* occurredDateTime = 2020-10-28T09:21:26Z
* recorded = 2020-10-28T09:21:26Z
* activity.coding = $ActivityCode#discharge-inpatient-home
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(e563a2b2-bf92-4b13-bbd2-0a021a95bded)

 // patient is deceased
Instance: g9942adb-197a-4e30-bec8-566e3a113efe
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - MORS (inpatient)"
Description: "HospitalNotification Provenance - MORS (inpatient). The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(hefc6d95-6161-4493-99c9-f359488dedb8)
* occurredDateTime = 2021-01-13T13:44:14Z
* recorded = 2021-01-13T13:45:15Z
* activity.coding = $ActivityCode#discharge-inpatient-home
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d) 
* entity.role = #revision
* entity.what = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404)


// Provenance for acute ambulant hospitalization
// Admit instance
Instance: h60bd482-9c47-43c5-9b77-1134eaa2d5f0
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - STAA"
Description: "HospitalNotification Provenance - STAA. The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity.coding = $ActivityCode#admit-emergency
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// Revise admit instance
Instance: if89e89e-f8a3-4a88-b605-765008d1cb44
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - RE_STAA"
Description: "HospitalNotification Provenance. The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(k06f2487-7aab-4e35-9a80-70431060a7e8) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:45:15Z
* recorded = 2020-10-15T13:46:15Z
* activity.coding = $ActivityCode#revise-admit-emergency 
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029)

// Cancel admit acute ambulant
Instance: j762d089-2298-4774-ae0b-f83f65bf5640
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - AN_STAA"
Description: "HospitalNotification Provenance. The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(l3398a98-37ed-4bff-8e19-cc78ccb5b5f2) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:45:15Z
* recorded = 2020-10-15T13:46:15Z
* activity.coding = $ActivityCode#cancel-admit-emergency
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #removal
* entity.what = Reference(i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029)

// discharge acute ambulant
Instance: ka776a3e-3eca-407b-9f81-b8c16f089874
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - SLHJ (acute ambulant)"
Description: "HospitalNotification Provenance  - SLHJ (acute ambulant). The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(m9bea09c-e662-4d59-b84f-9af570b57f42)
* occurredDateTime = 2020-10-28T09:21:26Z
* recorded = 2020-10-28T09:21:26Z
* activity.coding = $ActivityCode#discharge-emergency-home
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029)

 // patient is deceased
Instance: l17de5f5-abb0-4701-93aa-6b0d7b4127bc
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification Provenance - MORS (acute ambulant)"
Description: "HospitalNotification Provenance - MORS (acute ambulant). The Provenance instance is only valid if used in a Bundle (message)."
* target = Reference(nabb68aa-c97b-4905-a60c-71ff3209fd51)
* occurredDateTime = 2021-01-13T13:44:14Z
* recorded = 2021-01-13T13:45:15Z
* activity.coding = $ActivityCode#discharge-emergency-home
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029)