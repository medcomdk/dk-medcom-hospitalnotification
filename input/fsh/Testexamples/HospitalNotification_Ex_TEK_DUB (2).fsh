// Converted from HospitalNotification_Ex_TEK_DUB.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-DUB
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "857fc416-31c1-4724-9a2e-da3888aa5562"
* type = #message
* timestamp = 2026-03-01T12:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/d23ba216-b8f3-4f3d-8661-2154d569b72e"
* entry[=].resource = HospitalNotification-Ex-TEK-DUB-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/5d26e918-b911-4a80-8945-e89e74ff4e2b"
* entry[=].resource = HospitalNotification-Ex-TEK-DUB-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/e2790ffd-4e05-490e-8b6e-817abdfd65cf"
* entry[=].resource = HospitalNotification-Ex-TEK-DUB-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/d408f78c-0116-4bb1-aaaf-1d4d3ba00ebc"
* entry[=].resource = HospitalNotification-Ex-TEK-DUB-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/3a11330b-fac6-4643-9685-4dafe4fb94be"
* entry[=].resource = HospitalNotification-Ex-TEK-DUB-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/b2702510-64a9-439a-8e27-146f8f95f48c"
* entry[=].resource = HospitalNotification-Ex-TEK-DUB-Provenance

Instance: HospitalNotification-Ex-TEK-DUB-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "d23ba216-b8f3-4f3d-8661-2154d569b72e"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-TEK-DUB-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-DUB-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-DUB-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-DUB-Encounter)

Instance: HospitalNotification-Ex-TEK-DUB-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "5d26e918-b911-4a80-8945-e89e74ff4e2b"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-TEK-DUB-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "e2790ffd-4e05-490e-8b6e-817abdfd65cf"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-TEK-DUB-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "9840fa2e-3cfc-4a5b-ba2d-bb62d9b080d4"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-DUB-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-DUB-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "d408f78c-0116-4bb1-aaaf-1d4d3ba00ebc"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-DUB-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "3a11330b-fac6-4643-9685-4dafe4fb94be"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-DUB-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "b2702510-64a9-439a-8e27-146f8f95f48c"
* target = Reference(HospitalNotification-Ex-TEK-DUB-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:00+01:00
* recorded = 2026-03-01T12:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-TEK-DUB-SenderOrganization)
