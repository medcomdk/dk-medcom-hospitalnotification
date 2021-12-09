Profile: MedComMessagingAcknowledgementHeader
Parent: MedComMessagingMessageHeader
Id: medcom-messaging-acknowledgementHeader
Description: "A resource that describes a reponse to a message that is exchanged as a MedCom messgage within Danish healthcare"
* destination[cc] ..0
* response 1.. MS
* response.identifier MS
* response.code MS
* response.details MS
* response.details ^definition = "Shall contain identified hints/warnings/error in case the code is transient-error or fatal-error"

Alias: $MessageEvents = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-eventCodes
Alias: $AcknowledgementCode = http://hl7.org/fhir/ValueSet/Acknowledgement-code

Instance: ff9055ec-b1f1-48b6-933a-063dff0a6faf
InstanceOf: MedComMessagingAcknowledgementHeader
Title: "Message header for an empty message. Valid only if used in a bundle (message)"
Description: "Message header for an empty message. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcom.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcom.dk/unknown"
* response.identifier = "eb26be85-fdb7-454d-a980-95cba6d1745b"
* response.code = $AcknowledgementCode#ok

Instance: 4879c81e-0607-4ccb-b358-24a72208e30d
InstanceOf: MedComMessagingAcknowledgementHeader
Title: "Message header for a fatal-error message"
Description: "Message header for a fatal-error message"
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(4ecb2a8e-3a68-4083-910e-811296affd43)

Instance: 4aa2d9bf-2c6c-47e8-bce4-7928bcd51019
InstanceOf: MedComMessagingAcknowledgementHeader
Title: "Message header for an ok message"
Description: "Message header for an ok message"
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* response.identifier = "382fb8a3-6725-41e2-a615-2b1cfcfe9931"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(e87bc9d4-f876-4b6f-8585-40b26dc1e369)

Instance: 6b027613-c442-406d-bc53-3d913f73e0a8
InstanceOf: MedComMessagingAcknowledgementHeader
Title: "Message header for a fatal-error message with provenance"
Description: "Message header for a fatal-error message with provenance"
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* response.identifier = "15e5b880-c087-4055-b9ec-99108695f81d"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(d0055484-2a56-4da2-81b8-a9d5087d865c)

Alias: $ServerityCode = http://hl7.org/fhir/issue-severity
Alias: $CodeCode = http://hl7.org/fhir/issue-type

Instance: 4ecb2a8e-3a68-4083-910e-811296affd43
InstanceOf: OperationOutcome
Title: "Example of an error operationOutcome"
Description: "Example of an error operationOutcome"
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.diagnostics = "Error parsing resource XML"
* issue.expression = "Bundle.meta"

Instance: e87bc9d4-f876-4b6f-8585-40b26dc1e369
InstanceOf: OperationOutcome
Title: "Example of an ok operationOutcome"
Description: "Example of an ok operationOutcome"
* issue.severity = $ServerityCode#information
* issue.code =  $CodeCode#structure
* issue.diagnostics = "Invalid messages from your system"
* issue.expression = "Bundle.meta"

Instance: d0055484-2a56-4da2-81b8-a9d5087d865c
InstanceOf: OperationOutcome
Title: "Example of an error operationOutcome with provenance"
Description: "Example of an error operationOutcome with provenance"
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.diagnostics = "Error parsing resource XML"
* issue.expression = "Bundle.meta"


