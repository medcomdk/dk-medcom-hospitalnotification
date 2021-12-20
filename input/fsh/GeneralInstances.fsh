// MedComCorePatient instance
Instance: 733cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: MedComCorePatient
Title: "Eric Flame"
Description: "Patient with a managing organization. Valid only if used in a bundle (message)."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0102030405"
* name[official].use = #official
* name[official].given = "Eric"
* name[official].family = "Flame"
* telecom.system = #phone
* telecom.value = "12345678"
* telecom.use = #mobile
* address.line = "Flammesvinget 1"
* address.city = "Aarhus"
* address.postalCode = "8000 C"
* managingOrganization = Reference(12ee0dde-a672-462f-820d-5efe832d73c9)

// deceased MedComCorePatient
Instance: 382fb8a3-6725-41e2-a615-2b1cfcfe9931
InstanceOf: MedComCorePatient
Title: "Erik Clausen"
Description: "Patient deceased with a managing organization. Valid only if used in a bundle (message)."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0101010141"
* name[official].use = #official
* name[official].given = "Erik"
* name[official].family = "Clausen"
* telecom.system = #phone
* telecom.value = "24533421"
* telecom.use = #home
* address.line = "Forskerparken 10"
* address.city = "Odense M"
* address.postalCode = "5230"
* managingOrganization = Reference(bca68510-fe3b-4161-aba0-908a693eb54f)
* deceasedBoolean = true

// MedComCoreOrganization instance
Instance: 12ee0dde-a672-462f-820d-5efe832d73c9
InstanceOf: MedComCoreOrganization
Title: "Aros Burn Center"
Description: "A core organization with a SOR identifier."
* identifier[sorIdentifier].use = #official
* identifier[sorIdentifier].system = "urn:oid:1.2.208.176.1.1"
* identifier[sorIdentifier].value = "123456789012345"
* name = "Aros Burn Center"

// MedComCoreEncounter instance
Alias: $StatusCodes = http://hl7.org/fhir/encounter-status
Alias: $ActCodes = http://terminology.hl7.org/CodeSystem/v3-ActCode 

Instance: 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
InstanceOf: MedComCoreEncounter
Title: "MedCom Core Encounter"
Description: "Example of a simple MedCom Core Encounter"
* status = $StatusCodes#planned 
* class = $ActCodes#AMB 
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)

// MedComMessagingMessage instance
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

// MedComMessagingMessageHeader og MedComMessagingDestinationUseExtension instance
Alias: $MessageEvents = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-eventCodes
Alias: $Use = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-destinationUse

Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding = $Use#primary

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

//MedComMessagingOrganization instances (sender, receiver, serviceprovider)

// Reciever instance
Instance: 74cdf292-abf3-4f5f-80ea-60a48013ff6d
InstanceOf: MedComMessagingOrganization
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[sorIdentifier].value = "543210987654321"
* identifier[eanIdentifier].value = "5790000121526"
* name = "Receiver Organization"

// Sender instance
Instance: d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
InstanceOf: MedComMessagingOrganization
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[sorIdentifier].value = "123456789012345"
* identifier[eanIdentifier].value = "5790001382445"
* name = "Sender Organization"

// Service provider instance
Instance: bf839e87-4e44-4977-b38e-92b5a6f187b5
InstanceOf: MedComMessagingOrganization
Title: "Example of a service provider organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[sorIdentifier].value = "654321098765432"
* identifier[eanIdentifier].value = "5790000121530"

// MedComMessagingProvenance instance 
Alias: $ActivityCode = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-activityCodes

// Acknowledgement example
Instance: 21ec3323-3e3b-43d9-8a53-e1155ef29f99
InstanceOf: MedComMessagingProvenance
Title: "Acknowledgement example. The Provenance instance is only valid if used in a bundle (message) - reply"
Description: "Acknowledgement example. The Provenance instance is only valid if used in a bundle (message) - reply"
Usage: #example
* target = Reference(6b027613-c442-406d-bc53-3d913f73e0a8)
* occurredDateTime = 2021-09-21T07:15:43Z
* recorded = 2021-09-21T07:15:43Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #derivation
* entity.what = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4)
