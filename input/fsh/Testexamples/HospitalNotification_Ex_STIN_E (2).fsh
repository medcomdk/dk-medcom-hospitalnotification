// Converted from HospitalNotification_Ex_STIN_E.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-E
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "69b98015-a0af-4e09-99bf-85e08a62479c"
* type = #message
* timestamp = 2026-03-01T15:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/763bc395-87e0-47f7-9f2a-6ae2d757a8f8"
* entry[=].resource = HospitalNotification-Ex-STIN-E-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/81475df1-4b9f-4912-ba64-eeb6e0099c07"
* entry[=].resource = HospitalNotification-Ex-STIN-E-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/4b1dad83-231b-4bac-8fa6-e1aeb2ae696e"
* entry[=].resource = HospitalNotification-Ex-STIN-E-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/c1d21101-6556-4fff-8adc-686344180e22"
* entry[=].resource = HospitalNotification-Ex-STIN-E-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/5cec029f-c4fe-46ce-9cb7-7244283bb98a"
* entry[=].resource = HospitalNotification-Ex-STIN-E-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/a48b61e2-1636-4d51-a472-f54a681834ff"
* entry[=].resource = HospitalNotification-Ex-STIN-E-Provenance
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/77c43973-bcae-4981-95ea-a0e523acd34c"
* entry[=].resource = HospitalNotification-Ex-STIN-E-Provenance-History-1

Instance: HospitalNotification-Ex-STIN-E-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "763bc395-87e0-47f7-9f2a-6ae2d757a8f8"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-E-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-E-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STIN-E-Encounter)

Instance: HospitalNotification-Ex-STIN-E-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "81475df1-4b9f-4912-ba64-eeb6e0099c07"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-E-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "4b1dad83-231b-4bac-8fa6-e1aeb2ae696e"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-E-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "6ef2055a-fea5-4d9d-826c-40b0e57b4bdf"
* period.start = 2026-03-01T15:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-E-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-E-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "c1d21101-6556-4fff-8adc-686344180e22"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STIN-E-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "5cec029f-c4fe-46ce-9cb7-7244283bb98a"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-E-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "a48b61e2-1636-4d51-a472-f54a681834ff"
* target = Reference(HospitalNotification-Ex-STIN-E-MessageHeader)
* occurredDateTime = 2026-03-01T15:00:00+01:00
* recorded = 2026-03-01T15:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-E-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/2f861434-233b-4245-a99c-390c3d658a9c)

Instance: HospitalNotification-Ex-STIN-E-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "77c43973-bcae-4981-95ea-a0e523acd34c"
* target = Reference(MessageHeader/2f861434-233b-4245-a99c-390c3d658a9c)
* occurredDateTime = 2026-02-28T14:00:06+01:00
* recorded = 2026-02-28T14:00:06+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-emergency
* agent.who = Reference(HospitalNotification-Ex-STIN-E-SenderOrganization)
