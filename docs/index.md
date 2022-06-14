# MedCom HospitalNotification

This page represents MedComs HospitalNotification standard (DK: SygehusAdvis). The standard will in time replace the existing standard called XDIS17 and XDIS20. The purpose of the standard is to notify the municipalities then a citizen in their care is hospitalized, on leave or discharged, regardless if it is as inpatient or acute care. MedCom HospitalNotification will together with profiles from <a href="https://medcomdk.github.io/dk-medcom-core/" target="_blank">MedCom Core Implementation Guide</a> and <a href="https://medcomdk.github.io/dk-medcom-messaging/" target="_blank">MedCom Messaging Implementation Guide</a> constitute the standard, which you can read more about below. 

<a href="https://medcomdk.github.io/MedComLandingPage/" target="_blank">Return to frontpage</a>

**Table of Content**
- [MedCom HospitalNotification](#medcom-hospitalnotification)
  * [1 Documentation](#1-documentation)
    + [Clinical Guidelines](#clinical-guidelines)
    + [Use Cases](#use-cases)
    + [Technical Specification](#technical-specification)
      - [Implementation Guide](#implementation-guide)
      - [Introduction to the Technical Specifications](#introduction-to-the-technical-specifications)
    + [HospitalNotification Codes in FHIR](#hospitalnotification-codes-in-fhir)
    + [Mapping from XDIS17/XDIS20 to MedCom HospitalNotification](#mapping-from-xdis17-xdis20-to-medcom-hospitalnotification)
  * [2 Test and Certification](#2-test-and-certification)
    + [Testprotocols](#testprotocols)
  * [3 Release Notes](#3-release-notes)

> Clinical guidelines and use cases are in both Danish and English. The remaining documentation will be in English.

## 1 Documentation 

In the documentation below you will find the necessary content to understand the needs for modernization, the role of the HospitalNotification message, what to implement and how to get a MedCom certificate.

### Clinical Guidelines

These nontechnical guidelines is the foundation for the HospitalNotification standard. It is the primary textual part of the documentation for HospitalNotification. It describes the purpose of the standard, the background the requirements for the standard and how it standard supports the business needs. 

[Danish: Sundhedsfaglige retningslinjer](assets/documents/Clinical-guidelines-DA.md) <br> 
[English: Clinical guidelines - Work in progress](assets/documents/Clinical-guidelines-ENG.md) 

### Use Cases

Use cases are used to describe the different scenarios this standard supports, by combining the content requirements with business regulations. The use cases should ensure a coherent implementation and use of the HospitalNotification and they are qualified in collaboration with EPR- and vendors catering to the municipalities.
The use case descriptions are targeted IT system vendors and the people responsible for the implementation in regions and municipalities.
 
[Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md) 

### Technical Specification

#### Implementation Guide

The IG holds the technical specifications and examples of the MedCom Core profiles. The IG includes profiles, rules, extensions, and examples. Together with profiles from <a href="https://medcomdk.github.io/dk-medcom-core/" target="_blank">MedCom Core IG</a> and <a href="https://medcomdk.github.io/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a> is a HospitalNotification message composed.

<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-hospitalnotification/" target="_blank">The Implementation Guide for MedCom HospitalNotification.</a>

#### Introduction to the Technical Specifications

The purpose of this section is to give a brief introduction to MedComs HospitalNotification standard to stakeholders with limited knowledge about FHIR. It describes the overall purpose of each profile as well as the composition of the standard. 

[An introduction to the technical specificationscan be found here.](assets/documents/Intro-Technical-Spec-ENG.md)

### HospitalNotification Codes in FHIR

The value of elements in different resources (Encounter, Provenance and Patient) will togther form the composite understanding of a HospitalNotification message. Depended on which activity has taken place, the elements shall be assigned to different values. The receiver (a municipality) of the HospitalNotification can act in accordance to the values.

[The HospitalNotification Codes used in FHIR can be found here.](/assets/documents/Overview-HospitalNotification-codes-FHIR.md)

### Mapping from XDIS17/XDIS20 to MedCom HospitalNotification

Mapping from previous OIOXML standard to FHIR HospitalNotification standard can be found below. The document is intended as a help to translate the previous standard to the new FHIR standard. 
Please notice, that not all elements from XDIS20 and XDIS17 are transfered to the HospitalNotification. However, not all elements from the FHIR elements are represented in the document.

[The mapping can be found here.](/assets/documents/Map_between_OIOXML_and_FHIR_HospitalNotification.md)

## 2 Test and Certification

Certification of a system implies both an approved testprotocol and runtrough of TouchStone testscripts. 
TouchStone describes an infrastructure that allows for automated test and validation against the IGs developes by MedCom. 

<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification" target="_blank">A description of test and certification of FHIR standards in MedCom can be founc here.</a>

### Testprotocols 

Below is testprotocols and testscripts used to test and certify MedCom HospitalNotification. 

**Sending a HospitalNotification message**
* Testprotocol
* TouchStone Testscripts

**Receiving a HospitalNotification message**
* Testprotocol
* TouchStone Testscripts

## 3 Release Notes

[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md)
