// Converted from HospitalNotification_Ex_STIN_P.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-P
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "9008049a-98cb-4a0e-82a0-89f1a8aca70d"
* type = #message
* timestamp = 2026-05-01T07:11:45Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/ca0f70f4-0c30-45c2-b3b9-0c04cbedb6a6"
* entry[=].resource = HospitalNotification-Ex-STIN-P-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/b8f17159-afaf-40a6-8406-3a9dc5a93b91"
* entry[=].resource = HospitalNotification-Ex-STIN-P-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/8018d9c2-7953-4f42-b839-6bfb3cfb0600"
* entry[=].resource = HospitalNotification-Ex-STIN-P-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/e3f15107-09be-48a4-bf09-a4caf2beefd8"
* entry[=].resource = HospitalNotification-Ex-STIN-P-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/545ded8c-9dcb-4c09-b80a-a81792448834"
* entry[=].resource = HospitalNotification-Ex-STIN-P-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/77b1ce7f-c99f-415a-87a1-d0b70e1cd09c"
* entry[=].resource = HospitalNotification-Ex-STIN-P-Provenance

Instance: HospitalNotification-Ex-STIN-P-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "ca0f70f4-0c30-45c2-b3b9-0c04cbedb6a6"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-P-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-P-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-P-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-P-Encounter)

Instance: HospitalNotification-Ex-STIN-P-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "b8f17159-afaf-40a6-8406-3a9dc5a93b91"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-P-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "8018d9c2-7953-4f42-b839-6bfb3cfb0600"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-P-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "1da74af8-a0d2-469e-aa61-340712563d27"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-P-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-P-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "e3f15107-09be-48a4-bf09-a4caf2beefd8"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-P-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "545ded8c-9dcb-4c09-b80a-a81792448834"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-P-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "77b1ce7f-c99f-415a-87a1-d0b70e1cd09c"
* target = Reference(HospitalNotification-Ex-STIN-P-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-P-SenderOrganization)
