Profile: MedComHospitalNotificationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-hospitalNotification-messageHeader
Description: "Message header for a hospital notification message."
* id ^short = "A unique identifier for each message. This identifier should be globally unique."
* eventCoding = $MessageEvents#hospital-notification-message
* destination[cc] ..0
* focus 1..1 MS
* focus only Reference(MedComHospitalNotificationEncounter)
* focus ^type.aggregation = #bundled
* extension contains MedComHospitalNotificationReportOfAdmissionExtension named reportOfAdmissionFlag ..1
* extension contains MedComHospitalNotificationReportOfAdmissionRecipientExtension named reportOfAdmissionRecipient ..1
* extension[reportOfAdmissionFlag] MS
* extension[reportOfAdmissionFlag] ^definition = "Shall be set to true if recipient is requested to send a report of admission"
* extension[reportOfAdmissionRecipient] MS
* extension[reportOfAdmissionRecipient] ^definition = "Shall contain recipient of report of admission if the recipient is not the sender of the hospital notification"
* event[x] ^short = "The MedComMessagingMessageHeader shall contain the event value hospital-notification-message"


Instance: 51b27813-8aa8-4fa1-846b-aeabf5afb7d4
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "Message header for a hospital notification admit message. Valid only if used in a bundle (message)."
Description: "Message header for a hospital notification admit message. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* focus = Reference(7790f964-88d3-4652-bbc8-81d2f3d035f8)
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(bf839e87-4e44-4977-b38e-92b5a6f187b5)

Instance: b563a2b2-bf92-4b13-bbd2-0a021a95bded
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "Message header for a hospital notification start leave message. Valid only if used in a bundle (message)"
Description: "Message header for a hospital notification start leave message. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* focus = Reference(556e9c54-23d2-43a4-816e-951d2a6e3281)
* extension[reportOfAdmissionFlag].valueBoolean = false

Instance: e47254da-f170-46f0-b624-4778a9c92b1f
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "Message header for a hospital notification start leave message. Valid only if used in a bundle (message)"
Description: "Message header for a hospital notification start leave message. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* focus = Reference(7790f964-88d3-4652-bbc8-81d2f3d035f8)
* extension[reportOfAdmissionFlag].valueBoolean = false

Instance: 01affa53-c157-4080-abb0-8e681524f969
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "Message header for a hospital notification discharge message. Valid only if used in a bundle (message)"
Description: "Message header for a hospital notification discharge message. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* focus = Reference(8405ba2d-467a-4e92-9acc-9dc2a629760f)
* extension[reportOfAdmissionFlag].valueBoolean = false

// admit message - for patient that will be discharged as deceased
Instance: 29b4818e-02de-4cc4-b418-d20cbc7b5404
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "Message header for a hospital notification admit message when patient later is deceased. Valid only if used in a bundle (message)"
Description: "Message header for a hospital notification admit message when patient later is deceased. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(d6145390-62ad-4cd0-8fe0-9679a34c44a9)
* extension[reportOfAdmissionFlag].valueBoolean = false


// Discharge message - patient discharged as deceased
Instance: 8efc6d95-6161-4493-99c9-f359488dedb8
InstanceOf: MedComHospitalNotificationMessageHeader
Title: "Message header for a hospital notification discharge message when patient is deceased. Valid only if used in a bundle (message)"
Description: "Message header for a hospital notification discharge message when patient is deceased. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#hospital-notification-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(8405ba2d-467a-4e92-9acc-9dc2a629760fWhenDeceased)
* extension[reportOfAdmissionFlag].valueBoolean = false



