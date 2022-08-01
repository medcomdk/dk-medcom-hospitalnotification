[Return](index.md)

# Overview of Hospital Notification codes and HL7 FHIR resources

The table below shows how the hospital notification codes folders map into FHIR's terminology, and thus how one can determine, based
on the resource elements, which type of hospital notification it is.

It is an overview of how values in the FHIR resources ‘Encounter’, ‘Provenance’ and ‘Patient’ together form the composite understanding.

The original code on the left reflects the content of the use case, then follows the explanatory text in Danish and English. The last 4
columns reflect the values from the 4 elements from ‘Encounter’, ‘Provenance’ and ‘Patient’.

Comments to the table:
* If there are two values in the Encounter.class column, the value depends on what value the previous message with Encounter.class had. The only exception is when a patient change hospital stay type from ‘emergency´ (EMER) to ‘inpatient’ (IMP).
* ”current activity” describes that the activity from the previous message must be use. For example, if a patient is admitted for a
hospital stay-admission, and dies during the admission, the element Provenance.activity must in both messages be ‘admit-
inpatient’.
* “previous status” describes that the status from the previous message must be used. This is relevant in cases where a death
notification has been sent by a mistake. For example, if Encounter.status was ‘onleave’ before the status was changed to
‘finished’, the status must be changed to ‘onleave’ again.
* If a patient dies, it must be noted in the element Patient.deceased. In this case, the element must be ‘true’.
<br><br>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:90%;width:85%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cjtp{background-color:#ecf4ff;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-tul6{background-color:#cfcfcf;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-5pia{background-color:#ffe2bf;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-p3tq{border-color:inherit;color:#2c415c;text-align:left;vertical-align:top}
.tg .tg-m5mm{background-color:#d7fcd7;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-ncd7{background-color:#ffffc7;border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;
  font-weight:bold"> Tabel 1: Overviwe of Hospital Notification codes  </caption>
<thead>
  <tr>
    <th class="tg-p3tq"><span style="font-weight:bold">Use case code DK</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Danish text</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">English text</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Encounter.Class</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Encounter.Status</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Provenance.activity</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Patient.Deceased</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-5pia">STAA</td>
    <td class="tg-5pia">Start sygehusophold- akut ambulant</td>
    <td class="tg-5pia">Start hospital stay-acute ambulant</td>
    <td class="tg-5pia">EMER</td>
    <td class="tg-5pia">in-progress</td>
    <td class="tg-5pia">admit-emergency</td>
    <td class="tg-5pia"></td>
  </tr>
  <tr>
    <td class="tg-5pia">RE_STAA</td>
    <td class="tg-5pia">Rettelse af Start sygehusophold- akut ambulant</td>
    <td class="tg-5pia">Update of start hospital stay-acute ambulant</td>
    <td class="tg-5pia">EMER</td>
    <td class="tg-5pia">in-progress</td>
    <td class="tg-5pia">revise-admit-emergency</td>
    <td class="tg-5pia"></td>
  </tr>
  <tr>
    <td class="tg-5pia">AN_STAA</td>
    <td class="tg-5pia">Annullering af start sygehusophold- akut ambulant</td>
    <td class="tg-5pia">Cancellation of start hospital stay- acute ambulant</td>
    <td class="tg-5pia">EMER</td>
    <td class="tg-5pia">cancelled/ entered-in-error</td>
    <td class="tg-5pia">cancel-admit-emergency</td>
    <td class="tg-5pia"></td>
  </tr>
  <tr>
    <td class="tg-m5mm">STIN</td>
    <td class="tg-m5mm">Start sygehusophold - indlagt</td>
    <td class="tg-m5mm">Start hospital stay-admission</td>
    <td class="tg-m5mm">IMP</td>
    <td class="tg-m5mm">in-progress</td>
    <td class="tg-m5mm">admit-inpatient</td>
    <td class="tg-m5mm"></td>
  </tr>
  <tr>
    <td class="tg-m5mm">RE_STIN</td>
    <td class="tg-m5mm">Rettelse af start sygehusophold - indlagt</td>
    <td class="tg-m5mm">Update of start hospital stay-admission</td>
    <td class="tg-m5mm">IMP</td>
    <td class="tg-m5mm">in-progress</td>
    <td class="tg-m5mm">revise-admit-inpatient</td>
    <td class="tg-m5mm"></td>
  </tr>
  <tr>
    <td class="tg-m5mm">AN_STIN</td>
    <td class="tg-m5mm">Annullering af start sygehusophold - indlagt</td>
    <td class="tg-m5mm">Cancellation of start hospital stay- admission</td>
    <td class="tg-m5mm">IMP</td>
    <td class="tg-m5mm">cancelled/ entered-in-error</td>
    <td class="tg-m5mm">cancel-admit-inpatient</td>
    <td class="tg-m5mm"></td>
  </tr>
  <tr>
    <td class="tg-tul6">STOR</td>
    <td class="tg-tul6">Start orlov</td>
    <td class="tg-tul6">Start leave</td>
    <td class="tg-tul6">IMP</td>
    <td class="tg-tul6">onleave</td>
    <td class="tg-tul6">start-leave-inpatient</td>
    <td class="tg-tul6"></td>
  </tr>
  <tr>
    <td class="tg-tul6">RE_STOR</td>
    <td class="tg-tul6">Rettelse Start orlov</td>
    <td class="tg-tul6">Update of Start leave</td>
    <td class="tg-tul6">IMP</td>
    <td class="tg-tul6">onleave</td>
    <td class="tg-tul6">revise-start-leave-inpatient</td>
    <td class="tg-tul6"></td>
  </tr>
  <tr>
    <td class="tg-tul6">AN_STOR</td>
    <td class="tg-tul6">Annullering af Start orlov</td>
    <td class="tg-tul6">Cancellation of Start leave</td>
    <td class="tg-tul6">IMP</td>
    <td class="tg-tul6">in-progress</td>
    <td class="tg-tul6">cancel-start-leave-inpatient</td>
    <td class="tg-tul6"></td>
  </tr>
  <tr>
    <td class="tg-tul6">SLOR</td>
    <td class="tg-tul6">Slut orlov</td>
    <td class="tg-tul6">End leave</td>
    <td class="tg-tul6">IMP</td>
    <td class="tg-tul6">in-progress</td>
    <td class="tg-tul6">end-leave-inpatient</td>
    <td class="tg-tul6"></td>
  </tr>
  <tr>
    <td class="tg-tul6">RE_SLOR</td>
    <td class="tg-tul6">Rettelse Slut orlov</td>
    <td class="tg-tul6">Update of End leave</td>
    <td class="tg-tul6">IMP</td>
    <td class="tg-tul6">in-progress</td>
    <td class="tg-tul6">revise-end-leave-inpatient</td>
    <td class="tg-tul6"></td>
  </tr>
  <tr>
    <td class="tg-tul6">AN_SLOR</td>
    <td class="tg-tul6">Annullering Slut orlov</td>
    <td class="tg-tul6">Cancellation of End leave</td>
    <td class="tg-tul6">IMP</td>
    <td class="tg-tul6">onleave</td>
    <td class="tg-tul6">cancel-end-leave-inpatient</td>
    <td class="tg-tul6"></td>
  </tr>
  <tr>
    <td class="tg-ncd7">SLHJ</td>
    <td class="tg-ncd7">Slut sygehusophold- afsluttet til hjemmet</td>
    <td class="tg-ncd7">End hospital Stay- patient discharged to home/primary sector</td>
    <td class="tg-ncd7">EMER/IMP</td>
    <td class="tg-ncd7">finished</td>
    <td class="tg-ncd7">discharge-[Encounter.Class]-home</td>
    <td class="tg-ncd7"></td>
  </tr>
  <tr>
    <td class="tg-ncd7">RE_SLHJ</td>
    <td class="tg-ncd7">Rettelse Slut sygehusophold-afsluttet til hjemmet</td>
    <td class="tg-ncd7">Update of End hospital Stay</td>
    <td class="tg-ncd7">EMER/IMP</td>
    <td class="tg-ncd7">finished</td>
    <td class="tg-ncd7">revise-discharge-[Encounter.Class]-home</td>
    <td class="tg-ncd7"></td>
  </tr>
  <tr>
    <td class="tg-ncd7">AN_SLHJ</td>
    <td class="tg-ncd7">Annullering Slut sygehusophold- afsluttet til hjemmet</td>
    <td class="tg-ncd7">Cancellation of End hospital Stay</td>
    <td class="tg-ncd7">EMER/IMP</td>
    <td class="tg-ncd7">in-progress</td>
    <td class="tg-ncd7">cancel-discharge-[Encounter.Class]-home</td>
    <td class="tg-ncd7"></td>
  </tr>
  <tr>
    <td class="tg-cjtp">MORS</td>
    <td class="tg-cjtp">Død</td>
    <td class="tg-cjtp">Deceased</td>
    <td class="tg-cjtp">EMER/IMP</td>
    <td class="tg-cjtp">finished</td>
    <td class="tg-cjtp">”current activity”</td>
    <td class="tg-cjtp">true</td>
  </tr>
  <tr>
    <td class="tg-cjtp">RE_MORS</td>
    <td class="tg-cjtp">Rettelse af død</td>
    <td class="tg-cjtp">Update of deceased</td>
    <td class="tg-cjtp">EMER/IMP</td>
    <td class="tg-cjtp">finished</td>
    <td class="tg-cjtp">”current activity”</td>
    <td class="tg-cjtp">true</td>
  </tr>
  <tr>
    <td class="tg-cjtp">AN_MORS</td>
    <td class="tg-cjtp">Annullering af død</td>
    <td class="tg-cjtp">Cancellation of deceased</td>
    <td class="tg-cjtp">EMER/IMP</td>
    <td class="tg-cjtp">"previous status"</td>
    <td class="tg-cjtp">”current activity”</td>
    <td class="tg-cjtp">false</td>
  </tr>
</tbody>
</table>
<br> <br>

# Release Notes 
<a href="../documents/RelaseNoteOverviewHospitalNot.md" target="_blank">The lates changes of this page</a> can be found here.
