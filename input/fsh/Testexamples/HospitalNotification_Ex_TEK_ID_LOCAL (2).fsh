// Converted from HospitalNotification_Ex_TEK_ID_LOCAL.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-ID-LOCAL
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "9a1b6304-9a5e-41d4-9460-442cc11d4d6c"
* type = #message
* timestamp = 2026-03-01T12:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/3f3f4b46-172d-4781-a168-dc3d9cd215cb"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LOCAL-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/d1af942d-5825-457b-857f-4a6c68078b93"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LOCAL-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/1516f486-4e27-4da1-ac33-aa3a2b022fc6"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LOCAL-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/63f4dc39-831c-42fc-b54f-e866e555750d"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LOCAL-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/e2e564e6-fb51-4a61-ac1d-15fa69973bd0"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LOCAL-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/4ad24c6c-4f1a-4922-a8ad-9c09d39f7dcc"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-LOCAL-Provenance

Instance: HospitalNotification-Ex-TEK-ID-LOCAL-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "3f3f4b46-172d-4781-a168-dc3d9cd215cb"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-TEK-ID-LOCAL-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-ID-LOCAL-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-ID-LOCAL-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-ID-LOCAL-Encounter)

Instance: HospitalNotification-Ex-TEK-ID-LOCAL-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "d1af942d-5825-457b-857f-4a6c68078b93"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-TEK-ID-LOCAL-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "1516f486-4e27-4da1-ac33-aa3a2b022fc6"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-TEK-ID-LOCAL-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "b7283058-7a67-4220-a6d1-1aba31581a86"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-ID-LOCAL-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-ID-LOCAL-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "63f4dc39-831c-42fc-b54f-e866e555750d"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-ID-LOCAL-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "e2e564e6-fb51-4a61-ac1d-15fa69973bd0"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-ID-LOCAL-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "4ad24c6c-4f1a-4922-a8ad-9c09d39f7dcc"
* target = Reference(HospitalNotification-Ex-TEK-ID-LOCAL-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:00+01:00
* recorded = 2026-03-01T12:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-TEK-ID-LOCAL-SenderOrganization)
