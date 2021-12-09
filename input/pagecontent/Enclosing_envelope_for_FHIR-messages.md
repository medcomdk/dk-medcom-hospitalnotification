### Enclosing envelope for_distribution of FHIR-messages

---

### Introduction

In the mode of transport, MedCom's FHIR messages will be packaged and appear in various envelope formats.
At present, messages are sent in the existing VANS network and therefore in a VANSenvelope unless otherwise specified under the individual standard. Reception can either be in VANSenvelope or another reception envelope, ig. KOMBITs BeskedFordeler nevelope.
NB: When the modernised infrastructure is implemented, it will use new transmittal envelope that will replace the VANSenvelope. This means that this document will be updated with the new envelope format at that time. In the transition period, both the VANSenvelope and the new envelope will be used. It will be clearly explained how this should be handled.

---

### Enclosing envelopes

---

#### VANSenvelope

In relation to MedCom's new FHIR messages, VANSenvelope contains 3 elements (fields) which are influenced by FHIR as a new message type. These are contained in the following enclosing element: “VANSEnvelope/Message/MetaInformation/Document/”.

The elements are:

- Format
- Name
- Version

MedCom's FHIR messages are handled like all other messages in VANSenvelope by encoding the message base-64 in the element "VANSEnvelope/Message/Data/"

In the Transport element, "VANSEnvelope/Message/MetaInformation/Transport", the element "TransformMessage" is handled as usual, while "ServiceTag" with the attribute name = "MCM:MIME" can be specified with the following values:

- application/fhir+xml
- application/fhir+json

depending on the format the FHIR message is formatted in.

---

##### Format

The format will be the same as "Standard type" in MedCom's standard catalogue and is defined for all FHIR standards for "HL7".

---

##### Name

Name will be the same as "Type no." in MedCom's standard catalogue and will thus vary from message type to message type. Name will be prefixed with MCM: and it will, in addition, be possible to postfix it with statistical variants of a given message type. As in the GGOP standard, you can select for example GGOP1, GGOP2 and GGOP3. Similar solutions will occur as long as the FHIR messages are transported in the VANSenvelope.

---

#### Version

Version will be the same as "Version" in MedCom's standard catalogue and will thus vary from message version to message version.

---

### FHIR message types
Specifically, the above-mentioned means the following for MedCom's FHIR messages

---

#### CareCommunication

---

- Envelope: VANSenvelope
- Format: ”HL7”
- Name: ”MCM:FDIS91#<postfix value>”
- Version: ”1.0”

Postfix values for Name will be within this enumeration, which is taken from CareCommunication’s ValueSet for categories: 
https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-careCommunication-categories.html 
Name can explicitly be taken from the following Valueset:  https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-messaging-vansStatisticalCodeCombinations.html

---

#### HospitalNotification

---

- Envelope for sending: VANSenvelope
- Envelope for reception: KOMBITs BeskedFordeler (The Municipality Message distribution system) envelope for Municipality systems like the Electronic Homecare Records (“EOJ” systems) and SAPA.
- Format: ”HL7”
- Name: ”MCM:FDIS20#<postfix value>”
- Version: ”1.0”

Postfix values for Name will be within this enumeration, which is taken from HospitalNotification’s ValueSet: MedCom Hospital Notification Message Activity Codes: https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-hospitalNotification-messageActivities.html 
Name can explicitly be taken from the following Valueset:  https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-messaging-vansStatisticalCodeCombinations.html 

---

#### Acknowledgement

---

- Envelope: VANSenvelope 
- Format: ”HL7”
- Name: ”MCM:FCTL#<postfix value>”
- Version: ”1.0”

Postfix values for Name will be within this enumeration, which is taken from Response Code ValueSet: Codes: 
http://hl7.org/fhir/R4/valueset-response-code.html 
Name can explicitly be taken from the following Valueset:  https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-messaging-vansStatisticalCodeCombinations.html
