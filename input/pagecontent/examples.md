Examples
========

Below different flows of HospitalNotification messages can be seen. Each flow has references to the use cases it supports.

Use Case S1 and S.CORR: Admit patient, and update admission
-----------------------------------------------------------

Start hospital stay - admitted

[HospitalNotification Message - STIN](Bundle-a5e5b880-c087-4055-b9ec-99108695f81d.html)

Update Start hospital stay - admitted

[HospitalNotification Message - RE\_STIN](Bundle-bfab3e80-9584-11ec-b909-0242ac120002.html)

Use Case S1 and S.CANC: Admit patient, and cancel admission
-----------------------------------------------------------

Start hospital stay - admitted

[HospitalNotification Message - STIN](Bundle-a5e5b880-c087-4055-b9ec-99108695f81d.html)

Cancellation Start hospital stay - admitted

[HospitalNotification Message - AN\_STIN](Bundle-c83671a4-9584-11ec-b909-0242ac120002.html)

Use Case S1, S3 and S4: Admit patient, start leave and end leave period
-----------------------------------------------------------------------

Start hospital stay - admitted

[HospitalNotification Message - STIN](Bundle-a5e5b880-c087-4055-b9ec-99108695f81d.html)

Start leave

[HospitalNotification Message - STOR](Bundle-d3128d9b-cede-4c7f-8904-809eab322d7d.html)

End leave

[HospitalNotification Message - SLOR](Bundle-e94de8ee-bd94-475e-b454-b8fbbef8a685.html)

Use Case S1 and S6: Admit patient and discharge patient
-------------------------------------------------------

Start hospital stay - admitted

[HospitalNotification Message - STIN](Bundle-a5e5b880-c087-4055-b9ec-99108695f81d.html)

End hospital stay - patient completed to home/primary sector (inpatient)

[HospitalNotification Message - SLHJ (inpatient)](Bundle-f4aa42a4-86db-4e68-9b38-9dda0dfd5774.html)

Use Case S1 and S7: Admit patient, patient dies during admission
----------------------------------------------------------------

Start hospital stay - admitted

[HospitalNotification Message - STIN](Bundle-a5e5b880-c087-4055-b9ec-99108695f81d.html)

Deceased (inpatient)

[HospitalNotification Message - MORS (inpatient)](Bundle-g099bbf3-3fca-4722-a248-bfe1aa956410.html)

Use Case S2 and S6: Admit acute ambulant patient and discharge patient
----------------------------------------------------------------------

Start hospital stay - acute ambulant

[HospitalNotification Message - STAA](Bundle-h1c8e4a8-6b45-4669-94ad-2a99ad96bf03.html)

End hospital stay - patient completed to home/primary sector (acute ambulant)

[HospitalNotification Message - SLHJ (acute ambulant)](Bundle-kcab461b-f44e-4d97-a041-ef7e64800587.html)

Use Case S2 and S7: Admit acute ambulant patient and patient dies during admission
----------------------------------------------------------------------------------

Start hospital stay - acute ambulant

[HospitalNotification Message - STAA](Bundle-h1c8e4a8-6b45-4669-94ad-2a99ad96bf03.html)

Deceased (acute ambulant)

[HospitalNotification Message - MORS (acute ambulant)](Bundle-ld31e08a-b91f-49c3-841a-ce80e6380517.html)

Use Case S1: Admit patient, where the message has different sender and serviceprovider
--------------------------------------------------------------------------------------

Admit inpatient

[HospitalNotification Message - STIN (different sender and serviceProvider)](Bundle-m908i967-9ie3-9023-b9ec-98108695f01d.html)

Use Case S1: Admit patient, where the message has two episodeOfCare-identifiers
-------------------------------------------------------------------------------

Admit inpatient

[HospitalNotification Message - STIN (with two episodeOfCare-identifiers)](Bundle-n73ccf30-80b9-4bd2-bf50-1ac1914498f0.html)