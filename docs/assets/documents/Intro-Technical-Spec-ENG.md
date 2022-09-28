[Return](../../index.md)
# Introduction to the technical content
<hr/>

**Table of contents**
* [1 Profiles in the HospitalNotification Standard](#1-profiles-in-the-hospitalnotification-standard)
  * [1.1 Service Provider](#11-service-provider)
* [2 Internal Reference in a HospitalNotification Message](#2-internal-references-in-a-hospitalnotification-message)
  * [Report of admission](#21-report-of-admission)
* [3 Examples in a HospitalNotification Message](#3-examples-in-a-hospitalnotification-message) 
<!-- * [4 Release Notes](#4-release-notes) -->
<hr/>
  
  >Note: In case of discrepancies between the <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/" target="_blank">MedCom HospitalNotification Implementation Guide (IG)</a> and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepancies.
<br>


## 1 Profiles in the HospitalNotification Standard

In total, seven profiles from <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/" target="_blank">MedCom Core IG</a>, <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a> and <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/" target="_blank">MedCom HospitalNotification IG</a> constitute the HospitalNotification standard. They are derived from three different IG's, and a short description of each profile can be seen in the table below.
<br><br>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;max-width:80%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-4mz0{background-color:#ffffff;color:#2c415c;text-align:left;vertical-align:top}
.tg .tg-7euo{background-color:#ffffff;color:#333333;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold; text-align:center"> Table 1: Overview of the profiles in HospitalNotification standard </caption>
<thead>
  <tr>
    <th class="tg-4mz0"><span style="font-weight:bold">Profile</span></th>
    <th class="tg-4mz0"><span style="font-weight:bold">Resource</span></th>
    <th class="tg-4mz0"><span style="font-weight:bold">Description</span></th>
    <th class="tg-4mz0"><span style="font-weight:bold">MustSupport elements</span></th>
    <th class="tg-4mz0"><span style="font-weight:bold">Implementation Guide Origin</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-7euo"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-message.html" target="_blank">MedComHospitalNotificationMessage</a></td>
    <td class="tg-7euo">Bundle</td>
    <td class="tg-7euo">Acts as a container for the content of the message. The type of the Bundle shall always be 'message'.<br><br>Inherits from MedComMessagingMessage.</td>
    <td class="tg-7euo">Message id<br>Timestamp<br>Reference to all included profiles</td>
    <td class="tg-7euo">MedCom HospitalNotification</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-messageHeader.html" target="_blank">MedComHospitalNotificationMessageHeader</a></td>
    <td class="tg-7euo">MessageHeader</td>
    <td class="tg-7euo">The header of a message, which profile shall always be the first referenced profile, when the type of the Bundle is 'message'. This profile holds references to the fundamental information in a message such as sender, receiver and the content of the message.<br><br>Inherits from MedComMessagingMessageHeader.</td>
    <td class="tg-7euo">MessagHeader id<br>Narrative text<br>Type of message<br>Sender Organization<br>Receiver Organization<br>Carbon Copy<br>Receiver of the receipt<br>Focus</td>
    <td class="tg-7euo">MedCom HospitalNotification</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/StructureDefinition-medcom-hospitalNotification-encounter.html" target="_blank">MedComHospitalNotificationEncounter</a></td>
    <td class="tg-7euo">Encounter</td>
    <td class="tg-7euo">A meeting between a healthcare professional and a patient. In a HospitalNotification message the start time of the encounter represents the hospitalization of the patient.<br><br>Inherits from MedComCoreEncounter</td>
    <td class="tg-7euo">Encounter status<br>Encounter classification<br>Subject of the encounter<br>Episode of care identifier<br>Start time of the encounter<br>Service provider organization</td>
    <td class="tg-7euo">MedCom HospitalNotification</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/StructureDefinition-medcom-core-patient.html" target="_blank">MedComCorePatient</a></td>
    <td class="tg-7euo">Patient</td>
    <td class="tg-7euo">Describes a citizen or patient, when exchanging a MedCom message.</td>
    <td class="tg-7euo">Identifier (CPR-number)<br>Name<br>Address<br>Telecom<br>Managing Organization<br>Deceased or not</td>
    <td class="tg-7euo">MedCom Core</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/StructureDefinition-medcom-core-organization.html" target="_blank">MedComCoreOrganization</a></td>
    <td class="tg-7euo">Organization</td>
    <td class="tg-7euo">Information useful to identify an organization. In a HospitalNotification message it is used to describe the service provider organization.</td>
    <td class="tg-7euo">Identifier (SOR-id)<br>Name</td>
    <td class="tg-7euo">MedCom Core</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a></td>
    <td class="tg-7euo">Organization</td>
    <td class="tg-7euo">Information useful to identify an sender or receiver organization.<br>Inherits from MedComCoreOrganization.</td>
    <td class="tg-7euo">Identifier (SOR-id)<br>Identifier (EAN/GLN-id)<br>Name</td>
    <td class="tg-7euo">MedCom Messaging</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/StructureDefinition-medcom-messaging-provenance.html" target="_blank">MedComMessagingProvenance</a></td>
    <td class="tg-7euo">Provenance</td>
    <td class="tg-7euo">Describes the activity and history of a message. It includes a reference to the target which is the MedComMessagingMessageHeader from the current message, the actors involved the activity and the previuos message if there is any.</td>
    <td class="tg-7euo">Target<br>Timestamps<br>Activity<br>Actors<br>Reference to the previous message</td>
    <td class="tg-7euo">MedCom Messaging</td>
  </tr>
</tbody>
</table>
<br><br>

### 1.1 Service Provider
The service provider is the organization or department in charge of the patients admission. 
The service provider can be described using MedComMessaging Organization or MedComCoreOrganization, since MedComMessaiging Organization inherits properties from MedComCore Organization. 

## 2 Internal References in a HospitalNotification Message
The HospitalNotification message follows <a href="https://medcomdk.github.io/dk-medcom-messaging/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank">MedCom's generic messaging model</a>. 

The references between the profiles are shown in  <a href="#Fig1" rel="noopener noreferrer"> Figure 1 </a> below. The MedComHospitalNotificationMessage profile acts as the container which includes the other profiles. From the MedComHospitalNotificatiomMessageHeader are the sender, receiver and carbon-copy organization referenced as the MedComMessagingOrganization together with the focus of the message, which is the MedComHospitalNotificationEncounter profile. This encounter must always reference a subject of the type MedComCorePatient. Additionally, the patient's service provider organization is also referenced from the encounter.<br> 
MedComMessagingProvenance is used to keep track of the messaging history and define the activity of the notification. The provenance both references the MedComMessagingMessageHeader as the target and the actor in terms of a MedComMessagingOrganisation. 

<figure>
<img src="../images/HospitalNotification.png" alt="Show references between the profiles in an HospitalNotification message." style="width:40%" id="Fig1">
<figcaption text-align="center"><b>Figure 1: Structure of the HospitalNotification message </b> </figcaption>
</figure>
<br><br>

### 2.1  Report of admission
The request for a report of admission must be sent when a patient is initially admitted, meaning that the type of HospitalNotification is STIN og STAA. In these cases, the Provenance.activity.code is admit-inpatient or admit-emergency, respectively. A request for a report of admission shall not be send when the patient returns from leave (SLOR) or is relocated from another hospital. 

On page 10 in the use case document the usage of the report of admission flag is further described. <a href="https://medcomdk.github.io/dk-medcom-hospitalnotification/#12-use-cases">Click here to finde the use cases</a>. 

## 3 Examples in a HospitalNotification Message
In the <a href="#Fig2" rel="noopener noreferrer"> Figure 2 </a>, the required content of a HospitalNotification message is illustrated. There is a difference between the required elements and MustSupport elements, as the required element must always be included in a message. Similarly, MustSupport elements must be included if they are present in the sender's system and the receiver must be able to handle the information if it is included. Thus, there is a discrepancy between the elements mentioned in the table above and <a href="#Fig2" rel="noopener noreferrer"> Figure 2 </a> . 

The messages in <a href="#Fig2" rel="noopener noreferrer"> Figure 2 </a> illustrate an admission and discharge of a patient. The patient, service provider organization, sender and receiver information are identical since both messages are sent from a hospital to a municipality.

In 'Message 2: Discharge Inpatient to Home' there are two MedComMessagingProvenances, as all provenance instances in a stream of messages must be included, as it constitutes a messaging history. 

Some of the information does not fulfill the requirements in the IG. This accounts for the id’s and organization identifiers. These are made up to simplify the example.
 
  > Note: IT vendors cannot assume any specific order of the resources in a message. 


<figure>
<img src="../images/HNAdmitInPat.svg" alt="Shows the required content in each profiles of a MedCom HospitalNotification Message." style="width: 55%" id="Fig2">
<figcaption text-align = "center"><b>Figur 2: Simplified example: Admit Inpatient </b></figcaption>
</figure>

<figure>
<img src="../images/HNAdmitFinish.svg" alt="Shows the required content in each profiles of a MedCom HospitalNotification Message." style="width: 55%" id="Fig2">
<figcaption text-align = "center"><b>Figur 2: Simplified example: Admit  Inpatient </b></figcaption>
</figure>
<br><br>

<!--  -->

<!-- ## 4 Release Notes 
[The latest changes of this page](../documents/ReleaseNoteIntroTechnicalSpec.md) can be found here. -->



