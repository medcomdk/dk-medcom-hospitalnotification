// Converted from HospitalNotification_Ex_TEK_ID_2.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-TEK-ID-2
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "7b380ba1-6d36-4c59-9878-1d9875011a6b"
* type = #message
* timestamp = 2026-03-01T12:00:00+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/3143b6b9-2b69-42cf-9656-cc7bf58768f5"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-2-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/9f4f80ba-b46b-4e29-8ba7-725281b4d742"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-2-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/a926367f-fdae-4a99-89b4-f7718cb2f5ee"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-2-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/49754d17-b482-45ba-b4ee-2504e7907805"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-2-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/df1785a7-b71b-4d92-b773-90573431925d"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-2-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/dc232cb4-77bf-4da4-9e7e-1176b2786a4f"
* entry[=].resource = HospitalNotification-Ex-TEK-ID-2-Provenance

Instance: HospitalNotification-Ex-TEK-ID-2-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "3143b6b9-2b69-42cf-9656-cc7bf58768f5"
* extension[reportOfAdmissionFlag].valueBoolean = true
* extension[reportOfAdmissionRecipient].valueReference = Reference(HospitalNotification-Ex-TEK-ID-2-SenderOrganization)
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-TEK-ID-2-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-TEK-ID-2-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-TEK-ID-2-Encounter)

Instance: HospitalNotification-Ex-TEK-ID-2-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "9f4f80ba-b46b-4e29-8ba7-725281b4d742"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-TEK-ID-2-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "a926367f-fdae-4a99-89b4-f7718cb2f5ee"
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-TEK-ID-2-Patient)
* episodeOfCare[lpr3identifier].identifier.system = "https://www.esundhed.dk/Registre/Landspatientregisteret"
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:05ca2eee-b457-56b7-94bd-c121faf78b1a"
* episodeOfCare[1].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[1].identifier.value = "843080b6-f918-4789-a096-86d52bf50039"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-TEK-ID-2-SenderOrganization)

Instance: HospitalNotification-Ex-TEK-ID-2-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "49754d17-b482-45ba-b4ee-2504e7907805"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-TEK-ID-2-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "df1785a7-b71b-4d92-b773-90573431925d"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-TEK-ID-2-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "dc232cb4-77bf-4da4-9e7e-1176b2786a4f"
* target = Reference(HospitalNotification-Ex-TEK-ID-2-MessageHeader)
* occurredDateTime = 2026-03-01T12:00:00+01:00
* recorded = 2026-03-01T12:00:00+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-TEK-ID-2-SenderOrganization)
