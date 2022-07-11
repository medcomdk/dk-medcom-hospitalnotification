# Sundhedsfaglige retningslinjer

  * [Introduktion](#introduktion)
  * [Formål](#form-l)
  * [Baggrund](#baggrund)
  * [Lovgrundlag](#lovgrundlag)
- [Krav til indhold og gevinster ved ‘Advis om sygehusophold’](#krav-til-indhold-og-gevinster-ved--advis-om-sygehusophold-)
- [Forretningsregler for anvendelse af ’Advis om sygehusophold’](#forretningsregler-for-anvendelse-af--advis-om-sygehusophold-)
  * [Use cases](#use-cases)
  * [Tekniske specifikationer for ‘Advis om sygehusophold’](#tekniske-specifikationer-for--advis-om-sygehusophold-)
  * [Eksempel på ‘Advis om sygehusophold’](#eksempel-p---advis-om-sygehusophold-)

## Introduktion 
Dette er den tekstuelle del af dokumentationen til MedComs FHIR-standard ’Advis om sygehusophold’. Den indeholder formål, baggrund og overordnede krav til indhold og forretningsmæssig anvendelse af ’Advis om sygehusophold’. Målgruppen er it-systemleverandører, og implementeringsansvarlige i regioner og kommuner, som skal it-understøtte afsendelse og modtagelse af ‘Advis om sygehusophold’. Krav til indhold og forretningsmæssig anvendelse af Advis om sygehusophold er udarbejdet i samarbejde med MedComs <a href="https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Hjemmepleje-sygehusgruppe" target="_blank">hjemmepleje-sygehusgruppe</a> og <a href="https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Kommune-Sygehusleverand%C3%B8rgruppen" target="_blank">kommune-sygehusleverandørgruppe</a> i MedCom11 perioden 2018-2020. Advis om sygehusophold erstatter de tidligere MedCom standarder indlæggelsesadvis <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/EDI/Dokumentation/" target="_blank">DIS20 </a> / <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS20/Dokumentation/" target="_blank">XDIS20</a>, og udskrivningsadvis <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/EDI/Dokumentation/" target="_blank">DIS17</a> / <a href="https://svn.medcom.dk/svn/releases/Standarder/Det%20gode%20kommuneadvis/XDIS17/Dokumentation/" target="_blank">XDIS17</a>.Nærværende dokument findes også i engelsk udgave.

> Note: I tilfælde af uoverensstemmelser mellem det danske og det engelske dokument, er det danske dokument det gældende dokument)

De tekniske specifikationer kan findes på [forsiden for advis om sygehusophold](../../index.md).  

## Formål

Advis om sygehusophold medvirker til at sikre grundlaget for et sammenhængende patientforløb over sektorgrænser. Det specifikke formål med ‘Advis om sygehusophold’ er at informere borgerens aktuelle omsorgs- og sundhedsaktører i primær sektor om start og sluttidspunkt for borgerens ophold på et sygehus. Det giver mulighed for at pausere aktuelle ydelser under sygehusopholdet og igangsætte, når det ophører. Samtidigt kan ‘Advis om sygehusophold’ trigge automatisk afsendelse af en indlæggelsesrapport (<a href="https://svn.medcom.dk/svn/releases/Standarder/National%20Sygehus-Kommunesamarbejde/1.0.3/XDIS16/Dokumentation/" target="_blank">XDIS16</a>) fra modtagers system, som giver sygehuspersonalet et overblik over borgerens aktuelle ydelser, funktionsniveau og sundhedsfaglige problemer. Advis om sygehusophold indeholder derudover advis om patientens orlov fra sygehusophold, samt akut ambulant sygehusophold. 

## Baggrund 
Da sygehuset ikke på forhånd kan afgøre hvilke borgere, der aktuelt modtager ydelser fra primær sektor, dannes ‘Advis om sygehusophold’ på alle borgere med cpr. nr. og fast bopælsadresse i Danmark ved registrering i sygehusets EPJ-system. Modtagersystemet sikrer, at ‘Advis om sygehusophold’ kun indlæses og synliggøres på borgere, som modtager ydelser indenfor det gældende [lovgrundlag](#lovgrundlag). 

Registrering af sygehusophold i EPJ-systemet har sammenhæng til indberetning til landspatientregisteret, LPR. Ved overgang til LPR3 (2019) er begreberne indlagt og ambulant ophævet i indberetningen til LPR, og erstattet af fysisk fremmøde. I praksis fortsætter alle regioner med registrering af sygehusophold som hhv. ambulant og indlagt. Det er aftalt mellem parterne bag udvikling af moderniseret sygehusadvis, at rammen for de sygehusophold, som skal advis understøttes, er:

*”Alle akutte sygehusophold med patientens fysiske fremmøde, samt alle planlagte sygehusophold med patientens fysiske fremmøde mhp. Indlæggelse”.*

## Lovgrundlag

Adviser om sygehusophold udveksles med baggrund i Sundhedsloven og Retssikkerhedslovens §12c:

*”Til brug for tilrettelæggelsen af omsorgsopgaver m.v. efter § 79 a, kapitel 16 og §§ 107 og 108 i lov om social service og sundhedsloven samt til brug for opfølgning af sager efter §§ 8-10 i lov om sygedagpenge kan kommunalbestyrelser og sygehuse udveksle oplysninger om indlæggelse på og udskrivning fra sygehuse af borgere i kommunen og om borgerens akutte sygehusophold, hvor borgeren opholder sig på sygehuset til vurdering og behandling uden at være indlagt. Udvekslingen kan ske automatisk og uden borgerens samtykke.”*                                                     
Fra Retssikkerhedsloven 12c LBK nr. 265 af 25/02/2022

Servicelovens §79 a omfatter *forebyggende hjemmebesøg*, kapitel 16 indeholder §§ 83-99, som omfatter *personlig hjælp, omsorg og pleje samt plejetestamenter,* og §§ 107 og 108 omfatter *midlertidige og længerevarende botilbud*. 

## Krav til indhold og gevinster ved ‘Advis om sygehusophold’
’Advis om sygehusophold’ skal indeholde:

1. Patientens cpr.nr 
2. Tidspunkt og klokkeslæt for start/slut af sygehusophold
3. Navn på sygehusafdeling/afsnit og sygehus
4. Angivelse af, om adviset skal trigge en indlæggelsesrapport fra modtager af advis
5. Angivelse af, hvortil indlæggelsesrapport skal sendes
6. Status for sygehusophold (jf. Tabel 1). 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-p3tq{border-color:inherit;color:#2c415c;text-align:left;vertical-align:top}
.tg .tg-uwa6{background-color:#9dbad7;border-color:inherit;color:#333333;text-align:left;vertical-align:top}
.tg .tg-i91a{border-color:inherit;color:#333333;text-align:left;vertical-align:top}
</style>
<table class="tg">
<caption style="color:#2c415c;
  font-weight:bold"> Tabel 1: Status for sygehusophold</caption>
<thead>
  <tr>
    <th class="tg-p3tq"><span style="font-weight:bold">Hændelse</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Kode *</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Navn på advis notifikation</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Gevinst</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-uwa6" colspan="4"><span style="font-weight:bold">Start ophold</span></td>
  </tr>
  <tr>
    <td class="tg-i91a"><br>Akut ambulant start</td>
    <td class="tg-i91a"><br>STAA</td>
    <td class="tg-i91a"><br>START sygehusophold - Akut ambulant</td>
    <td class="tg-i91a"><br>Modtager informeres om at borger er registreret som ’akut ambulant’ påsygehuset. Specifik status giver mulighed for at modtagersystem kan opsætte regler forsystemhandlinger.</td>
  </tr>
  <tr>
    <td class="tg-i91a"><br>Indlagt</td>
    <td class="tg-i91a"><br>STIN</td>
    <td class="tg-i91a"><br>START sygehusophold - Indlagt</td>
    <td class="tg-i91a"><br>Modtager informeres om at borger er registreret som ’indlagt’ påsygehuset. Specifik status giver mulighed for at modtagersystem kan opsætteregler for systemhandlinger.</td>
  </tr>
  <tr>
    <td class="tg-uwa6" colspan="4">Slut ophold</td>
  </tr>
  <tr>
    <td class="tg-i91a"><br>Afsluttet til hjemmet</td>
    <td class="tg-i91a"><br>SLHJ</td>
    <td class="tg-i91a"><br>SLUT sygehusophold – Afsluttet til hjemmet/primær sektor</td>
    <td class="tg-i91a"><br>Modtager informeres om, at borgeren afsluttes til hjemmet eller primærsektor. Giver mulighed for, at modtagersystem kan opsætte regler forsystemhandlinger, fx genoptagelse af ydelser. Anvendes ikke ved overflytning.</td>
  </tr>
  <tr>
    <td class="tg-uwa6" colspan="4">Død</td>
  </tr>
  <tr>
    <td class="tg-i91a"><br>Patienten er død</td>
    <td class="tg-i91a">MORS</td>
    <td class="tg-i91a"><br>DØD</td>
    <td class="tg-i91a"><br>Modtager informeres om at borgeren er død. Anvendes både ved død vedankomst og ved død under sygehusophold.</td>
  </tr>
  <tr>
    <td class="tg-uwa6" colspan="4">Orlov</td>
  </tr>
  <tr>
    <td class="tg-i91a"><br>Patienten starter orlov</td>
    <td class="tg-i91a"><br>STOR</td>
    <td class="tg-i91a"><br>START orlov</td>
    <td class="tg-i91a" rowspan="2"><br>Information om aktuel orlov er nyttig når/hvis pårørende/borgeren selvhenvender sig under orloven. Behandlingsansvaret for patienter på orlov ersygehusets, og det skal meddeles særskilt, hvis andre aktører end sygehusetskal levere ydelser under patientens orlov.</td>
  </tr>
  <tr>
    <td class="tg-i91a"><br>Patienten slutter orlov</td>
    <td class="tg-i91a"><br>SLOR</td>
    <td class="tg-i91a"><br>SLUT orlov</td>
  </tr>
  <tr>
    <td class="tg-uwa6" colspan="4">Annulleringer</td>
  </tr>
  <tr>
    <td class="tg-i91a"><br>Annullering</td>
    <td class="tg-i91a"><br>ANXX</td>
    <td class="tg-i91a"><br>ANNULLERET 'Navn på advisnotifikation'</td>
    <td class="tg-i91a"><br>Annullering af tidligere afsendt advis. Anvendes ved forkert valg af sygehusophold eller forkert cpr.</td>
  </tr>
  <tr>
    <td class="tg-uwa6" colspan="4">Rettelser</td>
  </tr>
  <tr>
    <td class="tg-i91a"><br>Rettelser</td>
    <td class="tg-i91a"><br>REXX</td>
    <td class="tg-i91a"><br>RETTET 'Navn på advisnotifikation’</td>
    <td class="tg-i91a"><br>Retter indhold i tidligere afsendt advis, fxsygehusafdeling eller tidspunkt.</td>
  </tr>
</tbody>
</table>

*repræsenterer [advis-koder beskrevet i oversigten](https://medcomdk.github.io/dk-medcom-hospitalnotification/assets/documents/Overview-HospitalNotification-codes-FHIR.html)

## Forretningsregler for anvendelse af ’Advis om sygehusophold’

Formålet med formulerede forretningsregler for anvendelse er, at parterne, som anvender advis, understøtter meddelelserne i overensstemmelse med behovet. Forretningsregler er et tillæg til den givne standard for ”Advis for sygehusophold’, som kan opdateres i takt med, at behovene ændrer sig. 

> Note: Private hospitaler kan også anvende sygehusadvis. 

1. **Adviser genereres på basis af tidstro registrering i EPJ/PAS-systemet.**
    Hvis der i PAS/EPJ anvendes fremtidige registreringer af planlagte kontakter, skal disse først udløse advis, når tidspunktet indtræffer, dvs. ved patientens fysiske fremmøde.

2. **Slut sygehusophold (indlagt og akut ambulant) anvendes kun, når patienten afsluttes (til hjemmet/primær sektor)** 
    Advis om ’SLUT sygehusophold’ må ikke anvendes ved overflytninger.

    > note: Hvis patienten selv varetager/er ansvarlig for transporten fra sygehus A til sygehus B, er det tilladt at sende advis af typen ’SLUT sygehusophold’. Den planlagte overflytning bør fremgå/være kommunikeret til modtageren i plejeforløbsplanen og/eller i en korrespondancemeddelelse.

3. **Hvis en akut ambulant kontakt ændres til indlagt, sendes et nyt ’START sygehusophold - indlagt ’-advis.**
    Der skal ikke sendes advis om ’SLUT sygehusophold’, når den akut ambulante kontakt ændres til indlagt. Advis om ’SLUT sygehusophold’ sendes først, når patienten derefter afsluttes (til hjem/primær sektor). 

4. **Hvis en indlagt kontakt ændres til akut ambulant, sendes et nyt advis ’START sygehusophold – akut ambulant ’-advis.** 
    Der skal ikke sendes advis om ’SLU sygehusophold’, når indlæggelsen ændres til at være akut ambulant. Advis om ’SLUT sygehusophold’ sendes først, når patienten derefter afsluttes (til hjem/primær sektor). Denne hændelse anses for sjælden.

5. **Hvis patienten er erklæret død ved ankomst, erklæres død efter ankomst eller dør under sygehusopholdet sendes et advis af typen ’DØD’.**
    Advistypen ’DØD’ skal således anvendes i alle scenarier, hvor patienten er død eller dør. 

6. **Hvis patienten registreres på orlov i EPJ, sendes advis, når patienten starter (’START orlov’) og slutter (’SLUT orlov’) sin orlov (til hjemmet)**
    Orlovsadviser sendes udelukkende, når patienten registreres på orlov til hjemmet. Orlov ved dobbeltindlæggelser skal således ikke udløse orlovsadviser. Orlovsadviser skal ikke aktivere ydelser i kommunen uden anden aftale herom. 

    > Note: Orlov ved dobbeltindlæggelser kan være samtidig indlæggelse på psykiatrisk og somatisk afdeling. 

7. **Hvis der er sket en fejlregistrering, som har udløst et fejlagtigt advis, skal der sendes en rettelse eller en annullering efter følgende principper:**
    1. Hvis der er sendt advis pga. forkert indtastet cpr.nr. eller forkert valg af sygehusophold sendes **en annullering**.

    2. Hvis der er sendt et advis med forkert angivelse af sygehusafdeling, forkert tidspunkt for opholdet sendes **en rettelse**, dvs. et nyt korrekt advis, som erstatter tidligere advis. Der skal her ikke sendes en annullering før rettelsen. 

8. **Der anvendes ikke specifikke overflytningsadviser. Der er krav om, at der sendes nyt advis med ’START sygehusophold’, fra det sygehus, patienten er flyttet til, hvad enten det er i samme region eller i en anden region. Der sendes ikke advis fra det sygehus, patienten overflyttes fra.**

    > Note: Hvis patienten selv varetager/er ansvarlig for transporten fra sygehus A til sygehus B, er det tilladt at sende advis af typen ’SLUT sygehusophold’. Den planlagte overflytning bør fremgå/være kommunikeret til modtageren i plejeforløbsplanen og/eller i en korrespondancemeddelelse.

9. **Udskrivning til hospice.**
Flowet håndteres som overflytning til andet sygehus i samme eller anden region. Hospice afsender ’START sygehusophold - indlagt’-advis ved patientens ankomst.
<p>&nbsp;</p>

## Use cases 
Til brug for den tekniske implementering af sygehusadvis findes detaljerede use case beskrivelser, som forbinder indholdsmæssige krav med den forretningsmæssige anvendelse for afsender og modtager af sygehusadvis. Use cases på [forsiden for advis om sygehusophold](../../index.md).

## Tekniske specifikationer for ‘Advis om sygehusophold’
FHIR-profil for ‘Advis om sygehusophold’ kan tilgås via link på [forsiden for advis om sygehusophold](../../index.md).

## Eksempel på ‘Advis om sygehusophold’
![Eksempel på, hvordan et advid om sygehus ophold kan se ud](../images/Example_HospitalNotification_DA.png)

> Note: Dette er et eksempel på, hvordan ’Advis om sygehusophold’ kunne se ud. I adviset vil ’Status sygehusophold’ angive hvilken hændelse, der har udløst adviseringen jf. 
