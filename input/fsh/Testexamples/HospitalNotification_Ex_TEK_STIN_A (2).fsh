// Converted from HospitalNotification_Ex_TEK_STIN_A.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-STIN-A
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "1a505c7a-f790-4cb7-9d68-ee8993e84736"
* type = #message
* timestamp = 2026-03-01T12:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/bb1044e2-cb0b-45d3-a3a2-bb64151de07c"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-A-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/a78639cc-c4e3-457c-b71b-f8a52f7e74ef"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-A-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/62904d74-8a1a-41ca-89ed-b1dde854dbea"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-A-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/9e8c4392-edd2-4758-8540-cc9eeabcee21"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-A-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/597f0d5e-f97a-49c0-aab1-0cb98f0dd2aa"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-A-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/eba36495-d1c7-45e9-8f02-11356dbfc8d9"
* entry[=].resource = HospitalNotification-Ex-TEK-STIN-A-Provenance

Instance: HospitalNotification-Ex-TEK-STIN-A-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "bb1044e2-cb0b-45d3-a3a2-bb64151de07c"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-TEK-STIN-A-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-STIN-A-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-STIN-A-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-STIN-A-Encounter)

Instance: HospitalNotification-Ex-TEK-STIN-A-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "a78639cc-c4e3-457c-b71b-f8a52f7e74ef"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-TEK-STIN-A-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "62904d74-8a1a-41ca-89ed-b1dde854dbea"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-TEK-STIN-A-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "51738ad5-dafc-48a2-9233-4736a8be137b"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-STIN-A-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-STIN-A-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "9e8c4392-edd2-4758-8540-cc9eeabcee21"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-STIN-A-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "597f0d5e-f97a-49c0-aab1-0cb98f0dd2aa"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-STIN-A-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "eba36495-d1c7-45e9-8f02-11356dbfc8d9"
* target = Reference(HospitalNotification-Ex-TEK-STIN-A-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:00+01:00
* recorded = 2026-03-01T12:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-TEK-STIN-A-SenderOrganization)
