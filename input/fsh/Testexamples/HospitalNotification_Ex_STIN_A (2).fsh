// Converted from HospitalNotification_Ex_STIN_A.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-A
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "ed4bb302-4034-405a-b4c8-39e3b2a4dd1e"
* type = #message
* timestamp = 2026-03-01T12:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/363d01fe-9c48-47a0-87df-8e69c684f538"
* entry[=].resource = HospitalNotification-Ex-STIN-A-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/8bd971b2-cf3d-4a3e-9be9-f506d1810f81"
* entry[=].resource = HospitalNotification-Ex-STIN-A-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/7bbb8018-5dfd-4b77-987c-a6f6fdc1eb93"
* entry[=].resource = HospitalNotification-Ex-STIN-A-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/81f0eabf-3749-462b-9f49-cbb082991196"
* entry[=].resource = HospitalNotification-Ex-STIN-A-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/76e1dadc-0df3-47c3-863a-70301b5bedfe"
* entry[=].resource = HospitalNotification-Ex-STIN-A-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/eb1c7caf-029f-46c8-b6e8-6a52717cbbbc"
* entry[=].resource = HospitalNotification-Ex-STIN-A-Provenance

Instance: HospitalNotification-Ex-STIN-A-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "363d01fe-9c48-47a0-87df-8e69c684f538"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-A-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-A-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-A-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-A-Encounter)

Instance: HospitalNotification-Ex-STIN-A-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "8bd971b2-cf3d-4a3e-9be9-f506d1810f81"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-A-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "7bbb8018-5dfd-4b77-987c-a6f6fdc1eb93"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-A-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "82873e50-325e-4016-8a68-2934bdb2f66d"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-A-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-A-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "81f0eabf-3749-462b-9f49-cbb082991196"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-A-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "76e1dadc-0df3-47c3-863a-70301b5bedfe"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-A-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "eb1c7caf-029f-46c8-b6e8-6a52717cbbbc"
* target = Reference(HospitalNotification-Ex-STIN-A-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:00+01:00
* recorded = 2026-03-01T12:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-A-SenderOrganization)
