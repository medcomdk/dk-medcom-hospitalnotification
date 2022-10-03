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
Title: "HospitalNotification MessageHeader - STIN. reportOfAdmissionFlag = true"
Description: "HospitalNotification MessageHeader - STIN. reportOfAdmissionFlag sat to true. Valid only if used in a bundle (message)."
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
Instance: b9b4818e-02de-4cc4-b418-d20cbc7b5404
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STIN."
Description: "HospitalNotification MessageHeader - STIN. reportOfAdmissionFlag sat to false. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(a790f964-88d3-4652-bbc8-81d2f3d035f8)

// admit message 
Instance: cc47c1e2-78e6-4291-b071-f423a4f7fbfe
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - RE_STIN."
Description: "HospitalNotification MessageHeader - RE_STIN. reportOfAdmissionFlag sat to false. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(b9846c24-0335-11ed-b939-0242ac120002)

// admit message 
Instance: d8749b54-1aeb-4089-8941-8d876bdffc51
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - AN_STIN."
Description: "HospitalNotification MessageHeader - AN_STIN. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(c9782061-ce63-41b5-8be6-655812d23332)

Instance: e563a2b2-bf92-4b13-bbd2-0a021a95bded
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STOR."
Description: "HospitalNotification MessageHeader - STOR. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(d56e9c54-23d2-43a4-816e-951d2a6e3281)

Instance: f47254da-f170-46f0-b624-4778a9c92b1f
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - SLOR."
Description: "HospitalNotification MessageHeader - SLOR. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(e07c4bd4-cfad-4c4d-9c4b-e4ba3424a65b)

Instance: g1affa53-c157-4080-abb0-8e681524f969
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - SLHJ (inpatient)."
Description: "HospitalNotification MessageHeader - SLHJ (inpatient). Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(f405ba2d-467a-4e92-9acc-9dc2a629760f)

// Discharge message - patient discharged as deceased
Instance: hefc6d95-6161-4493-99c9-f359488dedb8
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - MORS (inpatient)."
Description: "HospitalNotification MessageHeader - MORS (inpatient). Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(gcab7218-9584-11ec-b909-0242ac120002)


// Use cases associated with acute ambulant hospitalization

Instance: i50fc5fe-2d11-4ef3-acac-2e2e5c6c0029
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STAA. reportOfAdmissionFlag = true"
Description: "HospitalNotification MessageHeader - STAA. reportOfAdmissionFlag sat to true. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(h2cb16ce-af8c-46f3-be9e-89406ef3e7b5)
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// admit message 
Instance: j3675c4a-33db-40f1-b578-ff16e3e9134c
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STAA."
Description: "HospitalNotification MessageHeader - STAA. reportOfAdmissionFlag sat to false. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(h2cb16ce-af8c-46f3-be9e-89406ef3e7b5)

// admit message 
Instance: k06f2487-7aab-4e35-9a80-70431060a7e8
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - RE_STAA."
Description: "HospitalNotification MessageHeader - RE_STAA. reportOfAdmissionFlag sat to false. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(i458ddc8-fea4-41c3-992b-ff73cb6f657b)

// admit message 
Instance: l3398a98-37ed-4bff-8e19-cc78ccb5b5f2
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - AN_STAA."
Description: "HospitalNotification MessageHeader - AN_STAA. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(j245dcc2-8668-4fcf-ae5f-d49a50bfc2d4)

Instance: m9bea09c-e662-4d59-b84f-9af570b57f42
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - SLHJ (acute ambulant)."
Description: "HospitalNotification MessageHeader - SLHJ (acute ambulant). Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(kbbad98c-3310-404a-af0c-7e3739d7b49f)

// Discharge message - patient discharged as deceased
Instance: nabb68aa-c97b-4905-a60c-71ff3209fd51
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - MORS (acute ambulant)."
Description: "HospitalNotification MessageHeader - MORS (acute ambulant). Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(l001c640-6b5d-414c-b6bd-e00ec6d4ceee)

// admit message 
Instance: o9b4818e-12de-5cc4-c418-d30cbc7b5404
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "HospitalNotification MessageHeader - STIN."
Description: "HospitalNotification MessageHeader - STIN. reportOfAdmissionFlag sat to false. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(m790f964-98d3-4852-bac8-83d2f3d035f8)
