# MedCom FHIR meddelser og forsendelseskuvert

## Indholdsfortegnelse

[1. Indledning][1]

[2. Forsendelseskuverter][2]

[2.1 VANSenvelope][2.1]

[2.1.1 Format][2.1.1]

[2.1.2 Name][2.1.2]

[2.1.3 Version][2.1.3]

[3. FHIR meddelelsestyper][3]

[3.1 CareCommunication][3.1]

[3.2 HospitalNotification][3.2]

[3.3 Acknowledgment][3.3]

---

## Indledning

MedComs FHIR\-meddelelser vil undervejs i deres forsendelsesforløb blive indpakket og optræde i forskellige kuvertformater.

Pt. vil afsendelse ske i det eksisterende VANS\-net og dermed med brug af VANSenvelope medmindre andet er specificeret under den enkelte standard. Modtagelse kan være både i VANSenvelope eller i anden modtagelseskuvert, f.eks. KOMBITs BeskedFordeler kuvert.

Obs. Når moderniseret infrastruktur bliver implementeret, vil den trække på en ny forsendelseskuvert, der vil erstatte VANSenvelope, så dette dokument vil til den tid blive opdateret med det nye kuvertformat. I en overgangsperiode vil både VANSenvelope og den nye kuvert blive anvendt, men der vil komme tydelige præciseringer af, hvorledes dette kommer til at foregå.

---

## Forsendelseskuverter

### VANSenvelope

VANSenvelope indeholder ift. MedComs nye FHIR\-meddelelser 3 elementer(felter), som influeres af FHIR som ny meddelelsestype. Disse indeholdes i følgende overordnede element "VANSEnvelope/Message/MetaInformation/Document/".

De indeholdte elementer er:

Format

Name

Version

MedComs FHIR\-meddelelser håndteres i øvrigt som alle andre meddelelser i VANSenvelope ved at selve meddelelsen base\-64 encodes i elementet "VANSEnvelope/Message/Data/"

I Transportelementet, "VANSEnvelope/Message/MetaInformation/Transport", håndteres elementet "TransformMessage" som vanligt, mens "ServiceTag" med attributten name="MCM:MIME" kan angives med følgende værdier:

application/fhir+xml

application/fhir+json

afhængigt af, hvilket format FHIR\-meddelelsen er formateret i.

---

#### Format

Format bliver samme som "Standard type" i MedComs standardkatalog og defineres for alle FHIR\-standarder til "HL7".

---

##### Name

Name bliver samme som "Type nr." i MedComs standardkatalog og vil dermed variere fra meddelelsestype til meddelelsestype. Name prefixes med MCM: og vil i øvrigt kunne postfixes med statistiske varianter af en given meddelelsestype. Kendt fra GGOP kan dette udfaldsrum f.eks. være GGOP1, GGOP2 og GGOP3. Lignende konstruktioner vil forekomme så længe FHIR\-meddelelser transporteres i VANSenvelope.

---

#### Version

Version bliver samme som "Version" i MedComs standardkatalog og vil dermed variere fra meddelelsesversion til meddelelsesversion.

---

## FHIR meddelelsestyper

Konkret betyder ovenstående for MedComs FHIR\-meddelelser dette

---

### CareCommunication

---

Kuvert: VANSenvelope

Format:  "HL7"

Name:    "MCM:FDIS91#`<code>`"

Version: "1.0"


Postfixværdier for Name vil være indenfor dette code udfaldsrum, som er taget fra: [CareCommunications ValueSet for categories](https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-careCommunication-categories.html)

Name kan eksplicit tages fra følgende Valueset: [VANS StatisticalCode Combinations](https://build.fhir.org/ig/hl7dk/dk-medcom/CodeSystem-medcom-messaging-sorEdiSystem.html)

---

### HospitalNotification

---

Kuvert: VANSenvelope i afsendelse, KOMBITs BeskedFordeler kuvert i modtagelse hos EOJ\-systemerne

Format:  "HL7"

Name:    "MCM:FDIS20#`<code>`"

Version: "1.0"


Postfixværdier for Name vil være indenfor dette code udfaldsrum, som er taget fra HospitalNotifications ValueSet: MedCom Hospital Notification Message Activity Codes:  [https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-hospitalNotification-messageActivities.html](https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-hospitalNotification-messageActivities.html)

Name kan eksplicit tages fra følgende Valueset: [https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-messaging-vansStatisticalCodeCombinations.html](https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-messaging-vansStatisticalCodeCombinations.html)

---

### Acknowledgement

---

Kuvert: VANSenvelope i afsendelse,

Format:  "HL7"

Name:    "MCM:FCTL#`<code>`"

Version: "1.0"


Postfixværdier for Name vil være indenfor dette code udfaldsrum, som er taget fra Response Code ValueSet: Codes:  [http://hl7.org/fhir/R4/valueset-response-code.html](http://hl7.org/fhir/R4/valueset-response-code.html)

Name kan eksplicit tages fra følgende Valueset: [https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-messaging-vansStatisticalCodeCombinations.html](https://build.fhir.org/ig/hl7dk/dk-medcom/ValueSet-medcom-messaging-vansStatisticalCodeCombinations.html)

---

[1]: ./MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#Indledning
[2]: ./MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#forsendelseskuverter
[2.1]: https://github.com/hl7dk/dk-medcom/blob/1.0.3-ACK-VANSEnvCodes/input/markdown/MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#VANSenvelope
[2.1.1]: https://github.com/hl7dk/dk-medcom/blob/1.0.3-ACK-VANSEnvCodes/input/markdown/MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#format
[2.1.2]: https://github.com/hl7dk/dk-medcom/blob/1.0.3-ACK-VANSEnvCodes/input/markdown/MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#name
[2.1.3]: https://github.com/hl7dk/dk-medcom/blob/1.0.3-ACK-VANSEnvCodes/input/markdown/MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#version
[3]: https://github.com/hl7dk/dk-medcom/blob/1.0.3-ACK-VANSEnvCodes/input/markdown/MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#fhir-meddelelsestyper
[3.1]: https://github.com/hl7dk/dk-medcom/blob/1.0.3-ACK-VANSEnvCodes/input/markdown/MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#carecommunication
[3.2]: https://github.com/hl7dk/dk-medcom/blob/1.0.3-ACK-VANSEnvCodes/input/markdown/MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#hospitalnotification
[3.3]: https://github.com/hl7dk/dk-medcom/blob/1.0.3-ACK-VANSEnvCodes/input/markdown/MedComs%20FHIR-meddelelser%20og%20forsendelseskuvert.md/#acknowledgment
