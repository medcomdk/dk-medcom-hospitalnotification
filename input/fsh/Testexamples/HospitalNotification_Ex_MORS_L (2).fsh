// Converted from HospitalNotification_Ex_MORS_L.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-MORS-L
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "2f7168e9-9c1f-4103-a30a-e5c4acf05c45"
* type = #message
* timestamp = 2026-03-04T09:45:32+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/20a01388-3704-4aea-9298-2e83d01d9946"
* entry[=].resource = HospitalNotification-Ex-MORS-L-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/8d316f51-596f-4050-b4e6-fe40bdbf40ae"
* entry[=].resource = HospitalNotification-Ex-MORS-L-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/f60c679b-7f14-45e3-bbd7-1484e6171357"
* entry[=].resource = HospitalNotification-Ex-MORS-L-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/d32afda0-2a3b-4119-a6b5-7834764d1ded"
* entry[=].resource = HospitalNotification-Ex-MORS-L-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/b6184a13-8371-4c6e-8097-1d911b4ed16c"
* entry[=].resource = HospitalNotification-Ex-MORS-L-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/69a95e14-b1e1-4be3-9578-842fc191a322"
* entry[=].resource = HospitalNotification-Ex-MORS-L-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/8b40b9d6-cd5c-4ad7-8679-754aa33d0232"
* entry[=].resource = HospitalNotification-Ex-MORS-L-Provenance-History-2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/7536da42-3498-49d1-aef2-6e934b30c8e5"
* entry[=].resource = HospitalNotification-Ex-MORS-L-Provenance

Instance: HospitalNotification-Ex-MORS-L-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "20a01388-3704-4aea-9298-2e83d01d9946"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-MORS-L-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-MORS-L-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-MORS-L-Encounter)

Instance: HospitalNotification-Ex-MORS-L-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "8d316f51-596f-4050-b4e6-fe40bdbf40ae"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* deceasedBoolean = true

Instance: HospitalNotification-Ex-MORS-L-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "f60c679b-7f14-45e3-bbd7-1484e6171357"
* extension[leavePeriod].valuePeriod.start = 2026-03-03T14:00:10+01:00
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-MORS-L-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "d340897d-f650-4589-abe7-95ae467623f7"
* period.start = 2026-03-01T12:00:00+01:00
* period.end = 2026-03-04T09:45:30+01:00
* serviceProvider = Reference(HospitalNotification-Ex-MORS-L-SenderOrganization)

Instance: HospitalNotification-Ex-MORS-L-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "d32afda0-2a3b-4119-a6b5-7834764d1ded"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-MORS-L-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "b6184a13-8371-4c6e-8097-1d911b4ed16c"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-MORS-L-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "69a95e14-b1e1-4be3-9578-842fc191a322"
* target = Reference(MessageHeader/aa6445b9-9e57-49af-9c94-1f17e57f4664)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-MORS-L-SenderOrganization)

Instance: HospitalNotification-Ex-MORS-L-Provenance-History-2
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "8b40b9d6-cd5c-4ad7-8679-754aa33d0232"
* target = Reference(HospitalNotification-Ex-STOR-L-MessageHeader)
* occurredDateTime = 2026-03-03T14:00:12+01:00
* recorded = 2026-03-03T14:00:12+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #start-leave-inpatient
* agent.who = Reference(HospitalNotification-Ex-MORS-L-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/aa6445b9-9e57-49af-9c94-1f17e57f4664)

Instance: HospitalNotification-Ex-MORS-L-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "7536da42-3498-49d1-aef2-6e934b30c8e5"
* target = Reference(HospitalNotification-Ex-MORS-L-MessageHeader)
* occurredDateTime = 2026-03-04T09:45:32+01:00
* recorded = 2026-03-04T09:45:32+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #start-leave-inpatient
* agent.who = Reference(HospitalNotification-Ex-MORS-L-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(HospitalNotification-Ex-STOR-L-MessageHeader)
