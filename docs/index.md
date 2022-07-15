<a href="https://medcomdk.github.io/MedComLandingPage/" target="_blank">Return</a>

# MedCom HospitalNotification
This page presents MedComs HospitalNotification standard (Dansk: Sygehusadvis). The standard will in time replace the existing standards called <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/XDIS17.pdf" target="_blank">XDIS17</a> &
<a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/XDIS20.pdf" target="_blank">XDIS20</a>. The purpose of the standard is to notify the municipalities then a citizen in their care is hospitalized, on leave, or discharged. The notification will be sent regardless of the hospitalization of the patient is as an inpatient or acute care. 

The HospitalNotification IG contains the following profiles: 
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-encounter.html" target="_blank">MedComHospitalNotificationEncounter</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-message.html" target="_blank">MedComHospitalNotificationMessage</a>
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-messageHeader.html" target="_blank">MedComHospitalNotificationMessageHeader</a>
<p>&nbsp;</p>	
Profiles in the HospitalNotification Implementation Guide (IG) will together with profiles from MedCom Core IG, MedCom Messaging IG and MedCom Terminology IG constitute the standard, which you can read more about below.


**Table of Content**
- [MedCom HospitalNotification](#medcom-hospitalnotification)
  * [Documentation](#-standard-documentation)
    + [Clinical Guidelines](#clinical-guidelines)
    + [Use Cases](#use-cases)
    + [Technical Specification](#technical-specification)
      - [Implementation Guide](#implementation-guide)
      - [Introduction to the Technical Specifications](#introduction-to-the-technical-specifications)
    + [HospitalNotification Activity Codes](#hospitalnotification-activity-codes)
    + [Mapping from XDIS17/XDIS20 to MedCom HospitalNotification](#mapping-from-xdis17-xdis20-to-medcom-hospitalnotification)
  * [2 Test and Certification](#2-test-and-certification)
    + [Testprotocols](#testprotocols)
  * [3 Release Notes](#3-release-notes)
<p>&nbsp;</p>
> Clinical guidelines and use cases are in both Danish and English. The remaining documentation will be in English.

## Standard Documentation 
The standard documentation below provides the necessary content to understand the needs for modernization, the role of the HospitalNotification message, what to implement and how to get a MedCom certificate. The standard documentation for HospitalNotification includes: 
* Clinical Guidelines
* Use cases
*	Technical Specifications in terms of the relevant IGs and clinical introduction to the content of the IG.
*	An overview of the codes in a FHIR HospitalNotification message which compose a certain meaning
*	Mapping document from <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/XDIS17.pdf" target="_blank">XDIS17</a> &
<a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/XDIS20.pdf" target="_blank">XDIS20</a> to FHIR  HospitalNotification Message.
<p>&nbsp;</p>

### Clinical Guidelines
The clinical guidelines is the foundation for the HospitalNotification standard. It describes the clinical needs for the modernization, the requirement for the content of the standard and how the standard supports the business requirements.  It is the primary textual part of the documentation for HospitalNotification. It is important for both implementers and business specialists to understand the clinical guidelines to ensure that the implemented standard supports the requirements.

Below can the clinical guidelines in Danish and English be found:<br> 
[Danish: Sundhedsfaglige retningslinjer](assets/documents/Clinical-guidelines-DA.md) <br> 
[English: Clinical guidelines](assets/documents/Clinical-guidelines-ENG.md) 


### Use Cases

Use cases describe the different scenarios a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the HospitalNotification. The descriptions are targeted IT-system vendors and the people responsible for the implementation in regions and municipalities.

The use cases for HospitalNotification are qualified in collaboration with EPR- and vendors catering to the municipalities.

Below can the use cases in Danish and English be found:<br>
[Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md) 

### Technical Specification
The technical specifications for the HospitalNotification standard are defined in IGs. As mentioned previously is the Hospitalnotification standard composed by profiles from three IGs and terminology from one IG. Links to the IG’s are listed below:
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/index.html" target="_blank">MedCom HospitalNotification IG</a>
*	<a href="https://medcomdk.github.io/dk-medcom-core/" target="_blank">MedCom Core IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/" target="_blank">MedCom Terminology IG</a>
<p>&nbsp;</p>
IGs might be difficult for people with little or no knowledge about FHIR and how to understand an IG. Therefor has MedCom developed a webpage describing the content of the HospitalNotification standard. The link below gives an overview of which profiles are included, what their purpose are, and which elements that shall be supported in a system. Further the structure of the standard is described and supported with examples in different degree of technical skills.

[An introduction to the technical specificationscan be found here.](assets/documents/Intro-Technical-Spec-ENG.md)




### HospitalNotification Activity Codes

The purpose of presenting the activity codes, is to help vendors of IT-systems implement the codes in the same way.  This is important as the receiver of the HospitalNotification message, in this case the municipalities, will act in accordance with the activity codes.

The value of element codes different profiles (MedComHospitalNotificationEncounter, MedComMessagingProvenance and MedComCorePatient) will together form the composite understanding of a HospitalNotification message, e.g. a hospitalization of an acute patient or discharge of an inpatient. Depended on which activity has taken place, the elements shall be assigned to different values.
[The HospitalNotification Codes used in FHIR can be found here.](/assets/documents/Overview-HospitalNotification-codes-FHIR.md)

### Mapping from XDIS17/XDIS20 to MedCom HospitalNotification

Mapping from previous OIOXML standards to FHIR HospitalNotification standard can be found below. The document is intended to help translate the previous standard to the new FHIR standard. Please notice, that not all elements from <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/XDIS17.pdf" target="_blank">XDIS17</a> &
<a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/XDIS20.pdf" target="_blank">XDIS20</a> are transferred to the HospitalNotification, as not all elements are represented in the FHIR message. Further, not all elements from the FHIR elements are represented in the document and therefore it cannot stand alone for implementation.

[The mapping can be found here.](/assets/documents/Map_between_OIOXML_and_FHIR_HospitalNotification.md)

## 2 Test and Certification

Certification of a system implies both an approved testprotocol and runtrough of TouchStone testscripts. 
TouchStone describes an infrastructure that allows for automated test and validation against the IGs developes by MedCom. <a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification" target="_blank">A description of test and certification of FHIR standards in MedCom can be founc here.</a> 

Testprotocols and testscripts are used to test and certify MedCom HospitalNotification.The testprotocols and testscripts are currently in preparation. As soon as the tesprotocols and testscripts are reay, they will be presented below.

**Sending a HospitalNotification message**
* Testprotocol
* TouchStone Testscripts
<p>&nbsp;</p>

**Receiving a HospitalNotification message**
* Testprotocol
* TouchStone Testscripts
<p>&nbsp;</p>


## 3 Release Notes
[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md)
