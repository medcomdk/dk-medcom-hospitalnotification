Profile: MedComHospitalNotificationMessageDefinition
Parent: MedComMessagingMessageDefinitionFhir 
Id: medcom-hospitalnotification-messagedefinition
Description: "The MessageDefinition for HospitalNotification:3.0"
* id = "MedComMessagingMessageDefinition-HospitalNotification-3-0"
* url = "urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:hospitalnotification:3.0"
* identifier.period.start = "2024-09-25"
* identifier.use = #official 
* identifier.value = "HospitalNotification"
* version = "1.0"
//* name = "HospitalNotification:3.0"
* title = "HospitalNotification 3.0"
//* replaces.value = "Eer.fhir.MessageDefinition.HomeCareObservation:2.0"
* status = #active
* date = "2024-09-25"
* copyright = "Copyright © 2024 MedCom"
//* publisher = "MedCom"
//InteroperabilityConsultant
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Thea Mentz Sørensen"
//* contact[InteroperabilityConsultant].telecom.system = #email
* contact[InteroperabilityConsultant].telecom.value = "tms@medcom.dk" 
//* contact[InteroperabilityConsultant].telecom.use = #work
//SubjectMatterExpert
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Mie Borch Dahl Ballegaard"
//* contact[SubjectMatterExpert].telecom.system = #email
* contact[SubjectMatterExpert].telecom.value = "mbk@medcom.dk" 
//* contact[SubjectMatterExpert].telecom.use = #work
* description = "DK: HospitalNotification (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.valueCodeableConcept.text = "DK: Sundhedsfaglige på sygehuset, da de indlægger og udskriver borgere, samt sender dem på orlov fra indlæggelsen og sundhedsfaglige i kommunerne der bliver adviseret om borgerens indlæggelse.. (Hvem skal anvende standarden jf. §3,3 i bekendtgørelsen)"
* purpose = "DK: At sygehuse kan advisere kommuner om indlæggelse, orlov og udskrivelse af borgere der modtager kommunal hjælp, således ydelser kan pauseres eller igangsættes. Adviset sendes både ved indlæggelser og akutte ambulante ophold. (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* eventCoding = $MessageEvents#hospital-notification-message "Hospital Notification Message"
* responseRequired = #never
//* allowedResponse[+].message.value = "Eer.fhir.MessageDefinition.Acknowledgement:2.0"
//* allowedResponse[+].message.value = "http://medcomfhir.dk/ig/acknowledgement/ImplementationGuide/medcom.fhir.dk.acknowledgement"
//* allowedResponse[+].message.value = "http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-careCommunication-message"

