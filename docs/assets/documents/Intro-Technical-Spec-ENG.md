# Introduction to the Technical Content

> In case of discrepancies between the <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/" target="_blank">MedCom HospitalNotification Implementation Guide (IG)</a> and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepandies.

**Table of Content**


## Profiles in the HospitalNotification Standard

In total, seven profiles from <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/" target="_blank">MedCom Core IG</a>, <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a> and <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/" target="_blank">MedCom HospitalNotification IG</a> constitutes the HospitalNotification standard. They are derived from three different IGs, and a short describtion of each profile can be seen in the table below.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;max-width:80%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-u4ay{background-color:#ffffff;border-color:#343434;color:#333333;text-align:left;vertical-align:top}
.tg .tg-1nuj{background-color:#ffffff;border-color:#343434;color:#333333;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-u4ay"><span style="font-weight:bold">Profile</span></th>
    <th class="tg-u4ay"><span style="font-weight:bold">Resource</span></th>
    <th class="tg-u4ay"><span style="font-weight:bold">Describtion</span></th>
    <th class="tg-u4ay"><span style="font-weight:bold">MustSupport elements</span></th>
    <th class="tg-1nuj">Implementation Guide Origin</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-u4ay">MedComHospitalNotificationMessage</td>
    <td class="tg-u4ay">Bundle</td>
    <td class="tg-u4ay">Acts as a container for the content of the message. The type of the Bundle shall always be 'message'.<br><br>Inherits from MedComMessagingMessage.</td>
    <td class="tg-u4ay">Message id<br>Timestamp<br>Reference to all included profiles</td>
    <td class="tg-u4ay">MedCom HospitalNotification</td>
  </tr>
  <tr>
    <td class="tg-u4ay">MedComHospitalNotificationMessageHeader</td>
    <td class="tg-u4ay">MessageHeader</td>
    <td class="tg-u4ay">The header of a message, which profile shall always be the first referenced profile, when the type of the Bundle is 'message'. This profile holds references to the fundamental information in a message such as sender, receiver and the content of the message.<br><br>Inherits from MedComMessagingMessageHeader.</td>
    <td class="tg-u4ay">MessagHeader id<br>Narrative text<br>Type of message<br>Sender Organization<br>Receiver Organization<br>Carbon Copy<br>Receiver of the receipt<br>Focus</td>
    <td class="tg-u4ay">MedCom HospitalNotification</td>
  </tr>
  <tr>
    <td class="tg-u4ay">MedComHospitalNotificationEncounter</td>
    <td class="tg-u4ay">Encounter</td>
    <td class="tg-u4ay">A meeting between a healthcare professional and a patient. In a HospitalNotification message the start time of the encounter represents the hospitalization of the patient.<br><br>Inherits from MedComCoreEncounter</td>
    <td class="tg-u4ay">Encounter status<br>Encounter classification<br>Subject of the encounter<br>Episode of care identifier<br>Start time of the encounter<br>Service provider organization</td>
    <td class="tg-u4ay">MedCom HospitalNotification</td>
  </tr>
  <tr>
    <td class="tg-u4ay">MedComCorePatient</td>
    <td class="tg-u4ay">Patient</td>
    <td class="tg-u4ay">Describes a citizen or patient, when exchanging a MedCom message.</td>
    <td class="tg-u4ay">Identifier (CPR-number)<br>Name<br>Address<br>Telecom<br>Managing Organization<br>Deceased or not</td>
    <td class="tg-u4ay">MedCom Core</td>
  </tr>
  <tr>
    <td class="tg-u4ay">MedComCoreOrganization</td>
    <td class="tg-u4ay">Organization</td>
    <td class="tg-u4ay">Information useful to identify an organization. In a HospitalNotification message it is used to describe the service provider organization. </td>
    <td class="tg-u4ay">Identifier (SOR-id)<br>Name</td>
    <td class="tg-u4ay">MedCom Core</td>
  </tr>
  <tr>
    <td class="tg-u4ay">MedComMessagingOrganization</td>
    <td class="tg-u4ay">Organization</td>
    <td class="tg-u4ay">Information useful to identify an sender or receiver organization. <br>Inherits from MedComCoreOrganization.</td>
    <td class="tg-u4ay">Identifier (SOR-id)<br>Identifier (EAN/GLN-id)<br>Name</td>
    <td class="tg-u4ay">MedCom Messaging</td>
  </tr>
  <tr>
    <td class="tg-u4ay">MedComMessagingProvenance</td>
    <td class="tg-u4ay">Provenance</td>
    <td class="tg-u4ay">Describes the activity and history of a message. It includes a reference to the target which is the MedComMessagingMessageHeader from the current message, the actors involved the activity and the previuos message if there is any.</td>
    <td class="tg-u4ay">Target<br>Timestamps<br>Activity<br>Actors<br>Reference to the previous message</td>
    <td class="tg-u4ay">MedCom Messaging</td>
  </tr>
</tbody>
</table>

## Internal References in a HospitalNotification Message

The HospitalNotification message follows <a href="https://medcomdk.github.io/dk-medcom-messaging/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank">MedComs generic messaging paradigm</a>. 

The references between the profiles are shown on the figure below. The MedComHospitalNotificationMessage profile acts as the container which includes the other profiles. From the MedComHospitalNotificatiomMessageHeader is sender, receiver and carbon-coby organization referenced as the MedComMessagingOrganization together with the focus of the message, which is the MedComHospitalNotificationEncounter profile. This encounter shall always reference a subject of the type MedComCorePatient. Additionally, the patient's service provider organization is also referenced from the encounter. </br> 
MedComMessagingProvenance is used to keep track of the messaging history and define the activity of the notification. The provenance both references the MedComMessagingMessageHeader as the target and the actor in terms of a MedComMessagingOrganisation. 

![Show references between the profiles in an HospitalNotification message.](../images/HospitalNotification.png)

## Content in a HospitalNotification Message

On the figure below is the required content of a HospitalNotification message illustrated. There is a difference between the required elements and MustSupport elements, where the required element always shall be included in a message and MustSupport elements shall be included if they are present in the sender system and the receiver shall be abel to handle the information if it is included. Therefore is there a discrepancy between the elements mentioned in the table above and the figure. 

The messages illustrates an admission and discharge of a patient. The patient, service provider organization, sender and receiver information is identical, since both messages are send from a hospital to a municipality

In 'Message 2: Discharg Inpatient to Home' there are two MedComMessagingProvenances, as all provenance instances in a stream of messages shall be included, as it constitutes a messaging history. 

Some of the information does not fulfill the requirements in the IG, this accounts for the id’s and organization identifiers. These are made up to simplify the example.

> Note: Vendor cannot assume a specific order of the resources. 

![Shows the required content in each profiles of a MedCom HospitalNotification Message.](../images/HNAdmitFinish.png)






