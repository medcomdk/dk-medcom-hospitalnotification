# Use cases for advis om sygehusophold

## Introduktion

Dette dokument indeholder en række use case-beskrivelser og udgør en del af det samlede dokumentationsmateriale for MedComs FHIR-standard ”Advis om sygehusophold”.

Dokumentationen består af 3 dele og kan findes på [forsiden for advis om sygehusophold](../../index.md).
1. ’Advis om sygehusophold’ - Sundhedsfaglige retningslinjer
2. Implementation Guide for ’HospitalNotification’
3. Use cases (nærværende dokument – findes også på engelsk)

> Note: I tilfælde af uoverensstemmelser mellem det danske og det engelske dokument, er det danske dokument det gældende dokument

Use case-beskrivelserne bør således læses i tæt sammenhæng til det øvrige dokumentationsmateriale.

Use casene forbinder krav til indhold med forretningsregler for anvendelse og skal sikre en ensartet implementering og anvendelse af ”Advis om sygehusophold”. Use casene er kvalificeret i samarbejde med EPJ- og kommuneleverandører.

Use case beskrivelserne er målrettet it-systemleverandørerne og de implementeringsansvarlige i regioner og kommuner.

Use case-beskrivelserne omfatter ikke på nuværende tidspunkt adressering af sygehusadviser til flere modtagere samt det efterfølgende kommunikationsflow med øvrige hjemmepleje-sygehusmeddelelser.

### Metode til use case-beskrivelser

Use casene er lavet ud fra <a href="https://www.kombit.dk/metodeh%C3%A5ndb%C3%B8ger" target="_blank">KOMBIT’s metodehåndbog for use cases</a>. Hver use case består af nedenstående elementer. Der er defineret både [forretningsmæssige](#forretningsmæssige-use-cases) og [tekniske](#tekniske-use-cases) use cases.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-1wig">Element</th>
    <th class="tg-1wig">Forklaring</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">ID</td>
    <td class="tg-0lax">Unikt ID</td>
  </tr>
  <tr>
    <td class="tg-0lax">Navn</td>
    <td class="tg-0lax">Aktivitet i bydemåde</td>
  </tr>
  <tr>
    <td class="tg-0lax">Igangsættende aktør</td>
    <td class="tg-0lax">Navn på den igangsættende aktør (kan være en brugeraktør (fxsygeplejerske eller lægesekretær) eller systemaktør (fx et modtaget advis).&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0lax">Formål</td>
    <td class="tg-0lax">Kort beskrivelse af det forretningsmæssige formål eventuelafgrænsning til andre use cases.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Startbetingelser/forudsætninger</td>
    <td class="tg-0lax">De forudsætninger, der skal være opfyldt for at normalforløbetkan gennemføres frem til slutresultatet.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Igangsættende hændelse</td>
    <td class="tg-0lax">Den begivenhed eller hændelse, som udløser aktørens handlingeri normalforløbet.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Handlinger</td>
    <td class="tg-0lax">Forløbet af handlinger, der – uden afbrydelser – fører fra denigangsættende begivenhed til slutresultatet.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Slutresultat</td>
    <td class="tg-0lax">Det ønskede forretningsmæssige mål</td>
  </tr>
  <tr>
    <td class="tg-0lax">Alternative handlinger</td>
    <td class="tg-0lax">Alternative forløb ved afbrudt normalforløb, som ender med enfejlsituation eller med en genoptagelse.&nbsp;</td>
  </tr>
</tbody>
</table>


### Advistyper og koder i advis om sygehusophold

I use case beskrivelserne anvendes følgende koder for de forskellige typer af sygehusadvis. [Der er udarbejdet en særskilt kodeoversigt, som viser sammenhængen mellem adviskoder i use casene og FHIR-terminologien, se afsnit 'HospitalNotification Codes in FHIR'](./docs/index.md). En oversigt over koderne ses desuden i tabellen herunder. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-ahvx{background-color:#ffffff;border-color:#656565;color:#656565;text-align:left;vertical-align:top}
.tg .tg-m0jm{background-color:#ffffff;border-color:#656565;color:#656565;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-m0jm">Kode</th>
    <th class="tg-m0jm">Navn   på advis notifikation</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-ahvx">STAA</td>
    <td class="tg-ahvx">Start sygehusophold- Akut Ambulant</td>
  </tr>
  <tr>
    <td class="tg-ahvx">STIN</td>
    <td class="tg-ahvx">Start sygehusophold- Indlagt</td>
  </tr>
  <tr>
    <td class="tg-ahvx">SLHJ</td>
    <td class="tg-ahvx">Slut sygehusophold – afsluttet til   hjemmet </td>
  </tr>
  <tr>
    <td class="tg-ahvx">STOR</td>
    <td class="tg-ahvx">Start orlov</td>
  </tr>
  <tr>
    <td class="tg-ahvx">SLOR</td>
    <td class="tg-ahvx">Slut orlov</td>
  </tr>
  <tr>
    <td class="tg-ahvx">MORS</td>
    <td class="tg-ahvx">Død</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_STAA</td>
    <td class="tg-ahvx">Annullering af akut ambulant ophold</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_STAA</td>
    <td class="tg-ahvx">Rettelse af akut ambulant ophold</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_STIN</td>
    <td class="tg-ahvx">Annullering af indlagt</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_STIN</td>
    <td class="tg-ahvx">Rettelse af indlagt</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_SLHJ</td>
    <td class="tg-ahvx">Annullering Slut sygehusophold</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_SLHJ</td>
    <td class="tg-ahvx">Rettelse Slut sygehusophold</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_STOR</td>
    <td class="tg-ahvx">Annullering start orlov</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_STOR</td>
    <td class="tg-ahvx">Rettelse Start orlov</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_SLOR</td>
    <td class="tg-ahvx">Annullering Slut orlov</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_SLOR</td>
    <td class="tg-ahvx">Rettelse Slut orlov</td>
  </tr>
  <tr>
    <td class="tg-ahvx">AN_MORS</td>
    <td class="tg-ahvx">Annullering af Død</td>
  </tr>
  <tr>
    <td class="tg-ahvx">RE_MORS</td>
    <td class="tg-ahvx">Rettelse af Død</td>
  </tr>
</tbody>
</table>

### Use cases 

Use case-beskrivelserne er opdelt i forretningsmæssige use cases og tekniske use cases. De tekniske use cases er generelle overordnede use cases, som aktiveres i de forskellige handlinger, der er beskrevet i de forretningsmæssige use cases. Til hver af de forretningsmæssige use cases er tilknyttet use cases som hhv. annullerer og retter den aktuelle use case.

**Generel bemærkning vedr. annulleringer og rettelser:** Der anvendes samme ID i annulleringen/rettelsen som i det oprindelige advis, så modtager kan koble meddelelserne entydigt sammen. Når tidspunkt for afslut-ning af patientens sygehusophold er overskredet, og der er afsendt advis[SLHJ], skal der ikke aktiveres syge-husadviser med rettelser og annulleringer, medmindre rettelsen/annulleringen relaterer sig til netop ad-vis[SLHJ].

I [afsnit om Patientrejser og use cases](#patientrejser-og-use-cases) er et overblik over patientrejser og kobling til use cases. Derefter følger de [forretningsmæssige use cases](#forretningsmæssige-use-cases) og [tekniske use cases](#tekniske-use-cases). Alle use cases er opdelt i:
1. afsender (sygehus) 
2. modtager (relevant modtager, typisk kommune) 

## Patientrejser og use cases 

## Forretningsmæssige use cases

## Tekniske use cases