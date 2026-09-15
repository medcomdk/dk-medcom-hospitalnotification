// Converted from HospitalNotification_Ex_SLHJ_I.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-SLHJ-I
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "f4ceafb2-1486-470a-9309-64f5620345e1"
* type = #message
* timestamp = 2026-03-04T16:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/dd366106-db1c-4d3e-80c1-cdefe1184475"
* entry[=].resource = HospitalNotification-Ex-SLHJ-I-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/07097d06-2513-4a37-8c13-04ed4469486c"
* entry[=].resource = HospitalNotification-Ex-SLHJ-I-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/552195af-bb8b-43d6-a00a-190f558775d2"
* entry[=].resource = HospitalNotification-Ex-SLHJ-I-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/7899c6f2-ed68-42f1-939d-97353c0edc0d"
* entry[=].resource = HospitalNotification-Ex-SLHJ-I-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/cd96ca34-5f6a-4b6b-aec5-be70735d2901"
* entry[=].resource = HospitalNotification-Ex-SLHJ-I-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/5b3eeae5-665f-412d-92af-6fb5bc4e2f0c"
* entry[=].resource = HospitalNotification-Ex-SLHJ-I-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/b8e3fe4d-4eed-4326-b3e3-b0703aa71a5f"
* entry[=].resource = HospitalNotification-Ex-SLHJ-I-Provenance-History-2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/f8125b0a-e792-40b1-85c9-bd0f84324ab0"
* entry[=].resource = HospitalNotification-Ex-SLHJ-I-Provenance

Instance: HospitalNotification-Ex-SLHJ-I-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "dd366106-db1c-4d3e-80c1-cdefe1184475"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-SLHJ-I-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-SLHJ-I-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-SLHJ-I-Encounter)

Instance: HospitalNotification-Ex-SLHJ-I-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "07097d06-2513-4a37-8c13-04ed4469486c"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-SLHJ-I-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "552195af-bb8b-43d6-a00a-190f558775d2"
* extension[leavePeriod].valuePeriod.start = 2026-03-03T14:00:10+01:00
* status = #onleave
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-SLHJ-I-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "11f3f352-a251-4c34-a8a5-140083826d96"
* period.start = 2026-03-01T13:00:00+01:00
* period.end = 2026-03-04T16:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-SLHJ-I-SenderOrganization)

Instance: HospitalNotification-Ex-SLHJ-I-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "7899c6f2-ed68-42f1-939d-97353c0edc0d"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-SLHJ-I-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "cd96ca34-5f6a-4b6b-aec5-be70735d2901"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-SLHJ-I-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "5b3eeae5-665f-412d-92af-6fb5bc4e2f0c"
* target = Reference(MessageHeader/e563a2b2-bf92-4b13-bbd2-0a021a399006)
* occurredDateTime = 2026-03-03T14:00:02+01:00
* recorded = 2026-03-03T14:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #start-leave-inpatient
* agent.who = Reference(HospitalNotification-Ex-SLHJ-I-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)

Instance: HospitalNotification-Ex-SLHJ-I-Provenance-History-2
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "b8e3fe4d-4eed-4326-b3e3-b0703aa71a5f"
* target = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-SLHJ-I-SenderOrganization)

Instance: HospitalNotification-Ex-SLHJ-I-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "f8125b0a-e792-40b1-85c9-bd0f84324ab0"
* target = Reference(HospitalNotification-Ex-SLHJ-I-MessageHeader)
* occurredDateTime = 2026-03-04T16:00:00+01:00
* recorded = 2026-03-04T16:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #discharge-inpatient-home
* agent.who = Reference(HospitalNotification-Ex-SLHJ-I-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/e563a2b2-bf92-4b13-bbd2-0a021a399006)
