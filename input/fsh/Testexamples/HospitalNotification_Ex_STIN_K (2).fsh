// Converted from HospitalNotification_Ex_STIN_K.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-K
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "7502c124-03b0-4347-8edf-424b0c978627"
* type = #message
* timestamp = 2026-05-01T06:39:47Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/6644d2a0-2d3e-432a-9b00-20f69ac4fedf"
* entry[=].resource = HospitalNotification-Ex-STIN-K-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/95fa11b9-c38e-4b5c-b157-6ed50e8f06db"
* entry[=].resource = HospitalNotification-Ex-STIN-K-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/20e7faaf-bd52-48e9-a68b-080ddf0845e7"
* entry[=].resource = HospitalNotification-Ex-STIN-K-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/66d40ab5-e45b-4ae9-b0ca-cc3b6b18ff12"
* entry[=].resource = HospitalNotification-Ex-STIN-K-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/bd297b28-2363-4b5a-9ea1-c2cc2d3b446e"
* entry[=].resource = HospitalNotification-Ex-STIN-K-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/0cf85ac0-306f-4fbb-b230-0dc02add0239"
* entry[=].resource = HospitalNotification-Ex-STIN-K-Provenance

Instance: HospitalNotification-Ex-STIN-K-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "6644d2a0-2d3e-432a-9b00-20f69ac4fedf"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-K-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-K-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-K-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-K-Encounter)

Instance: HospitalNotification-Ex-STIN-K-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "95fa11b9-c38e-4b5c-b157-6ed50e8f06db"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-K-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "20e7faaf-bd52-48e9-a68b-080ddf0845e7"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-K-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "26260217-2aab-4388-8c78-657a5deb9ce7"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-K-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-K-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "66d40ab5-e45b-4ae9-b0ca-cc3b6b18ff12"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-K-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "bd297b28-2363-4b5a-9ea1-c2cc2d3b446e"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-K-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "0cf85ac0-306f-4fbb-b230-0dc02add0239"
* target = Reference(HospitalNotification-Ex-STIN-K-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-K-SenderOrganization)
