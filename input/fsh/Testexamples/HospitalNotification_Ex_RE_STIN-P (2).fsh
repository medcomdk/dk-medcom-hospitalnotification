// Converted from HospitalNotification_Ex_RE_STIN-P.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-RE-STIN-P
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "b9c4da96-8f0e-48b8-bf1d-87899f663d01"
* type = #message
* timestamp = 2026-03-01T15:00:02+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/61421284-1532-4e79-aa63-bf937747c6cc"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-P-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/886b9c01-462c-4bec-9b72-2c4abe1381e0"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-P-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/f98a6906-9bbb-4bb6-80c5-704205160d83"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-P-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/73819e98-132a-4ecb-bcbf-ff09afd53f39"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-P-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/732e3f11-3758-4f2b-b790-31c4f27864b1"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-P-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/0806dcfa-26e7-46ea-aa20-d1ed0d80903c"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-P-Provenance
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/4ca1cc1a-16c8-41b5-8a59-a5f948ec0bce"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-P-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/5bfcfa0b-36c7-4508-bb5a-038429779395"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-P-HistoricalSenderOrganization

Instance: HospitalNotification-Ex-RE-STIN-P-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "61421284-1532-4e79-aa63-bf937747c6cc"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-RE-STIN-P-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-RE-STIN-P-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=399841000016000"
* focus = Reference(HospitalNotification-Ex-RE-STIN-P-Encounter)

Instance: HospitalNotification-Ex-RE-STIN-P-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "886b9c01-462c-4bec-9b72-2c4abe1381e0"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-RE-STIN-P-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "f98a6906-9bbb-4bb6-80c5-704205160d83"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-RE-STIN-P-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "1da74af8-a0d2-469e-aa61-340712563d27"
* period.start = 2026-03-01T13:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-RE-STIN-P-SenderOrganization)

Instance: HospitalNotification-Ex-RE-STIN-P-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "73819e98-132a-4ecb-bcbf-ff09afd53f39"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001392840"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "399841000016000"
* name = "Hjertemedicinsk sengeafs. S103"

Instance: HospitalNotification-Ex-RE-STIN-P-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "732e3f11-3758-4f2b-b790-31c4f27864b1"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-RE-STIN-P-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "0806dcfa-26e7-46ea-aa20-d1ed0d80903c"
* target = Reference(HospitalNotification-Ex-RE-STIN-P-MessageHeader)
* occurredDateTime = 2026-03-01T15:00:02+01:00
* recorded = 2026-03-01T15:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #revise-admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-RE-STIN-P-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/ca0f70f4-0c30-45c2-b3b9-0c04cbedb6a6)

Instance: HospitalNotification-Ex-RE-STIN-P-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "4ca1cc1a-16c8-41b5-8a59-a5f948ec0bce"
* target = Reference(MessageHeader/ca0f70f4-0c30-45c2-b3b9-0c04cbedb6a6)
* occurredDateTime = 2026-03-01T14:00:02+01:00
* recorded = 2026-03-01T14:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-RE-STIN-P-HistoricalSenderOrganization)


Instance: HospitalNotification-Ex-RE-STIN-P-HistoricalSenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "5bfcfa0b-36c7-4508-bb5a-038429779395"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
