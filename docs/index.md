<!-- <a href="https://medcomdk.github.io/MedComLandingPage/" target="_blank">Return</a> -->


# MedCom HospitalNotification
<hr/>

**Table of contents**
* [1 Standard documentation](#1-standard-documentation)
  + [1.1 clinical guidelines for application for application](#11-clinical-guidelines-for-application)
  + [1.2 Use gases](#12-use-cases)
  + [1.3 Technical specification](#13-technical-specification)
  + [1.4 HospitalNotification Activity Codes](#14-hospitalnotification-activity-codes)
  + [1.5 Mapping from XDIS17/XDIS20 to MedCom HospitalNotification](#15-mapping-from-xdis17-xdis20-to-medcom-hospitalnotification)
* [2 Test and certification](#2test-and-certification)
  + [2.1 Test protocols](#21-test-protocols)

<hr/>

  > Note: clinical guidelines for application and use cases are in both Danish and English. The remaining documentation will solely be in English.
<p>&nbsp;</p>	

This page presents MedCom's HospitalNotification  standard (Dansk: Sygehusadvis). The standard will in time replace the existing standards called <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/" target="_blank">XDIS17</a> &
<a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/" target="_blank">XDIS20</a>. The purpose of the standard is to notify the municipalities when a citizen in their care is hospitalised, on leave or discharged. The notification will be sent regardless of the hospitalisation of the patient as an inpatient or acute care. 

The HospitalNotification IG contains the following profiles: 
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-encounter.html" target="_blank">MedComHospitalNotificationEncounter</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-message.html" target="_blank">MedComHospitalNotificationMessage</a>
* <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-messageHeader.html" target="_blank">MedComHospitalNotificationMessageHeader</a>
<p>&nbsp;</p>	
Profiles in the HospitalNotification Implementation Guide (IG) will, together with profiles from MedCom Core IG, MedCom Messaging IG and MedCom Terminology IG, constitute the standard, which you can read more about below.
<p>&nbsp;</p>	

## 1 Standard documentation 
The standard documentation below provides the necessary content to understand the needs for modernisation, the role of the HospitalNotification message, what to implement and how to get a MedCom Certificate. The standard documentation for HospitalNotification includes: 
* clinical guidelines for application
* Use cases
*	Technical Specifications in terms of the relevant IGs and clinical introduction to the content of the IG.
*	An overview of the codes in a FHIR HospitalNotification message which compose a certain meaning
*	Mapping document from <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/" target="_blank">XDIS17</a> &
<a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/" target="_blank">XDIS20</a> to FHIR  HospitalNotification Message.
<p>&nbsp;</p>

### 1.1 Clinical guidelines for application
The clinical guidelines for application are the foundation for the HospitalNotification standard. It describes the clinical needs for the modernisation, the requirements for the content of the standard and how the standard supports the business requirements.  It is the primary textual part of the documentation for HospitalNotification. It is important for both implementers and business specialists to understand the clinical guidelines for application to ensure that the implemented standard supports the requirements.

Below you can find the clinical guidelines for application in both Danish and English:<br> 
[Danish: Sundhedsfaglige retningslinjer for anvendelse](assets/documents/Clinical-guidelines-DA.md) <br> 
[English: clinical guidelines for application](assets/documents/Clinical-guidelines-ENG.md) 
<p>&nbsp;</p>	

### 1.2 Use cases
Use cases describe the different scenarios in which a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the HospitalNotification. The descriptions are targeted IT-system vendors and the people responsible for the implementation in regions and municipalities.

The use cases for HospitalNotification are qualified in collaboration with EPR- and vendors catering to the municipalities.

<b>The use cases are currently in preparation. As soon as they are ready, they will be presented below in Danish and English:</b> 

[Uses cases](../docs/HospitalNotification_use%20cases__full.pdf)

  > Be aware that new version of uses cases will come soon!
    

<!-- Below, you can find the use cases in Danish and English be found:<br>
[Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md)  -->
<!-- <p>&nbsp;</p>	 -->

### 1.3 Technical specification
The technical specifications for the HospitalNotification standard are defined in IG's. As mentioned previously, the Hospitalnotification standard is composed by profiles from three IG's and terminology from one IG. Links to the IG’s are listed below:
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/index.html" target="_blank">MedCom HospitalNotification IG</a>
*	<a href="https://medcomdk.github.io/dk-medcom-core/" target="_blank">MedCom Core IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/" target="_blank">MedCom Terminology IG</a>
<p>&nbsp;</p>

Understanding IG's might be difficult for people with little or no knowledge about FHIR.  Therefore, MedCom has developed a page describing the content of the Acknowledgement standard. The link below gives an overview of the included profiles, what their purpose is, and which elements the system should support. Further the structure of the standard is described and supported with examples in different degree of technical skills.
<br>

[Click her to read an introduction to the technical specificationscan.](assets/documents/Intro-Technical-Spec-ENG.md)
<p>&nbsp;</p>	


### 1.4 HospitalNotification Activity Codes
The purpose of presenting the activity codes is to help vendors of IT systems implement the codes in the same way.  This is important as the receiver of the HospitalNotification message, in this case, the municipalities, will act in accordance with the activity codes.

The value of element codes in different profiles (MedComHospitalNotificationEncounter, MedComMessagingProvenance and MedComCorePatient) will together form the composite understanding of a HospitalNotification message, e.g. a hospitalization of an acute patient or discharge of an inpatient. Depending on which activity has taken place, the elements should be assigned to different values.
<br>

[Click here to se the HospitalNotification Codes used in FHIR](/assets/documents/Overview-HospitalNotification-codes-FHIR.md)

<br>

### 1.5 Mapping from XDIS17/XDIS20 to MedCom HospitalNotification
Mapping from previous OIOXML standards to the FHIR HospitalNotification standard can be found below. The document is intended to help translate the previous standard to the new FHIR standard. Please notice that not all elements from <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/" target="_blank">XDIS17</a> and
<a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/" target="_blank">XDIS20</a> are transferred to the HospitalNotification, as not all elements are represented in the FHIR message. Furthermore, not all elements from the FHIR elements are represented in the document; thus, it cannot stand alone for implementation.
<br>

[Click here to see mapping from previous OIOXML standards to the FHIR HospitalNotification standard.](/assets/documents/Map_between_OIOXML_and_FHIR_HospitalNotification.md)

<br>

## 2 Test and certification

Certification of a system implies both an approved testprotocol and run-through of TouchStone test scripts. TouchStone describes an infrastructure that allows for automated test and validation against the IG's developed by MedCom. 
<br>

<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification">Click here to find the description of test and certification of FHIR standards in MedCom. </a> 
<br>

Test protocols and test scripts are used to test and certify MedCom HospitalNotification.<b>The test protocols and test scripts are currently in preparation. As soon as the test protocols and test scripts are ready, they will be presented below.</b>

**Sending a HospitalNotification message**
* Testprotocol
* TouchStone Testscripts
<p>&nbsp;</p>

**Receiving a HospitalNotification message**
* Testprotocol
* TouchStone Testscripts
<p>&nbsp;</p>


<!-- ## 3 Release Notes
[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md) -->
