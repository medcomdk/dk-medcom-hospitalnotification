// MedComCorePatient instance
Instance: t33cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: t82fb8a3-6725-41e2-a615-2b1cfcfe9931
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Deceased patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* deceasedBoolean = true

// Service provider instance
Instance: of839e87-4e44-4977-b38e-92b5a6f187b5
InstanceOf: MedComCoreOrganization
Title: "Example of a service provider organization with a SOR."
Description: "Example of an organization with a SOR."
* identifier[SOR-ID].value = "8071000016009"

// Reciever instance
Instance: o4cdf292-abf3-4f5f-80ea-60a48013ff6d
InstanceOf: MedComMessagingOrganization // Odense Kommune, Beskæftigelses- og Socialforvaltningen
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "942231000016003" 
* identifier[EAN-ID].value = "5798006611867" 
* name = "Receiver Organization"

// Sender instance
Instance: o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
InstanceOf: MedComMessagingOrganization // Region Syddanmark, OUH FS Operationsafsnit
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "8071000016009" 
* identifier[EAN-ID].value = "5798002572049" 
* name = "Sender Organization"
