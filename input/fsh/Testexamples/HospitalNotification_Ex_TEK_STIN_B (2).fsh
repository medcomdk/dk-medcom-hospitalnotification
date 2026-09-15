// Converted from HospitalNotification_Ex_TEK_STIN_B.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-STIN-B
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "db544ae8-d4cb-41ff-82bd-ab28e3064a57"
* type = #message
* timestamp = 2026-03-01T15:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/c0aea49f-8851-4a52-965f-0aab70c993c9"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-B-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/fea1dc5b-dd69-406f-869d-07c06b4abf08"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-B-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/066da6fa-0d49-480f-8b39-d1926c9f5185"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-B-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/6df69996-8df7-4642-8c93-2e2c5f5bb997"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-B-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/50fe01f9-7668-4b1b-8687-76522881411b"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-B-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/d23080f7-8c49-4a7c-9ff3-ca4b0d1ed766"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-B-Provenance
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/6d4ab23d-9c68-476d-b8d1-ee03ea345241"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-B-Provenance-History-1

Instance: HospitalNotification-Ex-TEK-STIN-B-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "c0aea49f-8851-4a52-965f-0aab70c993c9"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-STIN-B-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-STIN-B-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-STIN-B-Encounter)

Instance: HospitalNotification-Ex-TEK-STIN-B-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "fea1dc5b-dd69-406f-869d-07c06b4abf08"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-TEK-STIN-B-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "066da6fa-0d49-480f-8b39-d1926c9f5185"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-TEK-STIN-B-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "c10697b6-8d7a-4d2d-ae93-f7f56abd52cc"
* period.start = 2026-03-01T15:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-STIN-B-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-STIN-B-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "6df69996-8df7-4642-8c93-2e2c5f5bb997"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-STIN-B-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "50fe01f9-7668-4b1b-8687-76522881411b"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-STIN-B-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "d23080f7-8c49-4a7c-9ff3-ca4b0d1ed766"
* target = Reference(HospitalNotification-Ex-TEK-STIN-B-MessageHeader)
* occurredDateTime = 2026-03-01T15:00:00+01:00
* recorded = 2026-03-01T15:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-TEK-STIN-B-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/e0c738da-480c-4f64-97f8-d4479a47b9f5)

Instance: HospitalNotification-Ex-TEK-STIN-B-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "6d4ab23d-9c68-476d-b8d1-ee03ea345241"
* target = Reference(MessageHeader/e0c738da-480c-4f64-97f8-d4479a47b9f5)
* occurredDateTime = 2026-02-28T14:00:06+01:00
* recorded = 2026-02-28T14:00:06+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-emergency
* agent.who = Reference(HospitalNotification-Ex-TEK-STIN-B-SenderOrganization)
