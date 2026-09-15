// Converted from HospitalNotification_Ex_STIN_G.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-G
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "912b06fc-5530-444b-abe1-ea06eee61cce"
* type = #message
* timestamp = 2026-05-01T07:20:56Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/fe400034-8a4b-4998-94f4-aef6840c647d"
* entry[=].resource = HospitalNotification-Ex-STIN-G-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/f3bba9c9-cbd0-460f-aeeb-e3afcfed8993"
* entry[=].resource = HospitalNotification-Ex-STIN-G-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/80e454b0-f910-412d-81d9-30f9a5b28483"
* entry[=].resource = HospitalNotification-Ex-STIN-G-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/95c682b6-2579-4867-bbf8-2309b96becaa"
* entry[=].resource = HospitalNotification-Ex-STIN-G-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/bebbaee3-7891-414d-a420-a057a72a4969"
* entry[=].resource = HospitalNotification-Ex-STIN-G-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/390da08b-6a5c-4cf1-8a92-b1e2a3788da4"
* entry[=].resource = HospitalNotification-Ex-STIN-G-Provenance

Instance: HospitalNotification-Ex-STIN-G-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "fe400034-8a4b-4998-94f4-aef6840c647d"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-G-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-G-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-G-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-G-Encounter)

Instance: HospitalNotification-Ex-STIN-G-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "f3bba9c9-cbd0-460f-aeeb-e3afcfed8993"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-G-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "80e454b0-f910-412d-81d9-30f9a5b28483"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-G-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "04675bbd-c540-4545-924c-1fa79b64535c"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-G-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-G-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "95c682b6-2579-4867-bbf8-2309b96becaa"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-G-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "bebbaee3-7891-414d-a420-a057a72a4969"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-G-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "390da08b-6a5c-4cf1-8a92-b1e2a3788da4"
* target = Reference(HospitalNotification-Ex-STIN-G-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-G-SenderOrganization)
