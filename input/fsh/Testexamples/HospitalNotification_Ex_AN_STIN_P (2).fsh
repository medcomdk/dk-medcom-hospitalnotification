// Converted from HospitalNotification_Ex_AN_STIN_P.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-AN-STIN-P
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "37dfb04f-86c6-4d86-96a5-f2334c1af711"
* type = #message
* timestamp = 2026-03-01T17:00:02+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/70093bc2-0fd9-4b0b-8c67-467846d678a9"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-P-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/aed0b376-1b0c-4bb0-bcbc-52b00719d3f2"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-P-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/f05a0a4a-a6b8-45c0-aa4d-573eba90656d"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-P-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/cdd7ae93-719d-43c7-9087-6d7bbabcac0a"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-P-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/70bdb651-ce33-4173-a5f6-f3d0a2a7a05f"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-P-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/658c1469-dc3f-4f29-8133-ddae94d5a6ec"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-P-Provenance
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/adaa6718-8296-40b7-aee6-8557eedf2ca6"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-P-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/c420601a-e58c-4466-a836-a4f09a1e38a5"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-P-Provenance-History-2

Instance: HospitalNotification-Ex-AN-STIN-P-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "70093bc2-0fd9-4b0b-8c67-467846d678a9"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-AN-STIN-P-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-AN-STIN-P-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-AN-STIN-P-Encounter)

Instance: HospitalNotification-Ex-AN-STIN-P-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "aed0b376-1b0c-4bb0-bcbc-52b00719d3f2"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-AN-STIN-P-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "f05a0a4a-a6b8-45c0-aa4d-573eba90656d"
* status = #entered-in-error
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-AN-STIN-P-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "1da74af8-a0d2-469e-aa61-340712563d27"
* period.start = 2026-03-01T08:00:00+01:00
* period.end = 2026-03-01T17:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-AN-STIN-P-SenderOrganization)

Instance: HospitalNotification-Ex-AN-STIN-P-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "cdd7ae93-719d-43c7-9087-6d7bbabcac0a"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-AN-STIN-P-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "70bdb651-ce33-4173-a5f6-f3d0a2a7a05f"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-AN-STIN-P-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "658c1469-dc3f-4f29-8133-ddae94d5a6ec"
* target = Reference(HospitalNotification-Ex-AN-STIN-P-MessageHeader)
* occurredDateTime = 2026-03-01T17:00:02+01:00
* recorded = 2026-03-01T17:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #cancel-admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-AN-STIN-P-SenderOrganization)
* entity.role = #removal
* entity.what = Reference(MessageHeader/bd146532-0884-407d-85e2-da9a0c399006)

Instance: HospitalNotification-Ex-AN-STIN-P-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "adaa6718-8296-40b7-aee6-8557eedf2ca6"
* target = Reference(MessageHeader/bd146532-0884-407d-85e2-da9a0c399006)
* occurredDateTime = 2026-03-01T15:00:02+01:00
* recorded = 2026-03-01T15:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #revise-admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-AN-STIN-P-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)

Instance: HospitalNotification-Ex-AN-STIN-P-Provenance-History-2
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "c420601a-e58c-4466-a836-a4f09a1e38a5"
* target = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
* occurredDateTime = 2026-03-01T14:00:02+01:00
* recorded = 2026-03-01T14:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-AN-STIN-P-SenderOrganization)
