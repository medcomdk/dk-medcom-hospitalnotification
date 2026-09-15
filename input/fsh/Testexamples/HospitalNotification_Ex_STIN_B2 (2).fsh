// Converted from HospitalNotification_Ex_STIN_B2.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STIN-B2
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "373df375-0eee-4d48-9fee-2381991d55ba"
* type = #message
* timestamp = 2026-03-01T20:35:00Z
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/dada45aa-02d8-45e9-bc25-df16aa27a18f"
* entry[=].resource = HospitalNotification-Ex-STIN-B2-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/23e37e80-c3cc-49bc-8966-0c0d2130665b"
* entry[=].resource = HospitalNotification-Ex-STIN-B2-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/46014cf9-efa2-4307-adc1-e52aa4eefd97"
* entry[=].resource = HospitalNotification-Ex-STIN-B2-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/30c775cd-aa77-43eb-95ed-42f348362d56"
* entry[=].resource = HospitalNotification-Ex-STIN-B2-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/8daf614b-5d87-4aa7-8829-186ed1323f9a"
* entry[=].resource = HospitalNotification-Ex-STIN-B2-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/432021c5-eaf3-4e64-8199-bdd2b2c1c676"
* entry[=].resource = HospitalNotification-Ex-STIN-B2-Provenance

Instance: HospitalNotification-Ex-STIN-B2-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "dada45aa-02d8-45e9-bc25-df16aa27a18f"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-STIN-B2-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STIN-B2-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STIN-B2-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=502701000016000"
* focus = Reference(HospitalNotification-Ex-STIN-B2-Encounter)

Instance: HospitalNotification-Ex-STIN-B2-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "23e37e80-c3cc-49bc-8966-0c0d2130665b"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STIN-B2-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "46014cf9-efa2-4307-adc1-e52aa4eefd97"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STIN-B2-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "16b2bf28-921c-4553-9925-1bc1b0dfd54e"
* period.start = 2026-03-01T20:35:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STIN-B2-SenderOrganization)

Instance: HospitalNotification-Ex-STIN-B2-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "30c775cd-aa77-43eb-95ed-42f348362d56"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STIN-B2-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "8daf614b-5d87-4aa7-8829-186ed1323f9a"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790002003325"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "502701000016000"
* name = "SHS Ældresygdomme"

Instance: HospitalNotification-Ex-STIN-B2-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "432021c5-eaf3-4e64-8199-bdd2b2c1c676"
* target = Reference(HospitalNotification-Ex-STIN-B2-MessageHeader)
* occurredDateTime = 2026-03-01T20:35:00+01:00
* recorded = 2026-03-01T20:35:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STIN-B2-SenderOrganization)
