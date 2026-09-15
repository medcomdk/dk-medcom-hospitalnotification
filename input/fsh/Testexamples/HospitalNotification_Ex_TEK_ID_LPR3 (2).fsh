// Converted from HospitalNotification_Ex_TEK_ID_LPR3.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-ID-LPR3
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "9e7da343-d585-4cca-b3bb-e06ea27ae62a"
* type = #message
* timestamp = 2026-03-01T12:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/2ed179eb-69b8-4241-9183-3d4b15da9856"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LPR3-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/b9756955-e933-4133-8083-74ab2aa51a23"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LPR3-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/59a01e8f-87bb-4f6e-9036-a37f8922318c"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LPR3-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/bd18a704-6d5f-47c3-8759-f47038e03edb"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LPR3-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/267cc253-1acc-4e89-a490-2f9c63b34693"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LPR3-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/5f6ad22a-0f14-44bc-bafa-71e7ddd4d6af"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LPR3-Provenance

Instance: HospitalNotification-Ex-TEK-ID-LPR3-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "2ed179eb-69b8-4241-9183-3d4b15da9856"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-TEK-ID-LPR3-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-ID-LPR3-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-ID-LPR3-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-ID-LPR3-Encounter)

Instance: HospitalNotification-Ex-TEK-ID-LPR3-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "b9756955-e933-4133-8083-74ab2aa51a23"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-TEK-ID-LPR3-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "59a01e8f-87bb-4f6e-9036-a37f8922318c"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-TEK-ID-LPR3-Patient)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:58dbb38a-f340-5532-ba18-05c935fa7d8e"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-ID-LPR3-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-ID-LPR3-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "bd18a704-6d5f-47c3-8759-f47038e03edb"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-ID-LPR3-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "267cc253-1acc-4e89-a490-2f9c63b34693"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-ID-LPR3-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "5f6ad22a-0f14-44bc-bafa-71e7ddd4d6af"
* target = Reference(HospitalNotification-Ex-TEK-ID-LPR3-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:00+01:00
* recorded = 2026-03-01T12:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-TEK-ID-LPR3-SenderOrganization)
