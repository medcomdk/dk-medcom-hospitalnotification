[Tilbage](../../index.md)

# Use cases for advis om sygehusophold

**Tabel of content**

* [1 Introduktion ](#1-introduktion)
  * [1.1 Baggrund og formål ](#11-baggrund-og-formål)
  * [1.2 Målgruppe ](#12-målgruppe)
  * [1.3 Juridisk grundlag ](#13-juridisk-grundlag)
  * [1.4 Referencer ](#14-referencer)
  * [1.5 Termer ](#15-termer)
  * [1.6 Afgrænsning ](#16-afgrænsning)
  * [1.7 Læsevejledning ](#17-læsevejledning)
* [2 Oversigt over use cases ](#2-oversigt-over-use-cases)
* [3 Use cases](#3-use-cases)
  * [3.1 S1: Indlæg patient og send advis](#s1-indlæg-patient-og-send-advis)
    * [3.1.1 S1.A1: Indlæg patient og send advis\[STIN\] uden anmodning om indlæggelsesrapport ](#S1.A1-indlæg-patient-og-send-advis-udenom-anmodning-om-indlæggelsesrapport)
    * [3.1.2 S1.A2: Indlæg patient uden afsendelse af advis\[STIN\] ](#S1.A2-Indlæg-patient-uden-afsendelse-af-advis)
  * [3.2 R1:Modtag advisering om indlæggelse og send indlæggelsesrapport](#R.1-modtage-advisering-om-indlæggelse-og-send-indlæggeæsesrapport) 
     * [3.2.1 R1.A1: Modtag advisering om indlæggelse uden afsendelse af indlæggelsesrapport](#Modtag-advisering-om-indlæggelse-uden-afsendelse-af-indlæggelesesrapporten)
* [4 Korrigerende use cases](#Korrigerende-use-cases)
  * [4.1 S.CANC: Annullér et allerede udsendt advis](#S.CANC-annuler-et-allerede-udsendt-advis)
  * [4.2 R.CANC: Modtag advisering om annulleret advis](#R.CANC-modtage-advisering-om-annulleret-advis)
  * [4.3 S.CORR: Ret sygehusophold og send rettelsesadvis](#S.CORR-ret-sygehusophold-og-send-rettelsesadvis)
  * [4.4 R.CORR: Modtag advisering om rettet advis](#R.COR-modtag-advisering-om-rettet-advis)
* [5 Teknisk validering af lovhjemmel til modtagelse](#5-teknisk-validering-af-lovhjemmel-til-modtagelse)
  * [5.1 R.PC: Modtag og indlæs advis (teknisk)](#R.PC-Modtage-og-indlæs-advis)
    * [5.1.1 R.PC.A1 Modtag og kassér advis (teknisk)](#R.PC.A1-Modtage-og-kasser-advis)
* [6 Regler for systemerne, som use casene beror på](#6-regler-for-systemerne-som-use-casene-beror-på)
  * [6.1 Regler for afsendersystemet, som use casene beror på](#61-regler-for-afsendersystemet-som-use-casene-beror-på)
    * [6.1.1 Regler vedr. afsendelse af forskellige typer af sygehusadviser](#Regler-vedrørende-afsendelse-af-forskellige-typer-af-sygehusadviser)
    * [6.1.2 Øvrige regler vedr. forsendelse af HospitalNotification](#øvrige-regler-vedrørende-forsendelse-af-hospitalnotification)
* [7 Regler for modtagersystemet, som use casene beror på](#7-regler-for-modtagersystemet-som-use-casene-beror-på)
  * [7.1 Regler vedr. modtagelse af HospitalNotification](#regler-vedrørende-modtagelse-af-hospital-notification)
<p>&nbsp;</p>


# 1 Introduktion

Dette dokument indeholder en række use case-beskrivelser og udgør en del af det samlede dokumentationsmateriale for MedComs FHIR-standard ”Advis om sygehusophold”.

Dokumentationen består af 3 dele og kan findes på [forsiden for advis om sygehusophold](../../index.md).
1. ’Advis om sygehusophold’ - Sundhedsfaglige retningslinjer
2. Implementation Guide for ’HospitalNotification’
3. Use cases (nærværende dokument – findes også på engelsk)
<p>&nbsp;</p>

  > Note: I tilfælde af uoverensstemmelser mellem det danske og det engelske dokument, er det danske dokument det gældende dokument

Use case-beskrivelserne supplerer det øvrige dokumentationsmateriale og
bør derfor læses i sammenhæng til dette [se afsnit 1.4 Referencer](#s.canc-annullér-et-allerede-udsendt-advis).
<p>&nbsp;</p>

## 1.1 Baggrund og formål
Use casene forbinder krav til indhold med forretningsregler for anvendelse og skal sikre en ensartet implementering og anvendelse af ”Advis om sygehusophold”. Use casene er kvalificeret i samarbejde med EPJ- og kommuneleverandører.

Use casene er udarbejdet og kvalificeret i samarbejde med repræsentanter
fra regioner og kommuner gennem MedComs hjemmepleje-sygehusgruppe, samt
relevante systemleverandører.
<p>&nbsp;</p>

## 1.2 Målgruppe
Use case beskrivelserne er målrettet it-systemleverandørerne og de implementeringsansvarlige i regioner og kommuner.
<p>&nbsp;</p>

## 1.3 Juridisk grundlag

Adviser om sygehusophold udveksles med baggrund i Sundhedsloven og
Retssikkerhedslovens § 12 c

*"Til brug for tilrettelæggelsen af omsorgsopgaver mv. efter § 79 a og
kapitel 16 og §§ 107 og 108 i lov om social service og Sundhedsloven
samt til brug for opfølgning af sager efter §§ 8-10 i Lov om
sygedagpenge kan kommunalbestyrelser og sygehuse udveksle oplysninger om
indlæggelse på og udskrivning fra sygehuse af borgere i kommunen og om
borgerens akutte sygehusophold, hvor borgeren opholder sig på sygehuset
til vurdering og behandling uden at være indlagt. Udvekslingen kan ske
automatisk og uden borgerens samtykke" (Retssikkerhedsloven § 12 c LBK
nr. 265 af 25/02/2022).*

Servicelovens § 79 a omfatter forebyggende hjemmebesøg, kapitel 16
indeholder §§ 83-99, som omfatter personlig hjælp, omsorg og pleje samt
plejetestamenter, og §§ 107 og 108 omfatter midlertidige og
længerevarende botilbud.
<p>&nbsp;</p>

## 1.4 Referencer 
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;font-weight:bold; text-align:center"> Tabel 1: Oversigt over relevante refenrencer til use casene </caption>
<thead id="#Tb1">
  <tr>
    <th class="tg-pu9k">   <br>Materiale   </th>
    <th class="tg-pu9k">   <br>Version   </th>
    <th class="tg-pu9k">   <br>Link/reference   </th>
    <th class="tg-pu9k">   <br>Beskrivelse   </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">   <br>SKA-4.X.X Forretningsmæssige use cases   </td>
    <td class="tg-tysj">   <br>1.0.0-rc.1   </td>
    <td class="tg-tysj">   <br><span style="background-color:yellow">LINK på vej</span>   </td>
    <td class="tg-tysj">   <br>Skabelon, som disse use cases er udarbejdet på baggrund af   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Generelle tekniske  use cases   </td>
    <td class="tg-tysj">   <br>1.0.0-rc.1   </td>
    <td class="tg-tysj">   <br><span style="background-color:yellow">LINK på vej</span>   </td>
    <td class="tg-tysj">   <br>Detaljerede use case-beskrivelser af de tekniske handlinger, der sker   før og efter brugeraktørens interaktion i systemet, herunder kommunikationen   med kommunikationsnetværket vedr. afsendelse og modtagelse af meddelelser og   kvitteringer.   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Sundhedsfaglige og tekniske behov    </td>
    <td class="tg-tysj">   <br>1.0.0   </td>
    <td class="tg-tysj">   <br> <a href="../documents/Cliical-guidelines-DA" rel="noopener noreferrer"> Sundhedsfaglige retningslinjer </a> </td>
    <td class="tg-tysj">   <br>Samlet overblik over de sundhedsfaglige og tekniske behov, som   standarden skal opfylde og use casene afspejle.   </td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>


## 1.5 Termer
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center"> Tabel 2: Oversigt over termer brugt i use casene  </caption>
<thead id="Tabel2">
  <tr>
    <th class="tg-pu9k">Termer</th>
    <th class="tg-pu9k">Beskrivelse</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Fagsystem</td>
    <td class="tg-tysj">Et fagsystem består -- ift. meddelelsesforsendelse og-modtagelse -- af en forretningsmæssig og en teknisk del. Fagsystemets to dele kan være alt fra et tæt sammenbygget system til to forskellige moduler i samme system, eller to systemer, der er konfigureret til at kommunikere sammen. Dette er uden betydning for use casenes opbygning.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Afsendersystem</td>
    <td class="tg-tysj">Fagsystem hos afsender af en meddelelse</td>
  </tr>
  <tr>
    <td class="tg-tysj">Modtagersystem</td>
    <td class="tg-tysj">Fagsystem hos modtager af en meddelelse</td>
  </tr>
  <tr>
    <td class="tg-tysj">Fagsystemets forretningsmæssige del</td>
    <td class="tg-tysj">I den forretningsmæssige del håndteres alt det faglige, som<br>er fagsystemets primære anvendelsesområde. Fagsystemets forretningsmæssige del består af:<br><br>- Fagsystemets forretningsmæssige indbakke<br><br>- Fagsystemets forretningsmæssige meddelelsesmodul<br><br>- Fagsystemets forretningsmæssige udbakke</td>
  </tr>
  <tr>
    <td class="tg-tysj">Fagsystemets tekniske del</td>
    <td class="tg-tysj">I den tekniske del håndteres kommunikationen med kommunikationsnetværket vedrørende afsendelse og modtagelse af meddelelser og kvitteringer. Her evalueres også hvilken kvitteringstype, der skal retur til afsender af en modtaget meddelelse.<br><br>Fagsystemets tekniske del består<br>af:<br><br>- Fagsystemets tekniske indbakke<br><br>- Fagsystemets tekniske meddelelsesmodul<br><br>- Fagsystemets tekniske udbakke</td>
  </tr>
  <tr>
    <td class="tg-tysj">Fagsystemets forretningsmæssige<br>meddelelsesmodul</td>
    <td class="tg-tysj">I fagsystemets forretningsmæssige meddelelsesmodul håndteres alt det faglige, som er fagsystemets primære anvendelsesområde. Det er bl.a. her slutbrugeren arbejder med brugergrænsefladen i fagsystemet.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Fagsystemets forretningsmæssige indbakke</td>
    <td class="tg-tysj">Fagsystemets forretningsmæssige indbakke er en abstrakt term for den indgående funktionalitet mellem fagsystemets tekniske del og dets forretningsmæssige del i indgående retning.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Fagsystemets<br>forretningsmæssige udbakke</td>
    <td class="tg-tysj">Fagsystemets forretningsmæssige udbakke er en abstrakt term for den udgående funktionalitet mellem fagsystemets forretningsmæssige del og dets tekniske del i udgående retning.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Fagsystemets tekniske<br>indbakke</td>
    <td class="tg-tysj">Fagsystemets tekniske indbakke er en abstrakt term for den indgående funktionalitet mellem kommunikationsnetværket og fagsystemets tekniske del i indgående retning. Fagsystemets tekniske indbakke er reelt kommunikationsnetværkets aflevering af en meddelelse til fagsystemet.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Kommunikationsnetværket</td>
    <td class="tg-tysj">Kommunikationsnetværket er det netværk, som meddelelser fysisk afsendes på. Netværket er pt det samme som VANS-netværket.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Forsendelsesflow</td>
    <td class="tg-tysj">Et forsendelsesflow består af:<br><br>- Et meddelsesflow fra afsenders forretningsmæssige modul i fagsystemet til modtagers forretningsmæssige modul i fagsystemet.<br><br>- Et kvitteringsflow fra modtagers forretningsmæssige modul i fagsystemet til afsenders forretningsmæssige modul i fagsystemet<br><br>Ikke alle meddelelser og kvitteringer ses nødvendigvis af fagsystemets forretningsmæssige slutbrugere, men deres indhold er tilgængeligt i fagsystemets forretningsmæssige meddelelsesmodul.</td>
  </tr>
  <tr>
    <td class="tg-tysj">ACK AA</td>
    <td class="tg-tysj">HL7 kvitteringsterm for en positiv kvittering. ACK AA er HL7s pendant til MedComs positive kvittering CTRL ((X)CTL03).</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>


I use case beskrivelserne anvendes følgende koder (<a href="#3" rel="noopener noreferrer">se tabel 3 </a>) for de forskellige typer af sygehusadvis. Der er udarbejdet en særskilt kodeoversigt, som viser sammenhængen mellem adviskoder i use casene og FHIR-terminologien, [se afsnit 'HospitalNotification Codes in FHIR'](../documents/Overview-HospitalNotification-codes-FHIR.md). En oversigt over koderne ses desuden i (<a href="#3" rel="noopener noreferrer"> table 3 </a>) herunder.
<p>&nbsp;</p> 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-wqo7{color:#2c415c;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold; text-align:center ">Tabel 3: Oversigt over koder andvendt i advis om sygehusophold </caption>
<thead id="3">
  <tr>
    <th class="tg-wqo7"><span style="font-weight:bold;background-color:#FFF">Kode</span></th>
    <th class="tg-wqo7"><span style="font-weight:bold;background-color:#FFF">Navn på advis notifikation</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">STAA</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Start sygehusophold- Akut Ambulant</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">STIN</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Start sygehusophold- Indlagt</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">SLHJ</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Slut sygehusophold – afsluttet til hjemmet</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">STOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Start orlov</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">SLOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Slut orlov</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">MORS</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Død</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_STAA</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Annullering af akut ambulant ophold</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_STAA</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Rettelse af akut ambulant ophold</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_STIN</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Annullering af indlagt</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_STIN</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Rettelse af indlagt</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_SLHJ</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Annullering Slut sygehusophold</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_SLHJ</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Rettelse Slut sygehusophold</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_STOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Annullering start orlov</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_STOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Rettelse Start orlov</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_SLOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Annullering Slut orlov</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_SLOR</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Rettelse Slut orlov</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">AN_MORS</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Annullering af Død</span></td>
  </tr>
  <tr>
    <td class="tg-tysj"><span style="background-color:#FFF">RE_MORS</span></td>
    <td class="tg-tysj"><span style="background-color:#FFF">Rettelse af Død</span></td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>


## 1.6 Afgrænsning 
Use casene i dette notat beskriver, med en enkelt undtagelse (se
<a href="#Fig1" rel="noopener noreferrer"> figur 1 </a>), *brugeraktørens* interaktion med systemet, og omfatter
således den forretningsmæssige del af forsendelsesflowet jf. den grønne
markering i <a href="#Fig1" rel="noopener noreferrer"> figur 1 </a>. De tekniske handlinger, der ligger før og efter
brugeraktørens interaktion med systemet (fx systemets funktionaliteter i
kommunikationsnetværket samt afsendelse og modtagelse af kvitteringer),
er generiske på tværs af forskellige MedCom-standarder og optræder som
selvstændigt beskrevne use cases i dokumentet "[Generelle tekniske use
cases](#_Juridisk_grundlag)" (markeret med rød i <a href="#Fig1" rel="noopener noreferrer"> figur 1 </a>).[Generelle
tekniske use cases](#_Juridisk_grundlag)" (markeret med rød i <a href="#Fig1" rel="noopener noreferrer"> figur 1 </a>).

Dvs., at afsender-use cases afsluttes med, at brugeraktør sender en
meddelelse, som (af systemaktør) lægges i Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>), mens modtager-use cases igangsættes ved, at systemaktør har registreret en (teknisk positivt
valideret) meddelelse i Fagsystemets forretningsmæssige indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>), som præsenteres for brugeraktøren i brugergrænsefladen. Se i øvrigt forklaring under afsnit 1.5 [Termer](#15Termer) samt
uddybende forklaring i dokumentet "[Generelle tekniske use
cases](#_Juridisk_grundlag)".

<figure>
<img src="../images/Forsendelsesflow.png" alt="Illustration af forsendelsesflow" style="width:50%" id="Fig1">
<figcaption text-align = "center"><b>Figur 1: Illustration af forsendelsesflow </b></figcaption>
</figure>


**Bemærk:** Da sygehuset ikke på forhånd kan afgøre hvilke borgere,
der aktuelt modtager ydelser fra primær sektor, dannes "advis om
sygehusophold" på alle borgere med cpr.nr. og fast bopælsadresse i
Danmark ved registrering i sygehusets EPJ-system. Det er op til
modtagersystemet at sikre, at advis om sygehusophold kun indlæses og
synliggøres på borgere, som modtager ydelser indenfor [det gældende
lovgrundlag](#juridisk_grundlag). Derfor er der i dette dokument
tilføjet en teknisk forudsætnings-use case, som beskriver de
ekstra/særlige tekniske handlinger, der, forud for brugeraktørens
interaktion med systemet, er nødvendige for at sikre, at
modtagersystemets kun indlæser og viser adviser for brugeraktøren, når
der er lovhjemmel hertil (se afsnit 1.3 [Juridisk grundlag](#juridisk-grundlag)).

Use case-beskrivelserne omfatter ikke på nuværende tidspunkt adressering
af sygehusadviser til flere modtagere samt det efterfølgende
kommunikationsflow med øvrige hjemmepleje-sygehusmeddelelser.
<p>&nbsp;</p>

## 1.7 Læsevejledning
Use casene i dokumentet beskriver et detaljeret forløb over
*brugeraktørens* interaktion med systemet ved forskellige hændelser.
Baggrunden for use casene er en række (forretnings)regler for
anvendelse, som fremgår af afsnit (<a href="#regler-for-systemerne-som-use-casene-beror-på" rel="noopener noreferrer">Regler for systemerne </a>), som use
casene beror på.

Der skelnes mellem tre forskellige typer af use cases:

-   **Primære** use cases: For hver hændelse vil der være beskrevet én
    primær use case, som beskriver normalforløbet over aktørens
    interaktion med systemet i brugergrænsefladen.

-   **Alternative** use cases: Såfremt der kan være afvigelser til
    normalforløbet, vil der i den primære use case være henvist til
    alternative (selvstændigt beskrevne) use cases.

-   **Korrigerende** use cases: Ligeledes vil der ved korrigerende
    handlinger til forløbet (typisk rettelser og annulleringer) være
    henvist til korrigerende (selvstændigt beskrevne) use cases fra den
    primære use case. De korrigerende use cases vil typisk være
    generiske på tværs af forskellige use cases.

Alle use cases er opdelt i:

-   **Afsender (S)**-use case**:** Beskriver use casen fra afsenderside
    (S = Sender)

-   **Modtager (R)**-use case**:** Beskriver use casen fra modtagerside
    (R = Receiver)

Primære use cases er bygget op af nedenstående elementer.
<p>&nbsp;</p>



<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;font-weight:bold; text-align:center"> Tabel 4: Oversigt over de elementer, som indgår i de primære use cases</caption>
<thead id="#Tb4">
  <tr>
    <th class="tg-pu9k">Element</th>
    <th class="tg-pu9k">Forklaring</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">ID</td>
    <td class="tg-tysj">Unikt ID</td>
  </tr>
  <tr>
    <td class="tg-tysj">Navn</td>
    <td class="tg-tysj">Aktivitet i bydemåde</td>
  </tr>
  <tr>
    <td class="tg-tysj">Igangsættende aktør</td>
    <td class="tg-tysj">Navn på den igangsættende aktør (kan være en brugeraktør (fxsygeplejerske eller lægesekretær) eller systemaktør (fx et modtaget advis). </td>
  </tr>
  <tr>
    <td class="tg-tysj">Formål</td>
    <td class="tg-tysj">Kort beskrivelse af det forretningsmæssige formål eventuelafgrænsning til andre use cases.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Startbetingelser/forudsætninger</td>
    <td class="tg-tysj">De forudsætninger, der skal være opfyldt for at normalforløbetkan gennemføres frem til slutresultatet.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Igangsættende hændelse</td>
    <td class="tg-tysj">Den begivenhed eller hændelse, som udløser aktørens handlingeri normalforløbet.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">Forløbet af handlinger, der – uden afbrydelser – fører fra denigangsættende begivenhed til slutresultatet.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Det ønskede forretningsmæssige mål</td>
  </tr>
  <tr>
    <td class="tg-tysj">Alternative handlinger</td>
    <td class="tg-tysj">Alternative forløb ved afbrudt normalforløb, som ender med enfejlsituation eller med en genoptagelse. </td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>


Alternative use cases vil altid referere til en use case med et
normalforløb, hvorfor de forudgående elementer; igangsættende aktør,
formål, startbetingelser/forudsætninger og igangsættende hændelse, ikke
vil fremgå af de alternative use cases. Alternative use cases er derfor
opbygget af nedenstående elementer:

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;font-weight:bold; text-align:center"> Tabel 5: Oversigt over elementer brugt i alternative use cases </caption>
<thead id="#Tb5">
  <tr>
    <th class="tg-pu9k">Element<br></th>
    <th class="tg-pu9k">Forklaring<br></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">   <br>ID   </td>
    <td class="tg-tysj">   <br>Unikt ID   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Navn   </td>
    <td class="tg-tysj">   <br>Aktivitet i   bydemåde   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Reference til   use case, som denne use case er et alternativ til   </td>
    <td class="tg-tysj">   <br>Use case ID   på den primære use case, som denne use case er et alternativ til   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Handlinger   </td>
    <td class="tg-tysj">   <br>Forløbet af   handlinger, der – uden afbrydelser – fører fra den igangsættende begivenhed   til slutresultatet.   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Slutresultat   </td>
    <td class="tg-tysj">   <br>Det ønskede forretningsmæssige mål   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Korrigerende handlinger (CANC/CORR)   </td>
    <td class="tg-tysj">   <br>Beskrivelse af korrigerende handlinger, der foretages, når et forløb ender med en fejlsituation eller med en genoptagelse (med reference/link til korrigerende use case(s). Eksempelvis rettelser eller annulleringer. </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Bemærkninger </td>
    <td class="tg-tysj">   <br>Eventuelle bemærkninger til use casen   </td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

# 2 Oversigt over use cases
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;font-weight:bold; text-align:center"> Tabel 6: primære og alternative use cases </caption>
<thead id="#Tb6">
  <tr>
    <th class="tg-pu9k">Hændelse<br></th>
    <th class="tg-pu9k">Afsender (S)-use case<br></th>
    <th class="tg-pu9k">Modtager (R)-use case<br></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">   <br>Patientens indlægges  </td>
    <td class="tg-tysj">   <br> <a href="#s1-indlæg-patient-og-send-advis" rel="noopener noreferrer">S1</a> </td>
    <td class="tg-tysj">   <br> <a href="#R.1-modtage-advisering-om-indlæggelse-og-send-indlæggeæsesrapport" rel="noopener noreferrer">R1</a> </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Patienten indlægges   på andet sygehus i samme region (overflytning)   </td>
    <td class="tg-tysj">   <br><a href="#S1.A1-indlæg-patient-og-send-advis-udenom-anmodning-om-indlæggelsesrapport" rel="noopener noreferrer">S1.A1</a></td>
    <td class="tg-tysj">   <br>
    <a href="#r1a1-modtag-advisering-om-indlæggelse-uden-afsendelse-af-indlæggelsesrapport" rel="noopener noreferrer">R1.A1</a>  </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Patienten indlægges   på en anden afdeling på samme sygehus (overflytning)   </td>
    <td class="tg-tysj">   <br> <a href="#S1.A2-Indlæg-patient-uden-afsendelse-af-advis" rel="noopener noreferrer">S1.A2</a></td>
    <td class="tg-tysj">   <br> </td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center">Tabel 7: Korrigerende use cases</caption>
<thead id="#Tb7">
  <tr>
    <th class="tg-pu9k">Hændelse<br></th>
    <th class="tg-pu9k">Afsender (S)-use case<br></th>
    <th class="tg-pu9k">Modtager (R)-use case<br></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj"> Der er behov for at annullere et allerede udsendt advis   </td>
    <td class="tg-tysj"><a href="#S.CANC-annuler-et-allerede-udsendt-advis" rel="noopener noreferrer">S.CANC</a><br></td>
    <td class="tg-tysj"><a href="#R.CANC-modtage-advisering-om-annulleret-advis" rel="noopener noreferrer">R.CANC</a></td>
  </tr>
  <tr>
    <td class="tg-tysj"> Der er rettelser til et allerede udsendt advis   </td>
    <td class="tg-tysj"> <a href="#S.CORR-ret-sygehusophold-og-send-rettelsesadvis" rel="noopener noreferrer">S.CORR</a></td>
    <td class="tg-tysj"><a href="#R.COR-modtag-advisering-om-rettet-advis" rel="noopener noreferrer">R.CORR</a></td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;font-weight:bold;text-align:center">Tabel 8: Teknisk validering af lovhjemmel til modtagelse </caption>
<thead>
  <tr>
    <th class="tg-pu9k">Hændelse<br></th>
    <th class="tg-pu9k">Afsender (S)-use case</th>
    <th class="tg-pu9k">Modtager (R)-use case<br></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">Teknisk validering af lovhjemmel til modtagelse (positiv)<br></td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"><a href="#R.PC-Modtage-og-indlæs-advis" rel="noopener noreferrer">R.PC</a></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-style:italic">Teknisk validering af lovhjemmel til modtagelse (negativ)</span><br></td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"><a href="#R.PC.A1-Modtage-og-kasser-advis" rel="noopener noreferrer">R.PC.A1</a></td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>


# 3 Use cases

## 3.1 S1: Indlæg patient og send advis[STIN] {#s1-indlæg-patient-og-send-advis}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;font-weight:bold;text-align:center"> Use case: Indlæggelse af patient og udsændelse af advis</caption>
<thead id="#UC1">
  <tr>
    <th class="tg-pu9k">Use case S1</th>
    <th class="tg-pu9k">Indlæg patient og send advis[STIN]</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Igangsættende aktør</td>
    <td class="tg-tysj">Brugeraktør: Sygeplejersker/sekretær på sygehuset<br> </td>
  </tr>
  <tr>
    <td class="tg-tysj">Formål</td>
    <td class="tg-tysj">At indlægge patient og at sende advis[STIN], når betingelserne herfor er til stede/opfyldt jf. Regler for afsendersystemet, som use casene beror på</td>
  </tr>
  <tr>
    <td class="tg-tysj">Startbetingelser/forudsætninger</td>
    <td class="tg-tysj">Patienten er henvist til indlæggelse (akut eller planlagt)</td>
  </tr>
  <tr>
    <td class="tg-tysj">Igangsættende hændelse</td>
    <td class="tg-tysj">Patienten er fremmødt på sygehuset mhp. indlæggelse</td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">1.Brugeraktør: Registrerer patienten som fremmødt og indlagt</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">2.a Systemaktør: Evaluerer positivt, at der skal sendes advis[STIN], da patienten ikke er overflyttet fra anden afdeling på samme sygehus jf. Regler for afsendersystemet, som use casene beror på</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">3.a Systemaktør: Evaluerer positivt, at der skal anmodes om indlæggelsesrapport (XDIS16), da patienten ikke er overflyttet fra andet sygehus i samme region. </td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">4.Systemaktør: Lægger pba. evalueringen en advis[STIN] med anmodning om indlæggelsesrapport (XDIS16) i Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) </td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Borgeren er indlagt<br>Systemaktør har lagt en advis[STIN] iFagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) med anmodning om indlæggelsesrapport (XDIS16).</td>
  </tr>
  <tr>
    <td class="tg-tysj">Alternative handlinger</td>
    <td class="tg-tysj">2a Systemaktør evaluerer negativt, at der skal sendes advis[STIN], da patienten er overflyttet fra anden afdeling på samme sygehus jf. Regler for afsendersystemet, som use casene beror på. Se alternativ use case [S1.A2](#s1-indlæg-patient-og-send-advisstin)<br>
    3a Systemaktør evaluerer negativt, at der skal anmodes om indlæggelsesrapport (XDIS16), da patienten er overflyttet fra andet sygehus i samme region jf. Regler for afsendersystemet, som use casene beror på. Se alternativ use case [S1.A2:Indlæg patient uden afsendelse af advis](#s1a2-indlæg-patient-uden-afsendelse-af-advisstin), </td>
  </tr>
  <tr>
    <td class="tg-tysj">Korrigerende handlinger</td>
    <td class="tg-tysj">1a Brugeraktør har registreret forkert cpr.nr. indlagt og dermed aktiveret afsendelse af advis[STIN] på forkert patient, se use case [<a href="#S.CANC-annuler-et-allerede-udsendt-advis" rel="noopener noreferrer">S.CANC</a>]<br>1b Brugeraktør har fejlagtigt registreret patienten som ’akut ambulant’ i stedet for indlagt, se use case [<a href="#S.CANC-annuler-et-allerede-udsendt-advis" rel="noopener noreferrer">S.CANC</a>]<br>1c Brugeraktør har registreret forkert sygehusafdeling eller tidspunkt, se use case [<a href="#S.CANC-annuler-et-allerede-udsendt-advis" rel="noopener noreferrer">S.CANC</a>]<br></td>
  </tr>
  <tr>
    <td class="tg-tysj">Bemærkninger</td>
    <td class="tg-tysj">Ikke relevant</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

### 3.1.1 S1.A1: Indlæg patient og send advis [STIN] udenom anmodning om indlæggelsesrapport {#S1.A1-indlæg-patient-og-send-advis-udenom-anmodning-om-indlæggelsesrapport}

**Hændelse:** Patienten indlægges på andet sygehus i samme region (overflytning).

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;font-weight:bold;text-align:center">Use case: Indlæggelse af patient uden uden anmodning om indlæggelsesrapport </caption>
<thead id="#UC2">
  <tr>
    <th class="tg-pu9k">Alternativ use case S1.A1</th>
    <th class="tg-pu9k">Indlæg patient og send advis[STIN] uden anmodning om indlæggelsesrapport</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Reference til use case som denne use case er et alternativ til</td>
    <td class="tg-tysj"><a href="#s1-indlæg-patient-og-send-advis" rel="noopener noreferrer">S1</a></td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">1. Brugeraktør: Registrerer patienten som fremmødt og indlagt</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">2. Systemaktør: Evaluerer positivt, at der skal sendes advis[STIN], da patienten ikke er overflyttet fra anden afdeling på samme sygehus jf. regler for systemerne, som use casene beror på</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">3. Systemaktør: Evaluerer negativt, at der skal anmodes om indlæggelsesrapport (XDIS16), da patienten er overflyttet fra andet sygehus i samme region. </td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">4. Systemaktør: Lægger pba. evalueringen en advis[STIN] med anmodning om indlæggelsesrapport (XDIS16) i  Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) </td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Patienten er indlagt.<br>Systemaktør har lagt en advis[STIN] i Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) med anmodning om indlæggelsesrapport (XDIS16)</td>
  </tr>
  <tr>
    <td class="tg-tysj">Korrigerende handlinger</td>
    <td class="tg-tysj">1a Brugeraktør har registreret forkert cpr.nr. indlagt og dermed aktiveret afsendelse af advis[STIN] på forkert patient, se use case <a href="#S.CANC-annuler-et-allerede-udsendt-advis" rel="noopener noreferrer">S.CANC</a><br>1b Brugeraktør har fejlagtigt registreret patienten som ’akut ambulant’ i stedet for indlagt, se use case<br> 1c Brugeraktør har registreret forkert sygehusafdeling eller tidspunkt, se use case <a href="#S.CORR-ret-sygehusophold-og-send-rettelsesadvis" rel="noopener noreferrer">S.CORR</a></td>
  </tr>
  <tr>
    <td class="tg-tysj">Bemærkninger</td>
    <td class="tg-tysj">Ikke relevant</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

### 3.1.2 S1.A2: Indlæg patient uden afsendelse af advis \[STIN\] {#S1.A2-Indlæg-patient-uden-afsendelse-af-advis}
**Hændelse:** Patienten indlægges på anden afdeling på samme sygehus (overflytning)

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold; text-align:center">Use case: Patienten indlægges uden afsændelse af advis [STIN]</caption>
<thead id="#UC3">
  <tr>
    <th class="tg-pu9k">Alternativ use case S1.A2</th>
    <th class="tg-pu9k">Indlæg patient uden afsendelse af advis[STIN]</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Reference til use case som denne use case er et alternativ til</td>
    <td class="tg-tysj"><a href="#s1-indlæg-patient-og-send-advis" rel="noopener noreferrer">S1</a></td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">1. Brugeraktør: Registrerer patienten som fremmødt og indlagt</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">2. Systemaktør: Evaluerer negativt, at der skal sendes advis[STIN], da patienten er overflyttet fra anden afdeling på samme sygehus jf. Regler for afsendersystemet, som use casene beror på</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">3. Systemaktør: Lægger pba. af evalueringen ikke advis[STIN] i (Fagsystemets forretningsmæssige udbakke <a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) </td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Patienten er indlagt.<br>Systemaktør har ikke lagt en advis[STIN] i (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>)</td>
  </tr>
  <tr>
    <td class="tg-tysj">Korrigerende handlinger</td>
    <td class="tg-tysj">Ikke relevant</td>
  </tr>
  <tr>
    <td class="tg-tysj">Bemærkninger</td>
    <td class="tg-tysj">Ikke relevant</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

## 3.2 R1: Modtag advisering om indlæggelse og send indlæggelsesrapport {#R.1-modtage-advisering-om-indlæggelse-og-send-indlæggeæsesrapport}


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center"> Use case: Afsender modtager advisering om indlæggelse og sender indlæggelsesrapport</caption>
<thead id="#UC4">
  <tr>
    <th class="tg-pu9k">Use case R1</th>
    <th class="tg-pu9k">Modtag advisering om indlæggelse og send indlæggelsesrapport</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Igangsættende aktør</td>
    <td class="tg-tysj"> Systemaktør<br> </td>
  </tr>
  <tr>
    <td class="tg-tysj">Formål</td>
    <td class="tg-tysj">At blive informeret om, at en borger er blevet indlagt på sygehuset</td>
  </tr>
  <tr>
    <td class="tg-tysj">Startbetingelser/forudsætninger</td>
    <td class="tg-tysj">Borgeren er registreret som indlagt på et sygehus.<br>Systemaktør har evalueret positivt, at adviset skal indlæses/lægges i Fagsystemets forretningsmæssige indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) jf.  <a href="#R.PC-Modtage-og-indlæs-advis"rel="noopener noreferrer">R.PC</a></td>
  </tr>
  <tr>
    <td class="tg-tysj">Igangsættende hændelse</td>
    <td class="tg-tysj">Systemaktør har lagt en formateret advis[STIN] i Fagsystemets forretningsmæssige indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>)</td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">1.       Systemaktør: Evaluerer positivt, at der skal sendes indlæggelsesrapport (XDIS16) jf. anmodning i advis[STIN]</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">2.       Systemaktør: Lægger pba. evalueringen en indlæggelsesrapport (XDIS16) i <a href="#Tabel2" target="_blank" rel="noopener noreferrer">Fagsystemets forretningsmæssige udbakke</a></td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">3.       Systemaktør: Indlæser advis[STIN] og notificerer brugeraktør om modtaget advis[STIN]</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">4.       Brugeraktør: Tilgår advis[STIN]</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">5.       Systemaktør: Viser advis[STIN] for brugeraktør.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Advis[STIN] er indlæst og vist, og brugeraktør er notificeret om modtagelsen.<br>Systemaktør har lagt en indlæggelsesrapport (XDIS16) i Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) </td>
  </tr>
  <tr>
    <td class="tg-tysj">Alternative handlinger</td>
    <td class="tg-tysj">2a Systemaktør evaluerer negativt, at der skal sendes indlæggelsesrapport (XDIS16) jf. anmodning i advis[STIN]. Se alternativ use case <a href="#S1.A2-indlæg-patient-uden-afsendelse af advis"  rel="noopener noreferrer">R1.A1</a></td>
  </tr>
  <tr>
    <td class="tg-tysj">Korrigerende handlinger</td>
    <td class="tg-tysj">Ikke relevant</td>
  </tr>
  <tr>
    <td class="tg-tysj">Bemærkninger</td>
    <td class="tg-tysj">Det er op til modtagersystemet at opsætte regler for eventuel automatisk pausering af ydelser ved modtagelse af advis[STIN]</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

### 3.2.1 R1.A1: Modtag advisering om indlæggelse uden afsendelse af indlæggelsesrapport {#Modtag-advisering-om-indlæggelse-uden-afsendelse-af-indlæggelesesrapporten}

**Hændelse:** Patienten er blevet indlagt på andet sygehus i samme
region (overflytning)


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center"> Use case : Modtagelse af indlæggelses advisering uden afsendeslse af indlæggelsesrapport </caption>
<thead id="#UC5">
  <tr>
    <th class="tg-pu9k">Alternativ use case R1.A1</th>
    <th class="tg-pu9k">Modtag advisering om indlæggelse uden afsendelse af indlæggelsesrapport</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Reference til use case som denne use case er et alternativ til</td>
    <td class="tg-tysj"><a href="#R.1-modtage-advisering-om-indlæggelse-og-send-indlæggeæsesrapport" target="_blank" rel="noopener noreferrer">R1</a></td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">1.       Systemaktør: Evaluerer negativt, at der skal sendes indlæggelsesrapport (XDIS16) jf. anmodning i advis[STIN]</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">2.       Systemaktør: Indlæser advis[STIN] og notificerer brugeraktør om modtaget advis[STIN]</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">3.       Brugeraktør: Tilgår advis[STIN]</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">4.       Systemaktør: Viser advis[STIN] for brugeraktør.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Patienten er indlagt på andet sygehus i samme region.<br>Systemets har ikke lagt en advis[STIN] i Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) </td>
  </tr>
  <tr>
    <td class="tg-tysj">Korrigerende handlinger</td>
    <td class="tg-tysj">Ikke relevant</td>
  </tr>
  <tr>
    <td class="tg-tysj">Bemærkninger</td>
    <td class="tg-tysj">Det er op til modtagersystemet at opsætte regler for eventuel automatisk pausering af ydelser ved modtagelse af advis[STIN].</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

# 4 Korrigerende use cases {#Korrigerende-use-cases}

## 4.1 S.CANC: Anullér et allerede udsendt advis {#S.CANC-annuler-et-allerede-udsendt-advis}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center">Use case: Anulleér udesendt advis </caption>
<thead id="UC6">
  <tr>
    <th class="tg-pu9k">Use case S.CANC</th>
    <th class="tg-pu9k">Annullér et allerede udsendt advis</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Igangsættende aktør</td>
    <td class="tg-tysj"> Brugeraktør: Sygeplejersker/sekretær på sygehuset<br> </td>
  </tr>
  <tr>
    <td class="tg-tysj">Formål</td>
    <td class="tg-tysj">At korrigere for og notificere relevante parter om advis, som ikke skulle være sendt pga. forkert registrering af cpr.nr. eller type af sygehusophold</td>
  </tr>
  <tr>
    <td class="tg-tysj">Startbetingelser/forudsætninger</td>
    <td class="tg-tysj">Der er afsendt advis af typen [STIN] [STAA] [SLHJ] [MORS] [STOR] [SLOR]</td>
  </tr>
  <tr>
    <td class="tg-tysj">Igangsættende hændelse</td>
    <td class="tg-tysj">Brugeraktør er blevet opmærksom på fejlagtig registrering af cpr.nr. eller typen af sygehusophold</td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">1.       Brugeraktør: Korrigerer den udførte handling</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">2.       Systemaktør: Evaluerer positivt, at der skal sendes advis[AN_XX] jf. Regler for afsendersystemet, som use casene beror på</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">3.       Systemaktør: Evaluerer negativt, at der skal anmodes om indlæggelsesrapport (XDIS16), da der er tale om en annullering.</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">4.       Systemaktør: Lægger pba. evalueringen en advis[AN_XX] uden anmodning om indlæggelsesrapport (XDIS16) i Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) </td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Fejlen er korrigeret.<br>Systemets har lagt en advis[AN_XX] i Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) uden anmodning om indlæggelsesrapport (XDIS16)</td>
  </tr>
  <tr>
    <td class="tg-tysj">Bemærkninger</td>
    <td class="tg-tysj">Kun fejlregistreringer vedr. cpr.nr. eller type af sygehusophold skal medføre forsendelse af annulleringer. Rettelser til sygehusafdeling og/eller tidspunkt for sygehusophold skal medføre forsendelse af rettelser.<br>Der skal ikke sendes annulleringer forud for rettelser<br>ID kobler entydigt annulleringen til det advis, som annulleringen vedrører.</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

## 4.2 R.CANC: Modtage advisering om annulleret advis {#R.CANC-modtage-advisering-om-annulleret-advis}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center"> Use case: Modtag advisering om annulleret advis</caption>
<thead id="UC7">
  <tr>
    <th class="tg-pu9k">Use case R.CANC</th>
    <th class="tg-pu9k">Modtag advisering om annulleret advis</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Igangsættende aktør</td>
    <td class="tg-tysj">Systemaktør<br> </td>
  </tr>
  <tr>
    <td class="tg-tysj">Formål</td>
    <td class="tg-tysj">At blive informeret om, at et tidligere modtaget advis er annulleret/ikke gældende.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Startbetingelser/forudsætninger</td>
    <td class="tg-tysj">Der er modtaget advis af typen [STIN] [STAA] [SLHJ] [MORS] [STOR] [SLOR]</td>
  </tr>
  <tr>
    <td class="tg-tysj">Igangsættende hændelse</td>
    <td class="tg-tysj">Systemaktør har modtaget advis[AN_XX] i Fagsystemets forretningsmæssige indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>)</td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">1.       Systemaktør: Evaluerer negativt, at der skal sendes indlæggelsesrapport (XDIS16) jf. anmodning i advis[AN_XX].</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">2.       Systemaktør: Indlæser advis[AN_XX] og notificerer brugeraktør om modtaget annullering</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">3.       Systemaktør: Aktiverer annulleringsvisning for det advis, som er blevet annulleret</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">4.       Brugeraktør: Tilgår advis[AN_XX]</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">5.       Systemaktør: Viser advis[AN_XX] for brugeraktør</td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Modtager er informeret om, at det tidligere modtagne advis er annulleret.<br>Annulleringsvisning for det advis, som er annulleret, er aktiveret.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Alternative handlinger</td>
    <td class="tg-0lax">Ikke relevant</td>
  </tr>
  <tr>
    <td class="tg-0lax">Bemærkninger</td>
    <td class="tg-0lax">Det er op til modtagersystemet at sikre, at meddelelsen, som er blevet annulleret, optræder/vises som annulleret for brugeren (annulleringsvisning)</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>


## 4.3 S.CORR: Ret sygehusophold og send rettelsesadvis {#S.CORR-ret-sygehusophold-og-send-rettelsesadvis}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width: 85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center">Use case: Ret sygehusophold og send rettelsesadvis </caption>
<thead id="UC8">
  <tr>
    <th class="tg-pu9k">Use case S.CORR</th>
    <th class="tg-pu9k">Ret sygehusophold og send rettelsesadvis</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Igangsættende aktør</td>
    <td class="tg-tysj"> Brugeraktør: Sygeplejersker/sekretær på sygehuset<br> </td>
  </tr>
  <tr>
    <td class="tg-tysj">Formål</td>
    <td class="tg-tysj">At korrigere for og notificere relevante parter om fejlagtigt advis (forkert afdeling eller tidspunkt for sygehusophold)</td>
  </tr>
  <tr>
    <td class="tg-tysj">Startbetingelser/forudsætninger</td>
    <td class="tg-tysj">Der er afsendt advis af typen [STIN] [STAA] [SLHJ] [MORS] [STOR] [SLOR]</td>
  </tr>
  <tr>
    <td class="tg-tysj">Igangsættende hændelse</td>
    <td class="tg-tysj">Brugeraktør er blevet opmærksom på fejlagtig registrering af sygehusafdeling og/eller tidspunkt for sygehusophold</td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">1.       Brugeraktør: Retter information om sygehusopholdet (afdeling og/eller tidspunkt for sygehusophold)</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">2.       Systemaktør: Evaluerer positivt, at der skal sendes advis[RE_XX] jf. Regler for afsendersystemet, som use casene beror på</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">3.       Systemaktør: Evaluerer negativt, at der skal anmodes om indlæggelsesrapport (XDIS16), da der er tale om en annullering.</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">4.       Systemaktør: Lægger pba. evalueringen en advis[RE_XX] uden anmodning om indlæggelsesrapport (XDIS16) i Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) </td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Fejlen er korrigeret.<br>Systemets har lagt en advis[RE_XX] i Fagsystemets forretningsmæssige udbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) uden anmodning om indlæggelsesrapport (XDIS16)</td>
  </tr>
  <tr>
    <td class="tg-tysj">Bemærkninger</td>
    <td class="tg-tysj">Kun rettelser til sygehusafdeling og/eller tidspunkt for sygehusophold skal medføre forsendelse af rettelser. Forkert registrering af cpr.nr. og type af sygehusophold skal medføre forsendelse af annulleringer.<br>Der skal ikke sendes annulleringer forud for rettelser<br>ID kobler entydigt rettelsen til det advis, som rettelsen vedrører.</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

## 4.4 R.CORR: Modtag advisering om rettet advis {#R.COR-modtag-advisering-om-rettet-advis}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width: 85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-67v1{border-color:inherit;color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-i91a{border-color:inherit;color:#333333;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center">Use case: Modtagelse af advisering om rettet advis </caption>
<thead id="UC9">
  <tr>
    <th class="tg-67v1">Use case R.CORR</th>
    <th class="tg-67v1">Modtag advisering om rettet advis</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-i91a">Igangsættende aktør</td>
    <td class="tg-i91a">Systemaktør<br> </td>
  </tr>
  <tr>
    <td class="tg-i91a">Formål</td>
    <td class="tg-i91a">At blive informeret om rettelser til et tidligere modtaget advis</td>
  </tr>
  <tr>
    <td class="tg-i91a">Startbetingelser/forudsætninger</td>
    <td class="tg-i91a">Der er modtaget advis af typen [STIN] [STAA] [SLHJ] [MORS] [STOR] [SLOR]</td>
  </tr>
  <tr>
    <td class="tg-i91a">Igangsættende hændelse</td>
    <td class="tg-i91a">Systemaktør har modtaget advis[RE_XX] i Fagsystemets forretningsmæssige indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) </td>
  </tr>
  <tr>
    <td class="tg-i91a">Handlinger</td>
    <td class="tg-i91a">1.      Systemaktør: Evaluerer negativt, at der skal sendes indlæggelsesrapport (XDIS16) jf. anmodning i advis[RE_XX].</td>
  </tr>
  <tr>
    <td class="tg-i91a"> </td>
    <td class="tg-i91a">2.       Systemaktør: Indlæser advis[RE_XX] og notificerer eventuelt brugeraktør om modtaget rettelse.</td>
  </tr>
  <tr>
    <td class="tg-i91a"> </td>
    <td class="tg-i91a">3.       Systemaktør: Aktiverer ændringsmarkering for det advis, som er blevet rettet</td>
  </tr>
  <tr>
    <td class="tg-i91a"> </td>
    <td class="tg-i91a">4.       Brugeraktør: Tilgår eventuelt advis[RE_XX]</td>
  </tr>
  <tr>
    <td class="tg-i91a"> </td>
    <td class="tg-i91a">5.       Systemaktør: Viser advis[RE_XX] for brugeraktør med tydelig ændringsmarkering</td>
  </tr>
  <tr>
    <td class="tg-i91a">Slutresultat</td>
    <td class="tg-i91a">Modtager er informeret om, at det tidligere modtagne advis er rettet.<br>Ændringsmarkering for det advis, som er annulleret, er aktiveret.</td>
  </tr>
  <tr>
    <td class="tg-0pky">Bemærkninger</td>
    <td class="tg-0pky">Det er op til modtagersystemet og kunder at beslutte, hvordan rettelser indlæses og vises for brugeren.</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>


# 5 Teknisk validering af lovhjemmel til modtagelse

Da sygehuset ikke på forhånd kan afgøre hvilke borgere, der aktuelt
modtager ydelser fra primær sektor, dannes "advis om sygehusophold" på
alle borgere med cpr.nr. og fast bopælsadresse i Danmark ved
registrering i sygehusets EPJ-system. Det er op til modtagersystemet at
sikre, at advis om sygehusophold kun indlæses og synliggøres på borgere,
som modtager ydelser indenfor det gældende lovgrundlag. Derfor er der
nedenfor beskrevet en teknisk forudsætnings-use case, som beskriver de
ekstra tekniske handlinger, der, forud for brugeraktørens interaktion
med systemet, er nødvendige for at sikre, at modtagersystemet kun
indlæser og viser adviser for brugeraktøren, når der er lovhjemmel. Use
casen supplerer de øvrige tekniske handlinger, som ligger før og efter
brugeraktørens interaktion med systemet, og som er beskrevet i
dokumentet "[Generelle tekniske use cases](#juridisk-grundlag)".
<p>&nbsp;</p>

## 5.1 R.PC: Modtag og indlæs advis (teknisk) {#R.PC-Modtage-og-indlæs-advis}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-67v1{border-color:inherit;color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-i91a{border-color:inherit;color:#333333;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center">Use Case: Modtagelse og indlæsning af advis </caption>
<thead id="UC 10">
  <tr>
    <th class="tg-67v1">Use case R.PC</th>
    <th class="tg-67v1">Modtag og indlæs advis (teknisk)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-i91a">Igangsættende aktør</td>
    <td class="tg-i91a"> Systemaktør<br> </td>
  </tr>
  <tr>
    <td class="tg-i91a">Formål</td>
    <td class="tg-i91a">At lægge adviset i Fagsystemets forretningsmæssige indbakke, når der er lovhjemmel hertil  (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring tabel 2</a>).</td>
  </tr>
  <tr>
    <td class="tg-i91a">Startbetingelser/forudsætninger</td>
    <td class="tg-i91a">Kommunikationsnetværket (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring tabel 2</a>) har lagt et advis i Fagsystemets tekniske indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se fprklaring i tabel 2</a>) </span>.</td>
  </tr>
  <tr>
    <td class="tg-i91a">Igangsættende hændelse</td>
    <td class="tg-i91a">Systemaktør registrerer, at der er modtaget et advis i Fagsystemets tekniske indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) </span></td>
  </tr>
  <tr>
    <td class="tg-i91a">Handlinger</td>
    <td class="tg-i91a">1.       Systemaktør: Henter advis i Fagsystemets tekniske indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) og logger tilstrækkelige metadata i systemet, så der kan afsendes en kvittering</td>
  </tr>
  <tr>
    <td class="tg-i91a"> </td>
    <td class="tg-i91a">2.       Systemaktør: Evaluerer adviset positivt (ACK AA (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>)) mod standardens profilering</td>
  </tr>
  <tr>
    <td class="tg-i91a"> </td>
    <td class="tg-i91a">3.       Systemaktør: Konstaterer, at adviset er markeret for at ville modtage kvittering jf. regler som beskrevet i ”<a href="" rel="noopener noreferrer">Generelle tekniske use cases</a>”, og logger/markerer for, at der skal sendes positiv kvittering.</td>
  </tr>
  <tr>
    <td class="tg-i91a"> </td>
    <td class="tg-i91a">4.       Systemaktør: Sætter meddelelsestilstand til ”Validated”</td>
  </tr>
  <tr>
    <td class="tg-i91a"> </td>
    <td class="tg-i91a">5.       Systemaktør: Formaterer meddelelsesindhold iht. fagsystemets meddelelsesformat.</td>
  </tr>
  <tr>
    <td class="tg-i91a"> </td>
    <td class="tg-i91a">6.       Systemaktør: Evaluerer positivt, at adviset skal indlæses/lægges i Fagsystemets forretningsmæssige indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>) pba. Regler for modtagersystemet, som use casene beror på (der er lovhjemmel til indlæsning)</td>
  </tr>
  <tr>
    <td class="tg-i91a">Slutresultat</td>
    <td class="tg-i91a">Systemaktør har lagt et formateret meddelelsesindhold i Fagsystemets forretningsmæssige indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>), og logget/markeret for, at der skal sendes en positiv kvittering. Meddelelsestilstand er sat til ”Validated”</td>
  </tr>
  <tr>
    <td class="tg-i91a">Alternative handlinger</td>
    <td class="tg-i91a">2a Systemaktør afviser adviset pga. teknisk invalidt indhold se  <span>’Generelle tekniske use cases’</span>)<br>2b Systemaktør adviser adviset pga. teknisk fejl i modtagersystemet (<span>’Generelle tekniske use cases’</span>)<br>6a Systemaktør evaluerer negativt, at adviset skal indlæses pba. Regler for modtagersystemet, som use casene beror på. Se alternative use case <a href="#R.PC.A1-Modtage-og-kasser-advis"  rel="noopener noreferrer">R.PC.A1</a>R.PC.A1 Modtag og kassér advis</td>
  </tr>
  <tr>
    <td class="tg-i91a">Korrigerende handlinger</td>
    <td class="tg-i91a">Ikke relevant</td>
  </tr>
  <tr>
    <td class="tg-i91a">Bemærkninger</td>
    <td class="tg-i91a">Use casen supplerer de øvrige tekniske handlinger, som ligger før og efter brugeraktørens interaktion med systemet, og som er beskrevet i dokumentet <span style="color:#FE0000">(Generelle tekniske use cases)</span>.</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

### 5.1.1 R.PC.A1 Modtag og kassér advis (teknisk) {#R.PC.A1-Modtage-og-kasser-advis}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center">Use Case over modtagelse og kassering af en advis </caption>
<thead id="UC11">
  <tr>
    <th class="tg-pu9k">Use case R.PC.A1</th>
    <th class="tg-pu9k">Modtag og kassér advis (teknisk)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">Reference til use case som denne use case er et alternativ til</td>
    <td class="tg-tysj"><a href="#R.PC-Modtage-og-indlæs-advis" rel="noopener noreferrer">R.PC</a></td>
  </tr>
  <tr>
    <td class="tg-tysj">Handlinger</td>
    <td class="tg-tysj">1.       Systemaktør: Evaluerer negativt, at adviset skal indlæses pba. Regler for modtagersystemet, som use casene beror på (der er ikke lovhjemmel til indlæsning)</td>
  </tr>
  <tr>
    <td class="tg-tysj"> </td>
    <td class="tg-tysj">2.       Systemaktør: Sletter advis og lægger ikke adviset i Fagsystemets forretningsmæssige indbakke (<a href="#Tabel2" rel="noopener noreferrer"> se forklaring i tabel 2</a>)</td>
  </tr>
  <tr>
    <td class="tg-tysj">Slutresultat</td>
    <td class="tg-tysj">Systemaktør har ikke indlæst adviset og vist det for slutbruger. Systemaktør har dog logget. Systemaktør har fortsat logget/markeret for, at der skal sendes en positiv kvittering. Meddelelsestilstand er sat til ”Validated”.</td>
  </tr>
  <tr>
    <td class="tg-tysj">Korrigerende handlinger</td>
    <td class="tg-tysj">Ikke relevant</td>
  </tr>
  <tr>
    <td class="tg-tysj">Alternative handlinger</td>
    <td class="tg-tysj">Ikke relevant</td>
  </tr>
  <tr>
    <td class="tg-tysj">Bemærkninger</td>
    <td class="tg-tysj">Use casen supplerer de øvrige tekniske handlinger, som ligger før og efter brugeraktørens interaktion med systemet, og som er beskrevet i dokumentet ” <span>Generelle tekniske use cases</span>”.<br> <br>Modtagersystemet skal, også selvom adviset ikke indlæses/persisteres i systemets, kvittere positivt for modtagelse af advis (hvis de øvrige forudsætninger herfor er tilstede).</td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

# 6 Regler for systemerne, som use casene beror på

## 6.1 Regler for afsendersystemet, som use casene beror på

### 6.1.1 Regler vedr. afsendelse af forskellige typer af sygehusadviser {#Regler-vedrørende-afsendelse-af-forskellige-typer-af-sygehusadviser}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center">Tabel 10: Regler for afsendelse af forskellige typer af sygehusadvis </caption>
<thead id="RG1">
  <tr>
    <th class="tg-pu9k">   <br>ID   </th>
    <th class="tg-pu9k">   <br>Hændelse   </th>
    <th class="tg-pu9k">   <br>Advistype, der sendes   </th>
    <th class="tg-pu9k">   <br>Anmodning om indlæggelsesrapport   (XDIS16)   </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">   <br>S.BR1   </td>
    <td class="tg-tysj">   <br>Akut ambulant patient   </td>
    <td class="tg-tysj">   <br>STAA   </td>
    <td class="tg-tysj">   <br>Ja   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR2   </td>
    <td class="tg-tysj">   <br>Indlæg patient   </td>
    <td class="tg-tysj">   <br>STIN   </td>
    <td class="tg-tysj">   <br>Ja   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR3   </td>
    <td class="tg-tysj">   <br>Indlæg patient fra anden   region   </td>
    <td class="tg-tysj">   <br>STIN   </td>
    <td class="tg-tysj">   <br>Ja   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR4   </td>
    <td class="tg-tysj">   <br>Indlæg patient fra andet   sygehus i samme region   </td>
    <td class="tg-tysj">   <br>STIN   </td>
    <td class="tg-tysj">   <br>Nej   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR5   </td>
    <td class="tg-tysj">   <br>Indlæg patient fra anden   afdeling på samme sygehus   </td>
    <td class="tg-tysj">   <br>Der sendes ikke advis   </td>
    <td class="tg-tysj">   <br>Ikke relevant   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR6   </td>
    <td class="tg-tysj">   <br>Patient går på orlov fra   sygehusophold   </td>
    <td class="tg-tysj">   <br>STOR   </td>
    <td class="tg-tysj">   <br>Nej   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR7   </td>
    <td class="tg-tysj">   <br>Patient returnerer fra   orlov fra sygehusophold   </td>
    <td class="tg-tysj">   <br>SLOR   </td>
    <td class="tg-tysj">   <br>Nej   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR8   </td>
    <td class="tg-tysj">   <br>Afslut patient til   hjemmet/primær sektor. <br>   <br>Bemærk i øvrigt S.BR13   </td>
    <td class="tg-tysj">   <br>SLHJ   </td>
    <td class="tg-tysj">   <br>Nej   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR9   </td>
    <td class="tg-tysj">   <br>Patienten dør (v. ankomst   eller under sygehusophold)   </td>
    <td class="tg-tysj">   <br>MORS   </td>
    <td class="tg-tysj">   <br>Nej   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR10   </td>
    <td class="tg-tysj">   <br>Send rettelse til advis   (forkert afdeling) <br>   <br>Bemærk i øvrigt S.BR14   </td>
    <td class="tg-tysj">   <br>RE_XX   </td>
    <td class="tg-tysj">   <br>Nej   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR11   </td>
    <td class="tg-tysj">   <br>Send rettelse til advis   (forkert tidspunkt)<br>   <br>Bemærk i øvrigt S.BR14   </td>
    <td class="tg-tysj">   <br>RE_XX   </td>
    <td class="tg-tysj">   <br>Nej   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR12   </td>
    <td class="tg-tysj">   <br>Send annullering (anvendes   ved forkert patient/cpr. eller forkert type af sygehusophold)<br>   <br>Bemærk i øvrigt S.BR14   </td>
    <td class="tg-tysj">   <br>AN_XX   </td>
    <td class="tg-tysj">   <br>Nej   </td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

### 6.1.2 Øvrige regler vedr. forsendelse af HospitalNotification {#øvrige-regler-vedrørende-forsendelse-af-hospitalnotification}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center">Tabel 11: Øvrige relger for forsendelse af HospitalNotification</caption>
<thead id="RG2">
  <tr>
    <th class="tg-pu9k">   <br>ID   </th>
    <th class="tg-pu9k">   <br>Regel   </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">   <br>S.BR13   </td>
    <td class="tg-tysj">   <br>Adviserne skal genereres på basis af tidstro   registrering i EPJ/PAS-systemet. <br>   <br> <br>   <br>Hvis der i PAS/EPJ anvendes fremtidige   registreringer af planlagte kontakter, skal disse først udløse advis, når   tidspunktet indtræffer, dvs. ved patientens fysiske fremmøde.   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S. BR14   </td>
    <td class="tg-tysj">   <br>Adviserne skal som udgangspunkt   genereres på alle patienter som indlægges eller opholder sig akut ambulant på   sygehuset. Leverandøren   kan vælge, at afsendelse af øvrige adviser (dvs. adviser, som ikke udtrykker   start af et sygehusophold, fx orlov-adviser og afslutningsadviser) kun sker   på patienter, hvor der er modtaget en (automatisk/og eller manuel)   indlæggelsesrapport (XDIS16).   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR15   </td>
    <td class="tg-tysj">   <br>Adviser (som   ikke er annulleringer eller rettelser til allerede afsendte adviser)   adresseres til borgens bopælskommune.    </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR16   </td>
    <td class="tg-tysj">   <br>Annulleringer og rettelser adresseres til modtageren af det   fejlagtige advis.    </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR17   </td>
    <td class="tg-tysj">   <br>Der sendes udelukkende rettelser til   senest afsendte advis. Foretages der en rettelse til fx   indlæggelsestidspunktet for en patient, der er udskrevet, skal denne rettelse   ikke sendes. <br>   <br> <br>   <br>Der skal ikke sendes annulleringer før   rettelser.   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>S.BR18   </td>
    <td class="tg-tysj">   <br>Der sendes ikke advisering om   afslutning fra den afdeling/det sygehus, som patienten overflyttes fra.<br>   <br> <br>   <br>Reglen kan kun fraviges, hvis og   såfremt patienten selv varetager/er ansvarlig for transporten fra sygehus A   til sygehus B. Den planlagte overflytning bør da være kommunikeret til   modtageren på anden vis, fx i plejeforløbsplan og/eller i en   korrespondancemeddelelse   </td>
  </tr>
</tbody>
</table>
<p>&nbsp;</p>

## 7 Regler for modtagersystemet, som use casene beror på

### 7.1 Regler vedr. modtagelse af HospitalNotification {#regler-vedrørende-modtagelse-af-hospital-notification}
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0; width:85%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold;text-align:center">Tabel 12: Regler for modtagelse af HospitalNotification </caption>
<thead id="RG3">
  <tr>
    <th class="tg-pu9k">ID</th>
    <th class="tg-pu9k">Beskrivelse af regel</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">R.BR1</td>
    <td class="tg-tysj">Da sygehuset ikke på forhånd kan afgøre hvilke borgere, der aktuelt modtager ydelser fra primær sektor, dannes ”advis om sygehusophold” på alle borgere med cpr.nr. og fast bopælsadresse i Danmark ved registrering i sygehusets EPJ-system. Det er op til modtagersystemet at sikre, at advis om sygehusophold kun indlæses og synliggøres på borgere, som modtager ydelser indenfor det gældende lovgrundlag. Modtagersystemet har pligt til at slette øvrige adviser men at logge tekniske meddelelseshændelsesmetadata.</td>
  </tr>
  <tr>
    <td class="tg-tysj">R.BR2</td>
    <td class="tg-tysj">Modtagersystemet skal afsende indlæggelsesrapport (XDIS16), når der er anmodet om dette i det modtagne advis jf. Regler vedr. afsendelse af forskellige typer af sygehusadviser</td>
  </tr>
  <tr>
    <td class="tg-tysj">R.BR3</td>
    <td class="tg-tysj">Det er op til modtagersystemet (og kunder), hvordan slutbrugeren notificeres/gøres opmærksom på modtagelse af HospitalNotification.<br> <br>Særligt vedr. rettelser: Modtagersystemet kan vælge at indlæse rettelser [RE_XX] uden notifikationer til brugeren, men brugeren skal – ved øvrige adviser – gøres opmærksom på/notificeres om modtagelse af HospitalNotification.</td>
  </tr>
</tbody>
</table>