// Converted from HospitalNotification_Ex_STIN_C2.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-C2
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "cbe04525-e949-4b14-b0e5-d6ac74053543"
* type = #message
* timestamp = 2026-05-01T07:17:22Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/03feaa1b-7be8-4007-8824-cf1d450273c1"
* entry[=].resource = HospitalNotification-Ex-STIN-C2-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/72454cb6-5245-43a0-bdd1-5d87ce881e9f"
* entry[=].resource = HospitalNotification-Ex-STIN-C2-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/b1b1f9ea-fd14-4de0-87f9-2bec6bee5a8f"
* entry[=].resource = HospitalNotification-Ex-STIN-C2-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/deb33f63-20f9-489e-b4d3-ae3bf0cc6ecc"
* entry[=].resource = HospitalNotification-Ex-STIN-C2-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/d135cce9-97de-4bab-b7aa-79cbc6e7012c"
* entry[=].resource = HospitalNotification-Ex-STIN-C2-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/4b608f90-c879-4834-80e4-36e5e137a059"
* entry[=].resource = HospitalNotification-Ex-STIN-C2-Provenance

Instance: HospitalNotification-Ex-STIN-C2-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "03feaa1b-7be8-4007-8824-cf1d450273c1"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-C2-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-C2-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=923071000016002"
* focus = Reference(HospitalNotification-Ex-STIN-C2-Encounter)

Instance: HospitalNotification-Ex-STIN-C2-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "72454cb6-5245-43a0-bdd1-5d87ce881e9f"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-C2-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "b1b1f9ea-fd14-4de0-87f9-2bec6bee5a8f"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-C2-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "54413373-cd42-4004-904c-7a2c3e4aa8b6"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-C2-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-C2-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "deb33f63-20f9-489e-b4d3-ae3bf0cc6ecc"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-C2-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "d135cce9-97de-4bab-b7aa-79cbc6e7012c"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790002411113"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "923071000016002"
* name = "Geriatrisk Sengeafdeling G"

Instance: HospitalNotification-Ex-STIN-C2-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "4b608f90-c879-4834-80e4-36e5e137a059"
* target = Reference(HospitalNotification-Ex-STIN-C2-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-C2-SenderOrganization)
