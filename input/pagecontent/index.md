### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; in message based exchange of data in Danish healthcare.

The IG contains profiles for MedCom HospitalNotification (Dansk: Sygehusadvis), which is used to inform a municipality about hospitalization of a patient.

Profiles used in HospitalNotification are not as open as other profiles because the message is automatically sent and thus not based on a patient consent. The legislation permits this exchange, but the message shall not contain more information than necessary.

More information about the [clinical guidelines and legislation](https://medcomdk.github.io/dk-medcom-hospitalnotification/#clinical-guidelines) can be found here.

#### HospitalNotification Message

The following diagram depicts the structure of the HospitalNotification message.

<img alt="Shows the structure of a HospitalNotification message. The MedComHospitalNotificationMessage includes a MedComHospitalNotificationMessageHeader and a MedComMessagingProvenance. MedComHospitalNotificationMessageHeader references a sender and receiver organization, the MedComMessagingOrganization and a focus which is a reference to a MedComHospitalNotificationEncounter. From the MedComHospitalNotificationEncounter is a MedComCorePatient and a MedComCoreOrganization referenced." src="./hospitalnotification/HospitalNotification.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The HospitalNotification message follows the general MedCom FHIR messaging structure, except that the carbon-copy destination is not allowed. The following sections describe the overall purpose of each profile.

##### MedComHospitalNotificationMessage

The [MedComHospitalNotificationMessage](https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-message.html) constrains the [MedComMessagingMessage](https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-message.html) to further use the MedComHospitalNotificationMessageHeader and to require exactly one patient resource in the message. Furthermore, it constrains the Provenance.activity to contain only activities from the MedComHospitalNotificationMessageActivities ValueSet, which contains activities such as admit, start-leave, end-leave, discharge, and other events that triggers a HospitalNotification Message.

All referenced resources within the message shall be contained in the entry list in MedComHospitalNotificationMessage.

##### MedComHospitalNotificationMessageHeader

The [MedComHospitalNotificationMessageHeader](https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-messageHeader.html) constrains the [MedComMessagingMessageHeader](https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-messageHeader.html) further to specify the fixed coding for this message and require a focus of the message to be a MedComHospitalNotificationEncounter. Carbon-copy destination is not allowed.

##### MedComHospitalNotificationEncounter

The [MedComHospitalNotificationEncounter](https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-encounter.html) contains the main content of the message. It constrains the [MedComCoreEncounter](https://build.fhir.org/ig/medcomdk/dk-medcom-core/StructureDefinition-medcom-core-encounter.html) further to require a unique identifier for the encounter and restricts the status and class to ValueSet of relevant values. The start time of the encounter and a reference to the service provider organization are also mandatory. Most other values are disallowed due to the legislation.

#### Simplified examples of the HospitalNotification message flow

The simplified examples contain the required content of a HospitalNotification message

The messages illustrate admission, discharge, and leave of a hospitalized patient. Also a cancelled messages is illustrated below. The patient, service provider organization, sender and receiver information are identical across a message stream, since all messages are send from a hospital to a municipality.

> Note: Some of the information does not fulfill the requirements in the IG. This accounts for the id’s and organization identifiers. These are made up to simplify the example.

> Note: Please notice, that in the following examples is the Provenance resources listed as an array. This is just an example of an order, resources may be listed in any order. 

* [Simplified example of a MedComHospitalNotificationMessage for admit and finished stay.](./hospitalnotification/HNAdmitFinish.png)
* [Simplified example of a MedComHospitalNotificationMessage for admit, onleave, end onleave and finished stay.](./hospitalnotification/HNAdmitOnleaveEndFinish.png) 
* [Simplified example of a cancelled MedComHospitalNotificationMessage message.](./hospitalnotification/HNAdmitEnteredInError.png)

#### Terminology
On [MedCom Terminology IG](https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

#### Dependencies
This IG has a dependency to the [MedCom Core IG](https://build.fhir.org/ig/medcomdk/dk-medcom-core/), [MedCom Messaging IG](https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/) and [DK-core v. 1.1.0](https://hl7.dk/fhir/core/), where the latter is defined by [HL7 Denmark](https://hl7.dk/). This is currently reflected in MedComHospitalNotificationMessage, MedComHospitalNotificationMessageHeader and MedComHospitalNotificationEncounter which all inherits from profiles defined in MedComCore or MedComMessaging IG. Further, it is reflected in references to MedComCorePatient, MedComCoreOrganization and MedComMessagingOrganization.

### Documentation

On the [introduction page for HospitalNotification](https://medcomdk.github.io/dk-medcom-hospitalnotification/) the following documentation can be found: 
* Clinical guidelines
* Use cases
* Overview of codes used a HospitalNotification message
* Mapping document from the previous OIOXML standard (XDIS17 and XDIS20) to HospitalNotification

### Governance

MedComs FHIR profiles and extension are managed in GitHub under MedCom: [Source code](https://github.com/medcomdk/dk-medcom-hospitalnotification)

A description of [governance concerning change management and versioning](https://medcomdk.github.io/MedComLandingPage/#4-change-managment-and-versioning) of MedComs FHIR artefacts, can be found on the link.

#### Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile is not included in a Bundle in an instance, since the instance only represents a part of the entire message. This should not influence the implementation by IT-vendors.

### Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).
