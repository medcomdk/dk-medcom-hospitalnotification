[Tilbage](../../index.md)

# Use cases for advis om sygehusophold

**Tabel of content**

* [1 Indledning ](#indledning)
  * [1.1 Baggrund og formål ](#baggrund-og-formål)
  * [1.2 Juridisk grundlag ](#juridisk-grundlag)
  * [1.3 Målgruppe ](#målgruppe)
  * [1.4 Referencer ](#referencer)
  * [1.5 Termer ](#termer)
  * [1.6 Afgrænsning ](#afgrænsning)
  * [1.7 Læsevejledning ](#_Toc104888739)
  * [2 Oversigt over use cases ](#oversigt-over-use-cases)
* [2.1 Oversigt over primære og alternative use cases ](#oversigt-over-primære-og-alternative-use-cases)
  * [2.2 Korrigerende use cases ](#korrigerende-use-cases)
  * [2.3 Teknisk validering af lovhjemmel til modtagelse ](#teknisk-validering-af-lovhjemmel-til-modtagelse)
* [3 Use cases](#use-cases)
  * [3.1 S1: Indlæg patient og send advis\[STIN\]](#s1-indlæg-patient-og-send-advisstin)
    * [3.1.1 S1.A1: Indlæg patient og send advis\[STIN\] uden anmodning om indlæggelsesrapport ](#s1.a1-indlæg-patient-og-send-advisstin-uden-anmodning-om-indlæggelsesrapport)
    * [3.1.2 S1.A2: Indlæg patient uden afsendelse af advis\[STIN\] ](#s1.a2-indlæg-patient-uden-afsendelse-af-advisstin)
  * [3.2 R1: Modtag advisering om indlæggelse og send indlæggelsesrapport](#r1-modtag-advisering-om-indlæggelse-og-send-indlæggelsesrapport)
    * [3.2.2 R1.A1: Modtag advisering om indlæggelse uden afsendelse af indlæggelsesrapport](#r1.a1-modtag-advisering-om-indlæggelse-uden-afsendelse-af-indlæggelsesrapport)
* [4 Korrigerende use cases](#korrigerende-use-cases-1)
  * [4.1 S.CANC: Annullér et allerede udsendt advis](#s.canc-annullér-et-allerede-udsendt-advis)
  * [4.2 R.CANC: Modtag advisering om annulleret advis](#r.canc-modtag-advisering-om-annulleret-advis)
  * [4.3 S.CORR: Ret sygehusophold og send rettelsesadvis](#s.corr-ret-sygehusophold-og-send-rettelsesadvis)
  * [4.4 R.CORR: Modtag advisering om rettet advis](#r.corr-modtag-advisering-om-rettet-advis)
* [5 Teknisk validering af lovhjemmel til modtagelse](#teknisk-validering-af-lovhjemmel-til-modtagelse-1)
  * [5.1 R.PC: Modtag og indlæs advis (teknisk)](#r.pc-modtag-og-indlæs-advis-teknisk)
    * [5.1.1 R.PC.A1 Modtag og kassér advis (teknisk)](#r.pc.a1-modtag-og-kassér-advis-teknisk)
* [6 Regler for systemerne, som use casene beror på](#regler-for-systemerne-som-use-casene-beror-på)
  * [6.1 Regler for afsendersystemet, som use casene beror på](#regler-for-afsendersystemet-som-use-casene-beror-på)
    * [6.1.1 Regler vedr. afsendelse af forskellige typer af sygehusadviser](#regler-vedr.-afsendelse-af-forskellige-typer-af-sygehusadviser)
    * [6.1.2 Øvrige regler vedr. forsendelse af HospitalNotification](#øvrige-regler-vedr.-forsendelse-af-hospitalnotification)
* [6.2 Regler for modtagersystemet, som use casene beror på](#regler-for-modtagersystemet-som-use-casene-beror-på)
  * [6.2.1 Regler vedr. modtagelse af HospitalNotification](#regler-vedr.-modtagelse-af-hospitalnotification)



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
.tg  {border-collapse:collapse;border-spacing:80%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color=#2c415c; font-weight:bold"> Tabel 1:Oversigt over relevante refenrencer til use casene </caption>
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
.tg  {border-collapse:collapse;border-spacing:80;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-ztr9{border-color:#000000;color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold"> Tabel 2: Oversigt over termer brugt i use casene </caption>
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
.tg  {border-collapse:collapse;border-spacing:80%;}
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

**Bemærk:** Da sygehuset ikke på forhånd kan afgøre hvilke borgere,
der aktuelt modtager ydelser fra primær sektor, dannes "advis om
sygehusophold" på alle borgere med cpr.nr. og fast bopælsadresse i
Danmark ved registrering i sygehusets EPJ-system. Det er op til
modtagersystemet at sikre, at advis om sygehusophold kun indlæses og
synliggøres på borgere, som modtager ydelser indenfor [det gældende
lovgrundlag](#_Juridisk_grundlag). Derfor er der i dette dokument
tilføjet en teknisk forudsætnings-use case, som beskriver de
ekstra/særlige tekniske handlinger, der, forud for brugeraktørens
interaktion med systemet, er nødvendige for at sikre, at
modtagersystemets kun indlæser og viser adviser for brugeraktøren, når
der er lovhjemmel hertil (se afsnit 1.2 [Juridisk grundlag](#juridisk-grundlag)).

Use case-beskrivelserne omfatter ikke på nuværende tidspunkt adressering
af sygehusadviser til flere modtagere samt det efterfølgende
kommunikationsflow med øvrige hjemmepleje-sygehusmeddelelser.

## Læsevejledning
se casene i dokumentet beskriver et detaljeret forløb over
*brugeraktørens* interaktion med systemet ved forskellige hændelser.
Baggrunden for use casene er en række (forretnings)regler for
anvendelse, som fremgår af afsnit 6 Regler for systemerne, som use
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
  font-weight:bold"> Tabel 4: Oversigt over de elementer, som indgår i de primære use cases</caption>
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


Alternative use cases vil altid referere til en use case med et
normalforløb, hvorfor de forudgående elementer; igangsættende aktør,
formål, startbetingelser/forudsætninger og igangsættende hændelse, ikke
vil fremgå af de alternative use cases. Alternative use cases er derfor
opbygget af nedenstående elementer:

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:80%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c41c;font-weight:bold"> Tabel 5: Oversigt over elementer brugt i alternative use cases </caption>
<thead>
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

# Oversigt over use cases
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:80%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;font-weight:bold"> Tabel 6: primære og alternative use cases
<thead>
  <tr>
    <th class="tg-pu9k">Hændelse<br></th>
    <th class="tg-pu9k">Afsender (S)-use case<br></th>
    <th class="tg-pu9k">Modtager (R)-use case<br></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">   <br>Patientens indlægges   </td>
    <td class="tg-tysj">   <br>[S1](#s1-indlæg-patient-og-send-advisstin) </td>
    <td class="tg-tysj">   <br>[R1](#r1-modtag-advisering-om-indlæggelse-og-send-indlæggelsesrapport)  </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Patienten indlægges   på andet sygehus i samme region (overflytning)   </td>
    <td class="tg-tysj">   <br>[S1.A1](#s1a1-indlæg-patient-og-send-advisstin-uden-anmodning-om-indlæggelsesrapport)   </td>
    <td class="tg-tysj">   <br>[R1.A1](#r1a1-modtag-advisering-om-indlæggelse-uden-afsendelse-af-indlæggelsesrapport)  </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Patienten indlægges   på en anden afdeling på samme sygehus (overflytning)   </td>
    <td class="tg-tysj">   <br> [*S1.A2*](#s1a2-indlæg-patient-uden-afsendelse-af-advisstin) </td>
    <td class="tg-tysj">   <br> </td>
  </tr>
</tbody>
</table>


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:80%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c; font-weight:bold">Tabel 7: Korrigerende use cases</caption>
<thead>
  <tr>
    <th class="tg-pu9k">Hændelse<br></th>
    <th class="tg-pu9k">Afsender (S)-use case<br></th>
    <th class="tg-pu9k">Modtager (R)-use case<br></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj"> Der er behov for at annullere et allerede udsendt advis   </td>
    <td class="tg-tysj">[S.CANC](#SCANC)<br></td>
    <td class="tg-tysj">[R.CANC](#RCANC)</td>
  </tr>
  <tr>
    <td class="tg-tysj"> Der er rettelser til et allerede udsendt advis   </td>
    <td class="tg-tysj"> [S.CORR](#SCORR)</td>
    <td class="tg-tysj">[R.CORR](#RCORR)</td>
  </tr>
</tbody>
</table>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:80%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-pu9k{color:#2c415c;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;font-weight:bold">Teknisk validering af lovhjemmel til modtagelse </caption>
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
    <td class="tg-0lax">[R.PC](#RPC)</td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-style:italic">Teknisk validering af lovhjemmel til modtagelse (negativ)</span><br></td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">[*<span style="font-style:italic">R.PC.A1*</span>](#RPCA1)</td>
  </tr>
</tbody>
</table>
# Use cases

## S1: Indlæg patient og send advis\[STIN\]

+----------------------------------+----------------------------------+
| **Use case** []{#S1              | **Indlæg patient og send         |
| .anchor}**S1**                   | advis\[STIN\]**                  |
+==================================+==================================+
| Igangsættende aktør              | Brugeraktør:                     |
|                                  | Sygeplejersker/sekretær på       |
|                                  | sygehuset                        |
+----------------------------------+----------------------------------+
| Formål                           | At indlægge patient og at sende  |
|                                  | advis\[STIN\], når betingelserne |
|                                  | herfor er til stede/opfyldt jf.  |
|                                  | Regler for afsendersystemet, som |
|                                  | use casene beror på              |
+----------------------------------+----------------------------------+
| Startbetingelser/forudsætninger  | Patienten er henvist til         |
|                                  | indlæggelse (akut eller          |
|                                  | planlagt)                        |
+----------------------------------+----------------------------------+
| Igangsættende hændelse           | Patienten er fremmødt på         |
|                                  | sygehuset mhp. indlæggelse       |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Brugeraktør: Registrerer     |
|                                  |     patienten som fremmødt og    |
|                                  |     indlagt                      |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Evaluerer       |
|                                  |     positivt, at der skal sendes |
|                                  |     advis\[STIN\], da patienten  |
|                                  |     ikke er overflyttet fra      |
|                                  |     anden afdeling på samme      |
|                                  |     sygehus jf. Regler for       |
|                                  |     afsendersystemet, som use    |
|                                  |     casene beror på              |
+----------------------------------+----------------------------------+
|                                  | 3.  Systemaktør: Evaluerer       |
|                                  |     positivt, at der skal        |
|                                  |     anmodes om                   |
|                                  |     indlæggelsesrapport          |
|                                  |     (XDIS16), da patienten ikke  |
|                                  |     er overflyttet fra andet     |
|                                  |     sygehus i samme region.      |
+----------------------------------+----------------------------------+
|                                  | 4.  Systemaktør: Lægger pba.     |
|                                  |     evalueringen en              |
|                                  |     advis\[STIN\] med anmodning  |
|                                  |     om indlæggelsesrapport       |
|                                  |     (XDIS16) i [Fagsystemets     |
|                                  |     forretningsmæssige           |
|                                  |     udbakke](#Fagsyste           |
|                                  | mets_forretningsmæssige_udbakke) |
+----------------------------------+----------------------------------+
| Slutresultat                     | Borgeren er indlagt              |
|                                  |                                  |
|                                  | Systemaktør har lagt en          |
|                                  | advis\[STIN\] i [Fagsystemets    |
|                                  | forretningsmæssige               |
|                                  | udbakke](#Fagsyste               |
|                                  | mets_forretningsmæssige_udbakke) |
|                                  | med anmodning om                 |
|                                  | indlæggelsesrapport (XDIS16).    |
+----------------------------------+----------------------------------+
| Alternative handlinger           | **2a** Systemaktør evaluerer     |
|                                  | negativt, at der skal sendes     |
|                                  | advis\[STIN\], da patienten er   |
|                                  | overflyttet fra anden afdeling   |
|                                  | på samme sygehus jf. Regler for  |
|                                  | afsendersystemet, som use casene |
|                                  | beror på. Se alternativ use case |
|                                  | [S1.A2](#S1A2)                   |
|                                  |                                  |
|                                  | **3a** Systemaktør evaluerer     |
|                                  | negativt, at der skal anmodes om |
|                                  | indlæggelsesrapport (XDIS16), da |
|                                  | patienten er overflyttet fra     |
|                                  | andet sygehus i samme region jf. |
|                                  | Regler for afsendersystemet, som |
|                                  | use casene beror på. Se          |
|                                  | alternativ use case              |
|                                  | [\_S1                            |
|                                  | .A1:\_Indlæg_patient_1](#_S1.A1: |
|                                  | _Indlæg_patient_1)[S1.A1](#S1A1) |
+----------------------------------+----------------------------------+
| Korrigerende handlinger          | **1a** Brugeraktør har           |
|                                  | registreret forkert cpr.nr.      |
|                                  | indlagt og dermed aktiveret      |
|                                  | afsendelse af advis\[STIN\] på   |
|                                  | forkert patient, se use case     |
|                                  | [S.CANC](#SCANC)                 |
|                                  |                                  |
|                                  | **1b** Brugeraktør har           |
|                                  | fejlagtigt registreret patienten |
|                                  | som 'akut ambulant' i stedet for |
|                                  | indlagt, se use case             |
|                                  | [S.CANC](#SCANC)                 |
|                                  |                                  |
|                                  | **1c** Brugeraktør har           |
|                                  | registreret forkert              |
|                                  | sygehusafdeling eller tidspunkt, |
|                                  | se use case [S.CORR](#SCORR)     |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Ikke relevant                    |
+----------------------------------+----------------------------------+

### S1.A1: Indlæg patient og send advis\[STIN\] uden anmodning om indlæggelsesrapport

**Hændelse:** Patienten indlægges på andet sygehus i samme region
(overflytning)

+----------------------------------+----------------------------------+
| **Alternativ use case** []{#S1A1 | **Indlæg patient og send         |
| .anchor}**S1.A1**                | advis\[STIN\] uden anmodning om  |
|                                  | indlæggelsesrapport**            |
+==================================+==================================+
| Reference til use case som denne | [S1](#S1)                        |
| use case er et alternativ til    |                                  |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Brugeraktør: Registrerer     |
|                                  |     patienten som fremmødt og    |
|                                  |     indlagt                      |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Evaluerer       |
|                                  |     positivt, at der skal sendes |
|                                  |     advis\[STIN\], da patienten  |
|                                  |     ikke er overflyttet fra      |
|                                  |     anden afdeling på samme      |
|                                  |     sygehus jf. Regler for       |
|                                  |     systemerne, som use casene   |
|                                  |     beror på                     |
+----------------------------------+----------------------------------+
|                                  | 3.  Systemaktør: Evaluerer       |
|                                  |     negativt, at der skal        |
|                                  |     anmodes om                   |
|                                  |     indlæggelsesrapport          |
|                                  |     (XDIS16), da patienten er    |
|                                  |     overflyttet fra andet        |
|                                  |     sygehus i samme region.      |
+----------------------------------+----------------------------------+
|                                  | 4.  Systemaktør: Lægger pba.     |
|                                  |     evalueringen en              |
|                                  |     advis\[STIN\] med anmodning  |
|                                  |     om indlæggelsesrapport       |
|                                  |     (XDIS16) i [Fagsystemets     |
|                                  |     forretningsmæssige           |
|                                  |     udbakke](#Fagsyste           |
|                                  | mets_forretningsmæssige_udbakke) |
+----------------------------------+----------------------------------+
| Slutresultat                     | Patienten er indlagt.            |
|                                  |                                  |
|                                  | Systemaktør har lagt en          |
|                                  | advis\[STIN\] i [Fagsystemets    |
|                                  | forretningsmæssige               |
|                                  | udbakke](#Fagsyste               |
|                                  | mets_forretningsmæssige_udbakke) |
|                                  | med anmodning om                 |
|                                  | indlæggelsesrapport (XDIS16)     |
+----------------------------------+----------------------------------+
| Korrigerende handlinger          | **1a** Brugeraktør har           |
|                                  | registreret forkert cpr.nr.      |
|                                  | indlagt og dermed aktiveret      |
|                                  | afsendelse af advis\[STIN\] på   |
|                                  | forkert patient, se use case     |
|                                  | [S.CANC](#SCANC)                 |
|                                  |                                  |
|                                  | **1b** Brugeraktør har           |
|                                  | fejlagtigt registreret patienten |
|                                  | som 'akut ambulant' i stedet for |
|                                  | indlagt, se use case             |
|                                  | [S.CANC](#SCANC)                 |
|                                  |                                  |
|                                  | **1c** Brugeraktør har           |
|                                  | registreret forkert              |
|                                  | sygehusafdeling eller tidspunkt, |
|                                  | se use case [S.CORR](#SCORR)     |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Ikke relevant                    |
+----------------------------------+----------------------------------+

####  

### S1.A2: Indlæg patient uden afsendelse af advis\[STIN\]

**Hændelse:** Patienten indlægges på anden afdeling på samme sygehus
(overflytning)

+----------------------------------+----------------------------------+
| **Alternativ use case** []{#S1A2 | **Indlæg patient uden afsendelse |
| .anchor}**S1.A2**                | af advis\[STIN\]**               |
+==================================+==================================+
| Reference til use case som denne | [S1](#S1)                        |
| use case er et alternativ til    |                                  |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Brugeraktør: Registrerer     |
|                                  |     patienten som fremmødt og    |
|                                  |     indlagt                      |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Evaluerer       |
|                                  |     negativt, at der skal sendes |
|                                  |     advis\[STIN\], da patienten  |
|                                  |     er overflyttet fra anden     |
|                                  |     afdeling på samme sygehus    |
|                                  |     jf. Regler for               |
|                                  |     afsendersystemet, som use    |
|                                  |     casene beror på              |
+----------------------------------+----------------------------------+
|                                  | 3.  Systemaktør: Lægger pba. af  |
|                                  |     evalueringen ikke            |
|                                  |     advis\[STIN\] i              |
|                                  |     [Fagsystemets                |
|                                  |     forretningsmæssige           |
|                                  |     udbakke](#Fagsyste           |
|                                  | mets_forretningsmæssige_udbakke) |
+----------------------------------+----------------------------------+
| Slutresultat                     | Patienten er indlagt.            |
|                                  |                                  |
|                                  | Systemaktør har ikke lagt en     |
|                                  | advis\[STIN\] i [Fagsystemets    |
|                                  | forretningsmæssige               |
|                                  | udbakke](#Fagsyste               |
|                                  | mets_forretningsmæssige_udbakke) |
+----------------------------------+----------------------------------+
| Korrigerende handlinger          | Ikke relevant                    |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Ikke relevant                    |
+----------------------------------+----------------------------------+

###   {#section-2 .list-paragraph}

## R1: Modtag advisering om indlæggelse og send indlæggelsesrapport

+----------------------------------+----------------------------------+
| **Use case** []{#R1              | **Modtag advisering om           |
| .anchor}**R1**                   | indlæggelse og send              |
|                                  | indlæggelsesrapport**            |
+==================================+==================================+
| Igangsættende aktør              | Systemaktør                      |
+----------------------------------+----------------------------------+
| Formål                           | At blive informeret om, at en    |
|                                  | borger er blevet indlagt på      |
|                                  | sygehuset                        |
+----------------------------------+----------------------------------+
| Startbetingelser/forudsætninger  | Borgeren er registreret som      |
|                                  | indlagt på et sygehus.           |
|                                  |                                  |
|                                  | Systemaktør har evalueret        |
|                                  | positivt, at adviset skal        |
|                                  | indlæses/lægges i [Fagsystemets  |
|                                  | forretningsmæssige               |
|                                  | indbakke](#Fagsystem             |
|                                  | ets_forretningsmæssige_indbakke) |
|                                  | jf. [R.PC](#RPC)                 |
+----------------------------------+----------------------------------+
| Igangsættende hændelse           | Systemaktør har lagt en          |
|                                  | formateret advis\[STIN\] i       |
|                                  | [Fagsystemets forretningsmæssige |
|                                  | indbakke](#Fagsystem             |
|                                  | ets_forretningsmæssige_indbakke) |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Systemaktør: Evaluerer       |
|                                  |     positivt, at der skal sendes |
|                                  |     indlæggelsesrapport (XDIS16) |
|                                  |     jf. anmodning i              |
|                                  |     advis\[STIN\]                |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Lægger pba.     |
|                                  |     evalueringen en              |
|                                  |     indlæggelsesrapport (XDIS16) |
|                                  |     i [Fagsystemets              |
|                                  |     forretningsmæssige           |
|                                  |     udbakke](#Fagsyste           |
|                                  | mets_forretningsmæssige_udbakke) |
+----------------------------------+----------------------------------+
|                                  | 3.  Systemaktør: Indlæser        |
|                                  |     advis\[STIN\] og notificerer |
|                                  |     brugeraktør om modtaget      |
|                                  |     advis\[STIN\]                |
+----------------------------------+----------------------------------+
|                                  | 4.  Brugeraktør: Tilgår          |
|                                  |     advis\[STIN\]                |
+----------------------------------+----------------------------------+
|                                  | 5.  Systemaktør: Viser           |
|                                  |     advis\[STIN\] for            |
|                                  |     brugeraktør.                 |
+----------------------------------+----------------------------------+
| Slutresultat                     | Advis\[STIN\] er indlæst og      |
|                                  | vist, og brugeraktør er          |
|                                  | notificeret om modtagelsen.      |
|                                  |                                  |
|                                  | Systemaktør har lagt en          |
|                                  | indlæggelsesrapport (XDIS16) i   |
|                                  | [Fagsystemets forretningsmæssige |
|                                  | udbakke](#Fagsyste               |
|                                  | mets_forretningsmæssige_udbakke) |
+----------------------------------+----------------------------------+
| Alternative handlinger           | **2a** Systemaktør evaluerer     |
|                                  | negativt, at der skal sendes     |
|                                  | indlæggelsesrapport (XDIS16) jf. |
|                                  | anmodning i advis\[STIN\]. Se    |
|                                  | alternativ use case              |
|                                  | [R1.A1](#R1A1)                   |
+----------------------------------+----------------------------------+
| Korrigerende handlinger          | Ikke relevant                    |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Det er op til modtagersystemet   |
|                                  | at opsætte regler for eventuel   |
|                                  | automatisk pausering af ydelser  |
|                                  | ved modtagelse af advis\[STIN\]  |
+----------------------------------+----------------------------------+

####  

### R1.A1: Modtag advisering om indlæggelse uden afsendelse af indlæggelsesrapport

**Hændelse:** Patienten er blevet indlagt på andet sygehus i samme
region (overflytning)

+----------------------------------+----------------------------------+
| **Alternativ use case** []{#R1A1 | **Modtag advisering om           |
| .anchor}**R1.A1**                | indlæggelse uden afsendelse af   |
|                                  | indlæggelsesrapport**            |
+==================================+==================================+
| Reference til use case som denne | [R1](#R1)                        |
| use case er et alternativ til    |                                  |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Systemaktør: Evaluerer       |
|                                  |     negativt, at der skal sendes |
|                                  |     indlæggelsesrapport (XDIS16) |
|                                  |     jf. anmodning i              |
|                                  |     advis\[STIN\]                |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Indlæser        |
|                                  |     advis\[STIN\] og notificerer |
|                                  |     brugeraktør om modtaget      |
|                                  |     advis\[STIN\]                |
+----------------------------------+----------------------------------+
|                                  | 3.  Brugeraktør: Tilgår          |
|                                  |     advis\[STIN\]                |
+----------------------------------+----------------------------------+
|                                  | 4.  Systemaktør: Viser           |
|                                  |     advis\[STIN\] for            |
|                                  |     brugeraktør.                 |
+----------------------------------+----------------------------------+
| Slutresultat                     | Patienten er indlagt på andet    |
|                                  | sygehus i samme region.          |
|                                  |                                  |
|                                  | Systemets har ikke lagt en       |
|                                  | advis\[STIN\] i [Fagsystemets    |
|                                  | forretningsmæssige               |
|                                  | udbakke](#Fagsyste               |
|                                  | mets_forretningsmæssige_udbakke) |
+----------------------------------+----------------------------------+
| Korrigerende handlinger          | Ikke relevant                    |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Det er op til modtagersystemet   |
|                                  | at opsætte regler for eventuel   |
|                                  | automatisk pausering af ydelser  |
|                                  | ved modtagelse af advis\[STIN\]. |
+----------------------------------+----------------------------------+

# Korrigerende use cases

## S.CANC: Annullér et allerede udsendt advis

+----------------------------------+----------------------------------+
| **Use case** []{#SCANC           | **Annullér et allerede udsendt   |
| .anchor}**S.CANC**               | advis**                          |
+==================================+==================================+
| Igangsættende aktør              | Brugeraktør:                     |
|                                  | Sygeplejersker/sekretær på       |
|                                  | sygehuset                        |
+----------------------------------+----------------------------------+
| Formål                           | At korrigere for og notificere   |
|                                  | relevante parter om advis, som   |
|                                  | ikke skulle være sendt pga.      |
|                                  | forkert registrering af cpr.nr.  |
|                                  | eller type af sygehusophold      |
+----------------------------------+----------------------------------+
| Startbetingelser/forudsætninger  | Der er afsendt advis af typen    |
|                                  | \[STIN\] \[STAA\] \[SLHJ\]       |
|                                  | \[MORS\] \[STOR\] \[SLOR\]       |
+----------------------------------+----------------------------------+
| Igangsættende hændelse           | Brugeraktør er blevet opmærksom  |
|                                  | på fejlagtig registrering af     |
|                                  | cpr.nr. eller typen af           |
|                                  | sygehusophold                    |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Brugeraktør: Korrigerer den  |
|                                  |     udførte handling             |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Evaluerer       |
|                                  |     positivt, at der skal sendes |
|                                  |     advis\[AN_XX\] jf. Regler    |
|                                  |     for afsendersystemet, som    |
|                                  |     use casene beror på          |
+----------------------------------+----------------------------------+
|                                  | 3.  Systemaktør: Evaluerer       |
|                                  |     negativt, at der skal        |
|                                  |     anmodes om                   |
|                                  |     indlæggelsesrapport          |
|                                  |     (XDIS16), da der er tale om  |
|                                  |     en annullering.              |
+----------------------------------+----------------------------------+
|                                  | 4.  Systemaktør: Lægger pba.     |
|                                  |     evalueringen en              |
|                                  |     advis\[AN_XX\] uden          |
|                                  |     anmodning om                 |
|                                  |     indlæggelsesrapport (XDIS16) |
|                                  |     i [Fagsystemets              |
|                                  |     forretningsmæssige           |
|                                  |     udbakke](#Fagsyste           |
|                                  | mets_forretningsmæssige_udbakke) |
+----------------------------------+----------------------------------+
| Slutresultat                     | Fejlen er korrigeret.            |
|                                  |                                  |
|                                  | Systemets har lagt en            |
|                                  | advis\[AN_XX\] i [Fagsystemets   |
|                                  | forretningsmæssige               |
|                                  | udbakke](#Fagsyste               |
|                                  | mets_forretningsmæssige_udbakke) |
|                                  | uden anmodning om                |
|                                  | indlæggelsesrapport (XDIS16)     |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Kun fejlregistreringer vedr.     |
|                                  | cpr.nr. eller type af            |
|                                  | sygehusophold skal medføre       |
|                                  | forsendelse af annulleringer.    |
|                                  | Rettelser til sygehusafdeling    |
|                                  | og/eller tidspunkt for           |
|                                  | sygehusophold skal medføre       |
|                                  | forsendelse af rettelser.        |
|                                  |                                  |
|                                  | Der skal ikke sendes             |
|                                  | annulleringer forud for          |
|                                  | rettelser                        |
|                                  |                                  |
|                                  | ID kobler entydigt annulleringen |
|                                  | til det advis, som annulleringen |
|                                  | vedrører.                        |
+----------------------------------+----------------------------------+

## R.CANC: Modtag advisering om annulleret advis

+----------------------------------+----------------------------------+
| **Use case** []{#RCANC           | **Modtag advisering om           |
| .anchor}**R.CANC**               | annulleret advis**               |
+==================================+==================================+
| Igangsættende aktør              | Systemaktør                      |
+----------------------------------+----------------------------------+
| Formål                           | At blive informeret om, at et    |
|                                  | tidligere modtaget advis er      |
|                                  | annulleret/ikke gældende.        |
+----------------------------------+----------------------------------+
| Startbetingelser/forudsætninger  | Der er modtaget advis af typen   |
|                                  | \[STIN\] \[STAA\] \[SLHJ\]       |
|                                  | \[MORS\] \[STOR\] \[SLOR\]       |
+----------------------------------+----------------------------------+
| Igangsættende hændelse           | Systemaktør har modtaget         |
|                                  | advis\[AN_XX\] i [Fagsystemets   |
|                                  | forretningsmæssige               |
|                                  | indbakke](#Fagsystem             |
|                                  | ets_forretningsmæssige_indbakke) |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Systemaktør: Evaluerer       |
|                                  |     negativt, at der skal sendes |
|                                  |     indlæggelsesrapport (XDIS16) |
|                                  |     jf. anmodning i              |
|                                  |     advis\[AN_XX\].              |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Indlæser        |
|                                  |     advis\[AN_XX\] og            |
|                                  |     notificerer brugeraktør om   |
|                                  |     modtaget annullering         |
+----------------------------------+----------------------------------+
|                                  | 3.  Systemaktør: Aktiverer       |
|                                  |     annulleringsvisning for det  |
|                                  |     advis, som er blevet         |
|                                  |     annulleret                   |
+----------------------------------+----------------------------------+
|                                  | 4.  Brugeraktør: Tilgår          |
|                                  |     advis\[AN_XX\]               |
+----------------------------------+----------------------------------+
|                                  | 5.  Systemaktør: Viser           |
|                                  |     advis\[AN_XX\] for           |
|                                  |     brugeraktør                  |
+----------------------------------+----------------------------------+
| Slutresultat                     | Modtager er informeret om, at    |
|                                  | det tidligere modtagne advis er  |
|                                  | annulleret.                      |
|                                  |                                  |
|                                  | Annulleringsvisning for det      |
|                                  | advis, som er annulleret, er     |
|                                  | aktiveret.                       |
+----------------------------------+----------------------------------+
| Alternative handlinger           | Ikke relevant                    |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Det er op til modtagersystemet   |
|                                  | at sikre, at meddelelsen, som er |
|                                  | blevet annulleret,               |
|                                  | optræder/vises som annulleret    |
|                                  | for brugeren                     |
|                                  | (annulleringsvisning)            |
+----------------------------------+----------------------------------+

## S.CORR: Ret sygehusophold og send rettelsesadvis

+----------------------------------+----------------------------------+
| **Use case** []{#SCORR           | **Ret sygehusophold og send      |
| .anchor}**S.CORR**               | rettelsesadvis**                 |
+==================================+==================================+
| Igangsættende aktør              | Brugeraktør:                     |
|                                  | Sygeplejersker/sekretær på       |
|                                  | sygehuset                        |
+----------------------------------+----------------------------------+
| Formål                           | At korrigere for og notificere   |
|                                  | relevante parter om fejlagtigt   |
|                                  | advis (forkert afdeling eller    |
|                                  | tidspunkt for sygehusophold)     |
+----------------------------------+----------------------------------+
| Startbetingelser/forudsætninger  | Der er afsendt advis af typen    |
|                                  | \[STIN\] \[STAA\] \[SLHJ\]       |
|                                  | \[MORS\] \[STOR\] \[SLOR\]       |
+----------------------------------+----------------------------------+
| Igangsættende hændelse           | Brugeraktør er blevet opmærksom  |
|                                  | på fejlagtig registrering af     |
|                                  | sygehusafdeling og/eller         |
|                                  | tidspunkt for sygehusophold      |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Brugeraktør: Retter          |
|                                  |     information om               |
|                                  |     sygehusopholdet (afdeling    |
|                                  |     og/eller tidspunkt for       |
|                                  |     sygehusophold)               |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Evaluerer       |
|                                  |     positivt, at der skal sendes |
|                                  |     advis\[RE_XX\] jf. Regler    |
|                                  |     for afsendersystemet, som    |
|                                  |     use casene beror på          |
+----------------------------------+----------------------------------+
|                                  | 3.  Systemaktør: Evaluerer       |
|                                  |     negativt, at der skal        |
|                                  |     anmodes om                   |
|                                  |     indlæggelsesrapport          |
|                                  |     (XDIS16), da der er tale om  |
|                                  |     en annullering.              |
+----------------------------------+----------------------------------+
|                                  | 4.  Systemaktør: Lægger pba.     |
|                                  |     evalueringen en              |
|                                  |     advis\[RE_XX\] uden          |
|                                  |     anmodning om                 |
|                                  |     indlæggelsesrapport (XDIS16) |
|                                  |     i [Fagsystemets              |
|                                  |     forretningsmæssige           |
|                                  |     udbakke](#Fagsyste           |
|                                  | mets_forretningsmæssige_udbakke) |
+----------------------------------+----------------------------------+
| Slutresultat                     | Fejlen er korrigeret.            |
|                                  |                                  |
|                                  | Systemets har lagt en            |
|                                  | advis\[RE_XX\] i [Fagsystemets   |
|                                  | forretningsmæssige               |
|                                  | udbakke](#Fagsyste               |
|                                  | mets_forretningsmæssige_udbakke) |
|                                  | uden anmodning om                |
|                                  | indlæggelsesrapport (XDIS16)     |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Kun rettelser til                |
|                                  | sygehusafdeling og/eller         |
|                                  | tidspunkt for sygehusophold skal |
|                                  | medføre forsendelse af           |
|                                  | rettelser. Forkert registrering  |
|                                  | af cpr.nr. og type af            |
|                                  | sygehusophold skal medføre       |
|                                  | forsendelse af annulleringer.    |
|                                  |                                  |
|                                  | Der skal ikke sendes             |
|                                  | annulleringer forud for          |
|                                  | rettelser                        |
|                                  |                                  |
|                                  | ID kobler entydigt rettelsen til |
|                                  | det advis, som rettelsen         |
|                                  | vedrører.                        |
+----------------------------------+----------------------------------+

## R.CORR: Modtag advisering om rettet advis

+----------------------------------+----------------------------------+
| **Use case** []{#RCORR           | **Modtag advisering om rettet    |
| .anchor}**R.CORR**               | advis**                          |
+==================================+==================================+
| Igangsættende aktør              | Systemaktør                      |
+----------------------------------+----------------------------------+
| Formål                           | At blive informeret om rettelser |
|                                  | til et tidligere modtaget advis  |
+----------------------------------+----------------------------------+
| Startbetingelser/forudsætninger  | Der er modtaget advis af typen   |
|                                  | \[STIN\] \[STAA\] \[SLHJ\]       |
|                                  | \[MORS\] \[STOR\] \[SLOR\]       |
+----------------------------------+----------------------------------+
| Igangsættende hændelse           | Systemaktør har modtaget         |
|                                  | advis\[RE_XX\] i [Fagsystemets   |
|                                  | forretningsmæssige               |
|                                  | indbakke](#Fagsystem             |
|                                  | ets_forretningsmæssige_indbakke) |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Systemaktør: Evaluerer       |
|                                  |     negativt, at der skal sendes |
|                                  |     indlæggelsesrapport (XDIS16) |
|                                  |     jf. anmodning i              |
|                                  |     advis\[RE_XX\].              |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Indlæser        |
|                                  |     advis\[RE_XX\] og            |
|                                  |     notificerer eventuelt        |
|                                  |     brugeraktør om modtaget      |
|                                  |     rettelse.                    |
+----------------------------------+----------------------------------+
|                                  | 3.  Systemaktør: Aktiverer       |
|                                  |     ændringsmarkering for det    |
|                                  |     advis, som er blevet rettet  |
+----------------------------------+----------------------------------+
|                                  | 4.  Brugeraktør: Tilgår          |
|                                  |     eventuelt advis\[RE_XX\]     |
+----------------------------------+----------------------------------+
|                                  | 5.  Systemaktør: Viser           |
|                                  |     advis\[RE_XX\] for           |
|                                  |     brugeraktør med tydelig      |
|                                  |     ændringsmarkering            |
+----------------------------------+----------------------------------+
| Slutresultat                     | Modtager er informeret om, at    |
|                                  | det tidligere modtagne advis er  |
|                                  | rettet.                          |
|                                  |                                  |
|                                  | Ændringsmarkering for det advis, |
|                                  | som er annulleret, er aktiveret. |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Det er op til modtagersystemet   |
|                                  | og kunder at beslutte, hvordan   |
|                                  | rettelser indlæses og vises for  |
|                                  | brugeren.                        |
+----------------------------------+----------------------------------+

# Teknisk validering af lovhjemmel til modtagelse

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
dokumentet "[Generelle tekniske use cases](#_Juridisk_grundlag)".

## R.PC: Modtag og indlæs advis (teknisk)

+----------------------------------+----------------------------------+
| **Use case** []{#RPC             | **Modtag og indlæs advis         |
| .anchor}**R.PC**                 | (teknisk)**                      |
+==================================+==================================+
| Igangsættende aktør              | Systemaktør                      |
+----------------------------------+----------------------------------+
| Formål                           | At lægge adviset i [Fagsystemets |
|                                  | forretningsmæssige               |
|                                  | indbakke](#Fagsysteme            |
|                                  | ts_forretningsmæssige_indbakke), |
|                                  | når der er lovhjemmel hertil.    |
+----------------------------------+----------------------------------+
| Startbetingelser/forudsætninger  | [K                               |
|                                  | ommunikationsnetværket](#termer) |
|                                  | har lagt et advis i              |
|                                  | [Fagsystemets tekniske           |
|                                  | indbakke](#                      |
|                                  | Fagsystemets_tekniske_indbakke). |
+----------------------------------+----------------------------------+
| Igangsættende hændelse           | Systemaktør registrerer, at der  |
|                                  | er modtaget et advis i           |
|                                  | [Fagsystemets tekniske           |
|                                  | indbakke](                       |
|                                  | #Fagsystemets_tekniske_indbakke) |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Systemaktør: Henter advis i  |
|                                  |     [Fagsystemets tekniske       |
|                                  |     indbakke](                   |
|                                  | #Fagsystemets_tekniske_indbakke) |
|                                  |     og logger tilstrækkelige     |
|                                  |     metadata i systemet, så der  |
|                                  |     kan afsendes en kvittering   |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Evaluerer       |
|                                  |     adviset positivt ([ACK       |
|                                  |     AA](#ACKAA)) mod standardens |
|                                  |     profilering                  |
+----------------------------------+----------------------------------+
|                                  | 3.  Systemaktør: Konstaterer, at |
|                                  |     adviset er markeret for at   |
|                                  |     ville modtage kvittering jf. |
|                                  |     regler som beskrevet i       |
|                                  |     "[Generelle tekniske use     |
|                                  |                                  |
|                                  |    cases](#_Juridisk_grundlag)", |
|                                  |     og logger/markerer for, at   |
|                                  |     der skal sendes positiv      |
|                                  |     kvittering.                  |
+----------------------------------+----------------------------------+
|                                  | 4.  Systemaktør: Sætter          |
|                                  |     meddelelsestilstand til      |
|                                  |     "Validated"                  |
+----------------------------------+----------------------------------+
|                                  | 5.  Systemaktør: Formaterer      |
|                                  |     meddelelsesindhold iht.      |
|                                  |     fagsystemets                 |
|                                  |     meddelelsesformat.           |
+----------------------------------+----------------------------------+
|                                  | 6.  Systemaktør: Evaluerer       |
|                                  |     positivt, at adviset skal    |
|                                  |     indlæses/lægges i            |
|                                  |     [Fagsystemets                |
|                                  |     forretningsmæssige           |
|                                  |     indbakke](#Fagsystem         |
|                                  | ets_forretningsmæssige_indbakke) |
|                                  |     pba. Regler for              |
|                                  |     modtagersystemet, som use    |
|                                  |     casene beror på (der er      |
|                                  |     lovhjemmel til indlæsning)   |
+----------------------------------+----------------------------------+
| Slutresultat                     | Systemaktør har lagt et          |
|                                  | formateret meddelelsesindhold i  |
|                                  | [Fagsystemets forretningsmæssige |
|                                  | indbakke](#Fagsysteme            |
|                                  | ts_forretningsmæssige_indbakke), |
|                                  | og logget/markeret for, at der   |
|                                  | skal sendes en positiv           |
|                                  | kvittering. Meddelelsestilstand  |
|                                  | er sat til "Validated"           |
+----------------------------------+----------------------------------+
| Alternative handlinger           | **2a** Systemaktør afviser       |
|                                  | adviset pga. teknisk invalidt    |
|                                  | indhold se ['Generelle tekniske  |
|                                  | use                              |
|                                  | cases'](#_Juridisk_grundlag))    |
|                                  |                                  |
|                                  | **2b** Systemaktør adviser       |
|                                  | adviset pga. teknisk fejl i      |
|                                  | modtagersystemet (se ['Generelle |
|                                  | tekniske use                     |
|                                  | cases'](#_Juridisk_grundlag))    |
|                                  |                                  |
|                                  | **6a** Systemaktør evaluerer     |
|                                  | negativt, at adviset skal        |
|                                  | indlæses pba. Regler for         |
|                                  | modtagersystemet, som use casene |
|                                  | beror på. Se alternative use     |
|                                  | case [R.PC.A1](#RPCA1)R.PC.A1    |
|                                  | Modtag og kassér advis           |
+----------------------------------+----------------------------------+
| Korrigerende handlinger          | Ikke relevant                    |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Use casen supplerer de øvrige    |
|                                  | tekniske handlinger, som ligger  |
|                                  | før og efter brugeraktørens      |
|                                  | interaktion med systemet, og som |
|                                  | er beskrevet i dokumentet        |
|                                  | "[Generelle tekniske use         |
|                                  | cases](#_Juridisk_grundlag)".    |
+----------------------------------+----------------------------------+

### R.PC.A1 Modtag og kassér advis (teknisk)

+----------------------------------+----------------------------------+
| **Use case** []{#RPCA1           | **Modtag og kassér advis         |
| .anchor}**R.PC.A1**              | (teknisk)**                      |
+==================================+==================================+
| Reference til use case som denne | [R.PC](#RPC)                     |
| use case er et alternativ til    |                                  |
+----------------------------------+----------------------------------+
| Handlinger                       | 1.  Systemaktør: Evaluerer       |
|                                  |     negativt, at adviset skal    |
|                                  |     indlæses pba. Regler for     |
|                                  |     modtagersystemet, som use    |
|                                  |     casene beror på (der er ikke |
|                                  |     lovhjemmel til indlæsning)   |
+----------------------------------+----------------------------------+
|                                  | 2.  Systemaktør: Sletter advis   |
|                                  |     og lægger ikke adviset i     |
|                                  |     [Fagsystemets                |
|                                  |     forretningsmæssige           |
|                                  |     indbakke](#Fagsystem         |
|                                  | ets_forretningsmæssige_indbakke) |
+----------------------------------+----------------------------------+
| Slutresultat                     | Systemaktør har ikke indlæst     |
|                                  | adviset og vist det for          |
|                                  | slutbruger. Systemaktør har dog  |
|                                  | logget. Systemaktør har fortsat  |
|                                  | logget/markeret for, at der skal |
|                                  | sendes en positiv kvittering.    |
|                                  | Meddelelsestilstand er sat til   |
|                                  | "Validated".                     |
+----------------------------------+----------------------------------+
| Korrigerende handlinger          | Ikke relevant                    |
+----------------------------------+----------------------------------+
| Alternative handlinger           | Ikke relevant                    |
+----------------------------------+----------------------------------+
| Bemærkninger                     | Use casen supplerer de øvrige    |
|                                  | tekniske handlinger, som ligger  |
|                                  | før og efter brugeraktørens      |
|                                  | interaktion med systemet, og som |
|                                  | er beskrevet i dokumentet        |
|                                  | "[Generelle tekniske use         |
|                                  | cases](#_Juridisk_grundlag)".    |
|                                  |                                  |
|                                  | Modtagersystemet skal, også      |
|                                  | selvom adviset ikke              |
|                                  | indlæses/persisteres i           |
|                                  | systemets, kvittere positivt for |
|                                  | modtagelse af advis (hvis de     |
|                                  | øvrige forudsætninger herfor er  |
|                                  | tilstede).                       |
+----------------------------------+----------------------------------+

# Regler for systemerne, som use casene beror på

## Regler for afsendersystemet, som use casene beror på

### Regler vedr. afsendelse af forskellige typer af sygehusadviser 

+--------+------------------+------------------+------------------+
| **ID** | **Hændelse**     | **Advistype, der | **Anmodning om   |
|        |                  | sendes**         | ind              |
|        |                  |                  | læggelsesrapport |
|        |                  |                  | (XDIS16)**       |
+========+==================+==================+==================+
| S.BR1  | Akut ambulant    | STAA             | Ja               |
|        | patient          |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR2  | Indlæg patient   | STIN             | Ja               |
+--------+------------------+------------------+------------------+
| S.BR3  | Indlæg patient   | STIN             | Ja               |
|        | fra anden region |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR4  | Indlæg patient   | STIN             | Nej              |
|        | fra andet        |                  |                  |
|        | sygehus i samme  |                  |                  |
|        | region           |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR5  | Indlæg patient   | Der sendes ikke  | Ikke relevant    |
|        | fra anden        | advis            |                  |
|        | afdeling på      |                  |                  |
|        | samme sygehus    |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR6  | Patient går på   | STOR             | Nej              |
|        | orlov fra        |                  |                  |
|        | sygehusophold    |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR7  | Patient          | SLOR             | Nej              |
|        | returnerer fra   |                  |                  |
|        | orlov fra        |                  |                  |
|        | sygehusophold    |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR8  | Afslut patient   | SLHJ             | Nej              |
|        | til              |                  |                  |
|        | hjemmet/primær   |                  |                  |
|        | sektor.          |                  |                  |
|        |                  |                  |                  |
|        | Bemærk i øvrigt  |                  |                  |
|        | S.BR13           |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR9  | Patienten dør    | MORS             | Nej              |
|        | (v. ankomst      |                  |                  |
|        | eller under      |                  |                  |
|        | sygehusophold)   |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR10 | Send rettelse    | RE_XX            | Nej              |
|        | til advis        |                  |                  |
|        | (forkert         |                  |                  |
|        | afdeling)        |                  |                  |
|        |                  |                  |                  |
|        | Bemærk i øvrigt  |                  |                  |
|        | S.BR14           |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR11 | Send rettelse    | RE_XX            | Nej              |
|        | til advis        |                  |                  |
|        | (forkert         |                  |                  |
|        | tidspunkt)       |                  |                  |
|        |                  |                  |                  |
|        | Bemærk i øvrigt  |                  |                  |
|        | S.BR14           |                  |                  |
+--------+------------------+------------------+------------------+
| S.BR12 | Send annullering | AN_XX            | Nej              |
|        | (anvendes ved    |                  |                  |
|        | forkert          |                  |                  |
|        | patient/cpr.     |                  |                  |
|        | eller forkert    |                  |                  |
|        | type af          |                  |                  |
|        | sygehusophold)   |                  |                  |
|        |                  |                  |                  |
|        | Bemærk i øvrigt  |                  |                  |
|        | S.BR14           |                  |                  |
+--------+------------------+------------------+------------------+

###  {#section-4 .list-paragraph}

### Øvrige regler vedr. forsendelse af HospitalNotification

+---------+-----------------------------------------------------------+
| **ID**  | **Regel**                                                 |
+=========+===========================================================+
| S.BR13  | Adviserne skal genereres på basis af **tidstro            |
|         | registrering** i EPJ/PAS-systemet.                        |
|         |                                                           |
|         | Hvis der i PAS/EPJ anvendes fremtidige registreringer af  |
|         | planlagte kontakter, skal disse først udløse advis, når   |
|         | tidspunktet indtræffer, dvs. ved patientens fysiske       |
|         | fremmøde.                                                 |
+---------+-----------------------------------------------------------+
| S. BR14 | **Adviserne skal som udgangspunkt genereres på alle       |
|         | patienter som indlægges eller opholder sig akut ambulant  |
|         | på sygehuset**. Leverandøren kan vælge, at afsendelse af  |
|         | øvrige adviser (dvs. adviser, som ikke udtrykker start af |
|         | et sygehusophold, fx orlov-adviser og afslutningsadviser) |
|         | kun sker på patienter, hvor der er modtaget en            |
|         | (automatisk/og eller manuel) indlæggelsesrapport          |
|         | (XDIS16).                                                 |
+---------+-----------------------------------------------------------+
| S.BR15  | Adviser (som ikke er annulleringer eller rettelser til    |
|         | allerede afsendte adviser) adresseres til **borgens       |
|         | bopælskommune.**                                          |
+---------+-----------------------------------------------------------+
| S.BR16  | **Annulleringer og rettelser** adresseres til modtageren  |
|         | af det fejlagtige advis.                                  |
+---------+-----------------------------------------------------------+
| S.BR17  | Der sendes udelukkende rettelser til senest afsendte      |
|         | advis. Foretages der en rettelse til fx                   |
|         | indlæggelsestidspunktet for en patient, der er udskrevet, |
|         | skal denne rettelse ikke sendes.                          |
|         |                                                           |
|         | Der skal ikke sendes annulleringer før rettelser.         |
+---------+-----------------------------------------------------------+
| S.BR18  | Der [sendes ikke]{.ul} advisering om afslutning fra den   |
|         | afdeling/det sygehus, som patienten overflyttes fra.      |
|         |                                                           |
|         | Reglen kan kun fraviges, hvis og såfremt patienten selv   |
|         | varetager/er ansvarlig for transporten fra sygehus A til  |
|         | sygehus B. Den planlagte overflytning bør da være         |
|         | kommunikeret til modtageren på anden vis, fx i            |
|         | plejeforløbsplan og/eller i en korrespondancemeddelelse   |
+---------+-----------------------------------------------------------+

## Regler for modtagersystemet, som use casene beror på

### Regler vedr. modtagelse af HospitalNotification

+--------+------------------------------------------------------------+
| **ID** | **Beskrivelse af regel**                                   |
+========+============================================================+
| R.BR1  | Da sygehuset ikke på forhånd kan afgøre hvilke borgere,    |
|        | der aktuelt modtager ydelser fra primær sektor, dannes     |
|        | "advis om sygehusophold" på alle borgere med cpr.nr. og    |
|        | fast bopælsadresse i Danmark ved registrering i sygehusets |
|        | EPJ-system. Det er op til modtagersystemet at sikre, at    |
|        | **advis om sygehusophold kun indlæses og synliggøres på    |
|        | borgere, som modtager ydelser indenfor det gældende        |
|        | lovgrundlag**. Modtagersystemet har pligt til at slette    |
|        | øvrige adviser men at logge tekniske                       |
|        | meddelelseshændelsesmetadata.                              |
+--------+------------------------------------------------------------+
| R.BR2  | Modtagersystemet skal **afsende indlæggelsesrapport        |
|        | (XDIS16)**, når der er anmodet om dette i det modtagne     |
|        | advis jf. Regler vedr. afsendelse af forskellige typer af  |
|        | sygehusadviser                                             |
+--------+------------------------------------------------------------+
| R.BR3  | Det er op til modtagersystemet (og kunder), hvordan        |
|        | slutbrugeren **notificeres**/gøres opmærksom på modtagelse |
|        | af HospitalNotification.                                   |
|        |                                                            |
|        | Særligt vedr. rettelser: Modtagersystemet kan vælge at     |
|        | indlæse rettelser \[RE_XX\] uden notifikationer til        |
|        | brugeren, men brugeren skal -- ved øvrige adviser -- gøres |
|        | opmærksom på/notificeres om modtagelse af                  |
|        | HospitalNotification.                                      |
+--------+------------------------------------------------------------+



### Metode til use case-beskrivelser

Use casene er lavet ud fra <a href="https://www.kombit.dk/metodeh%C3%A5ndb%C3%B8ger" target="_blank">KOMBIT’s metodehåndbog for use cases</a>. Hver use case består af nedenstående elementer. Der er defineret både [forretningsmæssige](#forretningsmæssige-use-cases) og [tekniske](#tekniske-use-cases) use cases.

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