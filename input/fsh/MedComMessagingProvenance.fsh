Profile: MedComMessagingProvenance
Parent: Provenance
Id: medcom-messaging-provenance
Description: "Provenance information about the messages preceeding the current message"
* target 1..1 MS
* target only Reference(MedComMessagingMessageHeader)
* target ^short = "Targets the MedComMessagingMessageHeader from the previous message."
* occurred[x] 1..
* occurredDateTime 1.. MS
* occurredDateTime ^short = "A human readable date and time for when the message is sent."
* recorded MS
* recorded ^short = "A system readable date and time for when the message is sent."
* activity 1.. MS
* activity from MedComMessagingActivityCodesValueset
* activity ^definition = "Activity that occurred and triggered the current or a previous message"
* activity.coding 1.. MS
* activity.coding.system 1.. MS
* activity.coding.system = "http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-activityCodes"
* activity.coding.code 1.. MS
* activity.coding.code ^definition = "The activity defined by the system"
* agent 1.. MS
* agent ^short = "The actors involved in the activity taking place"
* agent.who 1.. MS
* agent.who only Reference(MedComMessagingOrganization)
* agent.who ^definition = "Shall contain the messaging organization performing the activity. This also apply to an internal transmission to another messaging organization within a given system."
* agent.who ^short = "A reference to the actor of the activity, which shall be a MedComMessagingOrganization. If more actors has been involved, the element must be sliced."
* entity MS
* entity.role MS
* entity.role ^short = "When the message is the first in a thread, the role shall be 'source', when a message is a response, a correction or a forwarding message the role shall be 'revision' and when the message is a cancellation the role shall be 'removal'."
* entity.what MS
* entity.what ^short = "A reference to the previous message. If the previous message is a FHIR message, the reference element must be used and if the previous message is an EDIFACT or OIOXML, the identifier element must be used."
* entity.what.identifier MS
* entity.what.identifier ^definition = "Shall contain the message header id of messages given as input to the activity if the previous message is not a fhir message"
* entity.what.identifier ^short = "If previous message is EDIFACT or OIOXML, this element must be expressed as [lokationsnummer]#[brevid] from the EDIFACT or OIOXML message."
* entity.what.reference MS
* entity.what.reference ^definition = "Shall contain the message header id of messages given as input to the activity"
* entity.what.reference ^short = "If the previous message is a FHIR message, this element must hold the MessageHeader.id from previous message."



Alias: $ActivityCode = http://medcomfhir.dk/fhir/core/1.0/CodeSystem/medcom-messaging-activityCodes

// CareCommunication example

Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// CareCommunication reply example

Instance: f18213f8-2e2c-458d-86ff-4e48ac5d7162
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 30c0f779-783f-46b2-b38f-faebd2bedb3f
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Usage: #example
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2020-09-30T10:22:11Z
* recorded = 2020-09-30T10:22:11Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// CareCommunication forward example

Instance: fdcf5a48-8264-48d5-8291-15f54b187b3e
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 7466d9f6-d3ae-4be5-8ed7-b333dad30205
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Usage: #example
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2020-09-30T10:22:11Z
* recorded = 2020-09-30T10:22:11Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// CareCommunication reply to hospital notification example

Instance: a09a5340-f326-4767-916b-d42a7004d909
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to HospitalNotification"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to HospitalNotification"
Usage: #example
* target = Reference(aac67161-d0de-4933-a78c-060beafb4814)
* occurredDateTime = 2020-10-16T13:43:16Z
* recorded = 2020-10-16T13:43:16Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4)

Instance: 5c1cd361-9691-4d49-bac8-034313907f16
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient, target is a CareCommunication"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient, target is a CareCommunication"
Usage: #inline
* target = Reference(aac67161-d0de-4933-a78c-060beafb4814)
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// CareCommunication reply to XDIS message

Instance: 6de0806d-7050-4db8-8003-0c72aee52948
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Usage: #example
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2020-09-30T10:22:11Z
* recorded = 2020-09-30T10:22:11Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what.identifier.value = "5790000120420#BrevNr00133"


// Admit example

Instance: d7cf3888-6f42-4e4d-929c-d2475d24fba0
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) -admit inpatient"
Usage: #example
* target = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4)
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// Start leave example

Instance: ccea231f-51c9-4eaa-a2f8-5a1e7d103574
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Usage: #inline
* target = Reference(b563a2b2-bf92-4b13-bbd2-0a021a95bded)
* occurredDateTime = 2020-10-20T10:21:56Z
* recorded = 2020-10-20T10:21:56Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: dc421d0a-cded-470f-9a53-2ddba7583baa
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - start leave"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - start leave"
Usage: #example
* target = Reference(b563a2b2-bf92-4b13-bbd2-0a021a95bded)
* occurredDateTime = 2020-10-20T10:21:56Z
* recorded = 2020-10-20T10:21:56Z
* activity = $ActivityCode#start-leave-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #derivation
* entity.what = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4)

// End leave example

Instance: 04db4939-7c60-4ac6-aefc-523f809ccba6
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - end leave"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - end leave"
Usage: #example
* target = Reference(e47254da-f170-46f0-b624-4778a9c92b1f)
* occurredDateTime = 2020-10-25T09:12:34Z
* recorded = 2020-10-25T09:12:34Z
* activity = $ActivityCode#end-leave-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #derivation
* entity.what = Reference(b563a2b2-bf92-4b13-bbd2-0a021a95bded)

Instance: 1d70842e-1168-41a3-a409-45f63c10f4d2
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - start leave"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - start leave"
* target = Reference(e47254da-f170-46f0-b624-4778a9c92b1f)
* occurredDateTime = 2020-10-20T10:21:56Z
* recorded = 2020-10-20T10:21:56Z
* activity = $ActivityCode#start-leave-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #derivation
* entity.what = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4)

Instance: 0ffb42f5-d172-4df0-92c1-012f55667879
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Usage: #inline
* target = Reference(e47254da-f170-46f0-b624-4778a9c92b1f)
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// Discharge example

Instance: 491827bf-337e-4083-9ef0-101b38966179
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Usage: #inline
* target = Reference(01affa53-c157-4080-abb0-8e681524f969)
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 2710698c-83eb-4c3e-81c8-fe8e40baf524
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - discharge inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - discharge inpatient"
Usage: #example
* target = Reference(01affa53-c157-4080-abb0-8e681524f969)
* occurredDateTime = 2020-10-28T09:21:26Z
* recorded = 2020-10-28T09:21:26Z
* activity = $ActivityCode#discharge-inpatient-home
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #derivation
* entity.what = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4)


//patient is admitted before deceased
Instance: 3302eb96-a10a-47c3-95b6-461cb053cbd7
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient before deceased"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) -  - admit inpatient before deceased"
Usage: #inline
* target = Reference(29b4818e-02de-4cc4-b418-d20cbc7b5404)
* occurredDateTime = 2021-01-10T13:44:14Z
* recorded = 2021-01-10T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

//patient is deceased
Instance: 09942adb-197a-4e30-bec8-566e3a113efe
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - deceased inpatient "
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) deceased inpatient"
Usage: #example
* target = Reference(8efc6d95-6161-4493-99c9-f359488dedb8)
* occurredDateTime = 2021-01-13T13:44:14Z
* recorded = 2021-01-13T13:45:15Z
* activity = $ActivityCode#discharge-inpatient-home
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)


// Acknowledgement example

Instance: 21ec3323-3e3b-43d9-8a53-e1155ef29f99
InstanceOf: MedComMessagingProvenance
Title: "Acknowledgement example. The Provenance instance is only valid if used in a bundle (message) - reply"
Description: "Acknowledgement example. The Provenance instance is only valid if used in a bundle (message) - reply"
Usage: #example
* target = Reference(6b027613-c442-406d-bc53-3d913f73e0a8)
* occurredDateTime = 2021-09-21T07:15:43Z
* recorded = 2021-09-21T07:15:43Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #derivation
* entity.what = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4)


Instance: 69dab277-dd4b-4055-9fda-a10a65cb4412
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for a medcom acknowledgement message - CareCommunication. Valid only if used in a bundle (message) "
Description: "Provenance information for a medcom medcom acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(6b027613-c442-406d-bc53-3d913f73e0a8)
* occurredDateTime = 2020-09-28T12:34:57Z
* recorded = 2020-09-28T12:34:57Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(4c284936-5454-4116-95fc-3c8eeeed2400)

Instance: 2cdc0086-a305-4791-93e5-3ca8975e2248
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for a medcom acknowledgement message - CareCommunication. 04ed814c-ccf6-47aa-be73-ae38df23c66a"
Description: "Provenance information for a medcom acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(ff9055ec-b1f1-48b6-933a-063dff0a6faf)
* occurredDateTime = 2020-09-28T12:34:57Z
* recorded = 2020-09-28T12:34:57Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)

Instance: 0b9da9ed-cbb2-4563-90d5-d64a67834ec0
InstanceOf: MedComMessagingProvenance
Title: "Provenance information for a medcom acknowledgement message - CareCommunication. 04ed814c-ccf6-47aa-be73-ae38df23c66a"
Description: "Provenance information for a medcom acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(4879c81e-0607-4ccb-b358-24a72208e30d)
* occurredDateTime = 2020-09-30T10:22:12Z
* recorded = 2020-09-30T10:22:12Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
