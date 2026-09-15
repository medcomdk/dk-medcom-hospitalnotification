// Converted from HospitalNotification_Ex_STIN_I.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-I
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "c5a3b081-fbcc-4d47-bc26-ef509f9bbadb"
* type = #message
* timestamp = 2026-05-01T07:27:29Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/536e6afe-1911-4fbb-b1e4-f8b8cbd943f9"
* entry[=].resource = HospitalNotification-Ex-STIN-I-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/29e8d067-8dbc-43ee-bc1b-3ce7a9b0e6f1"
* entry[=].resource = HospitalNotification-Ex-STIN-I-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/2fd9a7dc-40e0-4b43-a909-a0b145eea8aa"
* entry[=].resource = HospitalNotification-Ex-STIN-I-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/6e113735-a9e6-455c-b4ff-fc379dcff55d"
* entry[=].resource = HospitalNotification-Ex-STIN-I-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/6171ea12-b0dd-4eb5-b7c1-573dd0a50a0a"
* entry[=].resource = HospitalNotification-Ex-STIN-I-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/de7fc3ec-d265-46fa-a402-7170f8be2d8d"
* entry[=].resource = HospitalNotification-Ex-STIN-I-Provenance

Instance: HospitalNotification-Ex-STIN-I-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "536e6afe-1911-4fbb-b1e4-f8b8cbd943f9"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-I-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-I-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-I-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-I-Encounter)

Instance: HospitalNotification-Ex-STIN-I-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "29e8d067-8dbc-43ee-bc1b-3ce7a9b0e6f1"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-I-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "2fd9a7dc-40e0-4b43-a909-a0b145eea8aa"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-I-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "11f3f352-a251-4c34-a8a5-140083826d96"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-I-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-I-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "6e113735-a9e6-455c-b4ff-fc379dcff55d"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-I-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "6171ea12-b0dd-4eb5-b7c1-573dd0a50a0a"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-I-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "de7fc3ec-d265-46fa-a402-7170f8be2d8d"
* target = Reference(HospitalNotification-Ex-STIN-I-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-I-SenderOrganization)
