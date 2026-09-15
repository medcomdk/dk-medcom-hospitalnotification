// Converted from HospitalNotification_Ex_RE_STIN_O.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-RE-STIN-O
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "c932935c-96bd-424b-a02d-a40833124898"
* type = #message
* timestamp = 2026-03-01T15:00:02+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/0b6dffc3-9ebf-403b-b42f-a49e767cb7ed"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-O-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/be2593df-8adf-4650-8d68-241929a0186e"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-O-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/7dc03537-d664-47fe-8105-4ba914266051"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-O-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/e6fcff7e-1141-4cc4-9f14-ed0bbe5293d3"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-O-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/aa820bbb-b126-4984-8534-455400ebb99c"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-O-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/0eb6b489-3050-43c2-90aa-01d543627c71"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-O-Provenance
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/8ec5ae04-d3c6-4840-a206-97b0f7695e6b"
* entry[=].resource = HospitalNotification-Ex-RE-STIN-O-Provenance-History-1

Instance: HospitalNotification-Ex-RE-STIN-O-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "0b6dffc3-9ebf-403b-b42f-a49e767cb7ed"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-RE-STIN-O-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-RE-STIN-O-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-RE-STIN-O-Encounter)

Instance: HospitalNotification-Ex-RE-STIN-O-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "be2593df-8adf-4650-8d68-241929a0186e"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-RE-STIN-O-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "7dc03537-d664-47fe-8105-4ba914266051"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-RE-STIN-O-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "01a37861-3f08-4c3f-b70d-ddec2527f858"
* period.start = 2026-03-01T08:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-RE-STIN-O-SenderOrganization)

Instance: HospitalNotification-Ex-RE-STIN-O-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "e6fcff7e-1141-4cc4-9f14-ed0bbe5293d3"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-RE-STIN-O-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "aa820bbb-b126-4984-8534-455400ebb99c"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-RE-STIN-O-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "0eb6b489-3050-43c2-90aa-01d543627c71"
* target = Reference(HospitalNotification-Ex-RE-STIN-O-MessageHeader)
* occurredDateTime = 2026-03-01T15:00:02+01:00
* recorded = 2026-03-01T15:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #revise-admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-RE-STIN-O-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)

Instance: HospitalNotification-Ex-RE-STIN-O-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "8ec5ae04-d3c6-4840-a206-97b0f7695e6b"
* target = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
* occurredDateTime = 2026-03-01T14:00:02+01:00
* recorded = 2026-03-01T14:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-RE-STIN-O-SenderOrganization)
