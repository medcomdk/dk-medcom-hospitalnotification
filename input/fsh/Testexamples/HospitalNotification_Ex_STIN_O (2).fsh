// Converted from HospitalNotification_Ex_STIN_O.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-O
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "b4625f1e-ba87-4f11-95b2-9f1923a006ec"
* type = #message
* timestamp = 2026-05-01T06:53:57Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/78eacce0-cefb-481f-9537-ea774b44dbb2"
* entry[=].resource = HospitalNotification-Ex-STIN-O-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/5f63332c-0427-4485-8732-48202ef182cb"
* entry[=].resource = HospitalNotification-Ex-STIN-O-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/be1d103d-3e72-4a97-bc5a-02778b82566c"
* entry[=].resource = HospitalNotification-Ex-STIN-O-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/0bc7478b-8ad8-49fb-bba6-84f3fe6bafd8"
* entry[=].resource = HospitalNotification-Ex-STIN-O-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/c917962f-0d1b-4007-bdb8-746e21ed06d2"
* entry[=].resource = HospitalNotification-Ex-STIN-O-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/05ca622c-e983-4372-8cc8-dc656b70d951"
* entry[=].resource = HospitalNotification-Ex-STIN-O-Provenance

Instance: HospitalNotification-Ex-STIN-O-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "78eacce0-cefb-481f-9537-ea774b44dbb2"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-O-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-O-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-O-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-O-Encounter)

Instance: HospitalNotification-Ex-STIN-O-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "5f63332c-0427-4485-8732-48202ef182cb"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-O-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "be1d103d-3e72-4a97-bc5a-02778b82566c"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-O-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "01a37861-3f08-4c3f-b70d-ddec2527f858"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-O-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-O-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "0bc7478b-8ad8-49fb-bba6-84f3fe6bafd8"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-O-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "c917962f-0d1b-4007-bdb8-746e21ed06d2"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-O-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "05ca622c-e983-4372-8cc8-dc656b70d951"
* target = Reference(HospitalNotification-Ex-STIN-O-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-O-SenderOrganization)
