# dk-medcom

This repository contains MedCom FHIR profiles and documentation. MedCom is a non-profit organisation financed and owned by The Ministry of Health, Danish Regions and Local Government Denmark. MedCom facilitates the cooperation between authorities, organizations and private firms linked to the Danish healthcare sector.

Changes to the IG are automatically built and viewed at http://build.fhir.org/ig/hl7dk/dk-medcom as an HL7 Implementation Guide. Profiles can also be viewed on Simplifier at https://simplifier.net/medcom-fhir-messaging

The IG can be loaded up in a FHIR server instance using the following docker command:

```
docker run --name=hapi-fhir --rm -p 8080:8080 -e HAPI_IMPLEMENTATION_GUIDE_URL=https://build.fhir.org/ig/hl7dk/dk-medcom/package.tgz mzgtrifork/hapi-fhir-jpaserver-starter:0.0.1
```
-where the environment variable HAPI_IMPLEMENTATION_GUIDE_URL points to the package.tgz of any given FHIR Implementation Guide

Once, started the server instance is accessible @ eg. http://localhost:8080/hapi-fhir-jpaserver/
