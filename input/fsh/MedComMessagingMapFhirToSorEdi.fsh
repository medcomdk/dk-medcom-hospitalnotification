Instance: medcom-messaging-mapFhirToSorEdi
InstanceOf: ConceptMap
Title: "MedComMessagingMapFhirToSorEdi"
Description: "MedCom Messaging Map Fhir message names To SOREDI message names"
* name = "MedComMessagingMapFhirToSorEdi"
* title = "MedCom Messaging Map Fhir message names To SOREDI message names"
* description = "MedCom Messaging Map Fhir message names To SOREDI message names"
* status = #active
* sourceUri = Canonical(MedComMessagingMessageTypes)
* targetUri = Canonical(MedComMessagingSorEdiValues)
* group.element[+].code = #care-communication-message
* group.element[=].display = "FHIR: Care Communication Message (Korrepondance meddelelse)"
* group.element[=].target.code = #FDIS91
* group.element[=].target.display = "SOREDI: Care Communication Message (Korrepondance meddelelse)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #hospital-notification-message
* group.element[=].display = "FHIR: Hospital Notification Message (Advis om Sygehusophold)"
* group.element[=].target.code = #FDIS20
* group.element[=].target.display = "SOREDI: Hospital Notification Message (Advis om Sygehusophold)"
* group.element[=].target.equivalence = #equivalent
