### Introduction

This implementation guide is provided by MedCom to describe the use of FHIR &reg;&copy; in message based exchange of data in Danish healthcare.

The implementation guide contains profiles for MedCom HospitalNotification, which is used to inform other healthcare parties about hospitalization of a patient.

The HospitalNotification messages is a message sent to relevant healthcare organizations when a patient is hospitalized. Profiles used in HospitalNotification is not as open as other profiles because the message is automatically sent and thus not based on a patient consent. The legislation permits this exchange, but the message shall not contain more information than nessecary.

The following diagram depicts the structure of the HospitalNotification message.

<img alt="Hospital Notification" src="./hospitalnotification/HospitalNotification.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The HospitalNotification message follows the general message structure described above, except that the carbon-copy destination is not allowed. The following sections describe the overall purpose of each profiled resource.

#### MedComHospitalNotificationMessage

The HospitalNotification message constrains the MedCom FHIR messaging further to use the HospitalNotification messsage header and to require excactly one patient resource in the message. Furthermore, it constrains the provenance activity to contain only activities from the MedComHospitalNotificationMessageActivities value set, which contains activities such as admit, start-leave, end-leave, discharge, and other events triggering the message.

All referenced resources within the message are contained in the entry list.

#### MedComHospitalNotificationMessageHeader

The HospitalNotification messageheader constrains the messaging message header further to specify the fixed coding for this message and require a focus reference to a HospitalNotification encounter. Carbon-copy destination is not allowed.

#### MedComHospitalNotificationEncounter

The HospitalNotification message encounter constains the main content of the message and constrain the MedComCoreEncounter further to require a unique identifier for the encounter and restrict the status and class to a value set of relevant values. The start time of the encounter and a reference to the service provider are made mandatory. Most other values are disallowed due to the legislation.

### Documentation

#### Non-technical guide lines 
Information regarding non-technical guide lines and use cases for HospitalNotification is found here:

English:
* [HospitalNotification Use Cases](./hospitalnotification/pdf/Use%20cases_Hospital%20Notification_eng.pdf)
* [Non-technical guidelines for HospitalNotification](./hospitalnotification/pdf/FHIR_Hospital_Notification.pdf)

Danish:
* [HospitalNotification Use Cases](./hospitalnotification/pdf/Use_cases_advis_om_sygehusophold.pdf)
* [Non-technical guidelines for HospitalNotification](./hospitalnotification/pdf/FHIR_advis_om_sygehusophold.pdf)


#### Change of state
The change of state for an admission is dispicted in both the MedComHospitalNotificationEncounter elements *status* and *class*, the MedComCoreProvenance element *system*, and the MedComCorePatient *deceased*.
Please refer to following maping documents for more details.  

English: 
* [Map between HospitalNotification codes and FHIR elements](./hospitalnotification/pdf/Overview_HospitalNotification_codes_HL7_FHIR_1.0.3.pdf)

Danish: 
* [Mapning mellem advis koder og FHIR elementer](.hospitalnotification\pdf\Oversigt_adviskoder_HL7_FHIR_1.0.3.pdf)

#### Data references between MedCom OIOXML advis standard and the HospitalNotification message.
This section describes how to map between MedCom OIOXML advis standard and the MedCom FHIR HospitalNotification message

Please notice, that not all elements from the HospitalNotification message are mentioned in the document, as not all information is relevant to map between the two standards. For a full overview of the requirements in the HospitalNotification message, view the included profiles, as showns on the figure in the top of the page.
Please refer to the following document:  

English (only):
* [OIOXML advis -> HospitalNotification ](./hospitalnotification/pdf/Map_between_OIOXML_and_FHIR_HospitalNotificationMessages-21-11-25.pdf)


#### Content

This document presents MedCom messaging concepts defined via FHIR processable artefacts:

* [Profiles](profiles.html) - contain the constraints to core FHIR resources and datatype for use in MedCom messages
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed concepts for the messaging
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for the messaging context

#### Governance

FHIR profiles are managed under MedCom:

* [Source](https://github.com/hl7dk/dk-medcom)
* [Wiki](https://github.com/hl7dk/dk-medcom)
