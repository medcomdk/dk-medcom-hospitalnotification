[Return](../../index.md)


# Use cases for HospitalNotification
<hr/>

**Tabel of content**
* [1 Introduction](#1-introduction)
  * [1.1 Method for use case descriptions](#11-method-for-use-case-description)
  * [1.2 Types of Notifications and Codes in HospitalNotification](#12-types-of-notifications-and-codes-in-hospitalnotification)
  * [1.3 Use cases ](#13-use-cases)
* [2 Patient journeys and use cases](#2-Patient-journeys-and-use-cases)
* [3 Business-related use cases](#3-Business-related-use-cases) 
* [4 Technical use cases](#4-technical-use-cases)
<!-- * [5 Release Notes](#5-release-notes) -->
<hr/>

## 1 Introduction

This document contains a number of use case descriptions and is part of the documentation of MedCom’s FHIR-standard “HospitalNotification”. 
The documentation consists of 3 parts, accessible via [the frontpage of HospitalNotification](./docs/index.md).

1.	’HospitalNotification’ – Clinical guidelines
1.	HospitalNotification’ – FHIR Profile
2.	Use cases (this document – also available in Danish )
<br>

> Note: In case of any discrepancies between the two documents, the Danish document is the document in force.

<br>
The use case descriptions should therefore be read together with the rest of the documentation.The use case descriptions combine content requirements with business regulations for use and should ensure a coherent implementation and use of the ‘HospitalNotification’. The use cases are qualified in collaboration with EPR- and vendors catering to the municipalities. 

The use case descriptions are targeted IT system vendors and the people responsible for the implementation in regions and municipalities. 

Currently, the use case descriptions do not include the consignment of hospital notifications for several recipients and the following communication flow containing home carehospital notifications.
 
### 1.1 Method for use case descriptions

The use cases are made from <a href="https://www.kombit.dk/metodeh%C3%A5ndb%C3%B8ger" target="_blank">KOMBIT’s metodehåndbog for use cases</a>. Every case consists of the following elements. A definition for both [business-related](#business-related-use-cases) and [technical](#technical-use-cases) use cases can be found further down on this page.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold"> Tabel 1: Overview over elements used in use cases </caption>
<thead>
  <tr>
    <th class="tg-pu9k">Element</th>
    <th class="tg-pu9k">Explanation</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">ID</td>
    <td class="tg-tysj">Unique ID</td>
  </tr>
  <tr>
    <td class="tg-tysj">Name</td>
    <td class="tg-tysj">Activity in city area</td>
  </tr>
  <tr>
    <td class="tg-tysj">Initiator</td>
    <td class="tg-tysj">Name of the initiator (could be the user, (nurse or medical secretary) or System actor (i.e. received notification). </td>
  </tr>
  <tr>
    <td class="tg-tysj">Purpose, description and demarcation</td>
    <td class="tg-tysj">Short description of the business-related purposes, possible demarcation related to other use cases.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Conditions for initiation</td>
    <td class="tg-tysj">Preconditions which must be fulfilled in order for the standard procedure to run its course until the end.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Reason for initiation</td>
    <td class="tg-tysj">The event that prompts the participant’s actions in the standard procedure.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Actions</td>
    <td class="tg-tysj">The sequence of actions which, without interruption, leads from the first initiation to the end result.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Result</td>
    <td class="tg-tysj">The targeted business-related goal</td>
  </tr>
  <tr>
    <td class="tg-tysj">Alternative actions</td>
    <td class="tg-tysj">Alternative procedures diverging from the standard procedure which ends in error or with resumption.</td>
  </tr>
</tbody>
</table>


### 1.2 Types of Notifications and Codes in HospitalNotification

In the use case descriptions, the following codes are used for different types of hospital notifications. There is prepared a separate code overview, which shows the connection between notification codes and FHIR terminology, [see section 'HospitalNotification Codes in FHIR'](../documents/Overview-HospitalNotification-codes-FHIR.md). 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-wqo7{color:#2c415c;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold"> Table 2: Overview over codes used in use cases</caption>
<thead>
  <tr>
    <th class="tg-wqo7"><span style="font-weight:bold;background-color:#FFF">Code</span></th>
    <th class="tg-wqo7"><span style="font-weight:bold;background-color:#FFF">Name of Notification</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">STAA</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Start hospital stay – Acute ambulant care</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">STIN</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Start hospital stay- Admission</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">SLHJ</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">End hospital stay – patient discharged and sent home/to primary sector</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">STOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Start leave</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">SLOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">End leave</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">MORS</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Death</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_STAA</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Cancellation of acute ambulant stay</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_STAA</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Correction of acute ambulant stay</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_STIN</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Cancellation of admission</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_STIN</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Correction of admission</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_SLHJ</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Cancellation of End of hospital stay</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_SLHJ</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Correction of End of hospital stay</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_STOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Cancellation of Start leave</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_STOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Correction of Start leave</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_SLOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Cancellation of End leave</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_SLOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Correction of End leave</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_MORS</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Cancellation of Death</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_MORS</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Correction of Death</span></td>
  </tr>
</tbody>
</table>

### 1.3 Use cases 

The use case descriptions are divided into business-related use cases and technical use cases. The technical use cases are general use cases which are activated in the different actions that are described in the business-related use cases. To each of the business-related use cases, another use case is connected that respectively cancels and corrects the use case in question.

**A General remark on cancellations/corrections:** The same ID is used in case of cancellation/correction as in the original notification. This way, the recipient can easily connect the two messages unequivocally. When the patient’s hospital stay has ended and a notification [SLHJ] has been sent, it is no longer necessary to use notifications with corrections and cancellations, unless the correction/cancellation is related to that exact noti-fication [SLHJ].

In [section is an overview of the patient journeys](#patient-journeys-and-use-cases) and their connection to use cases. These are followed by [business-related use cases](#business-related-use-cases) and [technical use cases](#technical-use-cases). All use cases are divided into:
1. Sender (hospital) 
2. Recipient (relevant recipient, typically the municipality) 

## 2 Patient journeys and use cases 

## 3 Business-related use cases

## 4 Technical use cases
<!-- ## 5 Release Notes
[The latest changes of this page](../documents/ReleaseNoteUseCaseENG.md) can be found here. -->