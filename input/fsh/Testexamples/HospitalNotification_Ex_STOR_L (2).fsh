// Converted from HospitalNotification_Ex_STOR_L.json
// Resource ids are new UUIDv4 values; timestamps from 2023 are moved to 2026.

Instance: HospitalNotification-Ex-STOR-L
InstanceOf: MedComHospitalNotificationMessage
Usage: #example
* id = "172992fd-7910-486b-9039-ae58de0786c8"
* type = #message
* timestamp = 2026-03-03T14:00:12+01:00
* entry[0].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/MessageHeader/b4201c95-ff1b-4d1a-8a90-be26026ce814"
* entry[=].resource = HospitalNotification-Ex-STOR-L-MessageHeader
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Patient/c384feb9-47c2-4d62-b1be-9c1d988daa1e"
* entry[=].resource = HospitalNotification-Ex-STOR-L-Patient
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Encounter/86523ca4-cc5e-4b51-a588-9f8c1bb3c825"
* entry[=].resource = HospitalNotification-Ex-STOR-L-Encounter
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/59750f0d-ce2a-47b7-a8fb-35d82cb450f9"
* entry[=].resource = HospitalNotification-Ex-STOR-L-ReceiverOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Organization/95457f01-ee88-4cf5-91dd-0da34f513d61"
* entry[=].resource = HospitalNotification-Ex-STOR-L-SenderOrganization
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/a4595817-cdc5-4cb9-89d9-96a1fc35366f"
* entry[=].resource = HospitalNotification-Ex-STOR-L-Provenance-History-1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/hospitalnotification/Provenance/e539520d-38ee-4774-a893-5e1d1b68c0ae"
* entry[=].resource = HospitalNotification-Ex-STOR-L-Provenance

Instance: HospitalNotification-Ex-STOR-L-MessageHeader
InstanceOf: MedComHospitalNotificationMessageHeader
Usage: #example
* id = "b4201c95-ff1b-4d1a-8a90-be26026ce814"
* eventCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-eventCodes"
* eventCoding.code = #hospital-notification-message
* destination[primary].extension[use].valueCoding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-destinationUse"
* destination[primary].extension[use].valueCoding.code = #primary
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(HospitalNotification-Ex-STOR-L-ReceiverOrganization)
* sender = Reference(HospitalNotification-Ex-STOR-L-SenderOrganization)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(HospitalNotification-Ex-STOR-L-Encounter)

Instance: HospitalNotification-Ex-STOR-L-Patient
InstanceOf: MedComCorePatient
Usage: #example
* id = "c384feb9-47c2-4d62-b1be-9c1d988daa1e"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

Instance: HospitalNotification-Ex-STOR-L-Encounter
InstanceOf: MedComHospitalNotificationEncounter
Usage: #example
* id = "86523ca4-cc5e-4b51-a588-9f8c1bb3c825"
* extension[leavePeriod].valuePeriod.start = 2026-03-03T14:00:10+01:00
* status = #onleave
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* subject = Reference(HospitalNotification-Ex-STOR-L-Patient)
* episodeOfCare[0].identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* episodeOfCare[0].identifier.value = "d340897d-f650-4589-abe7-95ae467623f7"
* period.start = 2026-03-01T12:00:00+01:00
* serviceProvider = Reference(HospitalNotification-Ex-STOR-L-SenderOrganization)

Instance: HospitalNotification-Ex-STOR-L-ReceiverOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "59750f0d-ce2a-47b7-a8fb-35d82cb450f9"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790001348120"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "953741000016009"
* name = "Plejecenter Herlev"

Instance: HospitalNotification-Ex-STOR-L-SenderOrganization
InstanceOf: MedComMessagingOrganization
Usage: #example
* id = "95457f01-ee88-4cf5-91dd-0da34f513d61"
* identifier[EAN-ID].system = "https://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000209354"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "265161000016000"
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: HospitalNotification-Ex-STOR-L-Provenance-History-1
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "a4595817-cdc5-4cb9-89d9-96a1fc35366f"
* target = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
* occurredDateTime = 2026-03-01T12:00:02+01:00
* recorded = 2026-03-01T12:00:02+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #admit-inpatient
* agent.who = Reference(HospitalNotification-Ex-STOR-L-SenderOrganization)

Instance: HospitalNotification-Ex-STOR-L-Provenance
InstanceOf: MedComMessagingProvenance
Usage: #example
* id = "e539520d-38ee-4774-a893-5e1d1b68c0ae"
* target = Reference(HospitalNotification-Ex-STOR-L-MessageHeader)
* occurredDateTime = 2026-03-03T14:00:12+01:00
* recorded = 2026-03-03T14:00:12+01:00
* activity.coding.system = "http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code = #start-leave-inpatient
* agent.who = Reference(HospitalNotification-Ex-STOR-L-SenderOrganization)
* entity.role = #revision
* entity.what = Reference(MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc399006)
