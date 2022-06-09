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

The clinical guidelines describes the practical needs for a modernization of the previous standards (XDIS20 and XDIS17), and how this standard supports the buisness inquires. <br> 
[Clinical guidelines in Danish](assets/documents/Clinical-guidelines-DA.md) <br> 
[Clinical guidelines in English](assets/documents/Clinical-guidelines-ENG.md) 

### Use Cases

Use cases are used to describe the different scenarios this standard supports, by combining the content requirements with business regulations. The use cases should ensure a coherent implementation and use of the HospitalNotification and they are qualified in collaboration with EPR- and vendors catering to the municipalities.
The use case descriptions are targeted IT system vendors and the people responsible for the implementation in regions and municipalities.
 
[Use cases in Danish](assets/documents/UseCases-DA.md) <br> 
[Use cases in English](assets/documents/UseCases-ENG.md) 

### Technical Specification

#### Implementation Guide

The IG holds the technical specifications and examples of the MedCom Core profiles. Together with profiles from <a href="https://medcomdk.github.io/dk-medcom-core/" target="_blank">MedCom Core IG</a> and <a href="https://medcomdk.github.io/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a> the HospitalNotification message is composed.

<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/" target="_blank">Tab here to see the IG for MedCom HospitalNotification.</a>

#### Introduction to the Technical Specifications

The purpose of this section is to give a brief introduction to MedComs HospitalNotification standard to stakeholders with limited knowledge about FHIR. It describes the overall purpose of each profile as well as the composition of the standard. 

[Tab here for an introduction to the technical specifications.](assets/documents/Intro-Technical-Spec-ENG.md)

### HospitalNotification Codes in FHIR

The overview document found below can be used to determine which type of HospitalNotification the message represents. Elements in different resources will togther form the composite understanding. 

[The overview of HospitalNotification Codes used in FHIR can be found here](/assets/documents/Overview-HospitalNotification-codes-FHIR.md).

### Mapping from XDIS17/XDIS20 to MedCom HospitalNotification

Mapping from previous OIOXML standard to FHIR HospitalNotification standard can be found below. Please notice, that not all elements from XDIS20 and XDIS17 are transfered to the HospitalNotification. However, not all elements from the FHIR message are represented in the document.

[The overview of the mapping can be found here](/assets/documents/Map_between_OIOXML_and_FHIR_HospitalNotification.md).

## 2 Test and Certification

<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification" target="_blank">Here you'll find a description of test and certification of FHIR standards in MedCom</a>

### Testprotocols 

Sending a HospitalNotification message:

Receiving a HospitalNotification message:

## 3 Release Notes

[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md)
