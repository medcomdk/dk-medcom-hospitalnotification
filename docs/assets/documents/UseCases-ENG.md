[Return](../../index.md)

# Use cases for HospitalNotification

## Introduktion

This document contains a number of use case descriptions and is part of the documentation of Med-Com’s FHIR-standard “HospitalNotification”. 
The documentation consists of 3 parts, accessible via [the frontpage of HospitalNotification](./docs/index.md).

1.	’HospitalNotification’ – Clinical guidelines
1.	HospitalNotification’ – FHIR Profile
2.	Use cases (this document – also available in Danish )

> Note: In case of any discrepancies between the two documents, the Danish document is the document in force.

The use case descriptions should therefore be read together with the rest of the documentation.

The use case descriptions combine content requirements with business regulations for use and should ensure a coherent implementation and use of the ‘HospitalNotification’. The use cases are qualified in collaboration with EPR- and vendors catering to the municipalities. 

The use case descriptions are targeted IT system vendors and the people responsible for the imple-mentation in regions and municipalities. 

Currently, the use case descriptions do not include the consignment of hospital notifications for sev-eral recipients and the following communication flow containing home care-hospital notifications.
 
### Method for use case descriptions

The use cases are made from <a href="https://www.kombit.dk/metodeh%C3%A5ndb%C3%B8ger" target="_blank">KOMBIT’s metodehåndbog for use cases</a>. Every case consists of the following elements. A definition for both [business-related](#business-related-use-cases) and [technical](#technical-use-cases) use cases can be found in the following as well.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-1wig">Element</th>
    <th class="tg-1wig">Explanation</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">ID</td>
    <td class="tg-0lax">Unique ID</td>
  </tr>
  <tr>
    <td class="tg-0lax">Name</td>
    <td class="tg-0lax">Activity in city area</td>
  </tr>
  <tr>
    <td class="tg-0lax">Initiator</td>
    <td class="tg-0lax">Name of the initiator (could be the user, (nurse or medical secretary) or System actor (i.e. received notification).&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">Purpose, description and demarcation</td>
    <td class="tg-0lax">Short description of the business-related pur-poses, possible demarcation related to other use cases.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Conditions for initiation</td>
    <td class="tg-0lax">Preconditions which must be fulfilled in order for the standard procedure to run its course until the end.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Reason for initiation</td>
    <td class="tg-0lax">The event that prompts the participant’s actions in the standard procedure.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Actions</td>
    <td class="tg-0lax">The sequence of actions which, without interruption, leads from the first initiation to the end result.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Result</td>
    <td class="tg-0lax">The targeted business-related goal</td>
  </tr>
  <tr>
    <td class="tg-0lax">Alternative actions</td>
    <td class="tg-0lax">Alternative procedures diverging from the stand-ard procedure which ends in error or with re-sumption.</td>
  </tr>
</tbody>
</table>


### Types of Notifications and Codes in HospitalNotification

In the use case descriptions, the following codes are used for different types of hospital notifications. [There is prepared a separate code overview, which shows the connection between notification codes and FHIR terminology, see section 'HospitalNotification Codes in FHIR'](./docs/index.md). 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-ahvx{background-color:#ffffff;border-color:#656565;color:#656565;text-align:left;vertical-align:top}
.tg .tg-m0jm{background-color:#ffffff;border-color:#656565;color:#656565;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-m0jm">Code   </th>
    <th class="tg-m0jm">Name of Notification</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-ahvx">STAA</td>
    <td class="tg-ahvx">Start hospital stay – Acute ambulant care</td>
  </tr>
  <tr>
    <td class="tg-ahvx">STIN</td>
    <td class="tg-ahvx">Start hospital stay- Admission</td>
  </tr>
  <tr>
    <td class="tg-ahvx">SLHJ</td>
    <td class="tg-ahvx">End hospital stay – patient discharged and sent home/to primary sector</td>
  </tr>
  <tr>
    <td class="tg-ahvx">STOR</td>
    <td class="tg-ahvx">Start leave</td>
  </tr>
  <tr>
    <td class="tg-ahvx">SLOR</td>
    <td class="tg-ahvx">End leave</td>
  </tr>
  <tr>
    <td class="tg-ahvx">MORS</td>
    <td class="tg-ahvx">Death</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_STAA</td>
    <td class="tg-ahvx">Cancellation of acute ambulant stay</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_STAA</td>
    <td class="tg-ahvx">Correction of acute ambulant stay</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_STIN</td>
    <td class="tg-ahvx">Cancellation of admission</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_STIN</td>
    <td class="tg-ahvx">Correction of admission</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_SLHJ</td>
    <td class="tg-ahvx">Cancellation of End of hospital stay</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_SLHJ</td>
    <td class="tg-ahvx">Correction of End of hospital stay</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_STOR</td>
    <td class="tg-ahvx">Cancellation of Start leave</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_STOR</td>
    <td class="tg-ahvx">Correction of Start leave</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_SLOR</td>
    <td class="tg-ahvx">Cancellation of End leave</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_SLOR</td>
    <td class="tg-ahvx">Correction of End leave</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_MORS</td>
    <td class="tg-ahvx">Cancellation of Death</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_MORS</td>
    <td class="tg-ahvx">Correction of Death</td>
  </tr>
</tbody>
</table>

### Use cases 

The use case descriptions are divided into business-related use cases and technical use cases. The technical use cases are general use cases which are activated in the different actions that are de-scribed in the business-related use cases. To each of the business-related use cases, another use case is connected that respectively cancels and corrects the use case in question.

**A General remark on cancellations/corrections:** The same ID is used in case of cancellation/correction as in the original notification. This way, the recipient can easily connect the two messages unequivocally. When the patient’s hospital stay has ended and a notification [SLHJ] has been sent, it is no longer necessary to use notifications with corrections and cancellations, unless the correction/cancellation is related to that exact noti-fication [SLHJ].

In [section is an overview of the patient journeys](#patient-journeys-and-use-cases) and their connection to use cases. These are fol-lowed by [business-related use cases](#business-related-use-cases) and [technical use cases](#technical-use-cases). All use cases are divided into:
1. Sender (hospital) 
2. Recipient (relevant recipient, typically the municipality) 

## Patient journeys and use cases 

## Business-related use cases

## Technical use cases