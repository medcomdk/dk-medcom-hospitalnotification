// Converted from HospitalNotification_Ex_STIN_F.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-F
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "650a355e-438e-41c7-a7f1-0e3e0df18e16"
* type = #message
* timestamp = 2026-05-01T06:23:38Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/568dd4b1-720a-444f-a2c5-9090fd5701fd"
* entry[=].resource = HospitalNotification-Ex-STIN-F-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/e2011cbc-c3c4-4e06-be4b-f9f0fc87278c"
* entry[=].resource = HospitalNotification-Ex-STIN-F-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/16ff7c14-c412-46aa-a0d8-7048875ef0cb"
* entry[=].resource = HospitalNotification-Ex-STIN-F-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/e4f68f92-78a5-4761-bb25-59c2879379ff"
* entry[=].resource = HospitalNotification-Ex-STIN-F-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/fb920f67-6a80-4cea-ab24-ae7a61605cfe"
* entry[=].resource = HospitalNotification-Ex-STIN-F-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/6ab08389-e02e-4343-86fc-4e565d5b2228"
* entry[=].resource = HospitalNotification-Ex-STIN-F-Provenance

Instance: HospitalNotification-Ex-STIN-F-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "568dd4b1-720a-444f-a2c5-9090fd5701fd"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-F-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-F-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-F-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-F-Encounter)

Instance: HospitalNotification-Ex-STIN-F-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "e2011cbc-c3c4-4e06-be4b-f9f0fc87278c"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-F-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "16ff7c14-c412-46aa-a0d8-7048875ef0cb"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-F-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "49a2b22b-f628-4468-9ba9-b6c0db4a6871"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-F-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-F-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "e4f68f92-78a5-4761-bb25-59c2879379ff"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-F-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "fb920f67-6a80-4cea-ab24-ae7a61605cfe"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-F-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "6ab08389-e02e-4343-86fc-4e565d5b2228"
* target = Reference(HospitalNotification-Ex-STIN-F-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-F-SenderOrganization)
