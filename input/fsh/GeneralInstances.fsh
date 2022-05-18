// MedComCorePatient instance
Instance: 733cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: 382fb8a3-6725-41e2-a615-2b1cfcfe9931
InstanceOf: MedComCorePatient
Title: "Cæcar Test Østergård"
Description: "Deceased patient described with maximum information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2311143995"
* name[official].use = #official
* name[official].given[0] = "Cæcar"
* name[official].given[1] = "Test"
* name[official].family = "Østergård"
* telecom.system = #phone
* telecom.value = "24533421"
* telecom.use = #home
* address.line = "Testhjemmet 1"
* address.city = "Odense M"
* address.postalCode = "5230"
* managingOrganization = Reference(12ee0dde-a672-462f-820d-5efe832d73c9)
* deceasedBoolean = true

// MedComCoreOrganization instance
Instance: 12ee0dde-a672-462f-820d-5efe832d73c9
InstanceOf: MedComCoreOrganization
Title: "Aros Burn Center"
Description: "A core organization with a SOR identifier."
* identifier[SOR-ID].value = "459751000016008"
* name = "Aros Burn Center"

// Service provider instance
Instance: bf839e87-4e44-4977-b38e-92b5a6f187b5
InstanceOf: MedComCoreOrganization
Title: "Example of a service provider organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "8071000016009"

// Reciever instance
Instance: 74cdf292-abf3-4f5f-80ea-60a48013ff6d
InstanceOf: MedComMessagingOrganization // Odense Kommune, Beskæftigelses- og Socialforvaltningen
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "942231000016003" 
* identifier[EAN-ID].value = "5798006611867" 
* name = "Receiver Organization"

// Sender instance
Instance: d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
InstanceOf: MedComMessagingOrganization // Region Syddanmark, OUH FS Operationsafsnit
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "8071000016009" 
* identifier[EAN-ID].value = "5798002572049" 
* name = "Sender Organization"
