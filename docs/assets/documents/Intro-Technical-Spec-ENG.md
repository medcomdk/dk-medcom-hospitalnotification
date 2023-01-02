[Return](../../index.md)
# Introduction to the technical specification

**Table of contents**
* [1 Profiles in the HospitalNotification Standard](#1-profiles-in-the-hospitalnotification-standard)
  * [1.1 ServiceProvider and Sender](#11-serviceprovider-and-sender)
  * [1.2  Report of admission](#12--report-of-admission)
* [2 Internal References in a HospitalNotification Message](#2-internal-references-in-a-hospitalnotification-message)
_ [3 Examples in a HospitalNotification Message](#3-examples-in-a-hospitalnotification-message)
  * [3.1 STIN - Start hospital stay - admitted](#31-stin---start-hospital-stay---admitted)
  * [3.2 STOR - Start leave](#32-stor---start-leave)
  * [3.3 SLOR - End leave](#33-slor---end-leave)
  * [3.4 SLHJ - End hospital stay - patient completed to home/primary sector](#34-slhj---end-hospital-stay---patient-completed-to-home-primary-sector)
  * [3.5 MORS - Deceased](#35-mors---deceased)
  * [3.6 AN_STIN - Cancellation Start hospital stay - admitted](#36-an-stin---cancellation-start-hospital-stay---admitted)
* [4 Timestamps in HospitalNotification message](#4-timestamps-in-hospitalnotification-message)

  >Note: In case of discrepancies between the <a href="https://medcomfhir.dk/ig/hospitalnotification/" target="_blank">MedCom HospitalNotification Implementation Guide (IG)</a> and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepancies.
<br>


## 1 Profiles in the HospitalNotification Standard

In total, seven profiles from <a href="https://medcomfhir.dk/ig/core/" target="_blank">MedCom Core IG</a>, <a href="https://medcomfhir.dk/ig/messaging/" target="_blank">MedCom Messaging IG</a> and <a href="https://medcomfhir.dk/ig/hospitalnotification/" target="_blank">MedCom HospitalNotification IG</a> constitute the HospitalNotification standard. A short description of each profile can be seen in the <a href="#tab1">Table 1<a>.
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
<div style="overflow-x:auto;">
<table class="tg" id="tab1">
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
    <td class="tg-7euo"><a href="https://medcomfhir.dk/ig/hospitalnotification/StructureDefinition-medcom-hospitalNotification-message.html" target="_blank">MedComHospitalNotificationMessage</a></td>
    <td class="tg-7euo">Bundle</td>
    <td class="tg-7euo">Acts as a container for the content of the message. The type of the Bundle shall always be 'message'.<br><br>This profile inherits from MedComMessagingMessage.</td>
    <td class="tg-7euo">Id<br>Type<br>Timestamp<br> Entry</td>
    <td class="tg-7euo">HospitalNotification</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://medcomfhir.dk/ig/hospitalnotification/StructureDefinition-medcom-hospitalNotification-messageHeader.html" target="_blank">MedComHospitalNotificationMessageHeader</a></td>
    <td class="tg-7euo">MessageHeader</td>
    <td class="tg-7euo">The header of a message, which shall always be the first referenced profile, when the type of the Bundle is 'message'. This profile holds references to the fundamental information in a message such as sender, receiver, the content of the message and request for report of admission.<br><br>This profile inherits from MedComMessagingMessageHeader.</td>
    <td class="tg-7euo">Id<br>ReportOfAdmissionFlag <br>ReportOfAdmissionRecipient <br>Event[x]:eventCoding <br>Sender Organization<br>Receiver Organization<br>Source (Receiver of the Acknowledgement)<br>Focus</td>
    <td class="tg-7euo">HospitalNotification</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://medcomfhir.dk/ig/hospitalnotification/StructureDefinition-medcom-hospitalNotification-encounter.html" target="_blank">MedComHospitalNotificationEncounter</a></td>
    <td class="tg-7euo">Encounter</td>
    <td class="tg-7euo">A meeting between a healthcare professional and a patient. In a HospitalNotification message the start time of the encounter represents the hospitalization of the patient.<br><br>This profile inherits from MedComCoreEncounter</td>
    <td class="tg-7euo">Id<br>Status<br> class<br>Subject <br>EpisodeOfCare identifier<br>Period start (start time of the encounter)<br>Period end (end time of the encounter)<br>ServiceProvider organization</td>
    <td class="tg-7euo">HospitalNotification</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html" target="_blank">MedComCorePatient</a></td>
    <td class="tg-7euo">Patient</td>
    <td class="tg-7euo">Describes a citizen or patient, when exchanging a MedCom message.</td>
    <td class="tg-7euo">Id<br>identifier (CPR-number)<br>Name<br>Address<br>Telecom<br>Deceased[x]</td>
    <td class="tg-7euo">Core</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-organization.html" target="_blank">MedComCoreOrganization</a></td>
    <td class="tg-7euo">Organisation</td>
    <td class="tg-7euo">Contains information which is useful in order to identify an organisation. In a HospitalNotification message it is often used to describe the serviceProvider organisation or department.</td>
    <td class="tg-7euo">Id<br>Identifier (SOR-id)<br>Name</td>
    <td class="tg-7euo">Core</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank">MedComMessagingOrganization</a></td>
    <td class="tg-7euo">Organisation</td>
    <td class="tg-7euo">Contains information which is useful in order to identify a sender or receiver organisation.<br>This profile inherits from MedComCoreOrganization.</td>
    <td class="tg-7euo">Id<br>Slices for identifier (SOR-id)<br>Slices for identifier (EAN/GLN-id)<br>Name</td>
    <td class="tg-7euo">Messaging</td>
  </tr>
  <tr>
    <td class="tg-7euo"><a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html" target="_blank">MedComMessagingProvenance</a></td>
    <td class="tg-7euo">Provenance</td>
    <td class="tg-7euo">Describes the activity of a message, e.g. whether the message concern an inpatient admission or discharge. In cases of a previously send message concerning the same admission, the Provenance resource holds a reference to the previous message. Thereby it is possible to get an overview of the patient's admission.</td>
    <td class="tg-7euo">Id<br>Target<br>OccurredDateTime<br>Timestamps<br>Activity<br>Agent<br>Entity (Reference to the previous message)</td>
    <td class="tg-7euo">Messaging</td>
  </tr>
</tbody>
</table>
</div>
<br><br>

### 1.1 ServiceProvider and Sender
The serviceProvider is the organisation or department in charge of the patients admission, whereas the sender is the organisation or department responsible for sending the HospitalNotification message. 
The sender of a HospitalNotification and the serviceProvider may be the same hospital department, hence be represented referencing the same instance of a Organization resource, which in this case shall be a MedComMessagingOrganization. However, the sender organisation may be a higher-level deparment (in the SOR-register) than the serviceProvider, and in this case they shall be represented referencing two different instances of a Organization resource.

### 1.2  Report of admission
The request for a report of admission must be sent when a patient is initially admitted, meaning that the type of HospitalNotification is STIN og STAA. In these cases, the Provenance.activity.code is admit-inpatient or admit-emergency, respectively. A request for a report of admission shall not be send when the patient returns from leave (SLOR) or is relocated from another hospital. 
 
On page 10 in the use case document the usage of the report of admission flag is further described. <a href="https://medcomdk.github.io/dk-medcom-hospitalnotification/#12-use-cases">Click here to finde the use cases</a>. 


## 2 Internal References in a HospitalNotification Message
The HospitalNotification message follows <a href="https://medcomdk.github.io/dk-medcom-messaging/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank">MedCom's generic messaging model</a>. 

The references between the profiles are shown in  <a href="#Fig1" rel="noopener noreferrer"> Figure 1 </a> below. The MedComHospitalNotificationMessage profile acts as the container which includes the other profiles. From the MedComHospitalNotificatiomMessageHeader are the sender, receiver and carbon-copy organisation referenced as the MedComMessagingOrganization together with the focus of the message, which is the MedComHospitalNotificationEncounter profile. This encounter must always reference a subject of the type MedComCorePatient. Additionally, the patient's service provider organisation is also referenced from the encounter.<br> 
MedComMessagingProvenance is used to keep track of the messaging history and define the activity of the notification. The provenance both references the MedComMessagingMessageHeader as the target and the actor in terms of a MedComMessagingOrganisation. 

<figure>
<img src="../images/HospitalNotification.png" alt="Show references between the profiles in an HospitalNotification message." style="width:40%" id="Fig1">
<figcaption text-align="center"><b>Figure 1: Structure of the HospitalNotification message </b> </figcaption>
</figure>
<br><br>


## 3 Examples in a HospitalNotification Message
In the <a href="#Fig2" rel="noopener noreferrer"> Figure 2 </a> and <a href="#Fig3" rel="noopener noreferrer"> Figure 3 </a>, the required content of a HospitalNotification message is illustrated. 
There is a difference between the required elements and MustSupport elements, as the required element always shall be included in a message. MustSupport elements must be included if they are present in the sender's system and the receiver must be able to handle the information if it is included. Examples for HospitalNotification in XML and JSON format can be found on MedComHospitalNotificationMessage profile. 
<a href="https://medcomfhir.dk/ig/hospitalnotification/StructureDefinition-medcom-hospitalNotification-message-examples.html" target="_blank">Click here to see examples for MedCom HospitalNotificationMessage </a>

The examples below illustrated different types of HospitalNotifications, which reflects different activity codes and statuses. <a href="https://medcomdk.github.io/dk-medcom-hospitalnotification/#14-hospitalnotification-codes" target="_blank">Click here to get an overview of the HospitalNotification types.</a> For each example the type of HospitalNotification can be seen in the associated headline. In the examples the serviceProvider and sender organisation is represented by the same Organization instance. Further, are the instances in the same order to create a better overview, however IT vendors cannot assume any specific order of the resources in a message.

### 3.1 STIN - Start hospital stay - admitted
The simplified example below is an example of a ‘Start hospital stay - admitted’ HospitalNotification. In the MessageHeader there is a request for a reportOfAdmission (extension:reportOfAdmissionFlag). In the Encounter instance the status is ‘in-progress’, and the Encounter is populated with a start timestamp (period.start). In the Provenance instance is the activity code ‘admit-inpatient’. 

<figure>
<img src="../images/HNAdmitInPat.svg" alt="Simplified example: STIN - Start hospital stay - admitted" style="width: 55%" id="Fig2">
<figcaption text-align = "center"><b>Figure 2: Simplified example: Start hospital stay - admitted</b></figcaption>
</figure>

### 3.2 STOR - Start leave
The simplified example below is an example of a ‘Start leave’ HospitalNotification which is sent in continuation of simplified example number 1. The status in the Encounter is changed from ‘in-progress’ to ‘onleave’, and the Encounter is populated with a start timestamp for the period of leave (extension:leavePeriod.start). In the Provenance instance is the activity code ‘start-leave-inpatient’. 

<figure>
<img src="../images/HNAdmitFinish.svg" alt="Simplified example: STOR - Start leave" style="width: 55%" id="Fig3">
<figcaption text-align = "center"><b>Figure 3: Simplified example: Start leave</b></figcaption>
</figure>
<br><br>

### 3.3 SLOR - End leave
The simplified example below is an example of a ‘End leave’ HospitalNotification which is sent in continuation of simplified example number 2. The status in the Encounter is changed from ‘onleave’ to ‘in-progress’, and the Encounter is populated with a end timestamp for the period of leave (extension:leavePeriod.end). In the Provenance instance is the activity code ‘end-leave-inpatient’. 

<figure>
<img src="../images/HNAdmitFinish.svg" alt="Simplified example: SLOR - End leave" style="width: 55%" id="Fig4">
<figcaption text-align = "center"><b>Figure 4: Simplified example: End Leave</b></figcaption>
</figure>
<br><br>

### 3.4 SLHJ - End hospital stay - patient completed to home/primary sector
The simplified example below is an example of a ‘End hospital stay - patient completed to home/primary sector’ HospitalNotification which is sent in continuation of simplified example number 1. The status in the Encounter is changed from ‘in-progress’ to ‘finished’, and the Encounter is populated with a timestamp indicating end of the encounter (period.end). In the Provenance instance is the activity code ‘discharge-inpatient-home’. 

<figure>
<img src="../images/HNAdmitFinish.svg" alt="Simplified example: SLHJ - End hospital stay - patient completed to home/primary sector" style="width: 55%" id="Fig5">
<figcaption text-align = "center"><b>Figure 5: Simplified example: End hospital stay - patient completed to home/primary sector</b></figcaption>
</figure>
<br><br>

### 3.5 MORS - Deceased
The simplified example below is an example of a ‘Deceased’ HospitalNotification which is sent in continuation of simplified example number 1. The status in the Encounter is changed from ‘in-progress’ to ‘finished’, and the Encounter is populated with a timestamp indicating end of the encounter (period.end) i.e. the death of the patient. The element Patient.deceased is sat to ‘true’, indicating that the patient is deceased. In the Provenance instance is the activity code ‘admit-inpatient’, as it shall remain the current activity. 

<figure>
<img src="../images/HNAdmitFinish.svg" alt="Simplified example: MORS - Deceased" style="width: 55%" id="Fig6">
<figcaption text-align = "center"><b>Figure 6: Simplified example: Deceased</b></figcaption>
</figure>
<br><br>

### 3.6 AN_STIN - Cancellation Start hospital stay - admitted
The simplified example below is an example of a ‘Cancellation Start hospital stay - admitted’ HospitalNotification which is sent in continuation of simplified example number 1. In the Provenance instance the activity code is changed to ‘cancel-admit-inpatient’ and the entity.what is now ‘removal’ indicating that the previous message is cancelled. 

<figure>
<img src="../images/HNAdmitFinish.svg" alt="Simplified example: AN_STIN - Cancellation Start hospital stay - admitted" style="width: 55%" id="Fig7">
<figcaption text-align = "center"><b>Figure 7: Simplified example: Cancellation Start hospital stay - admitted</b></figcaption>
</figure>
<br><br>


## 4 Timestamps in HospitalNotification message

HospitalNotification messages are generated and sent based on real-time registration in the EPR/PAS system. In case the EPR allows future registrations of planned contacts or a period of leave, the HospitalNotifications shall only be triggered when the event occurs, i.e. at the patient’s physical attendance, as described in the [Clinical guidelines for application](https://medcomdk.github.io/dk-medcom-hospitalnotification/#11-clinical-guidelines-for-application).

The HospitalNotification message contains several timestamps. These timestamps are present in the profiles MedComHospitalNotificationEncounter, MedComHospitalNotificationMessage and MedComMessagingProvenance and have different purposes:

* Encounter-timestamps represent the time of an event. For receiving systems, this is the timestamps that must be displayed for the end user as ‘date and time of start/end for the event’. <a href="https://medcomfhir.dk/ig/hospitalnotification/StructureDefinition-medcom-hospitalNotification-encounter.html" target="_blank">The usage of these timestamps is more thoroughly described in the IG on the page for the MedComHospitalNotificationEncounter profile</a>.
* Bundle.timestamp represents the time bundle is generated. 
* Provenance.occuredDateTime[x] represents the time the HospitalNotification is sent, in a human-readable time
* Provenance.recorded represents the time the HospitalNotification is sent, in a machine-readable time


<!--  -->

<!-- ## 4 Release Notes 
[The latest changes of this page](../documents/ReleaseNoteIntroTechnicalSpec.md) can be found here. -->



