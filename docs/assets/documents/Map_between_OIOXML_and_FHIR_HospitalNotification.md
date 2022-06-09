# Map between OIOXML Advis and FHIR HospitalNotification Messages 

This document describes mapping between the OIOXML Advis (XDIS20/XDIS17) and the FHIR HospitalNotification message. Not all elements from OIOXML Advis are relevant in FHIR HospitalNotification message, which is marked with a ‘NA’. The purpose of this document is to help implementers of FHIR HospitalNotification message. The actual implementation guide which includes all requirements for the HospitalNotificationMessage can be found here. 

> Please notice, that the expressions in ‘Actual FHIR path’ are made using the windows app called FHIRPath tester. In other applications, are the apostrophe ( ‘…’ ) might not used.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cxm4{color:#333333;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-ifwm{background-color:#e2ecf5;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-cxm4" rowspan="2">   <br>Data   </th>
    <th class="tg-cxm4" rowspan="2">   <br>OIOXML   </th>
    <th class="tg-cxm4">   <br>Pseudo FHIR path   </th>
    <th class="tg-cxm4" rowspan="2">   <br>Must Support   </th>
    <th class="tg-cxm4" rowspan="2">   <br>Comment   </th>
  </tr>
  <tr>
    <th class="tg-cxm4">   <br>Actual FHIR path   </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Date for Message sent</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.Envelope.Sent.Date </span>   </td>
    <td class="tg-ifwm">   <br>MedComHospitalNotificationMessage.timestamp   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Yes</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">All FHIR timestamps contain   both date and time. This element holds information about when a bundle is   created. The timestamp is equivalent to MedComHospitalNotificationMessage.MedcomMessagingProvenance.   occurredDateTime</span>   </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br>Bundle.timestamp   </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Time for Message sent</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.Envelope.Sent.Time</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>MedComHospitalNotificationMessage.timestamp&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Yes</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">All FHIR timestamps contain&nbsp;&nbsp;&nbsp;both date and time. This element holds information about when a bundle is&nbsp;&nbsp;&nbsp;created. The timestamp is equivalent to MedComHospitalNotificationMessage.MedcomMessagingProvenance.&nbsp;&nbsp;&nbsp;occurredDateTime</span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle.timestamp&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Message envelope id </span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.Envelope.Identifier</span>   </td>
    <td class="tg-ifwm">   <br>MedComHospitalNotificationMessage.id   </td>
    <td class="tg-ifwm" rowspan="2">   <br>Yes   </td>
    <td class="tg-ifwm" rowspan="2">   <br>A unique identifier for a bundle. The <span style="color:#373732">MedComHospitalNotificationMessage</span>.id must be   updated with a new value each time a new message is sent, or a message is   resent.   </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br>Bundle.id   </td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">AcknowledgementCode</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.Envelope.AcknowledgementCode</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">NA</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br> &nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Not relevant, as all FHIR&nbsp;&nbsp;&nbsp;messages shall be acknowledged.</span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Message letter id </span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.Identifier</span>   </td>
    <td class="tg-ifwm">   <br>MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.id   </td>
    <td class="tg-ifwm" rowspan="2">   <br>Yes   </td>
    <td class="tg-ifwm" rowspan="2">   <br>A unique identifier for each message. This   identifier should be globally unique.    </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br>Bundle.entry.resource.ofType('MessageHeader').id   </td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Version code</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.VersionCode</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>NA&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br> &nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>The version of the FHIR profiles is part of&nbsp;&nbsp;&nbsp;the profile’s URL.&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br><span style="color:#373732">Statistical code</span>   </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.StatisticalCode</span>   </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">NA</span>   </td>
    <td class="tg-ifwm">   <br>    </td>
    <td class="tg-ifwm">   <br>Only VANSEnvelope contains a   statistical code.    </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Authorization timestamp date</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.Authorisation.Date</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>MedComHospitalNotificationMessage. medcomHospitalNotificationEncounter.period.start&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Yes</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">This timestamp includes a&nbsp;&nbsp;&nbsp;date and time. It represents the date and time for when the encounter starts.</span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle.entry.resource.ofType('Encounter').period.start&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Authorization timestamp time</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.Authorisation.Time</span>   </td>
    <td class="tg-ifwm">   <br>MedComHospitalNotificationMessage. medcomHospitalNotificationEncounter.period.start   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Yes</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">This timestamp includes a   date and time. It represents the date and time for when the encounter starts.   </span>   </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br>Bundle.entry.resource.ofType('Encounter').period.start   </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Message type (DIS20/DIS17)</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.TypeCode</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>MedComHospitalNotificationMessage.medcomHospitalNotificationMessageHeader.event[x].eventcoding.code&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>Yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>The type of message. For HospitalNotification&nbsp;&nbsp;&nbsp;the code shall be "hospital-notification-message"<span style="color:red"> </span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle.entry.resource.ofType('MessageHeader').event.code&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Message status</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.StatusCode</span>   </td>
    <td class="tg-ifwm">   <br>MedcomHospitalNotificationMessage.MedcomMessagingProvenance.activity.coding.code   </td>
    <td class="tg-ifwm" rowspan="2">   <br>Yes   </td>
    <td class="tg-ifwm" rowspan="2">   <br>The element that describes   the status of the HospitalNotification eg. admit-inpatient.   </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br>Bundle.entry.where(resource.ofType('Provenance').target.reference.replace('MessageHeader/','')   = %resource.entry.resource.ofType('MessageHeader'   ).id).resource.ofType('Provenance').activity.coding.code   </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Episode of care identifier</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.NotificationIdentifier</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.episodeOfCare.identifier.value</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">No</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">A unique identifier for the&nbsp;&nbsp;&nbsp;episode of care. </span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Bundle.entry.resource.ofType('Encounter').episodeOfCare.identifier.value</span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">EAN id for sender</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.sender.EANIdentifier</span>   </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.MedComMessagingOrganization.identifier.eanIdentifier</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Yes</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">The EAN identifier for a   sending organization. </span>   </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br><span style="color:#373732">Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system   = 'urn:oid:1.3.88').value</span>   </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">EAN id for receiver</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.receiver.EANIdentifier</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.MedComMessagingOrganization.identifier.eanIdentifier</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Yes</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">The EAN identifier for a&nbsp;&nbsp;&nbsp;receiving organization. </span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Bundle.entry.where(resource.ofType('Organization').id.replace('string',&nbsp;&nbsp;&nbsp;'id') =&nbsp;&nbsp;&nbsp;%resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system&nbsp;&nbsp;&nbsp;= 'urn:oid:1.3.88').value</span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Sender id </span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.sender.Identifier</span>   </td>
    <td class="tg-ifwm">   <br>MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.MedcomMessagingOrganization.identifier   </td>
    <td class="tg-ifwm" rowspan="2">   <br>Yes   </td>
    <td class="tg-ifwm" rowspan="2">   <br>The identifier that   describes the sender of the HospitalNotification message. Both a SOR- and   EAN-identifier must be sent.    </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').identifier   </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Receiver id</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.receiver.Identifier</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.MedcomMessagingOrganization.identifier&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>Yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>The identifier that&nbsp;&nbsp;&nbsp;describes the receiver of the HospitalNotification message. Both a SOR- and&nbsp;&nbsp;&nbsp;EAN-identifier must be sent.&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',&nbsp;&nbsp;&nbsp;'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').identifier&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br><span style="color:#373732">Sender type</span>   </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.sender.IdentifierCode</span>   </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">NA</span>   </td>
    <td class="tg-ifwm">   <br>    </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">The type of the organization   is given in the SOR identifier. See sender id.</span>     </td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Receiver type</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.receiver.IdentifierCode</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">NA</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br> &nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">The type of the organization&nbsp;&nbsp;&nbsp;is given in the SOR identifier. See receiver id.</span> &nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Sender organization</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.sender.OrganizationName</span>   </td>
    <td class="tg-ifwm">   <br>MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name   </td>
    <td class="tg-ifwm" rowspan="2">   <br>Yes   </td>
    <td class="tg-ifwm" rowspan="2">   <br>This information is   depending on the SOR identifier and shall only be included, if the   OrganizationName is given in the SOR identifier.     </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name   </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Receiver organization</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.receiver.OrganizationName</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.medcomMessagingOrganization.name&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>Yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>This information is&nbsp;&nbsp;&nbsp;depending on the SOR identifier and shall only be included, if the&nbsp;&nbsp;&nbsp;OrganizationName is given in the SOR identifier. &nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',&nbsp;&nbsp;&nbsp;'id') =&nbsp;&nbsp;&nbsp;%resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').name&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Sender department</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.sender.DepartmentName</span>   </td>
    <td class="tg-ifwm">   <br>MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name   </td>
    <td class="tg-ifwm" rowspan="2">   <br>Yes   </td>
    <td class="tg-ifwm" rowspan="2">   <br>This information is   depending on the SOR identifier and shall only be included, if the DepartmentName   is given in the SOR identifier.     </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name   </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Sender unit </span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.sender.UnitName</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>Yes&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>This information is&nbsp;&nbsp;&nbsp;depending on the SOR identifier and shall only be included, if the UnitName&nbsp;&nbsp;&nbsp;is given in the SOR identifier. &nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',&nbsp;&nbsp;&nbsp;'id') =&nbsp;&nbsp;&nbsp;%resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br><span style="color:#373732">Sender telephone</span>   </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.sender.TelephoneSubscriberIdentifier</span>   </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">NA</span>   </td>
    <td class="tg-ifwm">   <br>    </td>
    <td class="tg-ifwm">   <br>Organization   contactinformation is described by the SOR identifier.    </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Answer to EAN id</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.sender.AnswerTo.EANIdentifier</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationReportOfAdmissionRecipientExtension.MedComMessagingOrganization.identifier:eanIdentifier</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Yes</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Contains EANidentifier for&nbsp;&nbsp;&nbsp;the recipient of the report of admission. </span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Bundle.entry.where(resource.ofType('Organization').id.replace('string',&nbsp;&nbsp;&nbsp;'id') = %resource.entry.resource.ofType('MessageHeader').extension.where(url&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;'http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-messaging-reportOfAdmissionRecipientExtension').value.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system&nbsp;&nbsp;&nbsp;= 'urn:oid:1.3.88').value</span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Patient id</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.Patient.CivilRegistrationNumber</span>   </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.MedComCorePatient.identifier.cpr</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Yes</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Information about the   patient cpr-identifier.</span>   </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br><span style="color:#373732">Bundle.entry.resource.ofType('Patient').identifier.where(system   = 'urn:oid:1.2.208.176.1.2').value</span>   </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Episode of care status</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.Patient.EpisodeOfCareStatusCode</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">   <br><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComMessagingProvenance.activity.coding.code</span><br>      <br><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.MedComCorePatient.deceased</span>   </td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>Yes (all)&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br>The HospitalNotification message episodeofcare&nbsp;&nbsp;&nbsp;status is more complexed than the OIOXML message, please refer to the implementation&nbsp;&nbsp;&nbsp;guide for more information.<span style="color:#0070C0"> </span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">   <br><span style="color:#373732">Bundle.entry.where(resource.ofType('Provenance').target.reference.replace('MessageHeader/','')   = %resource.entry.resource.ofType('MessageHeader'   ).id).resource.ofType('Provenance').activity.coding.code</span><br>   <br><span style="color:#373732">Bundle.entry.resource.ofType('Patient').deceased</span>   </td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Notification start date</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Emessage.NotificationOfAdmission.Admission.Date</span>   </td>
    <td class="tg-ifwm">   <br><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.period.start</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">Yes</span>   </td>
    <td class="tg-ifwm" rowspan="2">   <br><span style="color:#373732">The start of the admission.   Date and time are included in the same element.</span>   </td>
  </tr>
  <tr>
    <td class="tg-ifwm">   <br><span style="color:#373732">Bundle.entry.resource.ofType('Encounter').period.start</span>   </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Notification start time</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Emessage.NotificationOfAdmission.Admission.Time</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.period.start</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Yes</span>&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0lax" rowspan="2">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">The start of the admission.&nbsp;&nbsp;&nbsp;Date and time are included in the same element.</span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">&nbsp;&nbsp;&nbsp;<br><span style="color:#373732">Bundle.entry.resource.ofType('Encounter').period.start</span>&nbsp;&nbsp;&nbsp;</td>
  </tr>
</tbody>
</table>