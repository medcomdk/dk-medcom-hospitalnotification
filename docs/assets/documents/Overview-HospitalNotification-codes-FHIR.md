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
<p>&nbsp;<p>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;max-width:90%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cjtp{background-color:#ecf4ff;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-tul6{background-color:#cfcfcf;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-5pia{background-color:#ffe2bf;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-p3tq{border-color:inherit;color:#2c415c;text-align:left;vertical-align:top}
.tg .tg-m5mm{background-color:#bbf7bb;border-color:inherit;text-align:left;vertical-align:top}
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
    <td class="tg-6roq">STAA</td>
    <td class="tg-6roq"> Start   sygehusophold- akut ambulant</td>
    <td class="tg-6roq"> Start hospital stay-acute   ambulant</td>
    <td class="tg-6roq">   EMER</td>
    <td class="tg-6roq">in-progress</td>
    <td class="tg-6roq">admit-emergency</td>
    <td class="tg-6roq"> </td>
  </tr>
  <tr>
    <td class="tg-6roq">RE_STAA</td>
    <td class="tg-6roq">Rettelse af   Start sygehusophold- akut ambulant</td>
    <td class="tg-6roq">Update of start hospital   stay-acute ambulant</td>
    <td class="tg-6roq">EMER</td>
    <td class="tg-6roq">in-progress</td>
    <td class="tg-6roq">revise-admit-emergency</td>
    <td class="tg-6roq"> </td>
  </tr>
  <tr>
    <td class="tg-6roq">AN_STAA</td>
    <td class="tg-6roq">Annullering   af start sygehusophold- akut ambulant</td>
    <td class="tg-6roq">Cancellation of start   hospital stay- acute ambulant</td>
    <td class="tg-6roq">EMER</td>
    <td class="tg-6roq">cancelled/ entered-in-error</td>
    <td class="tg-6roq">cancel-admit-emergency</td>
    <td class="tg-6roq"> </td>
  </tr>
  <tr>
    <td class="tg-ralc">STIN</td>
    <td class="tg-ralc">Start sygehusophold - indlagt</td>
    <td class="tg-ralc">Start   hospital stay-admission</td>
    <td class="tg-ralc">IMP</td>
    <td class="tg-ralc">in-progress</td>
    <td class="tg-ralc">admit-inpatient</td>
    <td class="tg-ralc"> </td>
  </tr>
  <tr>
    <td class="tg-ralc">RE_STIN</td>
    <td class="tg-ralc">Rettelse af   start sygehusophold - indlagt</td>
    <td class="tg-ralc">Update of start hospital   stay-admission</td>
    <td class="tg-ralc">IMP</td>
    <td class="tg-ralc">in-progress</td>
    <td class="tg-ralc">revise-admit-inpatient</td>
    <td class="tg-ralc"> </td>
  </tr>
  <tr>
    <td class="tg-ralc">AN_STIN</td>
    <td class="tg-ralc">Annullering   af start sygehusophold - indlagt</td>
    <td class="tg-ralc">Cancellation of start   hospital stay- admission</td>
    <td class="tg-ralc">IMP</td>
    <td class="tg-ralc">cancelled/ entered-in-error</td>
    <td class="tg-ralc">cancel-admit-inpatient</td>
    <td class="tg-ralc"> </td>
  </tr>
  <tr>
    <td class="tg-y698">STOR</td>
    <td class="tg-y698">Start orlov</td>
    <td class="tg-y698">Start leave</td>
    <td class="tg-y698">IMP</td>
    <td class="tg-y698">onleave</td>
    <td class="tg-y698">start-leave-inpatient</td>
    <td class="tg-y698"> </td>
  </tr>
  <tr>
    <td class="tg-y698">RE_STOR</td>
    <td class="tg-y698">Rettelse   Start orlov</td>
    <td class="tg-y698">Update of   Start leave</td>
    <td class="tg-y698">IMP</td>
    <td class="tg-y698">onleave</td>
    <td class="tg-y698">revise-start-leave-inpatient</td>
    <td class="tg-y698"> </td>
  </tr>
  <tr>
    <td class="tg-y698">AN_STOR</td>
    <td class="tg-y698">Annullering   af Start orlov</td>
    <td class="tg-y698">Cancellation   of Start leave</td>
    <td class="tg-y698">IMP</td>
    <td class="tg-y698">in-progress</td>
    <td class="tg-y698">cancel-start-leave-inpatient</td>
    <td class="tg-y698"> </td>
  </tr>
  <tr>
    <td class="tg-y698">SLOR</td>
    <td class="tg-y698">Slut orlov</td>
    <td class="tg-y698">End leave</td>
    <td class="tg-y698">IMP</td>
    <td class="tg-y698">in-progress</td>
    <td class="tg-y698">end-leave-inpatient</td>
    <td class="tg-y698"> </td>
  </tr>
  <tr>
    <td class="tg-y698">RE_SLOR</td>
    <td class="tg-y698">Rettelse   Slut orlov</td>
    <td class="tg-y698">Update of   End leave</td>
    <td class="tg-y698">IMP</td>
    <td class="tg-y698">in-progress</td>
    <td class="tg-y698">revise-end-leave-inpatient</td>
    <td class="tg-y698"> </td>
  </tr>
  <tr>
    <td class="tg-y698">AN_SLOR</td>
    <td class="tg-y698">Annullering   Slut orlov</td>
    <td class="tg-y698">Cancellation   of End leave</td>
    <td class="tg-y698">IMP</td>
    <td class="tg-y698">onleave</td>
    <td class="tg-y698">cancel-end-leave-inpatient</td>
    <td class="tg-y698"> </td>
  </tr>
  <tr>
    <td class="tg-ncd7">SLHJ</td>
    <td class="tg-ncd7">Slut   sygehusophold- afsluttet til hjemmet</td>
    <td class="tg-ncd7">End hospital Stay- patient discharged   to home/primary sector</td>
    <td class="tg-ncd7">EMER/IMP</td>
    <td class="tg-ncd7">finished</td>
    <td class="tg-ncd7">discharge-[Encounter.Class]-home</td>
    <td class="tg-ncd7"> </td>
  </tr>
  <tr>
    <td class="tg-ncd7">RE_SLHJ</td>
    <td class="tg-ncd7">Rettelse   Slut sygehusophold-afsluttet til hjemmet</td>
    <td class="tg-ncd7">Update of End hospital Stay</td>
    <td class="tg-ncd7">EMER/IMP</td>
    <td class="tg-ncd7">finished</td>
    <td class="tg-ncd7">revise-discharge-[Encounter.Class]-home</td>
    <td class="tg-ncd7"> </td>
  </tr>
  <tr>
    <td class="tg-ncd7">AN_SLHJ</td>
    <td class="tg-ncd7">Annullering   Slut sygehusophold- afsluttet til hjemmet</td>
    <td class="tg-ncd7">Cancellation of End hospital   Stay</td>
    <td class="tg-ncd7">EMER/IMP</td>
    <td class="tg-ncd7">in-progress</td>
    <td class="tg-ncd7">cancel-discharge-[Encounter.Class]-home</td>
    <td class="tg-ncd7"> </td>
  </tr>
  <tr>
    <td class="tg-m3pm">MORS</td>
    <td class="tg-m3pm">Død</td>
    <td class="tg-m3pm">Deceased</td>
    <td class="tg-m3pm">EMER/IMP</td>
    <td class="tg-m3pm">finished</td>
    <td class="tg-m3pm">”current activity”</td>
    <td class="tg-m3pm">true</td>
  </tr>
  <tr>
    <td class="tg-m3pm">RE_MORS</td>
    <td class="tg-m3pm">Rettelse af   død</td>
    <td class="tg-m3pm">Update of   deceased</td>
    <td class="tg-m3pm">EMER/IMP</td>
    <td class="tg-m3pm">finished</td>
    <td class="tg-m3pm">”current activity”</td>
    <td class="tg-m3pm">true</td>
  </tr>
  <tr>
    <td class="tg-m3pm">AN_MORS</td>
    <td class="tg-m3pm">Annullering   af død</td>
    <td class="tg-m3pm">Cancellation   of deceased</td>
    <td class="tg-m3pm">EMER/IMP</td>
    <td class="tg-m3pm">"previous status"</td>
    <td class="tg-m3pm">”current activity”</td>
    <td class="tg-m3pm">false</td>
  </tr>
</tbody>
</table>