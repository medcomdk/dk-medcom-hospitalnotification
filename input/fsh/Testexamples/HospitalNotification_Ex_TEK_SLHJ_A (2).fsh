// Converted from HospitalNotification_Ex_TEK_SLHJ_A.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-SLHJ-A
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "9011f888-3bcc-46d6-848b-297aca060e7f"
* type = #message
* timestamp = 2026-03-03T15:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/f4520a76-1687-42af-b09c-541ed0a6a18b"
* entry[=].resource = HospitalNotification-Ex-TEK-SLHJ-A-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/3aa58ce2-63b3-4ced-b8a6-ed4afb8ae1f4"
* entry[=].resource = HospitalNotification-Ex-TEK-SLHJ-A-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/e16e1813-f2b2-49a0-b92e-62a95bf748b0"
* entry[=].resource = HospitalNotification-Ex-TEK-SLHJ-A-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/4670b49a-4caf-4d2d-bcfa-8a83f799f725"
* entry[=].resource = HospitalNotification-Ex-TEK-SLHJ-A-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/0c7a15ca-af83-42d5-a5af-f52fec0195ee"
* entry[=].resource = HospitalNotification-Ex-TEK-SLHJ-A-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/b6ce8abb-1ac8-4df9-8b39-5cde472c7935"
* entry[=].resource = HospitalNotification-Ex-TEK-SLHJ-A-Provenance
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/0c9cd711-bd2d-4365-a7b0-913b5a276cc7"
* entry[=].resource = HospitalNotification-Ex-TEK-SLHJ-A-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/5a097d61-d1e2-4884-b781-cd05f17c18dd"
* entry[=].resource = HospitalNotification-Ex-TEK-SLHJ-A-Provenance-History-2

Instance: HospitalNotification-Ex-TEK-SLHJ-A-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "f4520a76-1687-42af-b09c-541ed0a6a18b"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-SLHJ-A-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-SLHJ-A-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-SLHJ-A-Encounter)

Instance: HospitalNotification-Ex-TEK-SLHJ-A-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "3aa58ce2-63b3-4ced-b8a6-ed4afb8ae1f4"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-TEK-SLHJ-A-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "e16e1813-f2b2-49a0-b92e-62a95bf748b0"
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-TEK-SLHJ-A-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "c10697b6-8d7a-4d2d-ae93-f7f56abd52cc"
* period.start = 2026-03-01T15:00:00+01:00
* period.end = 2026-03-03T15:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-SLHJ-A-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-SLHJ-A-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "4670b49a-4caf-4d2d-bcfa-8a83f799f725"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-SLHJ-A-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "0c7a15ca-af83-42d5-a5af-f52fec0195ee"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-SLHJ-A-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "b6ce8abb-1ac8-4df9-8b39-5cde472c7935"
* target = Reference(HospitalNotification-Ex-TEK-SLHJ-A-MessageHeader)
* occurredDateTime = 2026-03-03T15:00:00+01:00
* recorded = 2026-03-03T15:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #discharge-inpatient-home
* agent.who = Reference(HospitalNotification-Ex-TEK-SLHJ-A-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(HospitalNotification-Ex-TEK-STIN-B-MessageHeader)

Instance: HospitalNotification-Ex-TEK-SLHJ-A-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "0c9cd711-bd2d-4365-a7b0-913b5a276cc7"
* target = Reference(HospitalNotification-Ex-TEK-STIN-B-MessageHeader)
* occurredDateTime = 2026-03-01T15:00:00+01:00
* recorded = 2026-03-01T15:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-TEK-SLHJ-A-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/e0c738da-480c-4f64-97f8-d4479a47b9f5)

Instance: HospitalNotification-Ex-TEK-SLHJ-A-Provenance-History-2
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "5a097d61-d1e2-4884-b781-cd05f17c18dd"
* target = Reference(MessageHeader/e0c738da-480c-4f64-97f8-d4479a47b9f5)
* occurredDateTime = 2026-02-28T14:00:06+01:00
* recorded = 2026-02-28T14:00:06+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-emergency
* agent.who = Reference(HospitalNotification-Ex-TEK-SLHJ-A-SenderOrganization)
