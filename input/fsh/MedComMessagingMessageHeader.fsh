Alias: $Use = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-destinationUse


Profile: MedComMessagingMessageHeader
Parent: MessageHeader
Id: medcom-messaging-messageHeader
Description: "Message Header for MedCom message bundles"
* id MS
* event[x] MS
* event[x] only Coding
* eventCoding 1..
* eventCoding from MedComMessagingMessageTypes
* destination.extension contains MedComMessagingDestinationUseExtension named use 1..1
* destination.extension[use] MS
* destination ^slicing.discriminator.type = #value
* destination ^slicing.discriminator.path = "$this.extension.value"
* destination ^slicing.rules = #closed
* destination contains primary 1..1 MS and cc 0..
* destination[primary].extension[use].valueCoding = $Use#primary
* destination[primary].receiver only Reference(MedComMessagingOrganization)
* destination[primary].receiver 1.. MS
* destination[primary].receiver ^type.aggregation = #bundled
* destination[primary].endpoint MS
* destination[cc].extension[use].valueCoding = $Use#cc
* destination[cc].receiver only Reference(MedComMessagingOrganization)
* destination[cc].receiver 1.. MS
* destination[cc].receiver ^type.aggregation = #bundled
* destination[cc].endpoint MS
* destination[cc] ^definition = "Shall contain carbon copy recipients of the message"
* sender 1.. MS
* sender ^type.aggregation = #bundled
* sender only Reference(MedComMessagingOrganization)
* source MS
* source.endpoint MS

* event[x] ^short = "The MedComMessagingMessageHeader shall contain a value from MedComMessagingMessageTypes"

Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding = $Use#primary


Alias: $MessageEvents = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-eventCodes


Instance: 3881874e-2042-4a00-aee8-23512799f512
InstanceOf: MedComMessagingMessageHeader
Title: "Message Header for an empty message. Valid only if used in a bundle (message)"
Description: "Message Header for an empty message. Valid only if used in a bundle (message)."
* destination.extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#empty-message
* destination.endpoint = "http://medcomfhir.dk/unknown"
* destination.receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
