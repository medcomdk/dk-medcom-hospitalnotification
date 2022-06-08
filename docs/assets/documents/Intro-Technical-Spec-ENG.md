# Introduction to the Technical Content

> In case of discrepancies between the <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/" target="_blank">MedCom Core Implementation Guide (IG)</a>
 and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepandies.

The <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/" target="_blank">MedCom Core IG</a> describes five FHIR profiles, which can be seen below. 



<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;max-width:65%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-uaof{color:#343434;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-ne9s{color:#343434;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-uaof">Profile</th>
    <th class="tg-uaof">Resource</th>
    <th class="tg-uaof">Describtion</th>
    <th class="tg-uaof">MustSupport elements</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-ne9s">MedComCorePatient</td>
    <td class="tg-ne9s">Patient</td>
    <td class="tg-ne9s">A citizen or patient, when a MedCom message about the person.</td>
    <td class="tg-ne9s">Identifier (CPR-number)<br>Name<br>Address<br>Telecom<br>Managing Organization<br>Deceased or not</td>
  </tr>
  <tr>
    <td class="tg-ne9s">MedComCoreOrganization</td>
    <td class="tg-ne9s">Organization</td>
    <td class="tg-ne9s">Information useful to identify an organization.</td>
    <td class="tg-ne9s">Identifier (SOR-id)<br>Name</td>
  </tr>
  <tr>
    <td class="tg-ne9s">MedComCoreEncounter</td>
    <td class="tg-ne9s">Encounter</td>
    <td class="tg-ne9s">A meeting between a healthcare professional and a patient.</td>
    <td class="tg-ne9s">Encounter status <br>Encounter classification<br>Subject of the encounter<br>Episode of care identifier<br>Service provider organization </td>
  </tr>
  <tr>
    <td class="tg-ne9s">MedComCorePractitioner</td>
    <td class="tg-ne9s">Practitioner</td>
    <td class="tg-ne9s">Information about a healthcare professional </td>
    <td class="tg-ne9s">Name</td>
  </tr>
  <tr>
    <td class="tg-ne9s">MedComCorePractitionerRole</td>
    <td class="tg-ne9s">PractitionerRole</td>
    <td class="tg-ne9s">The role of the healthcare professional</td>
    <td class="tg-ne9s">References a practitioner</td>
  </tr>
</tbody>
</table>