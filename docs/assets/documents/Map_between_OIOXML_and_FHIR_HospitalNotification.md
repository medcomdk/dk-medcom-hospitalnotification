# Map between OIOXML Advis and FHIR HospitalNotification Messages 

This document describes mapping between the OIOXML Advis (XDIS20/XDIS17) and the FHIR HospitalNotification message. Not all elements from OIOXML Advis are relevant in FHIR HospitalNotification message, which is marked with a ‘NA’. The purpose of this document is to help implementers of FHIR HospitalNotification message. The actual implementation guide which includes all requirements for the HospitalNotificationMessage can be found here. 

> Please notice, that the expressions in ‘Actual FHIR path’ are made using the windows app called FHIRPath tester. In other applications, are the apostrophe ( ‘…’ ) might not used.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; max-width:60%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-o5v9{background-color:#ffffff;border-color:inherit;color:#333333;text-align:left;vertical-align:top}
.tg .tg-8j8v{background-color:#ffffff;border-color:inherit;color:#2c415c;text-align:left;vertical-align:top}
.tg .tg-uwa6{background-color:#9dbad7;border-color:inherit;color:#333333;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 2201px">
<colgroup>
<col style="width: 192.88889px">
<col style="width: 353.88889px">
<col style="width: 865.88889px">
<col style="width: 100.88889px">
<col style="width: 687.88889px">
</colgroup>
<thead>
  <tr>
    <th class="tg-8j8v" rowspan="2"><span style="font-weight:bold">Data</span></th>
    <th class="tg-8j8v" rowspan="2"><span style="font-weight:bold">OIOXML</span></th>
    <th class="tg-8j8v"><span style="font-weight:bold">Pseudo FHIR path</span></th>
    <th class="tg-8j8v" rowspan="2"><span style="font-weight:bold">Must Support</span></th>
    <th class="tg-8j8v" rowspan="2"><span style="font-weight:bold">Comment</span></th>
  </tr>
  <tr>
    <th class="tg-8j8v"><span style="font-weight:bold">Actual FHIR path</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-uwa6" rowspan="2">Date for Message sent</td>
    <td class="tg-uwa6" rowspan="2">Emessage.Envelope.Sent.Date</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.timestamp</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">All FHIR timestamps contain both date and time. This element holds information about when a bundle is created. The timestamp is equivalent to MedComHospitalNotificationMessage.MedcomMessagingProvenance. occurredDateTime</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.timestamp</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Time for Message sent</td>
    <td class="tg-o5v9" rowspan="2">Emessage.Envelope.Sent.Time</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.timestamp</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">All FHIR timestamps contain both date and time. This element holds information about when a bundle is created. The timestamp is equivalent to MedComHospitalNotificationMessage.MedcomMessagingProvenance. occurredDateTime</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.timestamp</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Message envelope id</td>
    <td class="tg-uwa6" rowspan="2">Emessage.Envelope.Identifier</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.id</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">A unique identifier for a bundle. The MedComHospitalNotificationMessage.id must be updated with a new value each time a new message is sent, or a message is resent.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.id</td>
  </tr>
  <tr>
    <td class="tg-o5v9">AcknowledgementCode</td>
    <td class="tg-o5v9">Emessage.Envelope.AcknowledgementCode</td>
    <td class="tg-o5v9">NA</td>
    <td class="tg-o5v9"></td>
    <td class="tg-o5v9">Not relevant, as all FHIR messages shall be acknowledged.</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Message letter id</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.Letter.Identifier</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.id</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">A unique identifier for each message. This identifier should be globally unique.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.resource.ofType('MessageHeader').id</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Version code</td>
    <td class="tg-uwa6">Emessage.NotificationOfAdmission.Letter.<br>VersionCode</td>
    <td class="tg-uwa6">NA</td>
    <td class="tg-uwa6"></td>
    <td class="tg-uwa6">The version of the FHIR profiles is part of the profile’s URL.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Statistical code</td>
    <td class="tg-uwa6">Emessage.NotificationOfAdmission.Letter.<br>StatisticalCode</td>
    <td class="tg-uwa6">NA</td>
    <td class="tg-uwa6"></td>
    <td class="tg-uwa6">Only VANSEnvelope contains a statistical code.</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Authorization timestamp date</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.Letter.Authorisation.Date</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage. medcomHospitalNotificationEncounter.period.start</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">This timestamp includes a date and time. It represents the date and time for when the encounter starts.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.resource.ofType('Encounter').period.start</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Authorization timestamp time</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.Letter.Authorisation.Time</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage. medcomHospitalNotificationEncounter.period.start</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">This timestamp includes a date and time. It represents the date and time for when the encounter starts.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.resource.ofType('Encounter').period.start</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Message type (DIS20/DIS17)</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.Letter.TypeCode</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.medcomHospitalNotificationMessageHeader.event[x].eventcoding.code</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">The type of message. For HospitalNotification the code shall be "hospital-notification-message"</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.resource.ofType('MessageHeader').event.code</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Message status</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.Letter.StatusCode</td>
    <td class="tg-uwa6">MedcomHospitalNotificationMessage.MedcomMessagingProvenance.activity.coding.code</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">The element that describes the status of the HospitalNotification eg. admit-inpatient.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.where(resource.ofType('Provenance').target.reference.replace('MessageHeader/','') = %resource.entry.resource.ofType('MessageHeader' ).id).resource.ofType('Provenance').activity.coding.code</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Episode of care identifier</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.Letter.NotificationIdentifier</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.<br>episodeOfCare.identifier.value</td>
    <td class="tg-o5v9" rowspan="2">No</td>
    <td class="tg-o5v9" rowspan="2">A unique identifier for the episode of care.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.resource.ofType('Encounter').episodeOfCare.identifier.value</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">EAN id for sender</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.sender.<br>EANIdentifier</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.MedComMessagingOrganization.<br>identifier.eanIdentifier</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">The EAN identifier for a sending organization.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').<br>identifier.where(system = 'urn:oid:1.3.88').value</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">EAN id for receiver</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.receiver.EANIdentifier</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.<br>MedComMessagingOrganization.identifier.eanIdentifier</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">The EAN identifier for a receiving organization.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system = 'urn:oid:1.3.88').value</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Sender id</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.sender.Identifier</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.MedcomMessagingOrganization.identifier</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">The identifier that describes the sender of the HospitalNotification message. Both a SOR- and EAN-identifier must be sent.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').identifier</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Receiver id</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.receiver.Identifier</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.<br>MedcomMessagingOrganization.identifier</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">The identifier that describes the receiver of the HospitalNotification message. Both a SOR- and EAN-identifier must be sent.  </td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType<br>('Organization').identifier</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Sender type</td>
    <td class="tg-uwa6">Emessage.NotificationOfAdmission.sender.<br>IdentifierCode</td>
    <td class="tg-uwa6">NA</td>
    <td class="tg-uwa6"></td>
    <td class="tg-uwa6">The type of the organization is given in the SOR identifier. See sender id.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Receiver type</td>
    <td class="tg-o5v9">Emessage.NotificationOfAdmission.receiver.<br>IdentifierCode</td>
    <td class="tg-o5v9">NA</td>
    <td class="tg-o5v9"></td>
    <td class="tg-o5v9">The type of the organization is given in the SOR identifier. See receiver id.  </td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Sender organization</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.sender.<br>OrganizationName</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">This information is depending on the SOR identifier and shall only be included, if the OrganizationName is given in the SOR identifier.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Receiver organization</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.receiver.<br>OrganizationName</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.medcomMessaging<br>Organization.name</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">This information is depending on the SOR identifier and shall only be included, if the OrganizationName is given in the SOR identifier.  </td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType<br>('Organization').name</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Sender department</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.sender.<br>DepartmentName</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">This information is depending on the SOR identifier and shall only be included, if the DepartmentName is given in the SOR identifier.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Sender unit</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.sender.UnitName</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">This information is depending on the SOR identifier and shall only be included, if the UnitName is given in the SOR identifier.  </td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Sender telephone</td>
    <td class="tg-uwa6">Emessage.NotificationOfAdmission.sender.<br>TelephoneSubscriberIdentifier</td>
    <td class="tg-uwa6">NA</td>
    <td class="tg-uwa6"></td>
    <td class="tg-uwa6">Organization contactinformation is described by the SOR identifier.</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Answer to EAN id</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.sender.AnswerTo.<br>EANIdentifier</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.<br>MedComHospitalNotificationReportOfAdmissionRecipientExtension.MedComMessagingOrganization.identifier:eanIdentifier</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">Contains EANidentifier for the recipient of the report of admission.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').extension.where(url = 'http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-messaging-reportOfAdmissionRecipientExtension').value.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system = 'urn:oid:1.3.88').value</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Patient id</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.Patient.<br>CivilRegistrationNumber</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.<br>MedComCorePatient.identifier.cpr</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">Information about the patient cpr-identifier.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.resource.ofType('Patient').identifier.where(system = 'urn:oid:1.2.208.176.1.2').value</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Episode of care status</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.Patient.<br>EpisodeOfCareStatusCode</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComMessagingProvenance.activity.coding.<br>code MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.<br>MedComCorePatient.deceased</td>
    <td class="tg-o5v9" rowspan="2">Yes (all)</td>
    <td class="tg-o5v9" rowspan="2">The HospitalNotification message episodeofcare status is more complexed than the OIOXML message, please refer to the implementation guide for more information.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Provenance').target.reference.replace('MessageHeader/','') = %resource.entry.resource.ofType('MessageHeader').id).resource.ofType('Provenance').activity.coding.codeBundle.entry.resource.<br>ofType('Patient').deceased</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Notification start date</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.Admission.Date</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.period.start</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">The start of the admission. Date and time are included in the same element.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.resource.ofType('Encounter').period.start</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Notification start time</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.Admission.Time</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.period.start</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">The start of the admission. Date and time are included in the same element.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.resource.ofType('Encounter').period.start</td>
  </tr>
</tbody>
</table>


