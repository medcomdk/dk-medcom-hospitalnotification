Extension:  MedComCorePayloadAuthorExtension
Id: medcom-core-author-extension
Title: "PayloadAuthorExtension"
Description: "Reference to author of this payload"
* value[x] 1..1
* value[x] only Reference(Practitioner)
* value[x] ^type.aggregation = #bundled
