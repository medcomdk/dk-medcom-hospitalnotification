// Converted from HospitalNotification_Ex_STIN_B1.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-B1
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "e86125ce-879c-4a76-94b4-5b1868d52cd6"
* type = #message
* timestamp = 2026-05-01T07:14:28Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/2e70474b-2abf-4f80-8e7d-f339d724cabd"
* entry[=].resource = HospitalNotification-Ex-STIN-B1-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/d18931cf-1af9-4ab8-8a5f-d2e25b65b6cb"
* entry[=].resource = HospitalNotification-Ex-STIN-B1-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/b0d8804c-2ba5-45cd-91a8-ad9c1e0e9ef5"
* entry[=].resource = HospitalNotification-Ex-STIN-B1-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/d65fc7fd-1de9-43c1-8199-aa632ee34144"
* entry[=].resource = HospitalNotification-Ex-STIN-B1-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/4f963a6d-92f4-4ec8-8642-a6da96136dfd"
* entry[=].resource = HospitalNotification-Ex-STIN-B1-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/6677996d-0f0e-40dc-9dee-3208ddf83fea"
* entry[=].resource = HospitalNotification-Ex-STIN-B1-Provenance

Instance: HospitalNotification-Ex-STIN-B1-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "2e70474b-2abf-4f80-8e7d-f339d724cabd"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-B1-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-B1-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-B1-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-B1-Encounter)

Instance: HospitalNotification-Ex-STIN-B1-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "d18931cf-1af9-4ab8-8a5f-d2e25b65b6cb"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-B1-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "b0d8804c-2ba5-45cd-91a8-ad9c1e0e9ef5"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-B1-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "16b2bf28-921c-4553-9925-1bc1b0dfd54e"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-B1-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-B1-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "d65fc7fd-1de9-43c1-8199-aa632ee34144"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-B1-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "4f963a6d-92f4-4ec8-8642-a6da96136dfd"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-B1-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "6677996d-0f0e-40dc-9dee-3208ddf83fea"
* target = Reference(HospitalNotification-Ex-STIN-B1-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-B1-SenderOrganization)
