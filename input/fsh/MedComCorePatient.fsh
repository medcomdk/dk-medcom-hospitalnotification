Profile: MedComCorePatient
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient
Id: medcom-core-patient
Description: "Patient/citizen resource to use as subject in MedCom communication"
* identifier[cpr] ^short = "Unique identification number for all citizens in Denmark"
* identifier[cpr] MS
* name[official] 1.. MS
* name[official].given MS
* name[official].given ^definition = "Shall be present if the official given name of the patient is known, danish \"fornavn\" "
* name[official].family MS
* name[official].family ^definition = "Shall always be present, danish \"efternavn\" "
* telecom MS
* telecom ^definition = "Shall contain value, system and use if these information are known."
* telecom only MedComMessagingContactPoint
* deceased[x] MS
* deceased[x] ^definition = "Shall contain information if the patient is deceased and it is relevant in the given context"
* deceased[x] ^short = "Shall only be sent if the patient is deceased or the status change from deceased to non-deceased"
* address MS
* address ^definition = "Shall contain all known, relevant addresses of the patient"
* address.line MS
* address.line ^definition = "Shall contain the known information about the street name, number etc. to provide an exact address"
* address.city MS
* address.city ^definition = "Shall be present if the city is known"
* address.postalCode MS
* address.postalCode ^definition = "Shall be present if the postal code is known"
* managingOrganization only Reference(MedComCoreOrganization)
* managingOrganization ^type.aggregation = #bundled
* managingOrganization ^definition = "Organization that is the custodian of the patient record. This can e.g. be the sender of a message or responsable for the patients treatment. One of these organizations will always be included in the bundle, why this element is not mandatory to include."



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

Instance: 5b72c625-0570-4111-b272-f0351344f8b6
InstanceOf: MedComCorePatient
Title: "Erik Clausen"
Description: "Patient not deceased with a managing organization. Valid only if used in a bundle (message)."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0101010141"
* name[official].use = #official
* name[official].given = "Erik"
* name[official].family = "Clausen"
* telecom.system = #phone
* telecom.value = "24533421"
* telecom.use = #work
* address.line = "Forskerparken 10"
* address.city = "Odense M"
* address.postalCode = "5230"
* managingOrganization = Reference(bca68510-fe3b-4161-aba0-908a693eb54f)
* deceasedBoolean = false
