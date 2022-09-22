Below is an XML example of a HospitalNotification message, including the same content as the 'Message 1: Admit inpatient' in <a href="#Fig2" rel="noopener noreferrer"> Figure 2 </a>. As mentioned, all profiles must be referenced from the entry element in the MedComHospitalNotificationMessage, which can be seen in the example. 

Comments are added in the example that indicate the beginning of a profile or describe the content of the element. All comments are presented in the following way.
<br><br>
``` xml 
<!-- TEXT--> 
``` 
**Eaxmple of 'Message 1: Admit inpatient'**
``` xml
<!--MedComHospitalNotificationMessage = Bundle begins here-->
<Bundle xmlns="http://hl7.org/fhir">
  <id value="a5e5b880-c087-4055-b9ec-99108695f81d"/>
  <meta>
    <profile
            value="http://medcomfhir.dk/fhir/hospitalnotification/StructureDefinition/medcom-hospitalNotification-message"/>
  </meta>
  <type value="message"/> <!--Indicates that this is a message-->
  <timestamp value="2020-10-15T13:44:14Z"/> <!--When the message was created-->
  <!--MedComHospitalNotificationMessageHeader = MessageHeader begins here.-->
  <entry>
    <fullUrl value="MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc7b5404"/>
    <resource>
      <MessageHeader>
        <id value="b9b4818e-02de-4cc4-b418-d20cbc7b5404"/>
        <meta>
          <profile
                  value="http://medcomfhir.dk/fhir/hospitalnotification/StructureDefinition/medcom-hospitalNotification-messageHeader"/>
        </meta>
        <text> <!--Narrative text-->
          <status value="extensions"/>
          <div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative</b></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource "b9b4818e-02de-4cc4-b418-d20cbc7b5404" </p><p style="margin-bottom: 0px">Profile: <a href="StructureDefinition-medcom-hospitalNotification-messageHeader.html">MedComHospitalNotificationMessageHeader</a></p></div><p><b>MedComReportOfAdmissionExtension</b>: false</p><p><b>event</b>: Hospital Notification Message (Details: http://medcomfhir.dk/fhir/messaging/CodeSystem/medcom-messaging-eventCodes code hospital-notification-message = 'Hospital Notification Message', stated as 'null')</p><h3>Destinations</h3><table class="grid"><tr><td>-</td><td><b>Extension</b></td><td><b>Endpoint</b></td><td><b>Receiver</b></td></tr><tr><td>*</td><td></td><td><a href="http://medcom.dk/unknown">http://medcom.dk/unknown</a></td><td><a href="#Organization_o4cdf292-abf3-4f5f-80ea-60a48013ff6d">See above (Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d)</a></td></tr></table><p><b>sender</b>: <a href="#Organization_o7056980-a8b2-42aa-8a0e-c1fc85d1f40d">See above (Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)</a></p><h3>Sources</h3><table class="grid"><tr><td>-</td><td><b>Endpoint</b></td></tr><tr><td>*</td><td><a href="http://medcom.dk/unknown">http://medcom.dk/unknown</a></td></tr></table><p><b>focus</b>: <a href="#Encounter_a790f964-88d3-4652-bbc8-81d2f3d035f8">See above (Encounter/a790f964-88d3-4652-bbc8-81d2f3d035f8)</a></p></div>
        </text>
        <extension
                  url="http://medcomfhir.dk/fhir/hospitalnotification/StructureDefinition/medcom-messaging-reportOfAdmissionExtension">
          <valueBoolean value="false"/> <!--No report of admission (Danish: indlæggelsesrapport) shall be returned-->
        </extension>
        <eventCoding>
          <system
                  value="http://medcomfhir.dk/fhir/messaging/CodeSystem/medcom-messaging-eventCodes"/>
          <code value="hospital-notification-message"/> <!--Type of message-->
        </eventCoding>
        <destination>
          <extension
                    url="http://medcomfhir.dk/fhir/messaging/StructureDefinition/medcom-messaging-destinationUseExtension">
            <valueCoding>
              <system
                      value="http://medcomfhir.dk/fhir/messaging/CodeSystem/medcom-messaging-destinationUse"/>
              <code value="primary"/>
            </valueCoding>
          </extension>
          <endpoint value="http://medcom.dk/unknown"/>
          <receiver>
            <reference value="Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"/> <!--Receiver organization-->
          </receiver>
        </destination>
        <sender>
          <reference value="Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"/> <!--Sender organization-->
        </sender>
        <source>
          <endpoint value="http://medcom.dk/unknown"/>
        </source>
        <focus>
          <reference value="Encounter/a790f964-88d3-4652-bbc8-81d2f3d035f8"/> <!--Focus of the message-->
        </focus>
      </MessageHeader>
    </resource>
  </entry>
  <!--MedComCorePatient = Patient begins here-->
  <entry>
    <fullUrl value="Patient/t33cef33-3626-422b-955d-d506aaa65fe1"/>
    <resource>
      <Patient>
        <id value="t33cef33-3626-422b-955d-d506aaa65fe1"/>
        <meta>
          <profile
                   value="http://medcomfhir.dk/fhir/dk-medcom-core/StructureDefinition/medcom-core-patient"/>
        </meta>
        <text>
          <status value="generated"/>
          <div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative</b></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource "t33cef33-3626-422b-955d-d506aaa65fe1" </p><p style="margin-bottom: 0px">Profile: <a href="https://build.fhir.org/ig/hl7dk/dk-medcom-core//StructureDefinition-medcom-core-patient.html">MedComCorePatient</a></p></div><p><b>identifier</b>: id: 0102030405</p><p><b>name</b>: Eric Flame (OFFICIAL)</p><p><b>telecom</b>: ph: 12345678(MOBILE)</p><p><b>address</b>: Flammesvinget 1 Aarhus 8000 C </p></div>
        </text>
        <identifier>
          <system value="urn:oid:1.2.208.176.1.2"/>
          <value value="0102030405"/> <!--CPR-number-->
        </identifier>
        <name>
          <use value="official"/> <!--Offical name-->
          <family value="Flame"/>
          <given value="Eric"/>
        </name>
        <telecom>
          <system value="phone"/> <!--Contact information-->
          <value value="12345678"/>
          <use value="mobile"/>
        </telecom>
        <address>
          <line value="Flammesvinget 1"/> <!--Address-->
          <city value="Aarhus"/>
          <postalCode value="8000 C"/>
        </address>
      </Patient>
    </resource>
  </entry>
<!--  MedComHospitalNotificationEncounter = Encounter, Focus of the message begins here.-->  
  <entry>
    <fullUrl value="Encounter/a790f964-88d3-4652-bbc8-81d2f3d035f8"/>
    <resource>
      <Encounter>
        <id value="a790f964-88d3-4652-bbc8-81d2f3d035f8"/>
        <meta>
          <profile
                   value="http://medcomfhir.dk/fhir/hospitalnotification/StructureDefinition/medcom-hospitalNotification-encounter"/>
        </meta>
        <text>
          <status value="generated"/>
          <div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative</b></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource "a790f964-88d3-4652-bbc8-81d2f3d035f8" </p><p style="margin-bottom: 0px">Profile: <a href="StructureDefinition-medcom-hospitalNotification-encounter.html">MedComHospitalNotificationEncounter</a></p></div><p><b>identifier</b>: id: 1234567890</p><p><b>status</b>: in-progress</p><p><b>class</b>: inpatient encounter (Details: http://terminology.hl7.org/CodeSystem/v3-ActCode code IMP = 'inpatient encounter', stated as 'null')</p><p><b>subject</b>: <a href="#Patient_t33cef33-3626-422b-955d-d506aaa65fe1">See above (Patient/t33cef33-3626-422b-955d-d506aaa65fe1)</a></p><p><b>episodeOfCare</b>: <span></span></p><p><b>period</b>: 2020-10-15 01:44:14+0000 --&gt; (ongoing)</p><p><b>serviceProvider</b>: <a href="#Organization_of839e87-4e44-4977-b38e-92b5a6f187b5">See above (Organization/of839e87-4e44-4977-b38e-92b5a6f187b5)</a></p></div>
        </text>
        <identifier>
          <value value="1234567890"/>
        </identifier>
        <status value="in-progress"/> <!--The Encounter has begun and the patient is present-->
        <class>
          <system value="http://terminology.hl7.org/CodeSystem/v3-ActCode"/>
          <code value="IMP"/> <!--inpatient hospitalization-->
        </class>
        <subject>
          <reference value="Patient/t33cef33-3626-422b-955d-d506aaa65fe1"/> <!--The Patient-->
        </subject>
        <episodeOfCare>
          <identifier>
            <system
                    value="https://www.esundhed.dk/Registre/Landspatientsregisteret"/>
            <value value="87654321-1234-1234-1234-123456789012"/> <!--LPR3 identifier-->
          </identifier>
        </episodeOfCare>
        <period>
          <start value="2020-10-15T13:44:14Z"/> <!--Start of the encounter-->
        </period>
        <serviceProvider>
          <reference value="Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"/> <!--ServiceProvider organization-->
        </serviceProvider>
      </Encounter>
    </resource>
  </entry>
<!--  MedComMessagingOrganization = Organization, Receiver of the message, begins here. -->
  <entry>
    <fullUrl value="Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"/>
    <resource>
      <Organization>
        <id value="o4cdf292-abf3-4f5f-80ea-60a48013ff6d"/>
        <meta>
          <profile
                   value="http://medcomfhir.dk/fhir/messaging/StructureDefinition/medcom-messaging-organization"/>
        </meta>
        <text>
          <status value="generated"/>
          <div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative</b></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource "o4cdf292-abf3-4f5f-80ea-60a48013ff6d" </p><p style="margin-bottom: 0px">Profile: <a href="https://build.fhir.org/ig/hl7dk/dk-medcom-messaging//StructureDefinition-medcom-messaging-organization.html">MedComMessagingOrganization</a></p></div><p><b>identifier</b>: id: 5798006611867, id: 942231000016003</p><p><b>name</b>: Receiver Organization</p></div>
        </text>
        <identifier>
          <system value="https://www.gs1.org/gln"/>
          <value value="5798006611867"/>  <!--EAN/GLN-identifier-->
        </identifier>
        <identifier>
          <system value="urn:oid:1.2.208.176.1.1"/>
          <value value="942231000016003"/>  <!--SOR-code-->
        </identifier>
        <name value="Receiver Organization"/>
      </Organization>
    </resource>
  </entry>
<!--  MedComMessagingOrganization = Organization, Sender of the message, begins here. -->
  <entry>
    <fullUrl value="Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"/>
    <resource>
      <Organization>
        <id value="o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"/>
        <meta>
          <profile
                   value="http://medcomfhir.dk/fhir/messaging/StructureDefinition/medcom-messaging-organization"/>
        </meta>
        <text>
          <status value="generated"/>
          <div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative</b></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource "o7056980-a8b2-42aa-8a0e-c1fc85d1f40d" </p><p style="margin-bottom: 0px">Profile: <a href="https://build.fhir.org/ig/hl7dk/dk-medcom-messaging//StructureDefinition-medcom-messaging-organization.html">MedComMessagingOrganization</a></p></div><p><b>identifier</b>: id: 5798002572049, id: 8071000016009</p><p><b>name</b>: Sender Organization</p></div>
        </text>
        <identifier>
          <system value="https://www.gs1.org/gln"/>
          <value value="5798002572049"/> <!--EAN/GLN-identifier-->
        </identifier>
        <identifier>
          <system value="urn:oid:1.2.208.176.1.1"/>
          <value value="8071000016009"/> <!--SOR-code-->
        </identifier>
        <name value="Sender Organization"/>
      </Organization>
    </resource>
  </entry>
  <!--  MedComCoreOrganization = Organization, ServiceProvider, begins here. -->
  <entry>
    <fullUrl value="Organization/of839e87-4e44-4977-b38e-92b5a6f187b5"/>
    <resource>
      <Organization>
        <id value="of839e87-4e44-4977-b38e-92b5a6f187b5"/>
        <meta>
          <profile
                   value="http://medcomfhir.dk/fhir/messaging/StructureDefinition/medcom-messaging-organization"/>
        </meta>
        <text>
          <status value="generated"/>
          <div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative</b></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource "of839e87-4e44-4977-b38e-92b5a6f187b5" </p><p style="margin-bottom: 0px">Profile: <a href="https://build.fhir.org/ig/hl7dk/dk-medcom-messaging//StructureDefinition-medcom-messaging-organization.html">MedComMessagingOrganization</a></p></div><p><b>identifier</b>id: 8071000016009</p></div>
        </text>
        <identifier>
          <system value="urn:oid:1.2.208.176.1.1"/>  
          <value value="8071000016009"/> <!--SOR-code-->
        </identifier>
      </Organization>
    </resource>
  </entry>
<!--  MedComMessagingProvenance = Provenance begins here-->  
  <entry>
    <fullUrl value="Provenance/a7cf3888-6f42-4e4d-929c-d2475d24fba0"/>
    <resource>
      <Provenance>
        <id value="a7cf3888-6f42-4e4d-929c-d2475d24fba0"/>
        <meta>
          <profile
                   value="http://medcomfhir.dk/fhir/messaging/StructureDefinition/medcom-messaging-provenance"/>
        </meta>
        <text>
          <status value="generated"/>
          <div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative</b></p><div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%"><p style="margin-bottom: 0px">Resource "a7cf3888-6f42-4e4d-929c-d2475d24fba0" </p><p style="margin-bottom: 0px">Profile: <a href="https://build.fhir.org/ig/hl7dk/dk-medcom-messaging//StructureDefinition-medcom-messaging-provenance.html">MedComMessagingProvenance</a></p></div><p><b>target</b>: <a href="#MessageHeader_b9b4818e-02de-4cc4-b418-d20cbc7b5404">See above (MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc7b5404)</a></p><p><b>occurred</b>: 2020-10-15 01:44:14+0000</p><p><b>recorded</b>: Oct 15, 2020, 1:45:15 PM</p><p><b>activity</b>: Start hospital stay-admission <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki"> (<a href="https://build.fhir.org/ig/hl7dk/dk-medcom-messaging//CodeSystem-medcom-messaging-activityCodes.html">MedComMessagingActivityCodes</a>#admit-inpatient)</span></p><h3>Agents</h3><table class="grid"><tr><td>-</td><td><b>Who</b></td></tr><tr><td>*</td><td><a href="#Organization_o7056980-a8b2-42aa-8a0e-c1fc85d1f40d">See above (Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)</a></td></tr></table></div>
        </text>
        <target>
          <reference value="MessageHeader/b9b4818e-02de-4cc4-b418-d20cbc7b5404"/> <!--References the MessageHeader of this message-->
        </target>
        <occurredDateTime value="2020-10-15T13:44:14Z"/>
        <recorded value="2020-10-15T13:45:15Z"/>
        <activity>
          <coding>
            <system
                    value="http://medcomfhir.dk/fhir/messaging/CodeSystem/medcom-messaging-activityCodes"/>
            <code value="admit-inpatient"/> <!--Activity of the message-->
          </coding>
        </activity>
        <agent>
          <who>
            <reference value="Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"/> <!--Sender Organization-->
          </who>
        </agent>
      </Provenance>
    </resource>
  </entry>
</Bundle> 
```
<br>