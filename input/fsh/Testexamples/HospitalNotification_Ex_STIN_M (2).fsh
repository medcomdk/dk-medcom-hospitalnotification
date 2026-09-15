// Converted from HospitalNotification_Ex_STIN_M.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-M
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "c5cd3ab6-1fe8-43f9-9f8b-fa865001f042"
* type = #message
* timestamp = 2026-05-01T07:17:22Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/ab2a84cf-3b1a-4680-837f-081c0849a81e"
* entry[=].resource = HospitalNotification-Ex-STIN-M-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/5f457235-1f26-49e6-9df7-b4f6a7792021"
* entry[=].resource = HospitalNotification-Ex-STIN-M-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/33445e85-7d32-416c-8455-71cb8044b60e"
* entry[=].resource = HospitalNotification-Ex-STIN-M-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/dd249151-651e-40db-ae7f-ee6d05664b2a"
* entry[=].resource = HospitalNotification-Ex-STIN-M-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/58b64d91-055d-47eb-afa7-5167debae475"
* entry[=].resource = HospitalNotification-Ex-STIN-M-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/51fc30db-86a4-43eb-adf3-342b9a2649d3"
* entry[=].resource = HospitalNotification-Ex-STIN-M-Provenance

Instance: HospitalNotification-Ex-STIN-M-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "ab2a84cf-3b1a-4680-837f-081c0849a81e"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-M-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-M-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-M-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-M-Encounter)

Instance: HospitalNotification-Ex-STIN-M-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "5f457235-1f26-49e6-9df7-b4f6a7792021"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-M-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "33445e85-7d32-416c-8455-71cb8044b60e"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-M-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "a35432cb-7307-4a5e-8dfe-edf02be47c42"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-M-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-M-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "dd249151-651e-40db-ae7f-ee6d05664b2a"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-M-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "58b64d91-055d-47eb-afa7-5167debae475"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-M-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "51fc30db-86a4-43eb-adf3-342b9a2649d3"
* target = Reference(HospitalNotification-Ex-STIN-M-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-M-SenderOrganization)
