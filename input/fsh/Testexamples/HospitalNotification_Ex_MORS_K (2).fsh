// Converted from HospitalNotification_Ex_MORS_K.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-MORS-K
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "1acdc074-1793-4651-831d-d45383de88d7"
* type = #message
* timestamp = 2026-03-04T07:00:02+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/4d7b013b-4ee0-45c9-82fd-dc4f5a7f2957"
* entry[=].resource = HospitalNotification-Ex-MORS-K-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/92ff73da-cb54-427d-98b7-12814a0f5336"
* entry[=].resource = HospitalNotification-Ex-MORS-K-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/eb41db40-f822-458c-896c-ad50a5a0867f"
* entry[=].resource = HospitalNotification-Ex-MORS-K-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/e9d1b926-182f-4b96-80e9-503837a138db"
* entry[=].resource = HospitalNotification-Ex-MORS-K-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/c55991e1-df9b-41e7-80a0-370cb17cac50"
* entry[=].resource = HospitalNotification-Ex-MORS-K-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/952e4c44-a716-4726-978d-2857ba84ee4e"
* entry[=].resource = HospitalNotification-Ex-MORS-K-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/59265ca4-68ce-4543-aa1d-345ed963e096"
* entry[=].resource = HospitalNotification-Ex-MORS-K-Provenance

Instance: HospitalNotification-Ex-MORS-K-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "4d7b013b-4ee0-45c9-82fd-dc4f5a7f2957"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-MORS-K-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-MORS-K-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-MORS-K-Encounter)

Instance: HospitalNotification-Ex-MORS-K-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "92ff73da-cb54-427d-98b7-12814a0f5336"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* deceasedBoolean = true

Instance: HospitalNotification-Ex-MORS-K-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "eb41db40-f822-458c-896c-ad50a5a0867f"
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
* subject = Reference(HospitalNotification-Ex-MORS-K-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "26260217-2aab-4388-8c78-657a5deb9ce7"
* period.start = 2026-03-01T10:00:04+01:00
* period.end = 2026-03-04T07:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-MORS-K-SenderOrganization)

Instance: HospitalNotification-Ex-MORS-K-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "e9d1b926-182f-4b96-80e9-503837a138db"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-MORS-K-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "c55991e1-df9b-41e7-80a0-370cb17cac50"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-MORS-K-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "952e4c44-a716-4726-978d-2857ba84ee4e"
* target = Reference(MessageHeader/i50fc5fe-2d11-4ef3-acac-2e2e5c399006)
* occurredDateTime = 2026-03-01T10:00:06+01:00
* recorded = 2026-03-01T10:00:06+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-emergency
* agent.who = Reference(HospitalNotification-Ex-MORS-K-SenderOrganization)

Instance: HospitalNotification-Ex-MORS-K-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "59265ca4-68ce-4543-aa1d-345ed963e096"
* target = Reference(HospitalNotification-Ex-MORS-K-MessageHeader)
* occurredDateTime = 2026-03-04T07:00:02+01:00
* recorded = 2026-03-04T07:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-emergency
* agent.who = Reference(HospitalNotification-Ex-MORS-K-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/i50fc5fe-2d11-4ef3-acac-2e2e5c399006)
