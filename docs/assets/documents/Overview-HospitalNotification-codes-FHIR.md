# Overview of HospitalNotification codes and HL7 FHIR resources

The table below shows how the hospital notification codes folders map into FHIR's terminology, and thus how one can determine, based
on the resource elements, which type of hospital notification it is.

It is an overview of how values in the FHIR resources ‘Encounter’, ‘Provenance’ and ‘Patient’ together form the composite understanding.

The original code on the left reflects the content of the use case, then follows the explanatory text in Danish and English. The last 4
columns reflect the values from the 4 elements from ‘Encounter’, ‘Provenance’ and ‘Patient’.

Comments to the table:
* Where there are two values in the Encounter.Class column, the value depends on what value the previous message with
Encounter.Class had, except when a patient change hospital stay type from ‘emergency’ (EMER) to ‘inpatient’ (IMP).
* ”current activity” describes that the activity from the previous message must be use. For example, if a patient is admitted for a
hospital stay-admission, and dies during the admission, the element Provenance.activity must in both messages be ‘admit-
inpatient’.
* “previous status” describes that the status from the previous message must be used. This is relevant in cases where a death
notification has been sent by a mistake. For example, if Encounter.status was ‘onleave’ before the status was changed to
‘finished’, the status must be changed to ‘onleave’ again.
* If a patient dies, it must be noted in the element Patient.deceased. In this case, the element must be ‘true’.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-6roq{background-color:#fae7d0;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-m3pm{background-color:#c8d6f8;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-fymr{border-color:inherit;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-ralc{background-color:#defce6;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-y698{background-color:#efefef;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-ncd7{background-color:#ffffc7;border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-fymr">Use case code DK</th>
    <th class="tg-fymr">Danish text</th>
    <th class="tg-fymr">English text</th>
    <th class="tg-fymr">Encounter.Class</th>
    <th class="tg-fymr">Encounter.Status</th>
    <th class="tg-fymr">Provenance.activity</th>
    <th class="tg-fymr">Patient.Deceased</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-6roq">STAA   </td>
    <td class="tg-6roq"> Start   sygehusophold- akut ambulant   </td>
    <td class="tg-6roq"> Start hospital stay-acute   ambulant   </td>
    <td class="tg-6roq">   EMER   </td>
    <td class="tg-6roq">   <br>in-progress   </td>
    <td class="tg-6roq">   <br>admit-emergency   </td>
    <td class="tg-6roq">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-6roq">   <br>RE_STAA   </td>
    <td class="tg-6roq">   <br>Rettelse af   Start sygehusophold- akut ambulant   </td>
    <td class="tg-6roq">   <br>Update of start hospital   stay-acute ambulant   </td>
    <td class="tg-6roq">   <br>EMER   </td>
    <td class="tg-6roq">   <br>in-progress   </td>
    <td class="tg-6roq">   <br>revise-admit-emergency   </td>
    <td class="tg-6roq">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-6roq">   <br>AN_STAA   </td>
    <td class="tg-6roq">   <br>Annullering   af start sygehusophold- akut ambulant   </td>
    <td class="tg-6roq">   <br>Cancellation of start   hospital stay- acute ambulant   </td>
    <td class="tg-6roq">   <br>EMER   </td>
    <td class="tg-6roq">   <br>cancelled/ entered-in-error   </td>
    <td class="tg-6roq">   <br>cancel-admit-emergency   </td>
    <td class="tg-6roq">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-ralc">   <br>STIN   </td>
    <td class="tg-ralc">   <br>Start sygehusophold - indlagt   </td>
    <td class="tg-ralc">   <br>Start   hospital stay-admission   </td>
    <td class="tg-ralc">   <br>IMP   </td>
    <td class="tg-ralc">   <br>in-progress   </td>
    <td class="tg-ralc">   <br>admit-inpatient   </td>
    <td class="tg-ralc">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-ralc">   <br>RE_STIN   </td>
    <td class="tg-ralc">   <br>Rettelse af   start sygehusophold - indlagt   </td>
    <td class="tg-ralc">   <br>Update of start hospital   stay-admission   </td>
    <td class="tg-ralc">   <br>IMP   </td>
    <td class="tg-ralc">   <br>in-progress   </td>
    <td class="tg-ralc">   <br>revise-admit-inpatient   </td>
    <td class="tg-ralc">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-ralc">   <br>AN_STIN   </td>
    <td class="tg-ralc">   <br>Annullering   af start sygehusophold - indlagt   </td>
    <td class="tg-ralc">   <br>Cancellation of start   hospital stay- admission   </td>
    <td class="tg-ralc">   <br>IMP   </td>
    <td class="tg-ralc">   <br>cancelled/ entered-in-error   </td>
    <td class="tg-ralc">   <br>cancel-admit-inpatient   </td>
    <td class="tg-ralc">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-y698">   <br>STOR   </td>
    <td class="tg-y698">   <br>Start orlov   </td>
    <td class="tg-y698">   <br>Start leave   </td>
    <td class="tg-y698">   <br>IMP   </td>
    <td class="tg-y698">   <br>onleave   </td>
    <td class="tg-y698">   <br>start-leave-inpatient   </td>
    <td class="tg-y698">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-y698">   <br>RE_STOR   </td>
    <td class="tg-y698">   <br>Rettelse   Start orlov   </td>
    <td class="tg-y698">   <br>Update of   Start leave   </td>
    <td class="tg-y698">   <br>IMP   </td>
    <td class="tg-y698">   <br>onleave   </td>
    <td class="tg-y698">   <br>revise-start-leave-inpatient   </td>
    <td class="tg-y698">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-y698">   <br>AN_STOR   </td>
    <td class="tg-y698">   <br>Annullering   af Start orlov   </td>
    <td class="tg-y698">   <br>Cancellation   of Start leave   </td>
    <td class="tg-y698">   <br>IMP   </td>
    <td class="tg-y698">   <br>in-progress   </td>
    <td class="tg-y698">   <br>cancel-start-leave-inpatient   </td>
    <td class="tg-y698">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-y698">   <br>SLOR   </td>
    <td class="tg-y698">   <br>Slut orlov   </td>
    <td class="tg-y698">   <br>End leave   </td>
    <td class="tg-y698">   <br>IMP   </td>
    <td class="tg-y698">   <br>in-progress   </td>
    <td class="tg-y698">   <br>end-leave-inpatient   </td>
    <td class="tg-y698">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-y698">   <br>RE_SLOR   </td>
    <td class="tg-y698">   <br>Rettelse   Slut orlov   </td>
    <td class="tg-y698">   <br>Update of   End leave   </td>
    <td class="tg-y698">   <br>IMP   </td>
    <td class="tg-y698">   <br>in-progress   </td>
    <td class="tg-y698">   <br>revise-end-leave-inpatient   </td>
    <td class="tg-y698">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-y698">   <br>AN_SLOR   </td>
    <td class="tg-y698">   <br>Annullering   Slut orlov   </td>
    <td class="tg-y698">   <br>Cancellation   of End leave   </td>
    <td class="tg-y698">   <br>IMP   </td>
    <td class="tg-y698">   <br>onleave   </td>
    <td class="tg-y698">   <br>cancel-end-leave-inpatient   </td>
    <td class="tg-y698">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-ncd7">   <br>SLHJ   </td>
    <td class="tg-ncd7">   <br>Slut   sygehusophold- afsluttet til hjemmet   </td>
    <td class="tg-ncd7">   <br>End hospital Stay- patient discharged   to home/primary sector   </td>
    <td class="tg-ncd7">   <br>EMER/IMP   </td>
    <td class="tg-ncd7">   <br>finished   </td>
    <td class="tg-ncd7">   <br>discharge-[Encounter.Class]-home   </td>
    <td class="tg-ncd7">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-ncd7">   <br>RE_SLHJ   </td>
    <td class="tg-ncd7">   <br>Rettelse   Slut sygehusophold-afsluttet til hjemmet   </td>
    <td class="tg-ncd7">   <br>Update of End hospital Stay   </td>
    <td class="tg-ncd7">   <br>EMER/IMP   </td>
    <td class="tg-ncd7">   <br>finished   </td>
    <td class="tg-ncd7">   <br>revise-discharge-[Encounter.Class]-home   </td>
    <td class="tg-ncd7">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-ncd7">   <br>AN_SLHJ   </td>
    <td class="tg-ncd7">   <br>Annullering   Slut sygehusophold- afsluttet til hjemmet   </td>
    <td class="tg-ncd7">   <br>Cancellation of End hospital   Stay   </td>
    <td class="tg-ncd7">   <br>EMER/IMP   </td>
    <td class="tg-ncd7">   <br>in-progress   </td>
    <td class="tg-ncd7">   <br>cancel-discharge-[Encounter.Class]-home   </td>
    <td class="tg-ncd7">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-m3pm">   <br>MORS   </td>
    <td class="tg-m3pm">   <br>Død   </td>
    <td class="tg-m3pm">   <br>Deceased   </td>
    <td class="tg-m3pm">   <br>EMER/IMP   </td>
    <td class="tg-m3pm">   <br>finished   </td>
    <td class="tg-m3pm">   <br>”current activity”   </td>
    <td class="tg-m3pm">true   </td>
  </tr>
  <tr>
    <td class="tg-m3pm">   <br>RE_MORS   </td>
    <td class="tg-m3pm">   <br>Rettelse af   død   </td>
    <td class="tg-m3pm">   <br>Update of   deceased   </td>
    <td class="tg-m3pm">   <br>EMER/IMP   </td>
    <td class="tg-m3pm">   <br>finished   </td>
    <td class="tg-m3pm">   <br>”current activity”   </td>
    <td class="tg-m3pm">true   </td>
  </tr>
  <tr>
    <td class="tg-m3pm">   <br>AN_MORS   </td>
    <td class="tg-m3pm">   <br>Annullering   af død   </td>
    <td class="tg-m3pm">   <br>Cancellation   of deceased   </td>
    <td class="tg-m3pm">   <br>EMER/IMP   </td>
    <td class="tg-m3pm">   <br>"previous status"   </td>
    <td class="tg-m3pm">   <br>”current activity”   </td>
    <td class="tg-m3pm">false   </td>
  </tr>
</tbody>
</table>