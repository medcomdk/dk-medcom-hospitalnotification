// Converted from HospitalNotification_Ex_STIN_L.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-L
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "f93b6159-a99e-41cc-9e54-bdf0b4d9ed90"
* type = #message
* timestamp = 2026-05-01T06:42:55Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/aa6445b9-9e57-49af-9c94-1f17e57f4664"
* entry[=].resource = HospitalNotification-Ex-STIN-L-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/202417ab-4aa9-4032-99a6-ee668f954830"
* entry[=].resource = HospitalNotification-Ex-STIN-L-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/4f9ef9df-c696-4223-9133-8793f1be2856"
* entry[=].resource = HospitalNotification-Ex-STIN-L-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/8185eab9-3e2c-4c20-ad36-f7e827e0c8e7"
* entry[=].resource = HospitalNotification-Ex-STIN-L-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/d61d3f02-2feb-4464-8cb5-b746269beb30"
* entry[=].resource = HospitalNotification-Ex-STIN-L-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/554d2fa8-3bdd-4fda-879a-50058aa87a8c"
* entry[=].resource = HospitalNotification-Ex-STIN-L-Provenance

Instance: HospitalNotification-Ex-STIN-L-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "aa6445b9-9e57-49af-9c94-1f17e57f4664"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-L-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-L-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-L-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-L-Encounter)

Instance: HospitalNotification-Ex-STIN-L-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "202417ab-4aa9-4032-99a6-ee668f954830"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-L-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "4f9ef9df-c696-4223-9133-8793f1be2856"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-L-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "d340897d-f650-4589-abe7-95ae467623f7"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-L-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-L-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "8185eab9-3e2c-4c20-ad36-f7e827e0c8e7"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-L-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "d61d3f02-2feb-4464-8cb5-b746269beb30"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-L-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "554d2fa8-3bdd-4fda-879a-50058aa87a8c"
* target = Reference(HospitalNotification-Ex-STIN-L-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-L-SenderOrganization)
