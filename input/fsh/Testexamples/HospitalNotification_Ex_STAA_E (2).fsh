// Converted from HospitalNotification_Ex_STAA_E.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STAA-E
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "e973ba58-6562-4990-b000-f056c2875dbd"
* type = #message
* timestamp = 2026-02-28T10:00:06+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/2f861434-233b-4245-a99c-390c3d658a9c"
* entry[=].resource = HospitalNotification-Ex-STAA-E-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/abb74aca-9891-4559-b37f-01087905b4a5"
* entry[=].resource = HospitalNotification-Ex-STAA-E-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/51d5a3d2-0d93-43a1-ac75-b79a61be29d2"
* entry[=].resource = HospitalNotification-Ex-STAA-E-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/9fd5feaa-f241-4f42-b22c-88b2aa8066ce"
* entry[=].resource = HospitalNotification-Ex-STAA-E-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/dd47434b-c81e-419d-ba84-3c4fcb5fbdb0"
* entry[=].resource = HospitalNotification-Ex-STAA-E-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/f2c46e57-3909-40db-aecf-1ce52c3ff1aa"
* entry[=].resource = HospitalNotification-Ex-STAA-E-Provenance

Instance: HospitalNotification-Ex-STAA-E-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "2f861434-233b-4245-a99c-390c3d658a9c"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STAA-E-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STAA-E-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STAA-E-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STAA-E-Encounter)

Instance: HospitalNotification-Ex-STAA-E-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "abb74aca-9891-4559-b37f-01087905b4a5"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STAA-E-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "51d5a3d2-0d93-43a1-ac75-b79a61be29d2"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #EMER
* subject = Reference(HospitalNotification-Ex-STAA-E-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "6ef2055a-fea5-4d9d-826c-40b0e57b4bdf"
* period.start = 2026-02-28T10:00:04+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STAA-E-SenderOrganization)

Instance: HospitalNotification-Ex-STAA-E-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "9fd5feaa-f241-4f42-b22c-88b2aa8066ce"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STAA-E-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "dd47434b-c81e-419d-ba84-3c4fcb5fbdb0"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STAA-E-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "f2c46e57-3909-40db-aecf-1ce52c3ff1aa"
* target = Reference(HospitalNotification-Ex-STAA-E-MessageHeader)
* occurredDateTime = 2026-02-28T10:00:06+01:00
* recorded = 2026-02-28T10:00:06+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-emergency
* agent.who = Reference(HospitalNotification-Ex-STAA-E-SenderOrganization)
