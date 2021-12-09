Profile:        MedComCareCommunication
Parent:         Communication
Id:             medcom-careCommunication-communication
Description:    "Care related communication between two or more parties in Danish healthcare"
* status MS
* category 1..1 MS
* category from MedComCareCommunicationCategories
* priority MS
* priority from MedComCareCommunicationRequestPriority
* priority ^definition = "Shall be present if the message priority is known to be ASAP"
* subject 1.. MS
* subject only Reference(MedComCorePatient)
* subject ^type.aggregation = #bundled
* topic MS
* topic ^definition = "Description of the purpose/content, similar to a subject line in an email. Shall be present if topic of the message is known."
* encounter MS
* encounter only Reference(MedComCoreEncounter)
* encounter ^type.aggregation = #bundled
* encounter ^definition = "Shall contain an encounter with a reference to the episode of care if reported to the Danish National Patient Registry"
* sent 1.. MS
* recipient 0..
* recipient ^slicing.discriminator.type = #type
* recipient ^slicing.discriminator.path = "$this"
* recipient ^slicing.rules = #open
* recipient contains organization 0.. and practitionerRole 0.. MS
* recipient[organization] 0.. MS
* recipient[organization] only Reference(Organization)
* recipient[organization] ^definition = "The recipient of the message shall be present in case the recipient is given as more specific organization than the recipient of the message. E.g. a unit in a hospital or a home care group in a municipality."
* recipient[organization] ^type.aggregation = #bundled
* recipient[practitionerRole] 0.. MS
* recipient[practitionerRole] only Reference(PractitionerRole)
* recipient[practitionerRole] ^definition = "The recipient of the message shall be present in case the recipient is given as a practitioner role. E.g. a named general practitioner."
* recipient[practitionerRole] ^type.aggregation = #bundled
* recipient ^type.aggregation = #bundled
* sender 0.. MS
* sender only Reference(Organization or PractitionerRole)
* sender ^type.aggregation = #bundled
* sender ^definition = "The sender of the message shall be present in case the recipient is given as a practioner role or a more specific organization than the sender of the message. E.g. a unit in a hospital, a named general practitioner or a home care group in a municipality."
* payload 1..
* payload.extension contains medcom-core-datetime-extension named date 1..1 MS
* payload.extension contains medcom-core-author-extension named author 1..1 MS
* payload ^slicing.discriminator.type = #type
* payload ^slicing.discriminator.path = "$this.content"
* payload ^slicing.rules = #open
* payload ^slicing.ordered = true
* payload contains
    string 0.. MS and
    attachment 0.. MS
* payload[string].content[x] only string
* payload[string].content[x] MS
* payload[attachment].content[x] only Attachment
* payload[attachment] 0.. MS
* payload[attachment] ^definition = "The payload of the message shall contain all links or content attached to the message."
* payload[attachment].content[x] MS
* payload[attachment].contentAttachment 1.. MS
* payload[attachment].contentAttachment.contentType MS
* payload[attachment].contentAttachment.contentType ^definition = "The content type shall be present in case the content is provided as an attached document (data) or links to a document."
* payload[attachment].contentAttachment.contentType from MedComCoreAttachmentMimeTypes
* payload[attachment].contentAttachment.data MS
* payload[attachment].contentAttachment.data ^definition = "Shall be present and contain the base64 encoded content if the attachment is an attached document"
* payload[attachment].contentAttachment.data ^short = "Data inline, base64ed. Maximum size: 50 MB"
* payload[attachment].contentAttachment.url MS
* payload[attachment].contentAttachment.url ^definition = "Shall be present if the attachment is a link to a document or a web page"
* payload[attachment].contentAttachment.title 1.. MS
* payload[attachment].contentAttachment.creation MS
* payload[attachment].contentAttachment.creation ^definition = "Shall be present if the creation time of the attachment will be relevant to a recipient"
* status ^short = "The MedComCareCommunication message status may be unknown. status is required because of basic FHIR profile requirement"
* category ^short = "The MedComCareCommunication category (danish:Kategori) describes the content of the message."
* priority ^short = "The MedComCareCommunication priority shall be present if the message priority is known to be ASAP"
* topic ^short = "The MedComCareCommunication topic (danish:emne) may be added as a supplement to the category"

Alias: $EventStatus = http://hl7.org/fhir/event-status
Alias: $CategoryCodes = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-careCommunication-categoryCodes


// CareCommunication example
Instance: 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
InstanceOf: MedComCareCommunication
Title: "Example of Care Communication Content - new message"
Description: "Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* encounter = Reference(6220b42d-c4fd-4c77-bae7-78e7d890dc8d)
* sent = 2020-09-28T12:34:56Z
* payload.contentString = "The burns are quite severe"
* payload.extension[date].valueDateTime = 2020-09-28
* payload.extension[author].valueReference = Reference(58c811a5-4082-44eb-9d66-ccbb112d4973)

// CareCommunication reply example
Instance: 75fd6a1b-6af4-4b5c-a170-f70e95aa1e7a
InstanceOf: MedComCareCommunication
Title: "Example of Care Communication Content - reply message"
Description: "Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* encounter = Reference(6220b42d-c4fd-4c77-bae7-78e7d890dc8d)
* sent = 2020-09-30T10:22:11Z
* payload[0].contentString = "The burns are quite severe"
* payload[0].extension[date].valueDateTime = 2020-09-28
* payload[0].extension[author].valueReference = Reference(58c811a5-4082-44eb-9d66-ccbb112d4973)
* payload[1].contentString = "Keep the patient under observation for at least 5 days"
* payload[1].extension[date].valueDateTime = 2020-09-30
* payload[1].extension[author].valueReference = Reference(ad055a3d-16b6-41f9-891a-7dd73eecaf03)

// CareCommunication forward example
Instance: 4c712bdc-1558-4125-a854-fa8b3a11f6ed
InstanceOf: MedComCareCommunication
Title: "Example of Care Communication Content - forward message"
Description: "Content of care communication message. Valid only if used in a bundle (message) - forward message"
* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* encounter = Reference(6220b42d-c4fd-4c77-bae7-78e7d890dc8d)
* sent = 2020-09-30T10:22:11Z
* payload[0].contentString = "The burns are quite severe"
* payload[0].extension[date].valueDateTime = 2020-09-28
* payload[0].extension[author].valueReference = Reference(58c811a5-4082-44eb-9d66-ccbb112d4973)
* payload[1].contentString = "I have received this from Michael Burns"
* payload[1].extension[date].valueDateTime = 2020-09-30
* payload[1].extension[author].valueReference = Reference(ad055a3d-16b6-41f9-891a-7dd73eecaf03)

// CareCommunication reply to hospital notification example
Instance: 0f8cde6a-d369-4d94-a2ce-c2cc45fd75fb
InstanceOf: MedComCareCommunication
Title: "Example of Care Communication Content"
Description: "Content of care communication message. Valid only if used in a bundle (message)."
Usage: #inline
* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* encounter = Reference(6220b42d-c4fd-4c77-bae7-78e7d890dc8d)
* sent = 2020-10-16T13:43:16Z
* payload[0].contentString = "The patient is easily confused. Speaking loudly and slow reduced this."
* payload[0].extension[date].valueDateTime = 2020-01-01
* payload[0].extension[author].valueReference = Reference(58c811a5-4082-44eb-9d66-ccbb112d4973)

// CareCommunication with attachment example
Instance: 487e2238-527b-11ec-bf63-0242ac130002
InstanceOf: MedComCareCommunication
Title: "Example of Care Communication Content - new message with attachment"
Description: "Content of care communication message. Valid only if used in a bundle (message) - new message with attachment"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#carecoordination
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* encounter = Reference(09437365-821a-4a94-b32b-8916db1d5f62)
* sent = 2021-11-30T12:34:56Z
* payload[0].contentString = "The burns are quite severe, see picture."
* payload[0].extension[date].valueDateTime = 2021-11-30
* payload[0].extension[author].valueReference = Reference(58c811a5-4082-44eb-9d66-ccbb112d4973)
* payload[1].contentAttachment.contentType = $bcp13#application/png 
* payload[1].contentAttachment.data = "iVBORw0KGgoAAAANSUhEUgAAARQAAAChCAMAAAAx3rA5AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAA8UExURf////8gIP8AAP/f3/+AgP/+/v/Pz/8BAf8wMP8hIf+Pj/9zc/87O//Nzf9XV/+srP8dHf8QEP8xMQAAACKcjjEAAAAUdFJOU/////////////////////////8AT0/nEQAAAAlwSFlzAAAOwwAADsMBx2+oZAAABFRJREFUeF7tnFtzozwQRCnyBMR24f//Y3dmpDETp1cVX75L7Z7zEC4RILUaTScPTAA/ZZmNZfrYpvXv3tunj7VrMp36Foytb6Ew9+3St2CkKLkFA1EEiCLY+xZRBFShwkffQiEdglMEOKaAQwRZdUi0BXKKAFEEiCIg0Q6gChXIJwIS7QAcU8Ahgqw6JNoCOUWAKAJEEZBoB1CFCuQTAYl2AI4p4BBBVh0SbYGcIkAUAaIISLQDqEIF8omARDsAxxRwiCCrDom2QE4RIIoAUQQk2gFUoQL5RECiHYBjCjhEkFWHRFsgpwgQRYAoAhLtAKpQgXwiINEOwDEFHCLIqkOiLbySU9Z5m66z+MjI/IYCP8/zue9+4aRPC6xrp/naDx7iNVHWIsrVP8liMhlfRdnmS997gOvvOvSIKNb4XxflbBcdT41hrKIXT4ny29H8XBRr6NP2BC8k2pM9cTuua3N7/q7AfySKd23/qYCaJ6rQ2Z5YxvsZosTc7CF1fOLIBhHkybO/bmaxPUa92W9yWpzdjv38Oa7pL2bc4fhO0nz2EzHaplzMxnW3l/Y8XebVH+utrWvrk+XjffmkOSVEWbwzYZDNut2dEidTlD0GGZfscZ1ziUG2BelwyurH55sqrsjJmroqVZQlnnIJUYVdH+J9ibaJEgvvYrN/2DxFqU759P21jyOf3Vq040OU4LibieIOivtUUVqDpuvP150xrzsm+rbFiHYzRRux00XxkzdRfFy28Z++IAY5lGjYZDu4idRbhSNboy6K76bCd5I+yusOST791W+j9Snf2q6hnBK/a0X8lkdsPYjtpze8H9a9KNG4nYzFrK1obxKl3cu63LfP0+fK8bn+Jsp3p1y/PjRFidNlWLZOGOmc76Iop9z57EFyJMeInqWI0pxy9/oop/jPG7m4LD7UQ5T2Rt6Ob6+P3bSd/Oec8rV/z1BFsblu9cHposTv2zLZRbmPVs1LzTDHXFuxNYoocXHcLS4wI+Xx/0+UPldOmCLq4mq96x31v5T8L5pDFKvGvr1ZanUdezI/hhX3Waoo9qC4mcm99uP3OiWmwXhdlOKUXD5af63vkdA8qV1iqUlRWpPUpA24jaquCr4er9djTdl8kWke8+tPUcTunPLampK0rkDAf9wE6RCcIsAxBRwiyJIR9QIaKUpuwUAUAaII3pdo/0CoQgXyiYBEOwDHFHCIIKsOibZAThEgigBRBCTaAVShAvlEQKIdgGMKOESQVYdEWyCnCBBFgCgCEu0AqlCBfCIg0Q7AMQUcIsiqQ6ItkFMEiCJAFAGJdgBVqEA+EZBoB+CYAg4RZNUh0RbIKQJEESCKgEQ7gCpUIJ8ISLQDcEwBhwiy6pBoC+QUAaIIEEVAoh1AFSqQTwQk2gE4poBDBFl1SLQFcooAUQSIIiDRDqAKFcgnAhLtABxTwCGCrDok2gI5RXATxT/vuZ2mxXb+7r2P/t12AHiSafoFEaQnJeAruVEAAAAASUVORK5CYII=" 
* payload[1].contentAttachment.title = "Picture of Patient's burn. Taken at arrival on 2021-11-29" 
* payload[1].extension[date].valueDateTime = 2021-11-29
* payload[1].extension[author].valueReference = Reference(58c811a5-4082-44eb-9d66-ccbb112d4973)

// CareCommunication regarding referal example
Instance: 4ec35384-527b-11ec-bf63-0242ac130002
InstanceOf: MedComCareCommunication
Title: "Example of Care Communication Content - new message with priority"
Description: "Content of care communication message. Valid only if used in a bundle (message) - new message  with priority"
* status = $EventStatus#unknown
* category = $CategoryCodes#regarding-referral
* priority = $PriorityCode#asap
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* encounter = Reference(09437365-821a-4a94-b32b-8916db1d5f62)
* sent = 2021-11-30T12:34:56Z
* payload.contentString = "We have a question regarding the referal you sent and it is very urgent..."
* payload.extension[date].valueDateTime = 2021-11-29
* payload.extension[author].valueReference = Reference(58c811a5-4082-44eb-9d66-ccbb112d4973)



// Practitioners
Instance: 58c811a5-4082-44eb-9d66-ccbb112d4973
InstanceOf: Practitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: ad055a3d-16b6-41f9-891a-7dd73eecaf03
InstanceOf: Practitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
Usage: #inline
* name.given = "Emma"
* name.family = "Waters"