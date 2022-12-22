// Provenances for Inpatient hospitalizations
// Admit instance
Instance: a7cf3888-6f42-4e4d-929c-d2475d24fba0
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - STIN"
Description: "Example of MedComMessagingProvenance used in 'Start hospital stay - admitted'. Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404) // should be changed to the current MessageHeader
* occurredDateTime = 2022-12-07T12:00:02Z
* recorded = 2022-12-07T12:00:02Z
* activity.coding = $ActivityCode#admit-inpatient
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// Revise admit instance
Instance: b5f7de8c-957a-11ec-b909-0242ac120002
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - RE_STIN"
Description: "Example of MedComMessagingProvenance used in 'Revise Start hospital stay - admitted'. Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(cc47c1e2-78e6-4291-b071-f423a4f7fbfe) // should be changed to the current MessageHeader
* occurredDateTime = 2022-12-07T14:00:02Z
* recorded = 2022-12-07T14:00:02Z
* activity.coding = $ActivityCode#revise-admit-inpatient 
* agent.who = Reference(abb09e14-81c6-11ed-a1eb-0242ac120002)
* entity.role = #revision
* entity.what = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404)

// Cancel admit instance
Instance: c67ecb1c-957a-11ec-b909-0242ac120002
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - AN_STIN"
Description: "Example of MedComMessagingProvenance used in 'Cancellation Start hospital stay - admitted'. Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(d8749b54-1aeb-4089-8941-8d876bdffc51) // should be changed to the current MessageHeader
* occurredDateTime = 2022-12-07T15:00:02Z
* recorded = 2022-12-07T15:00:02Z
* activity.coding = $ActivityCode#cancel-admit-inpatient
* agent.who = Reference(05266a00-81c7-11ed-a1eb-0242ac120002)
* entity.role = #removal
* entity.what = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404)

//start leave
Instance: dc421d0a-cded-470f-9a53-2ddba7583baa
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - STOR"
Description: "Example of MedComMessagingProvenance used in 'Start leave'. Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(e563a2b2-bf92-4b13-bbd2-0a021a95bded)
* occurredDateTime = 2022-12-13T14:00:12Z
* recorded = 2022-12-13T14:00:12Z
* activity.coding = $ActivityCode#start-leave-inpatient
* agent.who = Reference(b79a7914-81c8-11ed-a1eb-0242ac120002)
* entity.role = #revision
* entity.what = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404)

// End leave example
Instance: e4db4939-7c60-4ac6-aefc-523f809ccba6
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - SLOR"
Description: "Example of MedComMessagingProvenance used in 'End leave'. Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(f47254da-f170-46f0-b624-4778a9c92b1f)
* occurredDateTime = 2022-12-14T15:30:02Z
* recorded = 2022-12-14T15:30:02Z
* activity.coding = $ActivityCode#end-leave-inpatient
* agent.who = Reference(5961ade8-81ca-11ed-a1eb-0242ac120002)
* entity.role = #revision
* entity.what = Reference(e563a2b2-bf92-4b13-bbd2-0a021a95bded)

// discharge inpatient
Instance: f710698c-83eb-4c3e-81c8-fe8e40baf524
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - SLHJ (inpatient)"
Description: "Example of MedComMessagingProvenance used in 'End hospital stay - patient completed to home/primary sector' (inpatient). Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(g1affa53-c157-4080-abb0-8e681524f969)
* occurredDateTime = 2022-12-18T09:45:32Z
* recorded = 2022-12-18T09:45:32Z
* activity.coding = $ActivityCode#discharge-inpatient-home
* agent.who = Reference(8d813af0-81cd-11ed-a1eb-0242ac120002)
* entity.role = #revision
* entity.what = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404)

 // patient is deceased
Instance: g9942adb-197a-4e30-bec8-566e3a113efe
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - MORS (inpatient)"
Description: "Example of MedComMessagingProvenance used in 'Deceased' (inpatient). Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(hefc6d95-6161-4493-99c9-f359488dedb8)
* occurredDateTime = 2022-12-09T09:45:32Z
* recorded = 2022-12-09T09:45:32Z
* activity.coding = $ActivityCode#admit-inpatient
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d) 
* entity.role = #revision
* entity.what = Reference(b9b4818e-02de-4cc4-b418-d20cbc7b5404)


// Provenance for acute ambulant hospitalization
// Admit instance
Instance: h60bd482-9c47-43c5-9b77-1134eaa2d5f0
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - STAA"
Description: "Example of MedComMessagingProvenance used in 'Start hospital stay - acute ambulant'. Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029) // should be changed to the current MessageHeader
* occurredDateTime = 2022-12-01T10:00:06Z
* recorded = 2022-12-01T10:00:06Z
* activity.coding = $ActivityCode#admit-emergency
* agent.who = Reference(1f5882b4-81d1-11ed-a1eb-0242ac120002)



// discharge acute ambulant
Instance: ka776a3e-3eca-407b-9f81-b8c16f089874
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - SLHJ (acute ambulant)"
Description: "Example of MedComMessagingProvenance used in 'End hospital stay - patient completed to home/primary sector' (acute ambulant). Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(m9bea09c-e662-4d59-b84f-9af570b57f42)
* occurredDateTime = 2022-12-02T22:00:11Z
* recorded = 2022-12-02T22:00:11Z
* activity.coding = $ActivityCode#discharge-emergency-home
* agent.who = Reference(0465ec66-81d2-11ed-a1eb-0242ac120002)
* entity.role = #revision
* entity.what = Reference(i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029)

 // patient is deceased
Instance: l17de5f5-abb0-4701-93aa-6b0d7b4127bc
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - MORS (acute ambulant)"
Description: "Example of MedComMessagingProvenance used in 'Deceased' (acute ambulant). Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(nabb68aa-c97b-4905-a60c-71ff3209fd51)
* occurredDateTime = 2022-12-02T07:00:02Z
* recorded = 2022-12-02T07:00:02Z
* activity.coding = $ActivityCode#admit-emergency
* agent.who = Reference(66c12a92-81d2-11ed-a1eb-0242ac120002)
* entity.role = #revision
* entity.what = Reference(i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029)

// Admit instance - different serviceprovider
Instance: m7cf3888-6f52-5e4d-939c-d2575d24fba0
InstanceOf: MedComMessagingProvenance
Title: "MedComMessagingProvenance - STIN."
Description: "Example of MedComMessagingProvenance used in 'Start hospital stay - admitted'. With different serviceProvider and sender Organization. Only valid if used in a Bundle (message)."
Usage: #definition
* target = Reference(o9b4818e-12de-5cc4-c418-d30cbc7b5404) // should be changed to the current MessageHeader
* occurredDateTime = 2022-12-09T12:00:02Z
* recorded = 2022-12-09T12:00:02Z
* activity.coding = $ActivityCode#admit-inpatient
* agent.who = Reference(cd72967c-81d2-11ed-a1eb-0242ac120002)