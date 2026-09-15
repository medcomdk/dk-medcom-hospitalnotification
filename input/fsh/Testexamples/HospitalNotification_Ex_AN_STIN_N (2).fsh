// Converted from HospitalNotification_Ex_AN_STIN_N.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-AN-STIN-N
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "c81c571f-8dc3-4703-9bb2-3aee398e4906"
* type = #message
* timestamp = 2026-03-01T14:00:02+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/b254d066-38aa-4681-80f3-2cfd715595b9"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-N-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/642ae63a-118b-4951-ad30-473a63076c64"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-N-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/c96b8c83-b832-458e-96d8-9b801fed4b93"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-N-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/8ac4dfb8-f045-4509-999a-65588f88b415"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-N-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/bb7eb2ee-8c89-4f7a-bddd-1f7a3fa1a6f8"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-N-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/a76a72f0-7bcf-4bb7-b602-bb1ec324fea4"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-N-Provenance
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/7b712f28-1cb2-45fc-a06a-490c125816f6"
* entry[=].resource = HospitalNotification-Ex-AN-STIN-N-Provenance-History-1

Instance: HospitalNotification-Ex-AN-STIN-N-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "b254d066-38aa-4681-80f3-2cfd715595b9"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-AN-STIN-N-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-AN-STIN-N-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-AN-STIN-N-Encounter)

Instance: HospitalNotification-Ex-AN-STIN-N-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "642ae63a-118b-4951-ad30-473a63076c64"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-AN-STIN-N-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "c96b8c83-b832-458e-96d8-9b801fed4b93"
* status = #entered-in-error
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-AN-STIN-N-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "5a6c371c-cc13-417e-a5c5-f65ee8bad8e1"
* period.start = 2026-03-01T13:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-AN-STIN-N-SenderOrganization)

Instance: HospitalNotification-Ex-AN-STIN-N-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "8ac4dfb8-f045-4509-999a-65588f88b415"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-AN-STIN-N-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "bb7eb2ee-8c89-4f7a-bddd-1f7a3fa1a6f8"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-AN-STIN-N-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "a76a72f0-7bcf-4bb7-b602-bb1ec324fea4"
* target = Reference(HospitalNotification-Ex-AN-STIN-N-MessageHeader)
* occurredDateTime = 2026-03-01T14:00:02+01:00
* recorded = 2026-03-01T14:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #cancel-admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-AN-STIN-N-SenderOrganization)
* entity.role = #removal
* entity.what = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)

Instance: HospitalNotification-Ex-AN-STIN-N-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "7b712f28-1cb2-45fc-a06a-490c125816f6"
* target = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
* occurredDateTime = 2026-03-01T13:00:02+01:00
* recorded = 2026-03-01T13:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-AN-STIN-N-SenderOrganization)
