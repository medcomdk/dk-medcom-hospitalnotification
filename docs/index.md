<!-- <a href="https://medcomdk.github.io/MedComLandingPage/" target="_blank">Return</a> -->
# MedCom HospitalNotification


**Table of contents**
* [1 Standard documentation](#1-standard-documentation)
  + [1.1 Clinical guidelines for application](#11-clinical-guidelines-for-application)
  + [1.2 Use cases](#12-use-cases)
  + [1.3 Technical specification](#13-technical-specification)
  + [1.4 HospitalNotification Codes](#14-hospitalnotification-codes)
  + [1.5 Mapping from XDIS17 and XDIS20 to MedCom HospitalNotification](#mapping) 
*  [2 Test and certification](#2-test-and-certification)


  > Note: Clinical guidelines for application and use cases are available in both Danish and English. The remaining documentation will solely be in English.
<p>&nbsp;</p>	

This page presents MedCom's HospitalNotification standard (Danish: Advis om sygehusophold). The standard will in time replace the existing standards called <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/" target="_blank">XDIS17</a> and <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/" target="_blank">XDIS20</a>.The purpose of the standard is to notify the patient's care and health actors in the primary sector about the start, periods of leave and end time of the patient's stay in a hospital. The notification allows pausing current health and care services during the patient's hospitalisation and to start the services when the hospitalisation ends. 
Furthermore, the notification of hospital stay can trigger the automatic sending of an admission report <a href="https://svn.medcom.dk/svn/releases/Standarder/National%20Sygehus-Kommunesamarbejde/1.0.3/XDIS16/Dokumentation/"> (XDIS16)</a> from the recipient's system, which gives the hospital staff an overview of the patient's current services, functional level, and healthcare problems.


## 1 Standard documentation 
The standard documentation below provides the necessary content to understand the needs for modernisation, the role of the HospitalNotification message, what to implement and how to get a MedCom Certificate. The standard documentation for HospitalNotification includes: 
* Clinical guidelines for application
* Use cases
*	Technical Specifications in terms of the relevant IGs and clinical introduction to the content of the IG.
*	An overview of the codes in a FHIR HospitalNotification message which compose a certain meaning
*	Mapping document from <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/" target="_blank">XDIS17</a> and
<a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/" target="_blank">XDIS20</a> to FHIR  HospitalNotification Message.
<p>&nbsp;</p>

### 1.1 Clinical guidelines for application
The clinical guidelines for application are the foundation for the HospitalNotification standard. It describes the clinical needs for the modernisation, the requirements for the content of the standard and how the standard supports the business requirements. It is the primary textual part of the documentation for HospitalNotification. It is important for both implementers and business specialists to understand the clinical guidelines for application to ensure that the implemented standard supports the requirements.

Below you can find the clinical guidelines for application in both Danish and English:<br> 
[Danish: Sundhedsfaglige retningslinjer for anvendelse](assets/documents/Clinical-guidelines-DA.md) <br> 
[English: Clinical guidelines for application](assets/documents/Clinical-guidelines-ENG.md) 
<p>&nbsp;</p>	

### 1.2 Use cases
Use cases describe the different scenarios in which a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the HospitalNotification. The descriptions are targeted IT-system vendors and the people responsible for the implementation in regions and municipalities.

The use cases for HospitalNotification are qualified in collaboration with EPR- and vendors catering to the municipalities.

<!-- <b>The use cases are currently in preparation. As soon as they are ready, they will be presented below in Danish and English:</b>  -->

[Danish: Use cases](Advisomsygehusophold_use_cases__3.0.0.pdf) 


> Please be aware that the use cases are in danish. Use cases in English, are currently in preparation. As soon as they are ready, they will be published.


<!-- Below, you can find the use cases in Danish and English be found:<br>
[Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md)  -->
<!-- <p>&nbsp;</p>	 -->

### 1.3 Technical specification
The technical specification for HospitalNotification standard is composed by profiles form <a href="https://medcomfhir.dk/ig/hospitalnotification/" target="_blank">MedCom HospitalNotification IG</a>, <a href="https://medcomfhir.dk/ig/core/" target="_blank">MedComCore IG</a>, <a href="https://medcomfhir.dk/ig/messaging/" target="_blank">MedComMessaging IG</a> and from <a href="https://medcomfhir.dk/ig/terminology/" target="_blank">MedCom Terminology IG</a>. 

The profiles that are part of the technical specification for <a href="https://medcomfhir.dk/ig/hospitalnotification/" target="_blank">MedCom HospitalNotification IG</a> are: 
*	<a href="https://medcomfhir.dk/ig/hospitalnotification/StructureDefinition-medcom-hospitalNotification-encounter.html" target="_blank">MedComHospitalNotificationEncounter</a>
*	<a href="https://medcomfhir.dk/ig/hospitalnotification/StructureDefinition-medcom-hospitalNotification-message.html" target="_blank">MedComHospitalNotificationMessage</a>
* <a href="https://medcomfhir.dk/ig/hospitalnotification/StructureDefinition-medcom-hospitalNotification-messageHeader.html" target="_blank">MedComHospitalNotificationMessageHeader</a>

The link below gives an overview of the included profiles, what their purpose is, and which elements the system should support. Further, the structure of the standard is described and supported with examples in different degree of technical skills.
<br>

[Click here to read an introduction to the technical specification.](assets/documents/Intro-Technical-Spec-ENG.md)
<p>&nbsp;</p>	


### 1.4 HospitalNotification Codes
The HospitalNotification message notifies the care and health actors in the primary sector about the status of the patient's hospital stay. The status is represented using HospitalNotification codes. The value of codes can be found in MedComHospitalNotificationEncounter, MedComMessagingProvenance and MedComCorePatient profile and will together form the composite understanding of a HospitalNotification message, e.g. a hospitalization of an acute patient or discharge of an inpatient. Depending on which activity has taken place, the elements should be assigned to different values.
<br>
To help vendors of the IT system implement the codes in the same way MedCom has developed an overview of the HospitalNotification codes.

[Click here to see the HospitalNotification codes used in FHIR](/assets/documents/Overview-HospitalNotification-codes-FHIR.md)

<br>

### 1.5 Mapping from XDIS17 and XDIS20 to MedCom HospitalNotification {#mapping}
Mapping from previous OIOXML standards to the FHIR HospitalNotification standard can be found below. The document is intended to help translate the previous standard to the new FHIR standard. Please notice that not all elements from <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/" target="_blank">XDIS17</a> and <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/" target="_blank">XDIS20</a> are transferred to the HospitalNotification, as not all elements are represented in the FHIR message. Furthermore, not all elements from the FHIR elements are represented in the document; thus, it cannot stand alone for implementation.
<br>

[Click here to see mapping from previous OIOXML standards to the FHIR HospitalNotification standard.](/assets/documents/Map_between_OIOXML_and_FHIR_HospitalNotification.md)

<br>

## 2 Test and certification

Certification of a system implies both an approved test protocol and run-through of TouchStone test scripts. TouchStone describes an infrastructure that allows for automated test and validation against the IG's developed by MedCom. Test protocols and test scripts are used to test and certify whether systems comply to the HospitalNotification standard. 
<br>

<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification">Click here to find the description of test and certification of FHIR standards in MedCom. </a> 
<br>

**Sending a HospitalNotification message**
* [Test protocol in Danish (docx)](Advisomsygehusophold_Testprotokol_Afsendelse.docx) 
* [Test protocol in English (docx)](HospitalNotification_Testprotocol_Send.docx) 
* <a href="http://medcomfhir.dk/ig/hospitalnotificationtestscripts/testexamples.html">IG including test scripts, test examples and the intended use hereof</a>
  * <a href="https://touchstone.aegis.net/touchstone/testdefinitions? selectedTestGrp=%2FFHIRSandbox%2FMedCom%2FHospitalNotification& activeOnly=false&includeInactive=false&ps=50&sb=qualifiedName&sd= DESC&allSelected=false&contentEntry=ALL ">Direct link to test scripts in TouchStone</a>
<p>&nbsp;</p>

**Receiving a HospitalNotification message**
* [Test protocol in Danish (docx)](Advisomsygehusophold_Testprotokol_Modtagelse.docx) 
* [Test protocol in English (docx)](HospitalNotification_Testprotocol_Receive.docx) 
* <a href="http://medcomfhir.dk/ig/hospitalnotificationtestscripts/testexamples.html">IG including test scripts, test examples and the intended use hereof</a>
  * <a href="https://touchstone.aegis.net/touchstone/testdefinitions? selectedTestGrp=%2FFHIRSandbox%2FMedCom%2FHospitalNotification& activeOnly=false&includeInactive=false&ps=50&sb=qualifiedName&sd= DESC&allSelected=false&contentEntry=ALL ">Direct link to test scripts in TouchStone</a>
<p>&nbsp;</p>


<!-- ## 3 Release Notes
[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md) -->
