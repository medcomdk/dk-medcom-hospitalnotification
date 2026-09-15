// Converted from HospitalNotification_Ex_STOR_G.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STOR-G
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "a6cebbce-2b7a-478f-aefd-57305f3b05c1"
* type = #message
* timestamp = 2026-03-03T14:00:12+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/53a5e12e-3f15-4db9-80e2-a38957a2006b"
* entry[=].resource = HospitalNotification-Ex-STOR-G-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/378d5dc6-0bfc-457b-9cd5-6cf32243dc89"
* entry[=].resource = HospitalNotification-Ex-STOR-G-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/0d07998f-2811-4e0f-97e3-ae1dbc6e7977"
* entry[=].resource = HospitalNotification-Ex-STOR-G-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/a1eb00df-26bd-4784-a326-1f5a17210c67"
* entry[=].resource = HospitalNotification-Ex-STOR-G-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/107f3635-87b0-416f-959c-447b5221dfcc"
* entry[=].resource = HospitalNotification-Ex-STOR-G-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/fbccbea9-bce4-4590-bd0c-e9e4c4f13b06"
* entry[=].resource = HospitalNotification-Ex-STOR-G-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/f8e43fe8-4db9-4168-b04d-bd9e94a099d8"
* entry[=].resource = HospitalNotification-Ex-STOR-G-Provenance

Instance: HospitalNotification-Ex-STOR-G-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "53a5e12e-3f15-4db9-80e2-a38957a2006b"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STOR-G-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STOR-G-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STOR-G-Encounter)

Instance: HospitalNotification-Ex-STOR-G-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "378d5dc6-0bfc-457b-9cd5-6cf32243dc89"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STOR-G-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "0d07998f-2811-4e0f-97e3-ae1dbc6e7977"
* extension[leavePeriod].valuePeriod.start = 2026-03-03T14:00:10+01:00
* status = #onleave
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STOR-G-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "04675bbd-c540-4545-924c-1fa79b64535c"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STOR-G-SenderOrganization)

Instance: HospitalNotification-Ex-STOR-G-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "a1eb00df-26bd-4784-a326-1f5a17210c67"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STOR-G-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "107f3635-87b0-416f-959c-447b5221dfcc"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STOR-G-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "fbccbea9-bce4-4590-bd0c-e9e4c4f13b06"
* target = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STOR-G-SenderOrganization)

Instance: HospitalNotification-Ex-STOR-G-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "f8e43fe8-4db9-4168-b04d-bd9e94a099d8"
* target = Reference(HospitalNotification-Ex-STOR-G-MessageHeader)
* occurredDateTime = 2026-03-03T14:00:12+01:00
* recorded = 2026-03-03T14:00:12+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #start-leave-inpatient
* agent.who = Reference(HospitalNotification-Ex-STOR-G-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
