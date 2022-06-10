/* Profile: MedComHospitalNotificationProvenance
Parent: MedComMessagingProvenance
Id: medcom-hospitalNotification-provenance
Description: "A Provenance for a HospitalNotification."
* activity from MedComHospitalNotificationMessageActivities
* activity ^short = "Activity that occurred and triggered the message. These activities accommodates the use of the HospitalNotification."


// Admit instance
Instance: d7cf3888-6f42-4e4d-929c-d2475d24fba0
InstanceOf: MedComHospitalNotificationProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) -admit inpatient"
Usage: #example
* target = Reference(29b4818e-02de-4cc4-b418-d20cbc7b5404) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity.coding = $ActivityCode#admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

//start leave
Instance: dc421d0a-cded-470f-9a53-2ddba7583baa
InstanceOf: MedComHospitalNotificationProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - start leave"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - start leave"
Usage: #example
* target = Reference(b563a2b2-bf92-4b13-bbd2-0a021a95bded)
* occurredDateTime = 2020-10-20T10:21:56Z
* recorded = 2020-10-20T10:21:56Z
* activity.coding = $ActivityCode#start-leave-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(d7cf3888-6f42-4e4d-929c-d2475d24fba0)

// End leave example
Instance: 04db4939-7c60-4ac6-aefc-523f809ccba6
InstanceOf: MedComHospitalNotificationProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - end leave"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - end leave"
Usage: #example
* target = Reference(e47254da-f170-46f0-b624-4778a9c92b1f)
* occurredDateTime = 2020-10-25T09:12:34Z
* recorded = 2020-10-25T09:12:34Z
* activity.coding = $ActivityCode#end-leave-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(b563a2b2-bf92-4b13-bbd2-0a021a95bded)

// discharge inpatient
Instance: 2710698c-83eb-4c3e-81c8-fe8e40baf524
InstanceOf: MedComHospitalNotificationProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - discharge inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - discharge inpatient"
Usage: #example
* target = Reference(01affa53-c157-4080-abb0-8e681524f969)
* occurredDateTime = 2020-10-28T09:21:26Z
* recorded = 2020-10-28T09:21:26Z
* activity.coding = $ActivityCode#discharge-inpatient-home
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(d7cf3888-6f42-4e4d-929c-d2475d24fba0)

 // patient is deceased
Instance: 09942adb-197a-4e30-bec8-566e3a113efe
InstanceOf: MedComHospitalNotificationProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - deceased inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) deceased inpatient"
Usage: #inline
* target = Reference(8efc6d95-6161-4493-99c9-f359488dedb8)
* occurredDateTime = 2021-01-13T13:44:14Z
* recorded = 2021-01-13T13:45:15Z
* activity.coding = $ActivityCode#discharge-inpatient-home
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d) 

// Revise admit instance
Instance: 35f7de8c-957a-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) -admit inpatient"
Usage: #example
* target = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:45:15Z
* recorded = 2020-10-15T13:46:15Z
* activity.coding = $ActivityCode#revise-admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #revision
* entity.what = Reference(d7cf3888-6f42-4e4d-929c-d2475d24fba0)

// Cancel admit instance
Instance: 467ecb1c-957a-11ec-b909-0242ac120002
InstanceOf: MedComHospitalNotificationProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) -admit inpatient"
Usage: #example
* target = Reference(01affa53-c157-4080-abb0-8e681524f969) // should be changed to the current MessageHeader
* occurredDateTime = 2020-10-15T13:45:15Z
* recorded = 2020-10-15T13:46:15Z
* activity.coding = $ActivityCode#cancel-admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity.role = #removal
* entity.what = Reference(d7cf3888-6f42-4e4d-929c-d2475d24fba0) */