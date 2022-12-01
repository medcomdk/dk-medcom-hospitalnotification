[Return](../../index.md)
# Clinical Guidelines for application

**Table of contents**
* [1 Introduction](#1-introduction)
* [2 Purpose](#2-purpose)
* [3 Background](#3-background)
* [4 Legal framework](#4-legal-framework)
* [5 Contents and functionality](#hospitalnotificationrequirements)
* [6 Business rules for application](#businessrules)
* [7 Example](#example)
<!-- * [7 Release Notes](#7-release-notes) -->


# 1 Introduction
The health professional guidelines for using the standard Hospital Notification (DAN: Advis om sygehusophold) are described here. This includes the purpose, back-ground, legal basis for exchange as well as the content and functionality of Hospital Notification. The target group is IT system vendors and those responsible for im-plementation in regions and municipalities. The 'Hospital Notification' replaces the previous MedCom standards, Notification of Admission  <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/EDI/Dokumentation/" target="_blank">DIS20 </a> and <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/" target="_blank">XDIS20</a>, and Notification of Discharge <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/EDI/Dokumentation/" target="_blank">DIS17</a> and <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/" target="_blank">XDIS17</a>. 

Please note that for the technical implementation, a number of use cases have been prepared, where functionalitites and business rules for use have been translated into a number of detailed use cases for sender and receiver systems.<a href="https://medcomdk.github.io/dk-medcom-hospitalnotification/#12-use-cases" target="_blank">Click here to read use cases. </a>

Also note that the total content is described in the technical specifications. [Click here to read the technical specifications](assets/documents/Intro-Technical-Spec-ENG.md).<br>

  >Note: In case of any discrepancies between the two documents, the Danish document is the document in force.  


# 2 Purpose
Hospital Notification is a central and business-critical message which - automatically - informs the citizen's current care and health actors in the municipality when a citi-zen starts and ends his/hers hospital stay (acute ambulant or inpatient). This gives the citizen's actors in the municipality the opportunity to pause the citizen's current care and health services during the hospital stay and resume them when it ends. Hospital Notification can also trigger the automatic sending of an admission report (<a href="https://svn.medcom.dk/svn/releases/Standarder/National%20Sygehus-Kommunesamarbejde/1.0.3/XDIS16/Dokumentation/" target="_blank">XDIS16</a>) from the recipient's system, which gives the hospital staff an overview of the citizen's current services, functional level, and healthcare problems. Hospital Notification ensures that the business needs for notification are supported and includes notification by:
*	Admission
*	Acute ambulant hospital stay
*	Leave – start and end
*	End of hospital stay


# 3 Background
In line with the fact that more and more patients are not admitted, but is treated acute ambulant at the hospital, a need has arisen for notification of citizens not admitted. 
The development of 'Hospital Notification’ was initiated in 2018 under the auspices of <a href="https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Hjemmepleje-sygehusgruppe" target="_blank"> MedCom's home care-hospital group </a> (DAN: hjemmepleje-sygehusgruppen) and <a href ="https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Kommune-Sygehusleverand%C3%B8rgruppen" target="_blank">municipal hospital supplier group </a> (DAN: Kommune-sygehusleverandørgruppen), which have defined requirements for content and clinical guidelines for application. 
<b>Note regarding LPR3 </b>: Registration of hospital stays in the EPR system is linked to the reporting to the National Patient Registry, LPR. By transition to LPR3 (2019), the concepts 'admitted' and 'outpatient' are removed in the reporting to LPR and replaced by physical attendance. In practice, all regions continue to register the hospital stay as outpatient and admission respectively. It is agreed among the parties behind the development of the Hospital Notification that the scope of the hospital stays, which will be supported by a notification, is:

<em>"All current hospital stays with physical attendance by the patient and all planned hospital stays with physical attendance by the patient for the purpose of admission."</em>


# 4 Legal framework
Hospital Notification are exchanged on the basis of the Danish Health Act and Danish Legal Protection Act §12c:

<em>For use in the planning of care services etc pursuant to § 79 a, chapter 16 and §§ 107 and 108 in the social services and health care act as well as for follow-ups of cases pursuant to §§ 8-10 in the act on sickness benefits, the municipal council and hospital can exchange information about citizens admission and discharge from hospitals within the municipality and about the citizen&#39;s acute hospital stay, where the citizen stays at the hospital for assessment and treatment without being admitted. The exchange can take place automatic and without the consent of the citizen.</em> (Danish Legal Act 12c LBK 265 25/02/2022)

The service act §79 a includes *preventive home visits*, chapter 16 includes §§ 83-99, which covers *personal help, care and nursing as well as care wills,* and §§ 107 and 108 covers *temporary and long-term sheltered residence.*

# 5 Contents and functionality
Hospital Notification is sent automatically and in real-time from the hospital's EPR system to the patient's municipality of residence. As the hospital is not able to determine in advance which citizens currently receive services from the primary sector, a Hospital Notification is generated for all citizens with a personal identification number (CPR) and home address in Denmark when registered in the hospital's EPR system. The receiving system ensures that the Hospital Notification stay is only downloaded and shown for citizens receiving services within the valid legal framework.
Hospital Notification will - for the recipient in the municipality - appear with the following content ([see section 7 for example](#7-example))
*	The patient’s personal identification number 
*	Status of the hospital stay
*	Date and time of start/end of hospital stay
*	Name of the hospital department/section and the hospital where the patient is staying
<br><br>

Hospital Notification indicates one of the following possible outcomes:
*	Start hospital stay – acute ambulant
*	Start hospital stay - admitted
*	End hospital stay – patient completed to home/primary sector
*	Death
*	Start leave
*	End leave
Admission report (<a href="https://svn.medcom.dk/svn/releases/Standarder/National%20Sygehus-Kommunesamarbejde/1.0.3/XDIS16/Dokumentation/" target="_blank">XDIS16</a>) is requested for a number of predefined events. An overview of which events trigger which types of/statuses for Hospital Notification, as well as when an admission report is requested, can be found in <a href ="#Tab1">Table 1</a>.

>Note: Danish code names, which can be related to overview of notification codes and HL7 FHIR resources.  



<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lc33{background-color:#2c415c;border-color:inherit;color:#ffffff;text-align:left;vertical-align:top}
.tg .tg-lesy{background-color:#9dbad7;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg" id="Tab1">
<caption style="color:#2c415c;
  font-weight:bold">Table 1: Overview of events that trigger Hospital Notification, which type of notification is triggers and when an admission report is requested (XDIS16)</caption>
<thead>
  <tr>
    <th class="tg-lc33" rowspan="2">Event</th>
    <th class="tg-lc33" rowspan="2">Code</th>
    <th class="tg-lc33" rowspan="2">Status for stay<br>(type of Hospital Notification)</th>
    <th class="tg-lc33" rowspan="2">Request for admission report   (XDIS16)</th>
    <th class="tg-lc33" rowspan="2">Benefit</th>
  </tr>
  <tr>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-lesy" colspan="5">Start hospital stay</td>
  </tr>
  <tr>
    <td class="tg-0pky">Acute&nbsp;&nbsp;&nbsp;ambulant patient</td>
    <td class="tg-0pky">STAA</td>
    <td class="tg-0pky">Start hospital stay – acute ambulant</td>
    <td class="tg-0pky">Yes</td>
    <td class="tg-0pky">The receiver is&nbsp;&nbsp;&nbsp;informed that the citizen is registered as ‘acute ambulant’ at the hospital.&nbsp;&nbsp;&nbsp;The specific status allows the receiving system to set rules for the system&nbsp;&nbsp;&nbsp;management.</td>
  </tr>
  <tr>
    <td class="tg-0pky">Admit&nbsp;&nbsp;&nbsp;patient</td>
    <td class="tg-0pky">STIN</td>
    <td class="tg-0pky">Start hospital stay - admitted</td>
    <td class="tg-0pky">Yes</td>
    <td class="tg-0pky">The receiver is&nbsp;&nbsp;&nbsp;informed that the citizen is registered as ‘admitted to hospital’. The&nbsp;&nbsp;&nbsp;specific status allows the receiving system to set rules for the system&nbsp;&nbsp;&nbsp;management.</td>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Admit patient from another&nbsp;&nbsp;&nbsp;region</td>
    <td class="tg-0pky" rowspan="2">STIN</td>
    <td class="tg-0pky" rowspan="2">Start hospital stay - admitted</td>
    <td class="tg-0pky" rowspan="2">Yes</td>
    <td class="tg-0pky" rowspan="2">The receiver is informed that&nbsp;&nbsp;&nbsp;the citizen is transferred to another hospital in another region.</td>
  </tr>
  <tr>
  </tr>
  <tr>
    <td class="tg-0pky" rowspan="2">Admit patient from another&nbsp;&nbsp;&nbsp;hospital in the same region</td>
    <td class="tg-0pky" rowspan="2">STIN</td>
    <td class="tg-0pky" rowspan="2">Start hospital stay - admitted</td>
    <td class="tg-0pky" rowspan="2">No</td>
    <td class="tg-0pky" rowspan="2">The receiver is informed that&nbsp;&nbsp;&nbsp;the citizen is transferred to another hospital in the same region.</td>
  </tr>
  <tr>
  </tr>
  <tr>
    <td class="tg-0pky">Admit&nbsp;&nbsp;&nbsp;patient from another department at the same hospital </td>
    <td class="tg-0pky">No notification</td>
    <td class="tg-0pky">No notification</td>
    <td class="tg-0pky">Not relevant</td>
    <td class="tg-0pky"> </td>
  </tr>
  <tr>
    <td class="tg-lesy" colspan="5">End hospital stay</td>
  </tr>
  <tr>
    <td class="tg-0pky">End&nbsp;&nbsp;&nbsp;stay </td>
    <td class="tg-0pky">SLHJ</td>
    <td class="tg-0pky">End hospital stay - patient completed to&nbsp;&nbsp;&nbsp;home/primary sector</td>
    <td class="tg-0pky">No</td>
    <td class="tg-0pky">The receiver is&nbsp;&nbsp;&nbsp;informed that the citizen’s hospital stay is ended and is transferred to&nbsp;&nbsp;&nbsp;either home or primary sector. It allows the receiving system to set rules&nbsp;&nbsp;&nbsp;for the system management, for example resuming care services. Not used for&nbsp;&nbsp;&nbsp;transfer.</td>
  </tr>
  <tr>
    <td class="tg-lesy" colspan="5">Death</td>
  </tr>
  <tr>
    <td class="tg-0pky">The&nbsp;&nbsp;&nbsp;patient dies (on arrival or during hospital stay)</td>
    <td class="tg-0pky">MORS</td>
    <td class="tg-0pky">Death</td>
    <td class="tg-0pky">No</td>
    <td class="tg-0pky">The receiver is&nbsp;&nbsp;&nbsp;informed that the citizen is dead. Used both for death on arrival and death&nbsp;&nbsp;&nbsp;during the hospital stay.</td>
  </tr>
  <tr>
    <td class="tg-lesy" colspan="5">Leave</td>
  </tr>
  <tr>
    <td class="tg-0pky">Patient&nbsp;&nbsp;&nbsp;starts leave</td>
    <td class="tg-0pky">STOR</td>
    <td class="tg-0pky">Start leave</td>
    <td class="tg-0pky">No</td>
    <td class="tg-0pky" rowspan="2">Information about current leave&nbsp;&nbsp;&nbsp;is useful when/if relatives/the citizen reaches out during the leave. The&nbsp;&nbsp;&nbsp;treatment responsibility for the patient on leave lies at the hospital and&nbsp;&nbsp;&nbsp;must be communicated separately if actors other than the hospital delivers&nbsp;&nbsp;&nbsp;care services during the patient’s leave.</td>
  </tr>
  <tr>
    <td class="tg-0pky">Patient ends&nbsp;&nbsp;&nbsp;leave</td>
    <td class="tg-0pky">SLOR</td>
    <td class="tg-0pky">End leave</td>
    <td class="tg-0pky">No</td>
  </tr>
  <tr>
    <td class="tg-lesy" colspan="5">Cancellations</td>
  </tr>
  <tr>
    <td class="tg-0pky">Send&nbsp;&nbsp;&nbsp;cancellation (used for wring patient/CPR.number or incorrect type of ‘Hosital&nbsp;&nbsp;&nbsp;Notification’)</td>
    <td class="tg-0pky">AN_XX</td>
    <td class="tg-0pky">Cancellation ’XX’, e.g Cancellation Start&nbsp;&nbsp;&nbsp;hospital stay - admitted</td>
    <td class="tg-0pky">No</td>
    <td class="tg-0pky">Cancellation of&nbsp;&nbsp;&nbsp;previously sent notifications. Is used in case of wrong choice of hospital&nbsp;&nbsp;&nbsp;stay or wrong personal identification number (CPR).</td>
  </tr>
  <tr>
    <td class="tg-lesy" colspan="5">Corrections</td>
  </tr>
  <tr>
    <td class="tg-0pky">Send&nbsp;&nbsp;&nbsp;correction (wrong department or time)</td>
    <td class="tg-0pky">RE_XX</td>
    <td class="tg-0pky">Correction ’XX’, e.g Correction Start&nbsp;&nbsp;&nbsp;hospital stay - admitted</td>
    <td class="tg-0pky">No</td>
    <td class="tg-0pky">Corrects content&nbsp;&nbsp;&nbsp;in previously sent notifications, for example hospital department or time.</td>
  </tr>
</tbody>
</table></div>



<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%; }
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-vfn1{background-color:#9dbad7;color:#333333;text-align:left;vertical-align:top}
</style>
<div style="overflow-x:auto;">
<table class="tg">
<caption style="color:#2c415c;
  font-weight:bold"> Table 1: Status of hospital stay</caption>
<thead>
  <tr>
    <th class="tg-pu9k">Event</th>
    <th class="tg-pu9k">Use case code *</th>
    <th class="tg-pu9k">Name of notification</th>
    <th class="tg-pu9k">Benefits</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-vfn1" colspan="3">Start stay</td>
    <td class="tg-vfn1"></td>
  </tr>
  <tr>
    <td class="tg-tysj">Acute ambulant care start</td>
    <td class="tg-tysj">STAA</td>
    <td class="tg-tysj">START hospital stay – Acute ambulant care</td>
    <td class="tg-tysj">The receiver is informed that the citizen is registered as ‘acute ambulant’ at the hospital. The specific status allows the receiving system to set rules for the system management.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Admitted to hospital</td>
    <td class="tg-tysj">STIN</td>
    <td class="tg-tysj">START hospital stay – admission</td>
    <td class="tg-tysj">The receiver is informed that the citizen is registered as ‘admitted to hospital’. The specific status allows the receiving system to set rules for the system management.</td>
  </tr>
  <tr>
    <td class="tg-vfn1" colspan="3">End stay</td>
    <td class="tg-vfn1"></td>
  </tr>
  <tr>
    <td class="tg-tysj">Patient discharged and sent home</td>
    <td class="tg-tysj">SLHJ</td>
    <td class="tg-tysj">END hospital stay –<br>patient discharged and sent home/to primary sector</td>
    <td class="tg-tysj">The receiver is informed that the citizen’s hospital stay is ended and is transferred to either home or primary sector. It allows the receiving system to set rules for the system management, for example resuming care services. Not used for transfer.</td>
  </tr>
  <tr>
    <td class="tg-vfn1" colspan="3">Death</td>
    <td class="tg-vfn1"></td>
  </tr>
  <tr>
    <td class="tg-tysj">The patient is dead</td>
    <td class="tg-tysj">MORS</td>
    <td class="tg-tysj">DEATH</td>
    <td class="tg-tysj">The receiver is informed that the citizen is dead. Used both if dead at arrival and dead during the hospital stay.</td>
  </tr>
  <tr>
    <td class="tg-vfn1" colspan="3">Leave</td>
    <td class="tg-vfn1"></td>
  </tr>
  <tr>
    <td class="tg-tysj">The patient starts leave</td>
    <td class="tg-tysj">STOR</td>
    <td class="tg-tysj">START leave</td>
    <td class="tg-tysj" rowspan="2">Information about current leave is useful when/if relatives/the citizen reaches out during the leave.<br>The treatment responsibility for the patient on leave lies at the hospital and must be communicated separately if actors other than the hospital delivers care services during the patient’s leave.</td>
  </tr>
  <tr>
    <td class="tg-tysj">The patient ends leave</td>
    <td class="tg-tysj">SLOR</td>
    <td class="tg-tysj">END leave</td>
  </tr>
  <tr>
    <td class="tg-vfn1" colspan="3">Cancellations</td>
    <td class="tg-vfn1"></td>
  </tr>
  <tr>
    <td class="tg-tysj">Cancellation</td>
    <td class="tg-tysj">ANXX</td>
    <td class="tg-tysj">CANCELLED ‘Name of notification’</td>
    <td class="tg-tysj">Cancellation of previously sent notifications. Is used in case of wrong choice of hospital stay or wrong personal identification number (CPR).</td>
  </tr>
  <tr>
    <td class="tg-vfn1" colspan="3">Corrections</td>
    <td class="tg-vfn1"></td>
  </tr>
  <tr>
    <td class="tg-tysj">Corrections</td>
    <td class="tg-tysj">REXX</td>
    <td class="tg-tysj">CORRECTED 'Name of electronic notification’</td>
    <td class="tg-tysj">Corrects content in previously sent notifications, for example hospital department or time.</td>
  </tr>
</tbody>
</table>
</div>
*represents [danish codes names described in the overview of HospitalNotification codes](https://medcomdk.github.io/dk-medcom-hospitalnotification/assets/documents/Overview-HospitalNotification-codes-FHIR.html)



# 6 Business rules for application

The purpose of the outlined business rules for use of the &#39;HospitalNotification&#39; is that the notification users use the messages as intended. Business rules are a supplement to the standard for &#39;HospitalNotification&#39; and can be updated as the needs change.

  >Note: Private hospitals can also use hospitalnotifications

1. **Electronic notifications are generated based on real-time registration in the EPR/PAS system**If EPR/PAS uses future registrations of planned contacts, these should trigger the electronic notification only when the time occurs, i.e. at the patient&#39;s physical attendance.

2. **Ended hospital stay (admission and acute ambulant care) is only used when the patient is discharged (and sent home/to the primary sector)** Notification of &#39;ENDED hospital stay&#39; cannot be used in case of transfer.

    >Note: If the patient is responsible for transport from hospital A to hospital B him-/herself, END hospital stay can be used. The planned transfer should be communicated to the receiver in the care process plan or in a correspondence message.

3. **If an acute ambulant stay is changed to the patient being admitted, a new &#39;START hospital stay – admission&#39; notification is sent.** No notification on &#39;ENDED hospital stay&#39; should be sent when the acute ambulant stay changes to the patient being admitted. Notification on &#39;ENDED hospital stay&#39; is sent when the patient is subsequently discharged (sent home/to the primary sector).

4. **If an admission changes to acute ambulant care, a new &#39;START hospital stay – acute ambulant care&#39; notification is sent.** No notification on &#39;ENDED hospital stay&#39; should be sent when the admission changes to acute ambulant care. Notification on &#39;ENDED hospital stay&#39; is sent when the patient is subsequently discharged (sent home/to the primary sector). This occurrence is seen as rare.

5. **If the patient is declared dead on arrival, after arrival or during the hospital stay, the notification of the type &#39;DEATH&#39; is sent.**
The notification type &#39;DEAD&#39; should be used in all cases where the patient is dead or dies.

6. **If the patient is registered as on leave in the EPR, the notification is sent when the patient starts (&#39;START leave&#39;) or finishes (&#39;END leave&#39;) their leave (at home).** Leave notifications are only sent when the patient is registered as being on leave at home. In case of a double admission,leave should therefore not trigger a leave notification. Leave notifications should not activate care services in the municipality unless otherwise agreed.

   >Note:Admission in psychiatric and somatic departments at the same time.

7. **If an incorrect registration has happened, which has caused an incorrect electronic notification, a correction or cancellation must be sent on the following principles:**
    1. If a notification has been sent because of a wrongly entered personal identification number (CPR) or wrong choice of hospital stay, **a cancellation** is sent.
    2. If a notification with the wrongly stated hospital department or time of stay is sent, **a correction** is sent, i.e. a new correct notification that replaces previous notifications. Cancellation is not sent prior to the correction.

8. **No specific transfer notification is used.** A requirement is made that new notifications with 'START hospital stay'; is sent from the hospital the patient is transferred **to**, whether it is in the same region or another region. No notification is sent from the hospital, from which the patient is transferred form. 

   >Note: If the patient is responsible for transport from hospital A to hospital B him-/herself, END hospital stay can be used. The planned transfer should be communicated to the receiver in the care process plan or in a correspondence message.

9. **Discharge to hospice**
Same flow as for transfer to another hospital in the same or another region is used. Hospice sends &#39;START hospital stay – admission&#39; when the patient arrives.
<p>&nbsp;</p>

## 7 Example

<figure>
<img src="../images/Example_HospitalNotification_ENG.png" alt="Example of a HospitalNotification " style="width:50%" id="Fig1">
<figcaption text-align = "center"><b>Figure 1: Example of a HospitalNotification</b></figcaption>
</figure>
 

>Note This is an example of what the HospitalNotification could look like. In the notification, the &#39;status on hospital stay&#39; will indicate which event has caused the electronic notification.

<!-- # 7 Release Notes 
[The latest changes of this page](../documents/ReleaseNotesClinGuideENG.md) can be found here. -->