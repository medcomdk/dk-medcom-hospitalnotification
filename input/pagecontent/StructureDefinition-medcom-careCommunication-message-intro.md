### Scope and usage 
This profile is the root profile of MedCom CareCommunication message. 
<img alt="Care Communication" src="./carecommunication/CareCommunication.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The message contains a bundle that is selfcontained regarding references. 
The Bundle containing the CareCommunication message shall contain one instance of the MedComMessagingMessage. By convention the cardinality is shown as 0..*

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCareCommunicationMessage.  

For description regarding the transportation layer please refer to this guide:  
  

English:
* [MedCom FHIR-message and enclosing envelope](./pdf/MedCom_FHIR-messages_and_enclosing_envelope.pdf)   

Danish:
* [ MedComs FHIR-meddelelser og forsendelseskuvert](./pdf/MedComs_FHIR-meddelelser_og_forsendelseskuvert.pdf)  

A CareCommunication message shall contain a text message and zero or more attachments.
The Communication status may be "unknown". The provenance entity role shall be "source" and provenance system shall be "new-message".
The Encounter resource is not mandatory in the CareCommunication profile, but if present the Encounter status recommended is "in-progress". 
For an example of a new message please refer to the following flow examples.

The  non-technical guide lines and use cases for CareCommunication is found here:

English:
* [CareCommunication Use Cases](./carecommunication/pdf/USE%20CASES_FHIR%20Care%20Communication.pdf)
* [Non-technical guidelines for CareCommunication](./carecommunication/pdf/FHIR%20Care%20Communication%2C%20MedCom%20FHIR%20Standard.pdf)

Danish:
* [CareCommunication Use Cases](./carecommunication/pdf/Use%20Cases_FHIR%20Korrespondancemeddelelse.pdf)
* [Non-technical guidelines for CareCommunication](./carecommunication/pdf/FHIR_Korrespondancemeddelelse.pdf)

### Description using examples for the CareCommunication message flow.
Please notice, that in the following examples is the Provenance resources listed as an array. This is just an example of an order, the Provenance resources may be listed in any order 


#### How to reply a MedComCareCommunicationMessage
This section describes how a CareCommunicationMessage reply flow shall be handled.
When sending a reply to a received MedComCareCommunication the reply may contain both the received message and attachments.
The Communication status may be "unknown". The provenance entity role shall be "derivation" as it is the based on a pre-existing entity and provenance system shall be "reply-message".


Please refer to following example:
* [Simplified example of a MedComCareCommunicationMessage reply message](./carecommunication/CCReplyMessage.png)

#### How to forward a MedComCareCommunicationMessage
This section describes how a CareCommunicationMessage forward flow shall be handled.  
When forwarding a received MedComCareCommunication the forward message shall contain both the received message, possible other messages in same communication flow and attachments.
The Communication status may be "unknown". The provenance entity role shall be "quotation" as it is a repeat of an already transmitted message and provenance system shall be "forward-message".
It is possible to add a decription to the forward message explaining the reason.

Please refer to following example:
* [Simplified example of a MedComCareCommunicationMessage forward message ](./carecommunication/CCForwardMessage.png)

The provenance element always references the last message transmitted, please refer to the example below for an example:
* [Simplified example of a MedComCareCommunicationMessage forward a reply message ](./carecommunication/CCForwardReplyMessage.png)

#### Message entered in error  
This section describes how message entered in error shall be handled.
If a message a is sent by mistake, the message a shall be marked as sent as error by creating a new FHIR MedComCareCommunicationMessage 
using the MedComCareCommunication status "entered-in-error" and letting the provenance element point to the errorneous message.
The provenance entity role shall be "removal" and the provenance system shall be "retract-message".  

Please refer to the following examples:
* [Simplified example of a MedComCareCommunicationMessage where original message is entered in error  ](./carecommunication/CCNewMessageEnteredInError.png)
* [Simplified example of a MedComCareCommunicationMessage where message reply is entered in error  ](./carecommunication/CCReplyMessageEnteredInError.png)

#### Message entered is corrected
This section describes how message shall be corrected.
It a message text transmitted shall be corrected, the correction message contains the corrected message and the provenance element points the message that shall be corrected. 
The provenance entity role shall be "revision" and the provenance system shall be "retract-message".  

* [Simplified example of a MedComCareCommunicationMessage correction](./carecommunication/CCCorrectMessage.png)

#### Message sent in reply to a received MedCom oioxml/edifact message
When MedComCareCommunication message is sent based on a received MedCom edifact/oioxml message the EpisodeOfCareIdentifier resource referenced by the Encounter ressource 
shall contain the episode of care identifier of the edifact/oioxml message if present.
The provenance system skal contain a reference to the received edifact/oioxml. The reference shall contain the locationnumber and letter identfier, divided by #.

* [Simplified example of a MedComCareCommunicationMessage reply to edifact/oioxml](./carecommunication/CCNewMessageOIOXML.png)

#### Message sent with an image as an attachment
When MedComCareCommunication message is sent it is possible to include an attachment e.g., an image or a .pdf document. This type of attachment must be 'base64'-encoded and added to the *data* element, as illustrated in the example. However, it is allowed to include an URL as an attachment and in this case shall the *url* element be used. In both cases, there must be included a title, a time and date for applying the attachment and an author responsible for the attachment. 
The provenance entity role shall be "source" and the provenance system shall be "new-message". 

* [Simplified example of a MedComCareCommunicationMessage with an image attachment](./carecommunication/CCNewMessageAttachment.png)


#### Data references between MedCom XDIS91 standard and the MedCom FHIR CareCommunication profile
Please refer to:
* [XDIS91 -> CareCommunication  ](./carecommunication/oioxmlReferencesCareCommunication.png)
