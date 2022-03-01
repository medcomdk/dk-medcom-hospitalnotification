### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; in message based exchange of data in Danish healthcare.

The IG contains profiles for MedCom HospitalNotification, which is used to inform a municipality about hospitalization of a patient.

Profiles used in HospitalNotification are not as open as other profiles because the message is automatically sent and thus not based on a patient consent. The legislation permits this exchange, but the message shall not contain more information than nessecary.

The following diagram depicts the structure of the HospitalNotification message.

<img alt="Shows the structure of a HospitalNotification message. The MedComHospitalNotificationMessage includes a MedComHospitalNotificationMessageHeader and a MedComMessagingProvenance. MedComHospitalNotificationMessageHeader references a sender and receiver organization, the MedComMessagingOrganization and a focus which is a reference to a MedComHospitalNotificationEncounter. From the MedComHospitalNotificationEncounter is a MedComCorePatient and a MedComCoreOrganization referenced." src="./hospitalnotification/HospitalNotification.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The HospitalNotification message follows the general MedCom FHIR messaging structure, except that the carbon-copy destination is not allowed. The following sections describe the overall purpose of each profile.

#### MedComHospitalNotificationMessage

The MedComHospitalNotificationMessage constrains the MedComMessagingMessage further to use the MedComHospitalNotificationMessageHeader and to require excactly one patient resource in the message. Furthermore, it constrains the MedComMessagingProvenance activity to contain only activities from the MedComHospitalNotificationMessageActivities value set, which contains activities such as admit, start-leave, end-leave, discharge, and other events that triggers a HospitalNotification Message.

All referenced resources within the message are contained in the entry list in MedComHospitalNotificationMessage.

#### MedComHospitalNotificationMessageHeader

The MedComHospitalNotificationMessageHeader constrains the MedComMessagingMessageHeader further to specify the fixed coding for this message and require a focus reference to a MedComHospitalNotificationEncounter. Carbon-copy destination is not allowed.

#### MedComHospitalNotificationEncounter

The MedComHospitalNotificationEncounter contains the main content of the message and constrain the MedComCoreEncounter further to require a unique identifier for the encounter and restrict the status and class to value set of relevant values. The start time of the encounter and a reference to the service provider are made mandatory. Most other values are disallowed due to the legislation.

### Documentation

#### Non-technical guidelines 
Information regarding non-technical guidelines and use cases for HospitalNotification is found here:

English:
* [HospitalNotification Use Cases](./hospitalnotification/pdf/Use%20cases_Hospital_Notification_eng.pdf)
* [Non-technical guidelines for HospitalNotification](./hospitalnotification/pdf/FHIR_Hospital%20Notification_v.1.0.1.pdf)

Danish:
* [HospitalNotification Use Cases](./hospitalnotification/pdf/Use_cases_advis_om_sygehusophold.pdf)
* [Non-technical guidelines for HospitalNotification](./hospitalnotification/pdf/FHIR_advis_om_sygehusophold_1.0.1.pdf)


#### Change of state
The change of state for an admission is dispicted in both the MedComHospitalNotificationEncounter elements *status* and *class*, the MedComMessagingProvenance element *system*, and the MedComCorePatient element *deceased*.
Please refer to following maping documents for more details: 

English: 
* [Map between HospitalNotification codes and FHIR elements](./hospitalnotification/pdf/Overview_HospitalNotification_codes_HL7_FHIR_1.0.3.pdf)

Danish: 
* [Mapning mellem advis koder og FHIR elementer](.hospitalnotification\pdf\Oversigt_adviskoder_HL7_FHIR_1.0.3.pdf)

#### Mapping betweeen MedCom OIOXML advis standard and the HospitalNotification message.
This section describes how to map between MedCom OIOXML advis standard and the MedCom FHIR HospitalNotification message

Please notice, that not all elements from the HospitalNotification message are mentioned in the document, as not all information is relevant to map between the two standards. For a full overview of the requirements in the HospitalNotification message, view the included profiles, as showns on the figure in the top of the page.

The mapping is only elaborated in English:
* [OIOXML advis -> HospitalNotification ](./hospitalnotification/pdf/Map_between_OIOXML_and_FHIR_HospitalNotificationMessages-21-12-22.pdf)


#### Content

This document presents MedCom FHIR messaging concepts defined via FHIR processable artefacts:

* [Profiles](profiles.html) - contain the constraints to core FHIR resources and datatype for use in MedCom messages
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed concepts for the messaging
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for the messaging context

#### Governance

FHIR profiles are managed under MedCom:

* [Source](https://github.com/hl7dk/dk-medcom)
* [Wiki](https://github.com/hl7dk/dk-medcom)
