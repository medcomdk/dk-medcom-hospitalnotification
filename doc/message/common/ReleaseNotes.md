# MedCom FHIR 1.0 Release note
Release Date: 2021-03-09

## What&#38;s new in version 1.0.3 since 1.0.2
Content link: [http://build.fhir.org/ig/hl7dk/dk-medcom/branches/1.0.3/](http://build.fhir.org/ig/hl7dk/dk-medcom/branches/1.0.3/)
 ´#´ refers to the corresponding GitHub issue: [https://github.com/hl7dk/dk-medcom](https://github.com/hl7dk/dk-medcom)

- Short description with intended content is added to entries #105
- Recipient of report of admission added to hospital notification message header (with EAN number) #107
- Managing organization is no longer mandatory on core patient #107 


## What&#38;s new in version 1.0.2 since 1.0.1
Content link: [http://build.fhir.org/ig/hl7dk/dk-medcom/branches/1.0.2/](http://build.fhir.org/ig/hl7dk/dk-medcom/branches/1.0.2/)
 ´#´ refers to the corresponding GitHub issue: [https://github.com/hl7dk/dk-medcom](https://github.com/hl7dk/dk-medcom)

- Profiles has been re-sliced to fix validation errors


## What&#39;s new in version 1.0.1 since 1.0.
Content link: [http://build.fhir.org/ig/hl7dk/dk-medcom/branches/1.0.1/](http://build.fhir.org/ig/hl7dk/dk-medcom/branches/1.0.1/)
 ´#´ refers to the corresponding GitHub issue: [https://github.com/hl7dk/dk-medcom](https://github.com/hl7dk/dk-medcom)

- Documentation has been expanded and improved
- More examples is added
- ValueSet containing CareCommunicationMessage activity codes expanded with "modified-message" "A message has been modified". #91
- ConceptMap betweeen statistic codes and activity codes issues has been fixed #65

## What&#39;s new in version 1.0 since 0.9.
Content link: [http://build.fhir.org/ig/hl7dk/dk-medcom/branches/1.0/](http://build.fhir.org/ig/hl7dk/dk-medcom/branches/1.0/)
 ´#´ refers to the corresponding GitHub issue: [https://github.com/hl7dk/dk-medcom](https://github.com/hl7dk/dk-medcom)

### What&#39;s new

- Updated IG documentation
- References guide between OIOXML and FHIR created. #66
- provenance.entry.what.reference changed to NI/NA #61
- Official Profile URL changed from medcom.dk to medcomfhir.dk #56
- The following unused activity codes has been removed: #53
  - discharged to other than home
  - revise-discharge-emergency-other
  - revise-discharge-inpatient-other
  - cancel-discharge-emergency-other
  - cancel-discharge-inpatient-other

- Cancel and corrections – examples of CareCommunication and Hospital notification has been added. #52
- Acknowledgement – examples and additional description added #51
- Report of admission indication added to MessageHeader #42
- Statistical code value set added #41
- Optional cc receiver removed from Hospital Notification #40
- Messaging.organization.identifier – must support added. #39
- Provenance.entity.what.reference – cardinality changed to 1..1 #36
- Graphics added to the documentation. #35
- Additional examples has been added. #33
- HospitalNotification – LPR3 no longer mandatory #29
- Encounter.class.system cardinality changed to 1..1 #22



