[Tilbage](../../index.md)

# Use cases for advis om sygehusophold

**Tabel of content**

* [1 Indledning 3](#indledning)
  * [1.1 Baggrund og formål 3](#baggrund-og-formål)
  * [1.2 Juridisk grundlag 3](#juridisk-grundlag)
  * [1.3 Målgruppe 3](#målgruppe)
  * [1.4 Referencer 3](#referencer)
  * [1.5 Termer 4](#termer)
  * [1.6 Afgrænsning 5](#afgrænsning)
  * [1.7 Læsevejledning 6](#_Toc104888739)
  * [2 Oversigt over use cases 9](#oversigt-over-use-cases)
* [2.1 Oversigt over primære og alternative use cases 9](#oversigt-over-primære-og-alternative-use-cases)
  * [2.2 Korrigerende use cases 9](#korrigerende-use-cases)
  * [2.3 Teknisk validering af lovhjemmel til modtagelse 9](#teknisk-validering-af-lovhjemmel-til-modtagelse)
* [3 Use cases 10](#use-cases)
  * [3.1 S1: Indlæg patient og send advis\[STIN\] 10](#s1-indlæg-patient-og-send-advisstin)
    * [3.1.1 S1.A1: Indlæg patient og send advis\[STIN\] uden anmodning om indlæggelsesrapport 11](#s1.a1-indlæg-patient-og-send-advisstin-uden-anmodning-om-indlæggelsesrapport)
    * [3.1.2 S1.A2: Indlæg patient uden afsendelse af advis\[STIN\] 12](#s1.a2-indlæg-patient-uden-afsendelse-af-advisstin)
  * [3.2 R1: Modtag advisering om indlæggelse og send indlæggelsesrapport 13](#r1-modtag-advisering-om-indlæggelse-og-send-indlæggelsesrapport)
    * [3.2.2 R1.A1: Modtag advisering om indlæggelse uden afsendelse af indlæggelsesrapport 14](#r1.a1-modtag-advisering-om-indlæggelse-uden-afsendelse-af-indlæggelsesrapport)
* [4 Korrigerende use cases 15](#korrigerende-use-cases-1)
  * [4.1 S.CANC: Annullér et allerede udsendt advis 15](#s.canc-annullér-et-allerede-udsendt-advis)
  * [4.2 R.CANC: Modtag advisering om annulleret advis 16](#r.canc-modtag-advisering-om-annulleret-advis)
  * [4.3 S.CORR: Ret sygehusophold og send rettelsesadvis 17](#s.corr-ret-sygehusophold-og-send-rettelsesadvis)
  * [4.4 R.CORR: Modtag advisering om rettet advis 18](#r.corr-modtag-advisering-om-rettet-advis)
* [5 Teknisk validering af lovhjemmel til modtagelse 19](#teknisk-validering-af-lovhjemmel-til-modtagelse-1)
  * [5.1 R.PC: Modtag og indlæs advis (teknisk) 20](#r.pc-modtag-og-indlæs-advis-teknisk)
    * [5.1.1 R.PC.A1 Modtag og kassér advis (teknisk) 21](#r.pc.a1-modtag-og-kassér-advis-teknisk)
* [6 Regler for systemerne, som use casene beror på 22](#regler-for-systemerne-som-use-casene-beror-på)
  * [6.1 Regler for afsendersystemet, som use casene beror på 22](#regler-for-afsendersystemet-som-use-casene-beror-på)
    * [6.1.1 Regler vedr. afsendelse af forskellige typer af sygehusadviser 22](#regler-vedr.-afsendelse-af-forskellige-typer-af-sygehusadviser)
    * [6.1.2 Øvrige regler vedr. forsendelse af HospitalNotification 23](#øvrige-regler-vedr.-forsendelse-af-hospitalnotification)
* [6.2 Regler for modtagersystemet, som use casene beror på 23](#regler-for-modtagersystemet-som-use-casene-beror-på)
  * [6.2.1 Regler vedr. modtagelse af HospitalNotification 23](#regler-vedr.-modtagelse-af-hospitalnotification)



# Introduktion

Dette dokument indeholder en række use case-beskrivelser og udgør en del af det samlede dokumentationsmateriale for MedComs FHIR-standard ”Advis om sygehusophold”.

Dokumentationen består af 3 dele og kan findes på [forsiden for advis om sygehusophold](../../index.md).
1. ’Advis om sygehusophold’ - Sundhedsfaglige retningslinjer
2. Implementation Guide for ’HospitalNotification’
3. Use cases (nærværende dokument – findes også på engelsk)
<p>&nbsp;</p>

  > Note: I tilfælde af uoverensstemmelser mellem det danske og det engelske dokument, er det danske dokument det gældende dokument

Use case-beskrivelserne supplerer det øvrige dokumentationsmateriale og
bør derfor læses i sammenhæng til dette [se afsnit 1.4 Referencer](#s.canc-annullér-et-allerede-udsendt-advis).

## Baggrund og formål
Use casene forbinder krav til indhold med forretningsregler for anvendelse og skal sikre en ensartet implementering og anvendelse af ”Advis om sygehusophold”. Use casene er kvalificeret i samarbejde med EPJ- og kommuneleverandører.

Use casene er udarbejdet og kvalificeret i samarbejde med repræsentanter
fra regioner og kommuner gennem MedComs hjemmepleje-sygehusgruppe, samt
relevante systemleverandører

## Målgruppe
Use case beskrivelserne er målrettet it-systemleverandørerne og de implementeringsansvarlige i regioner og kommuner.

## Juridisk grundlag

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
længerevarende botilbud

## Referencer 
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color=#2c415c; font-weight:bold"> Tabel 1:Oversigt over relevante refenrencer til usecasene </caption>
<thead>
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
    <td class="tg-tysj">   <br><span style="background-color:yellow">LINK</span>   </td>
    <td class="tg-tysj">   <br>Skabelon, som disse use cases er udarbejdet på baggrund af   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Generelle tekniske   use cases   </td>
    <td class="tg-tysj">   <br>1.0.0-rc.1   </td>
    <td class="tg-tysj">   <br><span style="background-color:yellow">LINK</span>   </td>
    <td class="tg-tysj">   <br>Detaljerede use case-beskrivelser af de tekniske handlinger, der sker   før og efter brugeraktørens interaktion i systemet, herunder kommunikationen   med kommunikationsnetværket vedr. afsendelse og modtagelse af meddelelser og   kvitteringer.   </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Sundhedsfaglige og tekniske behov    </td>
    <td class="tg-tysj">   <br>1.0.0   </td>
    <td class="tg-tysj">   <br><span style="background-color:yellow">LINK</span>   </td>
    <td class="tg-tysj">   <br>Samlet overblik over de sundhedsfaglige og tekniske behov, som   standarden skal opfylde og use casene afspejle.   </td>
  </tr>
</tbody>
</table>


## Termer
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-ztr9{border-color:#000000;color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold"> Tabel 2: Oversigt over termer brugt i usecasne m </caption>
<thead>
  <tr>
    <th class="tg-ztr9">Termer</th>
    <th class="tg-ztr9">Beskrivelse</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">Fagsystem</td>
    <td class="tg-0lax">Et fagsystem består -- ift.<br>meddelelsesforsendelse og<br>-modtagelse -- af en<br>forretningsmæssig og en teknisk<br>del. Fagsystemets to dele kan<br>være alt fra et tæt sammenbygget<br>system til to forskellige<br>moduler i samme system, eller to<br>systemer, der er konfigureret<br>til at kommunikere sammen. Dette<br>er uden betydning for use<br>casenes opbygning.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Afsendersystem</td>
    <td class="tg-0lax">Fagsystem hos afsender af en<br>meddelelse</td>
  </tr>
  <tr>
    <td class="tg-0lax">Modtagersystem</td>
    <td class="tg-0lax">Fagsystem hos modtager af en<br>meddelelse</td>
  </tr>
  <tr>
    <td class="tg-0lax">Fagsystemets forretningsmæssige<br>del</td>
    <td class="tg-0lax">I den forretningsmæssige del<br>håndteres alt det faglige, som<br>er fagsystemets primære<br>anvendelsesområde. Fagsystemets<br>forretningsmæssige del består<br>af:<br><br>-   Fagsystemets<br>     forretningsmæssige indbakke<br><br>-   Fagsystemets<br>     forretningsmæssige<br>     meddelelsesmodul<br><br>-   Fagsystemets<br>     forretningsmæssige udbakke</td>
  </tr>
  <tr>
    <td class="tg-0lax">Fagsystemets tekniske del</td>
    <td class="tg-0lax">I den tekniske del håndteres<br>kommunikationen med<br>kommunikationsnetværket<br>vedrørende afsendelse og<br>modtagelse af meddelelser og<br>kvitteringer. Her evalueres også<br>hvilken kvitteringstype, der<br>skal retur til afsender af en<br>modtaget meddelelse.<br><br>Fagsystemets tekniske del består<br>af:<br><br>-   Fagsystemets tekniske<br>     indbakke<br><br>-   Fagsystemets tekniske<br>     meddelelsesmodul<br><br>-   Fagsystemets tekniske<br>     udbakke</td>
  </tr>
  <tr>
    <td class="tg-0lax">Fagsystemets forretningsmæssige<br>meddelelsesmodul</td>
    <td class="tg-0lax">I fagsystemets<br>forretningsmæssige<br>meddelelsesmodul håndteres alt<br>det faglige, som er fagsystemets<br>primære anvendelsesområde. Det<br>er bl.a. her slutbrugeren<br>arbejder med brugergrænsefladen<br>i fagsystemet.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Fagsystemets<br>forretningsmæssige indbakke</td>
    <td class="tg-0lax">Fagsystemets forretningsmæssige<br>indbakke er en abstrakt term for<br>den indgående funktionalitet<br>mellem fagsystemets tekniske del<br>og dets forretningsmæssige del i<br>indgående retning.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Fagsystemets<br>forretningsmæssige udbakke</td>
    <td class="tg-0lax">Fagsystemets forretningsmæssige<br>udbakke er en abstrakt term for<br>den udgående funktionalitet<br>mellem fagsystemets<br>forretningsmæssige del og dets<br>tekniske del i udgående retning.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Fagsystemets tekniske<br>indbakke</td>
    <td class="tg-0lax">Fagsystemets tekniske indbakke<br>er en abstrakt term for den<br>indgående funktionalitet mellem<br>kommunikationsnetværket og<br>fagsystemets tekniske del i<br>indgående retning. Fagsystemets<br>tekniske indbakke er reelt<br>kommunikationsnetværkets<br>aflevering af en meddelelse til<br>fagsystemet.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Kommunikationsnetværket</td>
    <td class="tg-0lax">Kommunikationsnetværket er det<br>netværk, som meddelelser fysisk<br>afsendes på. Netværket er pt det<br>samme som VANS-netværket.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Forsendelsesflow</td>
    <td class="tg-0lax">Et forsendelsesflow består af:<br><br>-   Et meddelsesflow fra<br>     afsenders forretningsmæssige<br>     modul i fagsystemet til<br>     modtagers forretningsmæssige<br>     modul i fagsystemet.<br><br>-   Et kvitteringsflow fra<br>     modtagers forretningsmæssige<br>     modul i fagsystemet til<br>     afsenders forretningsmæssige<br>     modul i fagsystemet<br><br>Ikke alle meddelelser og<br>kvitteringer ses nødvendigvis af<br>fagsystemets forretningsmæssige<br>slutbrugere, men deres indhold<br>er tilgængeligt i fagsystemets<br>forretningsmæssige<br>meddelelsesmodul.</td>
  </tr>
  <tr>
    <td class="tg-0lax">ACK AA</td>
    <td class="tg-0lax">HL7 kvitteringsterm for en<br>positiv kvittering. ACK AA er<br>HL7s pendant til MedComs<br>positive kvittering CTRL<br>((X)CTL03).</td>
  </tr>
</tbody>
</table>

I use case beskrivelserne anvendes følgende koder for de forskellige typer af sygehusadvis. Der er udarbejdet en særskilt kodeoversigt, som viser sammenhængen mellem adviskoder i use casene og FHIR-terminologien, [se afsnit 'HospitalNotification Codes in FHIR'](../documents/Overview-HospitalNotification-codes-FHIR.md). En oversigt over koderne ses desuden i tabellen herunder. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-wqo7{color:#2c415c;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold">Tabel 3: Oversigt over koder andvendt i advis om sygehusophold </caption>
<thead>
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


## Afgrænsning 

Use casene i dette notat beskriver, med en enkelt undtagelse (se
nedenfor), *brugeraktørens* interaktion med systemet, og omfatter
således den forretningsmæssige del af forsendelsesflowet jf. den grønne
markering i Figur 1. De tekniske handlinger, der ligger før og efter
brugeraktørens interaktion med systemet (fx systemets funktionaliteter i
kommunikationsnetværket samt afsendelse og modtagelse af kvitteringer),
er generiske på tværs af forskellige MedCom-standarder og optræder som
selvstændigt beskrevne use cases i dokumentet "[Generelle tekniske use
cases](#_Juridisk_grundlag)" (markeret med rød i figur XX).[Generelle
tekniske use cases](#_Juridisk_grundlag)" (markeret med rød i Figur 1).

Dvs, at afsender-use cases afsluttes med, at brugeraktør sender en
meddelelse, som (af systemaktør) lægges i [*Fagsystemet
forretningsmæssige udbakke*](#_Termer), mens modtager-use cases
igangsættes ved, at systemaktør har registreret en (teknisk positivt
valideret) meddelelse i [*Fagsystemets forretningsmæssige
indbakke*](#_Termer), som præsenteres for brugeraktøren i
brugergrænsefladen. Se i øvrigt forklaring under afsnit 1.5 Termer samt
uddybende forklaring i dokumentet "[Generelle tekniske use
cases](#_Juridisk_grundlag)".


![ Fillustration af forsendelsesflowet](../images/Forsendelsesflow.png)


### Metode til use case-beskrivelser

Use casene er lavet ud fra <a href="https://www.kombit.dk/metodeh%C3%A5ndb%C3%B8ger" target="_blank">KOMBIT’s metodehåndbog for use cases</a>. Hver use case består af nedenstående elementer. Der er defineret både [forretningsmæssige](#forretningsmæssige-use-cases) og [tekniske](#tekniske-use-cases) use cases.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;
  font-weight:bold"> Tabel 4: Elementer i use cases</caption>
<thead>
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

### Advistyper og koder i advis om sygehusophold



### Use cases 

Use case-beskrivelserne er opdelt i forretningsmæssige use cases og tekniske use cases. De tekniske use cases er generelle overordnede use cases, som aktiveres i de forskellige handlinger, der er beskrevet i de forretningsmæssige use cases. Til hver af de forretningsmæssige use cases er tilknyttet use cases som hhv. annullerer og retter den aktuelle use case.

**Generel bemærkning vedr. annulleringer og rettelser:** Der anvendes samme ID i annulleringen/rettelsen som i det oprindelige advis, så modtager kan koble meddelelserne entydigt sammen. Når tidspunkt for afslut-ning af patientens sygehusophold er overskredet, og der er afsendt advis[SLHJ], skal der ikke aktiveres syge-husadviser med rettelser og annulleringer, medmindre rettelsen/annulleringen relaterer sig til netop ad-vis[SLHJ].

I [afsnit om Patientrejser og use cases](#patientrejser-og-use-cases) er et overblik over patientrejser og kobling til use cases. Derefter følger de [forretningsmæssige use cases](#forretningsmæssige-use-cases) og [tekniske use cases](#tekniske-use-cases). Alle use cases er opdelt i:
1. afsender (sygehus) 
2. modtager (relevant modtager, typisk kommune) 

## Patientrejser og use cases 

## Forretningsmæssige use cases

## Tekniske use cases