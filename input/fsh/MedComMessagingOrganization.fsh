Profile: MedComMessagingOrganization
Parent: MedComCoreOrganization
Id: medcom-messaging-organization
Description: "A formally recognized organizations registered for exchanging messages within Danish healthcare, registered with a SOR identifier issued by The Danish Health Data Authority"
* . ^short = "A formally recognized organizations within Danish healthcare"
* identifier 2.. MS
* identifier contains eanIdentifier 1..1 MS
* identifier[eanIdentifier] only MedComCoreEANIdentifier


Alias: $SORCode = urn:oid:1.2.208.176.1.1
Alias: $EANCode = urn:oid:1.3.88

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