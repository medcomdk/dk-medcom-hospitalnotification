### Scope and usage 
This profile is used as the Provenance resource for all MedCom MessageHeader's.
<img alt="MedComMessagingProvenance" src="./MedComMessagingProvenance.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The MedComMessagingProvenance handles message threads. The profile handles information about the involved organization in the element *who*, references the MessageHeader related to current provenance in the element *target*, and references to the event that initiated a message in the element *what*.

The element Provenance.entity.role describes how an entity was used in the given activity and shall be: 
* *source* when the message is the first in a thread.
* *revision* when a message is a response, a correction, or a forwarding.
* *removal* when the message is a cancellation.

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComMessagingProvenance.

