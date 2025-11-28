Profile: MedComEkgRecordingDocumentReference
Parent: MedComContainedDocumentReference
Id: medcom-ekg-recording-documentreference
Description: "A profile for the MedCom Profile: MedComEkgRecordingDocumentReference resource."
//* type from $PlrTypeCode (required) //RCH Hvorfor har den sit eget valuesæt i stedet for at være bundet til en bestemt værdi direkte?
* type.coding
* type.coding.system = $loinc (exactly) //RCH: OBS: Disse linjer er også kopieret til Composition.
* type.coding.code = #11524-6 (exactly)
* type.coding.display = "EKG Study" (exactly) //RCH: Skal denne være med? Det er jo bare en display value
//* type = $loinc#24412-3 "ECG, electrocardiagram" //RC: Hvad er kravene til type? Jeg har valgt kode fra den binding der er lavet.
* category from $ClassCodeVS (required) //Er det korrekt at man binder til valuesettet her, og så sætter systemet sådan som i linjen under?
* category.coding.system = $ClassCodeCS
* category.coding.code = #001 (exactly)
//* content.attachment.contentType from $ContentTypeCS (required)
//* content.attachment.language from $Language (required)
* content.format from $PlrFormatCode (required) //RCH: Samme kommentar som til type
//* content.attachment.contentType from $PlrContentType
//* context.event from $PcaEventCode (required)
//* context.facilityType from $ApdFacilityType (required)
//* context.practiceSetting from $ApdPracticeSetting (required)
* extension.valueCoding from $PlrHomeCommunityID (required) //RCH: Samme kommentar som til type
* extension.valueString = "1.0.0"
* content.attachment.url = "Elektrokardiogram-12-aflednings"

// Metadata instance
/* Instance: 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
InstanceOf: MedComDocumentReference
Title: "DocumentReference instance"
Description: "DocumentReference instance"
//* contained[+] = 1fcad31f-8967-4f49-b6af-7e64082e8fec //RCH: These instances are in the ConditionList examples
//* contained[+] = fd3206c6-c265-49f9-82c3-8b4c96280403
//* contained[+] = 69e475df-20c8-4f54-8cea-9843568205fd
* masterIdentifier.value = "urn:uuid:bf1bb63b-d405-4dfe-9810-37b16b333a01"
* status = #current "Current"
* identifier.value = "urn:uuid:7c596b9a-112e-4386-ae71-5ecdd3ed7c50"
* type = $LoincOID#11450-4 "Problem list - Reported"
* authenticator = Reference(1fcad31f-8967-4f49-b6af-7e64082e8fec)
* category = $DanishiheOID#001 "Klinisk rapport"
* author[institution] = Reference(fd3206c6-c265-49f9-82c3-8b4c96280403)
* subject = Reference(69e475df-20c8-4f54-8cea-9843568205fd)
* content.attachment.contentType = $IANAMediaOID#application/fhir+json "MimeType-application/fhir+json"
* securityLabel = #N
* content.attachment.language = $IANALanguageOID#da "Danish"
* content.attachment.creation = "2024-05-01T12:00:00+01:00"
* content.attachment.url = "DOC001.XML"
* content.attachment.title = "Diagnoseoversigt for 2509479989"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:plr-v1.0:full "DK PLR schema"
* context.facilityType = $SnomedctOID#394761003 "almen lægepraksis"
* context.practiceSetting = $SnomedctOID#408443003 "almen medicin"
* context.sourcePatientInfo = Reference(69e475df-20c8-4f54-8cea-9843568205fd)
* extension[0].url = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-homecommunityid-extension"
* extension[0].valueCoding = $DanishxdsOID#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
* extension[1].url = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-version-id-extension"
* extension[1].valueString = "1.0.0" */
