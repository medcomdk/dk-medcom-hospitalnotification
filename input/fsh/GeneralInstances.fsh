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


