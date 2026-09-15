// Converted from HospitalNotification_Ex_STAA_D.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STAA-D
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "bec4ba50-a0ed-4d98-a618-78ec3c5ed4c3"
* type = #message
* timestamp = 2026-02-28T10:00:06+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/f8acf62f-66e9-4f2b-a176-e40f668331c8"
* entry[=].resource = HospitalNotification-Ex-STAA-D-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/4db66706-58e2-45f4-9fae-81a01e008675"
* entry[=].resource = HospitalNotification-Ex-STAA-D-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/7a66df38-3cd6-4418-a08d-4a344f78be06"
* entry[=].resource = HospitalNotification-Ex-STAA-D-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/04910f14-b85b-401f-b303-a939be8038fe"
* entry[=].resource = HospitalNotification-Ex-STAA-D-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/9da96249-762f-4b2f-b5a2-6be9595f6175"
* entry[=].resource = HospitalNotification-Ex-STAA-D-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/a484da1b-7844-49b2-b395-762bf82a5e40"
* entry[=].resource = HospitalNotification-Ex-STAA-D-Provenance

Instance: HospitalNotification-Ex-STAA-D-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "f8acf62f-66e9-4f2b-a176-e40f668331c8"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STAA-D-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STAA-D-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STAA-D-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STAA-D-Encounter)

Instance: HospitalNotification-Ex-STAA-D-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "4db66706-58e2-45f4-9fae-81a01e008675"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STAA-D-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "7a66df38-3cd6-4418-a08d-4a344f78be06"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
* subject = Reference(HospitalNotification-Ex-STAA-D-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "c1280ebe-676b-480f-b27c-545972b4888e"
* period.start = 2026-02-28T10:00:04+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STAA-D-SenderOrganization)

Instance: HospitalNotification-Ex-STAA-D-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "04910f14-b85b-401f-b303-a939be8038fe"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STAA-D-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "9da96249-762f-4b2f-b5a2-6be9595f6175"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STAA-D-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "a484da1b-7844-49b2-b395-762bf82a5e40"
* target = Reference(HospitalNotification-Ex-STAA-D-MessageHeader)
* occurredDateTime = 2026-02-28T10:00:06+01:00
* recorded = 2026-02-28T10:00:06+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-emergency
* agent.who = Reference(HospitalNotification-Ex-STAA-D-SenderOrganization)
