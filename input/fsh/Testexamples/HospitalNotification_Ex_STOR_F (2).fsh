// Converted from HospitalNotification_Ex_STOR_F.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STOR-F
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "36c3dd0e-7212-4e97-b857-507f91a36ee5"
* type = #message
* timestamp = 2026-03-03T14:00:12+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/59834325-8e58-487f-b20d-ef1ee287cbda"
* entry[=].resource = HospitalNotification-Ex-STOR-F-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/14245a8f-4117-41b9-af07-7a8a80f42651"
* entry[=].resource = HospitalNotification-Ex-STOR-F-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/a3ec0be5-c95c-41a6-aa5f-4b9dd783380b"
* entry[=].resource = HospitalNotification-Ex-STOR-F-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/764cb21c-5fb6-4b30-bd1b-e1161ec175c1"
* entry[=].resource = HospitalNotification-Ex-STOR-F-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/efa7b1cc-d159-4391-b284-65856f53a34e"
* entry[=].resource = HospitalNotification-Ex-STOR-F-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/cb710de9-7587-448f-a558-cc79258b6723"
* entry[=].resource = HospitalNotification-Ex-STOR-F-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/5d586378-5ae5-42e3-8499-24a720f24dd3"
* entry[=].resource = HospitalNotification-Ex-STOR-F-Provenance

Instance: HospitalNotification-Ex-STOR-F-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "59834325-8e58-487f-b20d-ef1ee287cbda"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STOR-F-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STOR-F-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STOR-F-Encounter)

Instance: HospitalNotification-Ex-STOR-F-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "14245a8f-4117-41b9-af07-7a8a80f42651"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STOR-F-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "a3ec0be5-c95c-41a6-aa5f-4b9dd783380b"
* extension[leavePeriod].valuePeriod.start = 2026-03-03T14:00:10+01:00
* status = #onleave
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STOR-F-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "49a2b22b-f628-4468-9ba9-b6c0db4a6871"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STOR-F-SenderOrganization)

Instance: HospitalNotification-Ex-STOR-F-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "764cb21c-5fb6-4b30-bd1b-e1161ec175c1"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STOR-F-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "efa7b1cc-d159-4391-b284-65856f53a34e"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STOR-F-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "cb710de9-7587-448f-a558-cc79258b6723"
* target = Reference(MessageHeader/568dd4b1-720a-444f-a2c5-9090fd5701fd)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STOR-F-SenderOrganization)

Instance: HospitalNotification-Ex-STOR-F-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "5d586378-5ae5-42e3-8499-24a720f24dd3"
* target = Reference(HospitalNotification-Ex-STOR-F-MessageHeader)
* occurredDateTime = 2026-03-03T14:00:12+01:00
* recorded = 2026-03-03T14:00:12+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #start-leave-inpatient
* agent.who = Reference(HospitalNotification-Ex-STOR-F-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/568dd4b1-720a-444f-a2c5-9090fd5701fd)
