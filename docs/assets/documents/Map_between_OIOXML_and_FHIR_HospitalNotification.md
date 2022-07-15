# Map between OIOXML Advis and FHIR HospitalNotification Messages 

This document describes mapping between the OIOXML Advis (XDIS20/XDIS17) and the FHIR HospitalNotification message. Not all elements from OIOXML Advis are relevant in FHIR HospitalNotification message, which is marked with a ‘NA’. The purpose of this document is to help implementers of FHIR HospitalNotification message. The actual implementation guide which includes all requirements for the HospitalNotificationMessage can be found here. 

> Please notice, that the expressions in ‘Actual FHIR path’ are made using the windows app called FHIRPath tester. In other applications, are the apostrophe ( ‘…’ ) might not used.


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-o5v9{background-color:#ffffff;border-color:inherit;color:#333333;text-align:left;vertical-align:top}
.tg .tg-8j8v{background-color:#ffffff;border-color:inherit;color:#2c415c;text-align:left;vertical-align:top}
.tg .tg-uwa6{background-color:#9dbad7;border-color:inherit;color:#333333;text-align:left;vertical-align:top}
</style>
<table class="tg">
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
    <td class="tg-uwa6">Emessage.NotificationOfAdmission.Letter.VersionCode</td>
    <td class="tg-uwa6">NA</td>
    <td class="tg-uwa6"></td>
    <td class="tg-uwa6">The version of the FHIR profiles is part of the profile’s URL.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Statistical code</td>
    <td class="tg-uwa6">Emessage.NotificationOfAdmission.Letter.StatisticalCode</td>
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
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.episodeOfCare.identifier.value</td>
    <td class="tg-o5v9" rowspan="2">No</td>
    <td class="tg-o5v9" rowspan="2">A unique identifier for the episode of care.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.resource.ofType('Encounter').episodeOfCare.identifier.value</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">EAN id for sender</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.sender.EANIdentifier</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.MedComMessagingOrganization.identifier.eanIdentifier</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">The EAN identifier for a sending organization.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system = 'urn:oid:1.3.88').value</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">EAN id for receiver</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.receiver.EANIdentifier</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.MedComMessagingOrganization.identifier.eanIdentifier</td>
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
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.MedcomMessagingOrganization.identifier</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">The identifier that describes the receiver of the HospitalNotification message. Both a SOR- and EAN-identifier must be sent.  </td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').identifier</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Sender type</td>
    <td class="tg-uwa6">Emessage.NotificationOfAdmission.sender.IdentifierCode</td>
    <td class="tg-uwa6">NA</td>
    <td class="tg-uwa6"></td>
    <td class="tg-uwa6">The type of the organization is given in the SOR identifier. See sender id.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Receiver type</td>
    <td class="tg-o5v9">Emessage.NotificationOfAdmission.receiver.IdentifierCode</td>
    <td class="tg-o5v9">NA</td>
    <td class="tg-o5v9"></td>
    <td class="tg-o5v9">The type of the organization is given in the SOR identifier. See receiver id.  </td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Sender organization</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.sender.OrganizationName</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">This information is depending on the SOR identifier and shall only be included, if the OrganizationName is given in the SOR identifier.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Receiver organization</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.receiver.OrganizationName</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.medcomMessagingOrganization.name</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">This information is depending on the SOR identifier and shall only be included, if the OrganizationName is given in the SOR identifier.  </td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').name</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Sender department</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.sender.DepartmentName</td>
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
    <td class="tg-uwa6">Emessage.NotificationOfAdmission.sender.TelephoneSubscriberIdentifier</td>
    <td class="tg-uwa6">NA</td>
    <td class="tg-uwa6"></td>
    <td class="tg-uwa6">Organization contactinformation is described by the SOR identifier.</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Answer to EAN id</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.sender.AnswerTo.EANIdentifier</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationReportOfAdmissionRecipientExtension.MedComMessagingOrganization.identifier:eanIdentifier</td>
    <td class="tg-o5v9" rowspan="2">Yes</td>
    <td class="tg-o5v9" rowspan="2">Contains EANidentifier for the recipient of the report of admission.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').extension.where(url = 'http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-messaging-reportOfAdmissionRecipientExtension').value.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system = 'urn:oid:1.3.88').value</td>
  </tr>
  <tr>
    <td class="tg-uwa6" rowspan="2">Patient id</td>
    <td class="tg-uwa6" rowspan="2">Emessage.NotificationOfAdmission.Patient.CivilRegistrationNumber</td>
    <td class="tg-uwa6">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.MedComCorePatient.identifier.cpr</td>
    <td class="tg-uwa6" rowspan="2">Yes</td>
    <td class="tg-uwa6" rowspan="2">Information about the patient cpr-identifier.</td>
  </tr>
  <tr>
    <td class="tg-uwa6">Bundle.entry.resource.ofType('Patient').identifier.where(system = 'urn:oid:1.2.208.176.1.2').value</td>
  </tr>
  <tr>
    <td class="tg-o5v9" rowspan="2">Episode of care status</td>
    <td class="tg-o5v9" rowspan="2">Emessage.NotificationOfAdmission.Patient.EpisodeOfCareStatusCode</td>
    <td class="tg-o5v9">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComMessagingProvenance.activity.coding.code MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.MedComCorePatient.deceased</td>
    <td class="tg-o5v9" rowspan="2">Yes (all)</td>
    <td class="tg-o5v9" rowspan="2">The HospitalNotification message episodeofcare status is more complexed than the OIOXML message, please refer to the implementation guide for more information.</td>
  </tr>
  <tr>
    <td class="tg-o5v9">Bundle.entry.where(resource.ofType('Provenance').target.reference.replace('MessageHeader/','') = %resource.entry.resource.ofType('MessageHeader' ).id).resource.ofType('Provenance').activity.coding.codeBundle.entry.resource.ofType('Patient').deceased</td>
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


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;max-width:98%;}
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
    <th class="tg-cxm4" rowspan="2">Data   </th>
    <th class="tg-cxm4" rowspan="2">OIOXML   </th>
    <th class="tg-cxm4">Pseudo FHIR path   </th>
    <th class="tg-cxm4" rowspan="2">Must Support   </th>
    <th class="tg-cxm4" rowspan="2">Comment   </th>
  </tr>
  <tr>
    <th class="tg-cxm4">Actual FHIR path   </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Date for Message sent</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.Envelope.Sent.Date </span></td>
    <td class="tg-ifwm">MedComHospitalNotificationMessage.timestamp</td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Yes</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">All FHIR timestamps contain   both date and time. This element holds information about when a bundle is   created. The timestamp is equivalent to MedComHospitalNotificationMessage.MedcomMessagingProvenance.   occurredDateTime</span></td>
  </tr>
  <tr>
    <td class="tg-ifwm">Bundle.timestamp</td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Time for Message sent</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.Envelope.Sent.Time</span> </td>
    <td class="tg-0lax"> MedComHospitalNotificationMessage.timestamp </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Yes</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">All FHIR timestamps contain both date and time. This element holds information about when a bundle is created. The timestamp is equivalent to MedComHospitalNotificationMessage.MedcomMessagingProvenance. occurredDateTime</span> </td>
  </tr>
  <tr>
    <td class="tg-0lax"> Bundle.timestamp </td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Message envelope id </span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.Envelope.Identifier</span></td>
    <td class="tg-ifwm">MedComHospitalNotificationMessage.id</td>
    <td class="tg-ifwm" rowspan="2">Yes</td>
    <td class="tg-ifwm" rowspan="2">A unique identifier for a bundle. The <span style="color:#373732">MedComHospitalNotificationMessage</span>.id must be   updated with a new value each time a new message is sent, or a message is   resent.</td>
  </tr>
  <tr>
    <td class="tg-ifwm">Bundle.id</td>
  </tr>
  <tr>
    <td class="tg-0lax"> <span style="color:#373732">AcknowledgementCode</span> </td>
    <td class="tg-0lax"> <span style="color:#373732">Emessage.Envelope.AcknowledgementCode</span> </td>
    <td class="tg-0lax"> <span style="color:#373732">NA</span> </td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"> <span style="color:#373732">Not relevant, as all FHIR messages shall be acknowledged.</span> </td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Message letter id </span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.Identifier</span></td>
    <td class="tg-ifwm">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.id</td>
    <td class="tg-ifwm" rowspan="2">Yes</td>
    <td class="tg-ifwm" rowspan="2">A unique identifier for each message. This   identifier should be globally unique. </td>
  </tr>
  <tr>
    <td class="tg-ifwm">Bundle.entry.resource.ofType('MessageHeader').id</td>
  </tr>
  <tr>
    <td class="tg-0lax"> <span style="color:#373732">Version code</span> </td>
    <td class="tg-0lax"> <span style="color:#373732">Emessage.NotificationOfAdmission.Letter.VersionCode</span> </td>
    <td class="tg-0lax"> NA </td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"> The version of the FHIR profiles is part of the profile’s URL. </td>
  </tr>
  <tr>
    <td class="tg-ifwm"><span style="color:#373732">Statistical code</span></td>
    <td class="tg-ifwm"><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.StatisticalCode</span></td>
    <td class="tg-ifwm"><span style="color:#373732">NA</span></td>
    <td class="tg-ifwm"> </td>
    <td class="tg-ifwm">Only VANSEnvelope contains a   statistical code. </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Authorization timestamp date</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.Letter.Authorisation.Date</span> </td>
    <td class="tg-0lax"> MedComHospitalNotificationMessage. medcomHospitalNotificationEncounter.period.start </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Yes</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">This timestamp includes a date and time. It represents the date and time for when the encounter starts.</span> </td>
  </tr>
  <tr>
    <td class="tg-0lax"> Bundle.entry.resource.ofType('Encounter').period.start </td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Authorization timestamp time</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.Authorisation.Time</span></td>
    <td class="tg-ifwm">MedComHospitalNotificationMessage. medcomHospitalNotificationEncounter.period.start</td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Yes</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">This timestamp includes a   date and time. It represents the date and time for when the encounter starts.   </span></td>
  </tr>
  <tr>
    <td class="tg-ifwm">Bundle.entry.resource.ofType('Encounter').period.start</td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Message type (DIS20/DIS17)</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.Letter.TypeCode</span> </td>
    <td class="tg-0lax"> MedComHospitalNotificationMessage.medcomHospitalNotificationMessageHeader.event[x].eventcoding.code </td>
    <td class="tg-0lax" rowspan="2"> Yes </td>
    <td class="tg-0lax" rowspan="2"> The type of message. For HospitalNotification the code shall be "hospital-notification-message"<span style="color:red"> </span> </td>
  </tr>
  <tr>
    <td class="tg-0lax"> Bundle.entry.resource.ofType('MessageHeader').event.code </td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Message status</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.NotificationOfAdmission.Letter.StatusCode</span></td>
    <td class="tg-ifwm">MedcomHospitalNotificationMessage.MedcomMessagingProvenance.activity.coding.code</td>
    <td class="tg-ifwm" rowspan="2">Yes</td>
    <td class="tg-ifwm" rowspan="2">The element that describes   the status of the HospitalNotification eg. admit-inpatient.</td>
  </tr>
  <tr>
    <td class="tg-ifwm">Bundle.entry.where(resource.ofType('Provenance').target.reference.replace('MessageHeader/','')   = %resource.entry.resource.ofType('MessageHeader'   ).id).resource.ofType('Provenance').activity.coding.code</td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Episode of care identifier</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.Letter.NotificationIdentifier</span> </td>
    <td class="tg-0lax"> <span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.episodeOfCare.identifier.value</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">No</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">A unique identifier for the episode of care. </span> </td>
  </tr>
  <tr>
    <td class="tg-0lax"> <span style="color:#373732">Bundle.entry.resource.ofType('Encounter').episodeOfCare.identifier.value</span> </td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">EAN id for sender</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.NotificationOfAdmission.sender.EANIdentifier</span></td>
    <td class="tg-ifwm"><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.MedComMessagingOrganization.identifier.eanIdentifier</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Yes</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">The EAN identifier for a   sending organization. </span></td>
  </tr>
  <tr>
    <td class="tg-ifwm"><span style="color:#373732">Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system   = 'urn:oid:1.3.88').value</span></td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">EAN id for receiver</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.receiver.EANIdentifier</span> </td>
    <td class="tg-0lax"> <span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.MedComMessagingOrganization.identifier.eanIdentifier</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Yes</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">The EAN identifier for a receiving organization. </span> </td>
  </tr>
  <tr>
    <td class="tg-0lax"> <span style="color:#373732">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system = 'urn:oid:1.3.88').value</span> </td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Sender id </span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.NotificationOfAdmission.sender.Identifier</span></td>
    <td class="tg-ifwm">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.MedcomMessagingOrganization.identifier</td>
    <td class="tg-ifwm" rowspan="2">Yes</td>
    <td class="tg-ifwm" rowspan="2">The identifier that   describes the sender of the HospitalNotification message. Both a SOR- and   EAN-identifier must be sent. </td>
  </tr>
  <tr>
    <td class="tg-ifwm">Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').identifier</td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Receiver id</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.receiver.Identifier</span> </td>
    <td class="tg-0lax"> MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.MedcomMessagingOrganization.identifier </td>
    <td class="tg-0lax" rowspan="2"> Yes </td>
    <td class="tg-0lax" rowspan="2"> The identifier that describes the receiver of the HospitalNotification message. Both a SOR- and EAN-identifier must be sent. &nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax"> Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').identifier </td>
  </tr>
  <tr>
    <td class="tg-ifwm"><span style="color:#373732">Sender type</span></td>
    <td class="tg-ifwm"><span style="color:#373732">Emessage.NotificationOfAdmission.sender.IdentifierCode</span></td>
    <td class="tg-ifwm"><span style="color:#373732">NA</span></td>
    <td class="tg-ifwm"> </td>
    <td class="tg-ifwm"><span style="color:#373732">The type of the organization   is given in the SOR identifier. See sender id.</span>  </td>
  </tr>
  <tr>
    <td class="tg-0lax"> <span style="color:#373732">Receiver type</span> </td>
    <td class="tg-0lax"> <span style="color:#373732">Emessage.NotificationOfAdmission.receiver.IdentifierCode</span> </td>
    <td class="tg-0lax"> <span style="color:#373732">NA</span> </td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"> <span style="color:#373732">The type of the organization is given in the SOR identifier. See receiver id.</span>  &nbsp;</td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Sender organization</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.NotificationOfAdmission.sender.OrganizationName</span></td>
    <td class="tg-ifwm">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name</td>
    <td class="tg-ifwm" rowspan="2">Yes</td>
    <td class="tg-ifwm" rowspan="2">This information is   depending on the SOR identifier and shall only be included, if the   OrganizationName is given in the SOR identifier.  </td>
  </tr>
  <tr>
    <td class="tg-ifwm">Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name</td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Receiver organization</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.receiver.OrganizationName</span> </td>
    <td class="tg-0lax"> MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.destination.primary.receiver.medcomMessagingOrganization.name </td>
    <td class="tg-0lax" rowspan="2"> Yes </td>
    <td class="tg-0lax" rowspan="2"> This information is depending on the SOR identifier and shall only be included, if the OrganizationName is given in the SOR identifier.  &nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax"> Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').name </td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Sender department</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.NotificationOfAdmission.sender.DepartmentName</span></td>
    <td class="tg-ifwm">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name</td>
    <td class="tg-ifwm" rowspan="2">Yes</td>
    <td class="tg-ifwm" rowspan="2">This information is   depending on the SOR identifier and shall only be included, if the DepartmentName   is given in the SOR identifier.  </td>
  </tr>
  <tr>
    <td class="tg-ifwm">Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name</td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Sender unit </span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.sender.UnitName</span> </td>
    <td class="tg-0lax"> MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.sender.medcomMessagingOrganization.name </td>
    <td class="tg-0lax" rowspan="2"> Yes </td>
    <td class="tg-0lax" rowspan="2"> This information is depending on the SOR identifier and shall only be included, if the UnitName is given in the SOR identifier.  &nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax"> Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name </td>
  </tr>
  <tr>
    <td class="tg-ifwm"><span style="color:#373732">Sender telephone</span></td>
    <td class="tg-ifwm"><span style="color:#373732">Emessage.NotificationOfAdmission.sender.TelephoneSubscriberIdentifier</span></td>
    <td class="tg-ifwm"><span style="color:#373732">NA</span></td>
    <td class="tg-ifwm"> </td>
    <td class="tg-ifwm">Organization   contactinformation is described by the SOR identifier. </td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Answer to EAN id</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.sender.AnswerTo.EANIdentifier</span> </td>
    <td class="tg-0lax"> <span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationReportOfAdmissionRecipientExtension.MedComMessagingOrganization.identifier:eanIdentifier</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Yes</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Contains EANidentifier for the recipient of the report of admission. </span> </td>
  </tr>
  <tr>
    <td class="tg-0lax"> <span style="color:#373732">Bundle.entry.where(resource.ofType('Organization').id.replace('string', 'id') = %resource.entry.resource.ofType('MessageHeader').extension.where(url = 'http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-messaging-reportOfAdmissionRecipientExtension').value.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system = 'urn:oid:1.3.88').value</span> </td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Patient id</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.NotificationOfAdmission.Patient.CivilRegistrationNumber</span></td>
    <td class="tg-ifwm"><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.MedComCorePatient.identifier.cpr</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Yes</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Information about the   patient cpr-identifier.</span></td>
  </tr>
  <tr>
    <td class="tg-ifwm"><span style="color:#373732">Bundle.entry.resource.ofType('Patient').identifier.where(system   = 'urn:oid:1.2.208.176.1.2').value</span></td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Episode of care status</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.Patient.EpisodeOfCareStatusCode</span> </td>
    <td class="tg-0lax"><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComMessagingProvenance.activity.coding.code</span>   <span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.MedComCorePatient.deceased</span></td>
    <td class="tg-0lax" rowspan="2"> Yes (all) </td>
    <td class="tg-0lax" rowspan="2"> The HospitalNotification message episodeofcare status is more complexed than the OIOXML message, please refer to the implementation guide for more information.<span style="color:#0070C0"> </span> </td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="color:#373732">Bundle.entry.where(resource.ofType('Provenance').target.reference.replace('MessageHeader/','')   = %resource.entry.resource.ofType('MessageHeader'   ).id).resource.ofType('Provenance').activity.coding.code</span><span style="color:#373732">Bundle.entry.resource.ofType('Patient').deceased</span></td>
  </tr>
  <tr>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Notification start date</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Emessage.NotificationOfAdmission.Admission.Date</span></td>
    <td class="tg-ifwm"><span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.period.start</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">Yes</span></td>
    <td class="tg-ifwm" rowspan="2"><span style="color:#373732">The start of the admission.   Date and time are included in the same element.</span></td>
  </tr>
  <tr>
    <td class="tg-ifwm"><span style="color:#373732">Bundle.entry.resource.ofType('Encounter').period.start</span></td>
  </tr>
  <tr>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Notification start time</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Emessage.NotificationOfAdmission.Admission.Time</span> </td>
    <td class="tg-0lax"> <span style="color:#373732">MedComHospitalNotificationMessage.MedComHospitalNotificationMessageHeader.MedComHospitalNotificationEncounter.period.start</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">Yes</span> </td>
    <td class="tg-0lax" rowspan="2"> <span style="color:#373732">The start of the admission. Date and time are included in the same element.</span> </td>
  </tr>
  <tr>
    <td class="tg-0lax"> <span style="color:#373732">Bundle.entry.resource.ofType('Encounter').period.start</span> </td>
  </tr>
</tbody>
</table>