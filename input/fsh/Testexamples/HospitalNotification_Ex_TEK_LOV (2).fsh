// Converted from HospitalNotification_Ex_TEK_LOV.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-LOV
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "d2877e2d-4887-4bab-8f04-52c6fc805160"
* type = #message
* timestamp = 2026-03-01T12:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/76b48877-8cf3-4f61-b815-6271bcb214b9"
* entry[=].resource = HospitalNotification-Ex-TEK-LOV-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/608ffa0b-3735-40c2-a890-50deb48547f5"
* entry[=].resource = HospitalNotification-Ex-TEK-LOV-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/adb227cd-fbc2-4bbd-86c0-d3f80eedf5fa"
* entry[=].resource = HospitalNotification-Ex-TEK-LOV-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/6d405f34-c455-4ae7-8f66-fbc2e7bfbd63"
* entry[=].resource = HospitalNotification-Ex-TEK-LOV-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/ffad479a-c1a6-40d1-abc7-f7b444d41b9b"
* entry[=].resource = HospitalNotification-Ex-TEK-LOV-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/43965cfa-3d41-434b-b1a2-ed97a6297319"
* entry[=].resource = HospitalNotification-Ex-TEK-LOV-Provenance

Instance: HospitalNotification-Ex-TEK-LOV-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "76b48877-8cf3-4f61-b815-6271bcb214b9"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-TEK-LOV-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-LOV-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-LOV-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-LOV-Encounter)

Instance: HospitalNotification-Ex-TEK-LOV-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "608ffa0b-3735-40c2-a890-50deb48547f5"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2103009996"
* name[official].use = #official
* name[official].family = "Hansen"
* name[official].given[0] = "Kaja"
* name[official].given[1] = "Test"

Instance: HospitalNotification-Ex-TEK-LOV-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "adb227cd-fbc2-4bbd-86c0-d3f80eedf5fa"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-TEK-LOV-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "1fda267f-cf5f-41b0-b433-2343f69fcd9b"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-LOV-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-LOV-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "6d405f34-c455-4ae7-8f66-fbc2e7bfbd63"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-LOV-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "ffad479a-c1a6-40d1-abc7-f7b444d41b9b"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-LOV-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "43965cfa-3d41-434b-b1a2-ed97a6297319"
* target = Reference(HospitalNotification-Ex-TEK-LOV-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:00+01:00
* recorded = 2026-03-01T12:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-TEK-LOV-SenderOrganization)
