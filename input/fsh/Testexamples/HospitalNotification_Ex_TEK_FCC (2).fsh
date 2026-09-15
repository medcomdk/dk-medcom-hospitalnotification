// Converted from HospitalNotification_Ex_TEK_FCC.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-FCC
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "920d2d1e-8c21-462c-9917-10b18eefba3f"
* type = #message
* timestamp = 2026-03-01T12:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/32b8769d-e945-46d3-b2c0-126095c01932"
* entry[=].resource = HospitalNotification-Ex-TEK-FCC-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/5f896374-076b-4fc3-862d-dc36f3dfb2fb"
* entry[=].resource = HospitalNotification-Ex-TEK-FCC-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/db7bdb38-ca3a-483a-8553-2a59b7094cbe"
* entry[=].resource = HospitalNotification-Ex-TEK-FCC-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/8fc78830-ed1c-4774-917a-0aa460155073"
* entry[=].resource = HospitalNotification-Ex-TEK-FCC-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/8c3f2c6f-d23e-41de-97a2-8a25bc977084"
* entry[=].resource = HospitalNotification-Ex-TEK-FCC-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/86c9cc46-1835-4c30-a028-caf3851f80af"
* entry[=].resource = HospitalNotification-Ex-TEK-FCC-Provenance

Instance: HospitalNotification-Ex-TEK-FCC-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "32b8769d-e945-46d3-b2c0-126095c01932"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-TEK-FCC-SenderOrganization)
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-FCC-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-FCC-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-FCC-Encounter)

Instance: HospitalNotification-Ex-TEK-FCC-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "5f896374-076b-4fc3-862d-dc36f3dfb2fb"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-TEK-FCC-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "db7bdb38-ca3a-483a-8553-2a59b7094cbe"
* status = #in-progress
* class = #IMP
* subject = Reference(HospitalNotification-Ex-TEK-FCC-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "e2e8453c-2ad1-4c60-b94e-e69699443e03"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-FCC-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-FCC-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "8fc78830-ed1c-4774-917a-0aa460155073"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-FCC-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "8c3f2c6f-d23e-41de-97a2-8a25bc977084"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-FCC-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "86c9cc46-1835-4c30-a028-caf3851f80af"
* target = Reference(HospitalNotification-Ex-TEK-FCC-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:00+01:00
* recorded = 2026-03-01T12:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-TEK-FCC-SenderOrganization)
