// Converted from HospitalNotification_Ex_SLOR_G.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-SLOR-G
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "d7b2a28c-4fa6-4892-a7c3-4b2ddb0e9f0b"
* type = #message
* timestamp = 2026-03-05T15:30:02+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/6f0df012-296e-49dc-bc42-0c57dbe47186"
* entry[=].resource = HospitalNotification-Ex-SLOR-G-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/e7714040-f507-4d6f-9629-7bf7e75d60aa"
* entry[=].resource = HospitalNotification-Ex-SLOR-G-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/2dc6f125-bd58-46c3-b1b7-192038507d02"
* entry[=].resource = HospitalNotification-Ex-SLOR-G-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/c825bf0c-7c82-4cee-a04f-72558a51f143"
* entry[=].resource = HospitalNotification-Ex-SLOR-G-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/daa6be45-276d-4c4b-92ee-89a3ae0c0905"
* entry[=].resource = HospitalNotification-Ex-SLOR-G-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/d9caec36-0fbf-4004-949d-aaff168a5580"
* entry[=].resource = HospitalNotification-Ex-SLOR-G-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/78ef5d47-1c07-472a-a680-ee7852566835"
* entry[=].resource = HospitalNotification-Ex-SLOR-G-Provenance-History-2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/c211b0a9-0efc-4965-8582-4f52244c5e98"
* entry[=].resource = HospitalNotification-Ex-SLOR-G-Provenance

Instance: HospitalNotification-Ex-SLOR-G-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "6f0df012-296e-49dc-bc42-0c57dbe47186"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-SLOR-G-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-SLOR-G-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-SLOR-G-Encounter)

Instance: HospitalNotification-Ex-SLOR-G-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "e7714040-f507-4d6f-9629-7bf7e75d60aa"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-SLOR-G-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "2dc6f125-bd58-46c3-b1b7-192038507d02"
* extension[leavePeriod].valuePeriod.start = 2026-03-03T14:00:10+01:00
* extension[leavePeriod].valuePeriod.end = 2026-03-05T15:30:00+01:00
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-SLOR-G-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "04675bbd-c540-4545-924c-1fa79b64535c"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-SLOR-G-SenderOrganization)

Instance: HospitalNotification-Ex-SLOR-G-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "c825bf0c-7c82-4cee-a04f-72558a51f143"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-SLOR-G-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "daa6be45-276d-4c4b-92ee-89a3ae0c0905"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-SLOR-G-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "d9caec36-0fbf-4004-949d-aaff168a5580"
* target = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-SLOR-G-SenderOrganization)

Instance: HospitalNotification-Ex-SLOR-G-Provenance-History-2
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "78ef5d47-1c07-472a-a680-ee7852566835"
* target = Reference(MessageHeader/e563a2b2-bf92-4b13-bbd2-0a021a399006)
* occurredDateTime = 2026-03-03T14:00:12+01:00
* recorded = 2026-03-03T14:00:12+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #start-leave-inpatient
* agent.who = Reference(HospitalNotification-Ex-SLOR-G-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)

Instance: HospitalNotification-Ex-SLOR-G-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "c211b0a9-0efc-4965-8582-4f52244c5e98"
* target = Reference(HospitalNotification-Ex-SLOR-G-MessageHeader)
* occurredDateTime = 2026-03-05T15:30:02+01:00
* recorded = 2026-03-05T15:30:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #end-leave-inpatient
* agent.who = Reference(HospitalNotification-Ex-SLOR-G-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/e563a2b2-bf92-4b13-bbd2-0a021a399006)
