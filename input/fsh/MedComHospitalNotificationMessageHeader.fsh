Profile: MedComHospitalNotificationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-hospitalNotification-messageHeader
Description: "MessageHeader for a HospitalNotification message."
* id ^short = "A unique identifier for each message. This identifier should be globally unique."
* eventCoding = $MessageEvents#hospital-notification-message
* destination[cc] ..0
* focus 1..1 MS
* focus only Reference(MedComHospitalNotificationEncounter)
* focus ^type.aggregation = #bundled
* extension contains MedComHospitalNotificationReportOfAdmissionExtension named reportOfAdmissionFlag ..1
* extension contains MedComHospitalNotificationReportOfAdmissionRecipientExtension named reportOfAdmissionRecipient ..1
* extension[reportOfAdmissionFlag] MS SU
* extension[reportOfAdmissionFlag] ^definition = "Shall be set to true if recipient is requested to send a report of admission"
* extension[reportOfAdmissionRecipient] MS SU
* extension[reportOfAdmissionRecipient] ^definition = "Shall contain recipient of report of admission if the recipient is not the sender of the hospital notification"
* event[x] ^short = "The MedComMessagingMessageHeader shall contain the event value hospital-notification-message"


Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding = $Use#primary

Instance: a1b27813-8aa8-4fa1-846b-aeabf5afb7d4
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STIN"
Description: "Example of MedComHospitalNotificationMessageHeader 'Start hospital stay - admitted'. Without request for a reportOfAdmission. Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(a790f964-88d3-4652-bbc8-81d2f3d035f8)

// admit message 
Instance: b9b4818e-02de-4cc4-b418-d20cbc7b5404
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STIN."
Description: "Example of MedComHospitalNotificationMessageHeader 'Start hospital stay - admitted'. reportOfAdmissionFlag is 'true'. Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(a790f964-88d3-4652-bbc8-81d2f3d035f8)
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// admit message 
Instance: cc47c1e2-78e6-4291-b071-f423a4f7fbfe
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - RE_STIN."
Description: "Example of MedComHospitalNotificationMessageHeader 'Revise Start hospital stay - admitted'. Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(8858e7e6-81c6-11ed-a1eb-0242ac120002)
* sender = Reference(abb09e14-81c6-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(b9846c24-0335-11ed-b939-0242ac120002)

// admit message 
Instance: d8749b54-1aeb-4089-8941-8d876bdffc51
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - AN_STIN."
Description: "Example of MedComHospitalNotificationMessageHeader 'Cancellation Start hospital stay - admitted'. Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(eefc2dfa-81c6-11ed-a1eb-0242ac120002)
* sender = Reference(05266a00-81c7-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(c9782061-ce63-41b5-8be6-655812d23332)

Instance: e563a2b2-bf92-4b13-bbd2-0a021a95bded
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STOR."
Description: "Example of MedComHospitalNotificationMessageHeader 'Start leave'. Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(a39d4a04-81c8-11ed-a1eb-0242ac120002)
* sender = Reference(b79a7914-81c8-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(d56e9c54-23d2-43a4-816e-951d2a6e3281)

Instance: f47254da-f170-46f0-b624-4778a9c92b1f
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - SLOR."
Description: "Example of MedComHospitalNotificationMessageHeader 'End leave'. Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(55ba5884-81ca-11ed-a1eb-0242ac120002)
* sender = Reference(5961ade8-81ca-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(e07c4bd4-cfad-4c4d-9c4b-e4ba3424a65b)

Instance: g1affa53-c157-4080-abb0-8e681524f969
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - SLHJ (inpatient)."
Description: "Example of MedComHospitalNotificationMessageHeader 'End hospital stay - patient completed to home/primary sector' (inpatient). Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(7e692262-81cd-11ed-a1eb-0242ac120002)
* sender = Reference(8d813af0-81cd-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(f405ba2d-467a-4e92-9acc-9dc2a629760f)

// Discharge message - patient discharged as deceased
Instance: hefc6d95-6161-4493-99c9-f359488dedb8
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - MORS (inpatient)."
Description: "Example of MedComHospitalNotificationMessageHeader 'Deceased' (inpatient). Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(753bdcba-81ce-11ed-a1eb-0242ac120002)
* sender = Reference(840b4046-81ce-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(gcab7218-9584-11ec-b909-0242ac120002)


// Use cases associated with acute ambulant hospitalization

Instance: i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STAA."
Description: "Example of MedComHospitalNotificationMessageHeader 'Start hospital stay - acute ambulant'. reportOfAdmissionFlag is 'true'. Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(103fbebe-81d1-11ed-a1eb-0242ac120002)
* sender = Reference(1f5882b4-81d1-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(h2cb16ce-af8c-46f3-be9e-89406ef3e7b5)
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(1f5882b4-81d1-11ed-a1eb-0242ac120002)

// admit message 
Instance: j3675c4a-33db-40f1-b578-ff16e3e9134c
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STAA."
Description: "Example of MedComHospitalNotificationMessageHeader 'Start hospital stay - acute ambulant'. Without request for a reportOfAdmission. Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(103fbebe-81d1-11ed-a1eb-0242ac120002)
* sender = Reference(1f5882b4-81d1-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(h2cb16ce-af8c-46f3-be9e-89406ef3e7b5)


Instance: m9bea09c-e662-4d59-b84f-9af570b57f42
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - SLHJ (acute ambulant)."
Description: "Example of MedComHospitalNotificationMessageHeader 'End hospital stay - patient completed to home/primary sector' (acute ambulant). Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(e5682f5e-81d1-11ed-a1eb-0242ac120002)
* sender = Reference(0465ec66-81d2-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(kbbad98c-3310-404a-af0c-7e3739d7b49f)

// Discharge message - patient discharged as deceased
Instance: nabb68aa-c97b-4905-a60c-71ff3209fd51
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - MORS (acute ambulant)."
Description: "Example of MedComHospitalNotificationMessageHeader 'Deceased' (acute ambulant). Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(55eb90b8-81d2-11ed-a1eb-0242ac120002)
* sender = Reference(66c12a92-81d2-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(l001c640-6b5d-414c-b6bd-e00ec6d4ceee)

// admit message 
Instance: o9b4818e-12de-5cc4-c418-d30cbc7b5404
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STIN."
Description: "Example of MedComHospitalNotificationMessageHeader 'Start hospital stay - admitted'. With different serviceProvider and sender organisation. Only Valid if used in a Bundle."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(bea5b49e-81d2-11ed-a1eb-0242ac120002)
* sender = Reference(cd72967c-81d2-11ed-a1eb-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(m790f964-98d3-4852-bac8-83d2f3d035f8)
