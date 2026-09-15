// Converted from HospitalNotification_Ex_SLHJ_H.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-SLHJ-H
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "a0536ce3-9687-4c3f-a753-47d37dc8cb04"
* type = #message
* timestamp = 2026-03-07T09:45:32+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/646fcb8b-a343-4fd4-b98b-56245cebb7d3"
* entry[=].resource = HospitalNotification-Ex-SLHJ-H-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/ddb92dff-291f-445c-ae56-1c63bcb6b8cb"
* entry[=].resource = HospitalNotification-Ex-SLHJ-H-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/5a2448bd-b976-4996-935c-49736d9337c8"
* entry[=].resource = HospitalNotification-Ex-SLHJ-H-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/98cfce1b-061a-4850-8d10-6290a6fa5cb7"
* entry[=].resource = HospitalNotification-Ex-SLHJ-H-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/44907c1e-497a-437d-b941-25ec3019be8f"
* entry[=].resource = HospitalNotification-Ex-SLHJ-H-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/5c5b4124-e0fc-411f-a4e9-081dff378fe5"
* entry[=].resource = HospitalNotification-Ex-SLHJ-H-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/227fe2c0-e640-494f-840a-64e05bf6f32c"
* entry[=].resource = HospitalNotification-Ex-SLHJ-H-Provenance

Instance: HospitalNotification-Ex-SLHJ-H-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "646fcb8b-a343-4fd4-b98b-56245cebb7d3"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-SLHJ-H-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-SLHJ-H-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-SLHJ-H-Encounter)

Instance: HospitalNotification-Ex-SLHJ-H-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "ddb92dff-291f-445c-ae56-1c63bcb6b8cb"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-SLHJ-H-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "5a2448bd-b976-4996-935c-49736d9337c8"
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-SLHJ-H-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "d3d03544-f116-4070-a823-d5c64e6a7c46"
* period.start = 2026-03-01T12:00:00+01:00
* period.end = 2026-03-07T09:45:30+01:00
* serviceProvider = Reference(HospitalNotification-Ex-SLHJ-H-SenderOrganization)

Instance: HospitalNotification-Ex-SLHJ-H-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "98cfce1b-061a-4850-8d10-6290a6fa5cb7"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-SLHJ-H-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "44907c1e-497a-437d-b941-25ec3019be8f"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-SLHJ-H-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "5c5b4124-e0fc-411f-a4e9-081dff378fe5"
* target = Reference(MessageHeader/929ec77e-42c3-44e5-9960-95fdf54eeb75)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-SLHJ-H-SenderOrganization)

Instance: HospitalNotification-Ex-SLHJ-H-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "227fe2c0-e640-494f-840a-64e05bf6f32c"
* target = Reference(HospitalNotification-Ex-SLHJ-H-MessageHeader)
* occurredDateTime = 2026-03-07T09:45:32+01:00
* recorded = 2026-03-07T09:45:32+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #discharge-inpatient-home
* agent.who = Reference(HospitalNotification-Ex-SLHJ-H-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/929ec77e-42c3-44e5-9960-95fdf54eeb75)
