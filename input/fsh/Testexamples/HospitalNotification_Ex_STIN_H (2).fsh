// Converted from HospitalNotification_Ex_STIN_H.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-H
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "ea89d119-ca44-4159-a8d9-8dd13e399718"
* type = #message
* timestamp = 2026-05-01T06:32:09Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/929ec77e-42c3-44e5-9960-95fdf54eeb75"
* entry[=].resource = HospitalNotification-Ex-STIN-H-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/d7750222-adea-43b8-97eb-c7cf12df3e35"
* entry[=].resource = HospitalNotification-Ex-STIN-H-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/4c40ff8c-3095-4b7d-9038-43da28fb3fdf"
* entry[=].resource = HospitalNotification-Ex-STIN-H-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/ec0e6cb6-5052-4ef2-a081-5d6dbe9b462d"
* entry[=].resource = HospitalNotification-Ex-STIN-H-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/92df0f80-aae2-46d0-86cc-a8c85dfb333c"
* entry[=].resource = HospitalNotification-Ex-STIN-H-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/83406e64-cf3a-4f44-8e0b-a5109abc9feb"
* entry[=].resource = HospitalNotification-Ex-STIN-H-Provenance

Instance: HospitalNotification-Ex-STIN-H-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "929ec77e-42c3-44e5-9960-95fdf54eeb75"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-H-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-H-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-H-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-H-Encounter)

Instance: HospitalNotification-Ex-STIN-H-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "d7750222-adea-43b8-97eb-c7cf12df3e35"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-H-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "4c40ff8c-3095-4b7d-9038-43da28fb3fdf"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-H-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "d3d03544-f116-4070-a823-d5c64e6a7c46"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-H-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-H-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "ec0e6cb6-5052-4ef2-a081-5d6dbe9b462d"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-H-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "92df0f80-aae2-46d0-86cc-a8c85dfb333c"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-H-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "83406e64-cf3a-4f44-8e0b-a5109abc9feb"
* target = Reference(HospitalNotification-Ex-STIN-H-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-H-SenderOrganization)
