Profile: MedComMessagingAcknowledgement
Parent: MedComMessagingMessage
Id: medcom-messaging-acknowledgement
Description: "Base resource for all MedCom Acknowledgement messages."
* obeys medcom-messaging-3
* obeys medcom-messaging-4

Invariant: medcom-messaging-3
Description: "The message header shall conform to medcom-messaging-acknowledgementHeader profile"
Severity: #error
Expression: "entry.ofType(MessageHeader).all(resource.conformsTo('http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-messaging-acknowledgementHeader'))"

Invariant: medcom-messaging-4
Description: "The Acknowledgement entry shall contain at least one Provenance resource"
Severity: #error
Expression: "entry.resource.ofType(Provenance).count() >0"


Instance: 04ed814c-ccf6-47aa-be73-ae38df23c66a
InstanceOf: MedComMessagingAcknowledgement
Title: "Acknowledgement message - CareCommunication"
Description: "Example of a Acknowledgement message."
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:57Z
* entry[+].fullUrl = "MessageHeader/ff9055ec-b1f1-48b6-933a-063dff0a6faf"
* entry[=].resource = ff9055ec-b1f1-48b6-933a-063dff0a6faf
* entry[+].fullUrl = "Provenance/f18213f8-2e2c-458d-86ff-4e48ac5d7162"
* entry[=].resource = f18213f8-2e2c-458d-86ff-4e48ac5d7162
* entry[+].fullUrl = "Provenance/2cdc0086-a305-4791-93e5-3ca8975e2248"
* entry[=].resource = 2cdc0086-a305-4791-93e5-3ca8975e2248
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d

Instance: 2c9535ef-ed94-4060-a928-7baddec7ee71
InstanceOf: MedComMessagingAcknowledgement
Title: "fatal-error Acknowledgement message"
Description: "Example of a fatal-error Acknowledgement message."
* type = $BundleType#message
* timestamp = 2020-10-01T12:34:56Z
* entry[+].fullUrl = "MessageHeader/4879c81e-0607-4ccb-b358-24a72208e30d"
* entry[=].resource = 4879c81e-0607-4ccb-b358-24a72208e30d
* entry[+].fullUrl = "Provenance/30c0f779-783f-46b2-b38f-faebd2bedb3f"
* entry[=].resource = 30c0f779-783f-46b2-b38f-faebd2bedb3f
* entry[+].fullUrl = "Provenance/0b9da9ed-cbb2-4563-90d5-d64a67834ec0"
* entry[=].resource = 0b9da9ed-cbb2-4563-90d5-d64a67834ec0
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "OperationOutcome/4ecb2a8e-3a68-4083-910e-811296affd43"
* entry[=].resource = 4ecb2a8e-3a68-4083-910e-811296affd43

Instance: d8c041b8-c65a-4fde-a90f-962076918834
InstanceOf: MedComMessagingAcknowledgement
Title: "ok Acknowledgement message with Provenance - CareCommunication"
Description: "Example of a ok Acknowledgement message- CareCommunication"
* type = $BundleType#message
* timestamp = 2021-01-01T12:34:56Z
* entry[+].fullUrl = "MessageHeader/4aa2d9bf-2c6c-47e8-bce4-7928bcd51019"
* entry[=].resource = 4aa2d9bf-2c6c-47e8-bce4-7928bcd51019
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/69dab277-dd4b-4055-9fda-a10a65cb4412"
* entry[=].resource = 69dab277-dd4b-4055-9fda-a10a65cb4412
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "OperationOutcome/e87bc9d4-f876-4b6f-8585-40b26dc1e369"
* entry[=].resource = e87bc9d4-f876-4b6f-8585-40b26dc1e369

Instance: 840655c6-2812-4c14-8f03-2c59752da9eb
InstanceOf: MedComMessagingAcknowledgement
Title: "fatal-error Acknowledgement message with Provenance"
Description: "Example of a fatal-error Acknowledgement message with provenance refferencing -MedCom Hospital Notification Message Admit Example-"
* type = $BundleType#message
* timestamp = 2021-09-21T07:15:56Z
* entry[+].fullUrl = "MessageHeader/6b027613-c442-406d-bc53-3d913f73e0a8"
* entry[=].resource = 6b027613-c442-406d-bc53-3d913f73e0a8
* entry[+].fullUrl = "Provenance/d7cf3888-6f42-4e4d-929c-d2475d24fba0"
* entry[=].resource = d7cf3888-6f42-4e4d-929c-d2475d24fba0
* entry[+].fullUrl = "Provenance/21ec3323-3e3b-43d9-8a53-e1155ef29f99"
* entry[=].resource = 21ec3323-3e3b-43d9-8a53-e1155ef29f99
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "OperationOutcome/d0055484-2a56-4da2-81b8-a9d5087d865c"
* entry[=].resource = d0055484-2a56-4da2-81b8-a9d5087d865c
* entry[=].resource = e87bc9d4-f876-4b6f-8585-40b26dc1e369

