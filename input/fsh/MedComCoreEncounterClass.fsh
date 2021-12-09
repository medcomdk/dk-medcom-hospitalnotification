Alias: $ClassCode = http://terminology.hl7.org/CodeSystem/v3-ActCode

CodeSystem: MedComCoreEncounterActCodes
Id: medcom-core-encounterActCodes
Title: "MedComCoreEncounterActCodes"
Description: "Codes added to encounter class value set for MedCom messages"
* #other "Other encounter class"

Alias: $ClassCode = http://terminology.hl7.org/CodeSystem/v3-ActCode

ValueSet: MedComCoreEncounterClass
Id: medcom-core-encounterClass
Title: "MedComCoreEncounterClassCodes"
Description: "ValueSet containg class codes for MedCom core encounter"
* include codes from system $ClassCode where concept is-a #_ActEncounterCode
* exclude $ClassCode#_ActEncounterCode
* include codes from system MedComCoreEncounterActCodes 
