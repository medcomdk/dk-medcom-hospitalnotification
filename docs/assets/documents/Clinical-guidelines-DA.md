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
.tg  {border-collapse:collapse;border-spacing:0;max-width:80%;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-9xjr{background-color:#e2ecf5;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-1wig">Hændelse</th>
    <th class="tg-1wig">Kode * </th>
    <th class="tg-1wig">Navn på advis notifikation</th>
    <th class="tg-1wig">Gevinst</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-9xjr" colspan="4">Start ophold</td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Akut ambulant start</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">STAA</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">START sygehusophold - Akut ambulant</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Modtager informeres om at borger er registreret som ’akut ambulant’ påsygehuset. Specifik status giver mulighed for at modtagersystem kan opsætte regler forsystemhandlinger.</span><span style="background-color:white"></span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Indlagt</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">STIN</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">START sygehusophold - Indlagt</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Modtager informeres om at borger er registreret som ’indlagt’ påsygehuset. Specifik status giver mulighed for at modtagersystem kan opsætteregler for systemhandlinger.</span><span style="background-color:white"></span></td>
  </tr>
  <tr>
    <td class="tg-9xjr" colspan="4">   <br><span style="color:black">Slut ophold</span>   </td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Afsluttet til hjemmet</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">SLHJ</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">SLUT sygehusophold – Afsluttet til hjemmet/primær sektor</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Modtager informeres om, at borgeren afsluttes til hjemmet eller primærsektor. Giver mulighed for, at modtagersystem kan opsætte regler forsystemhandlinger, fx genoptagelse af ydelser. Anvendes ikke ved overflytning.</span><span style="background-color:white"></span></td>
  </tr>
  <tr>
    <td class="tg-9xjr" colspan="4">   <br><span style="color:black">Død</span>   </td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Patienten er død</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><br><span style="color:black">MORS</span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">DØD</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Modtager informeres om at borgeren er død. Anvendes både ved død vedankomst og ved død under sygehusophold. </span><span style="background-color:white"></span></td>
  </tr>
  <tr>
    <td class="tg-9xjr" colspan="4">   <br><span style="color:black">Orlov</span>   </td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Patienten starter orlov</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">STOR</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">START orlov</span><span style="background-color:white"></span></td>
    <td class="tg-0lax" rowspan="2"><span style="background-color:white"></span><br><span style="color:black">Information om aktuel orlov er nyttig når/hvis pårørende/borgeren selvhenvender sig under orloven. Behandlingsansvaret for patienter på orlov ersygehusets, og det skal meddeles særskilt, hvis andre aktører end sygehusetskal levere ydelser under patientens orlov.</span><span style="background-color:white"></span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Patienten slutter orlov</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">SLOR</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">SLUT orlov</span><span style="background-color:white"></span></td>
  </tr>
  <tr>
    <td class="tg-9xjr" colspan="4">   <br><span style="color:black">Annulleringer</span>   </td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Annullering</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">ANXX</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">ANNULLERET 'Navn på advisnotifikation'</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Annullering af tidligere afsendt advis. Anvendes ved forkert valg af sygehusophold eller forkert cpr. </span><span style="background-color:white"></span></td>
  </tr>
  <tr>
    <td class="tg-9xjr" colspan="4">   <br><span style="color:black">Rettelser</span>   </td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Rettelser</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">REXX</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">RETTET 'Navn på advisnotifikation’</span><span style="background-color:white"></span></td>
    <td class="tg-0lax"><span style="background-color:white"></span><br><span style="color:black">Retter indhold i tidligere afsendt advis, fxsygehusafdeling eller tidspunkt. </span> <span style="background-color:white"></span></td>
  </tr>
</tbody>
</table>

*repræsenterer [advis-koder beskrevet i oversigten](https://medcomdk.github.io/dk-medcom-hospitalnotification/assets/documents/Overview-HospitalNotification-codes-FHIR.html)

## Forretningsregler for anvendelse af ’Advis om sygehusophold’

Formålet med formulerede forretningsregler for anvendelse er, at parterne, som anvender advis, understøtter meddelelserne i overensstemmelse med behovet. Forretningsregler er et tillæg til den givne standard for ”Advis for sygehusophold’, som kan opdateres i takt med, at behovene ændrer sig. 

> Note: Private hospitaler kan også anvende sygehusadvis. 

1. Adviser genereres på basis af tidstro registrering i EPJ/PAS-systemet.

    Hvis der i PAS/EPJ anvendes fremtidige registreringer af planlagte kontakter, skal disse først udløse advis, når tidspunktet indtræffer, dvs. ved patientens fysiske fremmøde.

2. Slut sygehusophold (indlagt og akut ambulant) anvendes kun, når patienten afsluttes (til hjemmet/primær sektor) 

    Advis om ’SLUT sygehusophold’ må ikke anvendes ved overflytninger.

    > note: Hvis patienten selv varetager/er ansvarlig for transporten fra sygehus A til sygehus B, er det tilladt at sende advis af typen ’SLUT sygehusophold’. Den planlagte overflytning bør fremgå/være kommunikeret til modtageren i plejeforløbsplanen og/eller i en korrespondancemeddelelse.

3. Hvis en akut ambulant kontakt ændres til indlagt, sendes et nyt ’START sygehusophold - indlagt ’-advis.

    Der skal ikke sendes advis om ’SLUT sygehusophold’, når den akut ambulante kontakt ændres til indlagt. Advis om ’SLUT sygehusophold’ sendes først, når patienten derefter afsluttes (til hjem/primær sektor). 

4. Hvis en indlagt kontakt ændres til akut ambulant, sendes et nyt advis ’START sygehusophold – akut ambulant ’-advis. 

    Der skal ikke sendes advis om ’SLU sygehusophold’, når indlæggelsen ændres til at være akut ambulant. Advis om ’SLUT sygehusophold’ sendes først, når patienten derefter afsluttes (til hjem/primær sektor). Denne hændelse anses for sjælden.

5. Hvis patienten er erklæret død ved ankomst, erklæres død efter ankomst eller dør under sygehusopholdet sendes et advis af typen ’DØD’. 

    Advistypen ’DØD’ skal således anvendes i alle scenarier, hvor patienten er død eller dør. 

6. Hvis patienten registreres på orlov i EPJ, sendes advis, når patienten starter (’START orlov’) og slutter (’SLUT orlov’) sin orlov (til hjemmet)

    Orlovsadviser sendes udelukkende, når patienten registreres på orlov til hjemmet. Orlov ved dobbeltindlæggelser skal således ikke udløse orlovsadviser. Orlovsadviser skal ikke aktivere ydelser i kommunen uden anden aftale herom. 

    > Note: Orlov ved dobbeltindlæggelser kan være samtidig indlæggelse på psykiatrisk og somatisk afdeling. 

7. Hvis der er sket en fejlregistrering, som har udløst et fejlagtigt advis, skal der sendes en rettelse eller en annullering efter følgende principper:

    1. Hvis der er sendt advis pga. forkert indtastet cpr.nr. eller forkert valg af sygehusophold sendes **en annullering**.

    2. Hvis der er sendt et advis med forkert angivelse af sygehusafdeling, forkert tidspunkt for opholdet sendes **en rettelse**, dvs. et nyt korrekt advis, som erstatter tidligere advis. Der skal her ikke sendes en annullering før rettelsen. 

8. Der anvendes ikke specifikke overflytningsadviser. Der er krav om, at der sendes nyt advis med ’START sygehusophold’, fra det sygehus, patienten er flyttet til, hvad enten det er i samme region eller i en anden region. Der sendes ikke advis fra det sygehus, patienten overflyttes fra.

    > Note: Hvis patienten selv varetager/er ansvarlig for transporten fra sygehus A til sygehus B, er det tilladt at sende advis af typen ’SLUT sygehusophold’. Den planlagte overflytning bør fremgå/være kommunikeret til modtageren i plejeforløbsplanen og/eller i en korrespondancemeddelelse.

9. Udskrivning til hospice.
Flowet håndteres som overflytning til andet sygehus i samme eller anden region. Hospice afsender ’START sygehusophold - indlagt’-advis ved patientens ankomst.

## Use cases 
Til brug for den tekniske implementering af sygehusadvis findes detaljerede use case beskrivelser, som forbinder indholdsmæssige krav med den forretningsmæssige anvendelse for afsender og modtager af sygehusadvis. Use cases på [forsiden for advis om sygehusophold](../../index.md).

## Tekniske specifikationer for ‘Advis om sygehusophold’
FHIR-profil for ‘Advis om sygehusophold’ kan tilgås via link på [forsiden for advis om sygehusophold](../../index.md).

## Eksempel på ‘Advis om sygehusophold’
![Eksempel på, hvordan et advid om sygehus ophold kan se ud](../images/Example_HospitalNotification_DA)

> Note: Dette er et eksempel på, hvordan ’Advis om sygehusophold’ kunne se ud. I adviset vil ’Status sygehusophold’ angive hvilken hændelse, der har udløst adviseringen jf. 
