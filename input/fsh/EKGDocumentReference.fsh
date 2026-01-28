Profile: MedComEkgRecordingDocumentReference
Parent: MedComContainedDocumentReference
Id: medcom-ekg-recording-documentreference
Description: "A profile for the MedCom Profile: MedComEkgRecordingDocumentReference resource."
* type = $loinc#11524-6 "EKG Study"
* category = $DanishiheOID#001 "Klinisk rapport"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:ekg-v1.0:full "DK EKG schema"
* content.attachment.contentType from $FHIRMimetype 
* extension[homeCommunityid].valueCoding from http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-ihe-core-homeCommunityId-VS
* extension[versionid].valueString = "1.0.0"
* content.attachment.title = "Elektrokardiogram-12-aflednings"


// Metadata instance
Instance: 8d16ea51-3264-44ba-b0d8-54b2767acb17
InstanceOf: MedComEkgRecordingDocumentReference
Title: "DocumentReference instance"
Description: "DocumentReference instance"
* contained[+] = 1fcad31f-8967-4f49-b6af-7e64082e8fec   // MedComDocumentPractitioner
* contained[+] = fd3206c6-c265-49f9-82c3-8b4c96280403   // MedComDocumentOrganization
* contained[+] = 69e475df-20c8-4f54-8cea-9843568205fd   // MedComDocumentPatient
* contained[+] = XXX                                    // MedComDocumentPractitionerRole
* masterIdentifier.value = "urn:uuid:bf1bb63b-d405-4dfe-9810-37b16b333a01"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* status = #current "Current"
* identifier[entryUUID].value = "urn:uuid:7c596b9a-112e-4386-ae71-5ecdd3ed7c50"
* type = $loinc#11524-6 "EKG Study"
* authenticator = Reference(1fcad31f-8967-4f49-b6af-7e64082e8fec)
* category = $DanishiheOID#001 "Klinisk rapport"
* author[institution] = Reference(fd3206c6-c265-49f9-82c3-8b4c96280403)
//* author = Reference() // MedComDocumentPractitionerRole // MedComDocumentPractitioner
* subject = Reference(69e475df-20c8-4f54-8cea-9843568205fd)
* content.attachment.contentType = $IANAMediaOID#application/fhir+json "MimeType-application/fhir+json"
//* content.attachment.contentType = $IANAMediaOID#application/fhir+xml "MimeType-application/fhir+xml"
* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* content.attachment.language = $IANALanguageOID#da "Danish"
* content.attachment.creation = "2024-05-01T12:00:00Z"
* content.attachment.url = "DOC001.XML"
* content.attachment.title = "Elektrokardiogram-12-aflednings"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:ekg-v1.0:full "DK EKG schema"
* context.facilityType = $sct#394761003 "almen lægepraksis"
* context.practiceSetting = $sct#408443003 "almen medicin"
* context.sourcePatientInfo.identifier.value = "2509479989"
* context.sourcePatientInfo = Reference(69e475df-20c8-4f54-8cea-9843568205fd)
* extension[homeCommunityid].valueCoding = $DanishxdsOID#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
* extension[versionid].valueString = "1.0.0"