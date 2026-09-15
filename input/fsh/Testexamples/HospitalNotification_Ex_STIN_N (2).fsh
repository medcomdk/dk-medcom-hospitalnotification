// Converted from HospitalNotification_Ex_STIN_N.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-N
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "e003b0ef-e3ed-481f-a92f-61b7b5c85b0e"
* type = #message
* timestamp = 2026-05-01T06:45:37Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/d3d25c61-8d92-4789-90f9-e0b8c8301809"
* entry[=].resource = HospitalNotification-Ex-STIN-N-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/172ad871-9cf5-463b-a297-08e25700cebb"
* entry[=].resource = HospitalNotification-Ex-STIN-N-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/474a71c5-da40-481f-8fa7-725e0fe8a7f0"
* entry[=].resource = HospitalNotification-Ex-STIN-N-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/6d0fdd1c-6fda-48af-a67d-2f45f59ce6ef"
* entry[=].resource = HospitalNotification-Ex-STIN-N-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/b5b1da17-349b-4031-89aa-3eeae9898511"
* entry[=].resource = HospitalNotification-Ex-STIN-N-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/a83845b4-2e4d-400b-b64c-dcc4fe6430d2"
* entry[=].resource = HospitalNotification-Ex-STIN-N-Provenance

Instance: HospitalNotification-Ex-STIN-N-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "d3d25c61-8d92-4789-90f9-e0b8c8301809"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-N-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-N-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-N-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-N-Encounter)

Instance: HospitalNotification-Ex-STIN-N-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "172ad871-9cf5-463b-a297-08e25700cebb"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-N-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "474a71c5-da40-481f-8fa7-725e0fe8a7f0"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-N-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "5a6c371c-cc13-417e-a5c5-f65ee8bad8e1"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-N-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-N-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "6d0fdd1c-6fda-48af-a67d-2f45f59ce6ef"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-N-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "b5b1da17-349b-4031-89aa-3eeae9898511"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-N-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "a83845b4-2e4d-400b-b64c-dcc4fe6430d2"
* target = Reference(HospitalNotification-Ex-STIN-N-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-N-SenderOrganization)
