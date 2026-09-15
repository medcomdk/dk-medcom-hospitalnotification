// Converted from HospitalNotification_Ex_TEK_STAA_A.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-STAA-A
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "e985c502-0b71-4daf-b6a9-16cabb53ad37"
* type = #message
* timestamp = 2026-02-28T10:00:06+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/e0c738da-480c-4f64-97f8-d4479a47b9f5"
* entry[=].resource = HospitalNotification-Ex-TEK-STAA-A-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/34bff467-2813-42ac-a928-220a8433dfa9"
* entry[=].resource = HospitalNotification-Ex-TEK-STAA-A-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/7c08cb56-eb80-4979-855c-d8d75da9b01a"
* entry[=].resource = HospitalNotification-Ex-TEK-STAA-A-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/a3c6c488-9f80-4ae3-8c88-942053ca9234"
* entry[=].resource = HospitalNotification-Ex-TEK-STAA-A-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/41767586-090e-4242-bf50-0dfcaf8d80e0"
* entry[=].resource = HospitalNotification-Ex-TEK-STAA-A-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/98edf80f-388f-4ae0-b507-7e36b179b510"
* entry[=].resource = HospitalNotification-Ex-TEK-STAA-A-Provenance

Instance: HospitalNotification-Ex-TEK-STAA-A-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "e0c738da-480c-4f64-97f8-d4479a47b9f5"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-TEK-STAA-A-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-STAA-A-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-STAA-A-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-STAA-A-Encounter)

Instance: HospitalNotification-Ex-TEK-STAA-A-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "34bff467-2813-42ac-a928-220a8433dfa9"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-TEK-STAA-A-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "7c08cb56-eb80-4979-855c-d8d75da9b01a"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
* subject = Reference(HospitalNotification-Ex-TEK-STAA-A-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "c10697b6-8d7a-4d2d-ae93-f7f56abd52cc"
* period.start = 2026-02-28T10:00:04+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-STAA-A-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-STAA-A-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "a3c6c488-9f80-4ae3-8c88-942053ca9234"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-STAA-A-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "41767586-090e-4242-bf50-0dfcaf8d80e0"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-STAA-A-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "98edf80f-388f-4ae0-b507-7e36b179b510"
* target = Reference(HospitalNotification-Ex-TEK-STAA-A-MessageHeader)
* occurredDateTime = 2026-02-28T10:00:06+01:00
* recorded = 2026-02-28T10:00:06+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-emergency
* agent.who = Reference(HospitalNotification-Ex-TEK-STAA-A-SenderOrganization)
