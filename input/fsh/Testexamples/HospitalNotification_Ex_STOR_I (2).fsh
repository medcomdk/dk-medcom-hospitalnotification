// Converted from HospitalNotification_Ex_STOR_I.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STOR-I
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "909f89db-2f6c-458d-a3e6-bda0c1603194"
* type = #message
* timestamp = 2026-03-03T14:00:12+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/098c667d-45aa-413d-a401-206ad71fa261"
* entry[=].resource = HospitalNotification-Ex-STOR-I-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/897b06a3-62cd-4098-899f-2df1a0f4cdd7"
* entry[=].resource = HospitalNotification-Ex-STOR-I-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/babe2b93-146c-4ad6-a1e4-5208363bb363"
* entry[=].resource = HospitalNotification-Ex-STOR-I-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/69543955-5b2a-4ac7-a027-bdf2e07cc665"
* entry[=].resource = HospitalNotification-Ex-STOR-I-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/a54aebb9-6c58-4e09-9675-e505b31bdbad"
* entry[=].resource = HospitalNotification-Ex-STOR-I-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/801f0c7f-fcb1-4f0d-8f2d-64f0a6a84293"
* entry[=].resource = HospitalNotification-Ex-STOR-I-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/89381d62-210c-4469-b270-2b6e7522ea57"
* entry[=].resource = HospitalNotification-Ex-STOR-I-Provenance

Instance: HospitalNotification-Ex-STOR-I-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "098c667d-45aa-413d-a401-206ad71fa261"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STOR-I-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STOR-I-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STOR-I-Encounter)

Instance: HospitalNotification-Ex-STOR-I-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "897b06a3-62cd-4098-899f-2df1a0f4cdd7"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STOR-I-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "babe2b93-146c-4ad6-a1e4-5208363bb363"
* extension[leavePeriod].valuePeriod.start = 2026-03-03T14:00:10+01:00
* status = #onleave
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STOR-I-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "11f3f352-a251-4c34-a8a5-140083826d96"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STOR-I-SenderOrganization)

Instance: HospitalNotification-Ex-STOR-I-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "69543955-5b2a-4ac7-a027-bdf2e07cc665"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STOR-I-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "a54aebb9-6c58-4e09-9675-e505b31bdbad"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STOR-I-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "801f0c7f-fcb1-4f0d-8f2d-64f0a6a84293"
* target = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STOR-I-SenderOrganization)

Instance: HospitalNotification-Ex-STOR-I-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "89381d62-210c-4469-b270-2b6e7522ea57"
* target = Reference(HospitalNotification-Ex-STOR-I-MessageHeader)
* occurredDateTime = 2026-03-03T14:00:12+01:00
* recorded = 2026-03-03T14:00:12+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #start-leave-inpatient
* agent.who = Reference(HospitalNotification-Ex-STOR-I-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
