// Converted from HospitalNotification_Ex_MORS_J.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-MORS-J
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "de256b2f-7129-4d43-9922-86780f9d80f4"
* type = #message
* timestamp = 2026-03-01T12:00:02+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/1bc013ba-f6e6-46d7-a27b-80b07608e431"
* entry[=].resource = HospitalNotification-Ex-MORS-J-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/0dc0dfce-da8f-466e-899e-6382155f8930"
* entry[=].resource = HospitalNotification-Ex-MORS-J-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/c9761285-0e10-4c56-a1e4-2bfcb93195b3"
* entry[=].resource = HospitalNotification-Ex-MORS-J-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/2ac87f67-8627-43cf-9403-a7f690228a2e"
* entry[=].resource = HospitalNotification-Ex-MORS-J-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/0dc19a28-3251-49b4-9875-8bf988d4d070"
* entry[=].resource = HospitalNotification-Ex-MORS-J-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/5643da30-ee38-4358-ad63-c4761f979cdd"
* entry[=].resource = HospitalNotification-Ex-MORS-J-Provenance

Instance: HospitalNotification-Ex-MORS-J-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "1bc013ba-f6e6-46d7-a27b-80b07608e431"
* extension[reportOfAdmissionFlag].valueBoolean = false
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-MORS-J-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-MORS-J-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-MORS-J-Encounter)

Instance: HospitalNotification-Ex-MORS-J-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "0dc0dfce-da8f-466e-899e-6382155f8930"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* deceasedBoolean = true

Instance: HospitalNotification-Ex-MORS-J-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "c9761285-0e10-4c56-a1e4-2bfcb93195b3"
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-MORS-J-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "5bdbd69c-8dd2-46c3-8530-accec273bc59"
* period.start = 2026-03-01T12:00:00+01:00
* period.end = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-MORS-J-SenderOrganization)

Instance: HospitalNotification-Ex-MORS-J-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "2ac87f67-8627-43cf-9403-a7f690228a2e"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-MORS-J-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "0dc19a28-3251-49b4-9875-8bf988d4d070"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-MORS-J-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "5643da30-ee38-4358-ad63-c4761f979cdd"
* target = Reference(HospitalNotification-Ex-MORS-J-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-MORS-J-SenderOrganization)
