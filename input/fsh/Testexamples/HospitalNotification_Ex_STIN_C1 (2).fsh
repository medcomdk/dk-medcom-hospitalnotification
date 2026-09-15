// Converted from HospitalNotification_Ex_STIN_C1.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-C1
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "b40c8da9-81b5-473b-898e-c8536cb36d34"
* type = #message
* timestamp = 2026-05-01T07:15:50Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/ff882b8a-13cf-46db-8802-631fdcbe1b60"
* entry[=].resource = HospitalNotification-Ex-STIN-C1-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/c2bb2519-7653-4951-8c3a-3dee8f0f637e"
* entry[=].resource = HospitalNotification-Ex-STIN-C1-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/24e59316-a55d-42b3-b7de-9315bf4a2fec"
* entry[=].resource = HospitalNotification-Ex-STIN-C1-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/38331133-337d-412d-a84f-adb27138493c"
* entry[=].resource = HospitalNotification-Ex-STIN-C1-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/292d3859-e50f-4d3a-8fc2-d8aec324ca9e"
* entry[=].resource = HospitalNotification-Ex-STIN-C1-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/e57dc8cc-5f20-4977-b4e4-3cd9064bb11e"
* entry[=].resource = HospitalNotification-Ex-STIN-C1-Provenance

Instance: HospitalNotification-Ex-STIN-C1-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "ff882b8a-13cf-46db-8802-631fdcbe1b60"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-C1-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-C1-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-C1-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-C1-Encounter)

Instance: HospitalNotification-Ex-STIN-C1-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "c2bb2519-7653-4951-8c3a-3dee8f0f637e"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-C1-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "24e59316-a55d-42b3-b7de-9315bf4a2fec"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-C1-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "54413373-cd42-4004-904c-7a2c3e4aa8b6"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-C1-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-C1-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "38331133-337d-412d-a84f-adb27138493c"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-C1-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "292d3859-e50f-4d3a-8fc2-d8aec324ca9e"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-C1-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "e57dc8cc-5f20-4977-b4e4-3cd9064bb11e"
* target = Reference(HospitalNotification-Ex-STIN-C1-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-C1-SenderOrganization)
