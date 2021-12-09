Profile: MedComMessagingMessage
Parent: Bundle
Id: medcom-messaging-message
Description: "Base resource for all MedCom messages."
* id MS
* type MS
* type = #message
* type ^short = "Always message"
* timestamp 1.. MS
* entry MS
* entry.resource 1.. MS
* entry ^short = "Message content (MedComMessagingMessageHeader, MedComMessagingProvenance, MedComMessagingOrganization) - Open"
* obeys medcom-messaging-1
* obeys medcom-messaging-2

Invariant: medcom-messaging-1
Description: "The message header shall conform to medcom-messaging-messageHeader profile"
Severity: #error
Expression: "entry.ofType(MessageHeader).all(resource.conformsTo('http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-messaging-messageHeader'))"

Invariant: medcom-messaging-2
Description: "All provenance resources shall conform to medcom-core-provenance profile"
Severity: #error
Expression: "entry.ofType(Provenance).all(resource.conformsTo('http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-messaging-provenance'))"

Alias: $BundleType = http://hl7.org/fhir/bundle-type

Instance: eb26be85-fdb7-454d-a980-95cba6d1745b
InstanceOf: MedComMessagingMessage
Description: "Example of an emty message."
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[+].fullUrl = "MessageHeader/3881874e-2042-4a00-aee8-23512799f512"
* entry[=].resource = 3881874e-2042-4a00-aee8-23512799f512
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
