Instance: 0a74554f-ded3-4bc7-bef1-535699565c5a
InstanceOf: MedComEkgRecordingBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* type = #document
* timestamp = 2025-02-10T10:18:00+01:00
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3e9fadb1-04e6-42ce-82d3-546f89e2f0fa"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Composition/384ca229-c562-4a26-a035-c0c38108e036"
* entry[=].resource = 384ca229-c562-4a26-a035-c0c38108e036 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Observation/ef810168-ee8c-4f14-9012-6aff6c1d86e7"
* entry[=].resource = ef810168-ee8c-4f14-9012-6aff6c1d86e7
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Patient/379ebb53-11e3-42ac-b9db-0bad0ece46d1"
* entry[=].resource = 379ebb53-11e3-42ac-b9db-0bad0ece46d1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/PractitionerRole/bb6fa4e1-f8b1-4bf4-b77e-bb03b2cc9820"
* entry[=].resource = bb6fa4e1-f8b1-4bf4-b77e-bb03b2cc9820
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Practitioner/48ed6310-3095-44da-9e34-d1cd6bd830c9"
* entry[=].resource = 48ed6310-3095-44da-9e34-d1cd6bd830c9
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Organization/f8d0eb07-5336-4005-9081-b065f9a82663"
* entry[=].resource = f8d0eb07-5336-4005-9081-b065f9a82663

Instance: 384ca229-c562-4a26-a035-c0c38108e036
InstanceOf: MedComEkgRecordingComposition
Usage: #example
//* meta.profile = "1.0" //Indsæt formatcode?
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">EKG example</div>"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0e386cca-f4b0-4484-89e3-3c25d55ebf5a"
* status = #final
* type.coding.system = "http://loinc.org"
* type.coding.code = #11524-6 
* type.coding.display = "EKG study"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(379ebb53-11e3-42ac-b9db-0bad0ece46d1)
* author[institution] = Reference(f8d0eb07-5336-4005-9081-b065f9a82663)
* author[+] = Reference(bb6fa4e1-f8b1-4bf4-b77e-bb03b2cc9820)
* title = "Elektrokardiogram-12-aflednings"
* confidentiality = #N
* event.period.start = "2025-02-10T10:00:00+01:00"
* event.period.end = "2025-02-10T10:15:00+01:00"
* section[0].entry[0] = Reference(ef810168-ee8c-4f14-9012-6aff6c1d86e7)
* date = "2025-02-10T10:15:00+01:00"
* language = #da "Danish"
//OBS: attester, event.code, event.detail bruges ikke i EKG - skriv det i profilteksten.


Instance: ef810168-ee8c-4f14-9012-6aff6c1d86e7
InstanceOf: MedComEkgRecordingObservation
Title: "Observation"
Description: "Observation EKG PDF"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">EKG example</div>"
* identifier.system = "urn:uuid"
* identifier.value = "3e4907e4-a5f9-4403-b0a0-9b3201a97074"
* status = $ObsStatusCodeSystem#final
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #11524-6
* code.coding[LOINC].display = "EKG Study"
* subject = Reference(379ebb53-11e3-42ac-b9db-0bad0ece46d1)
//* effectiveDateTime = "2025-02-10T10:23:00+01:00"
* effectivePeriod.start = "2025-02-10T10:00:00+01:00"
* effectivePeriod.end = "2025-02-10T10:15:00+01:00"
* performer = Reference(f8d0eb07-5336-4005-9081-b065f9a82663)
* note.text = "Pt. urolig under optagelse"
* extension[valueAttachmentR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x]"
* extension[valueAttachmentR5].valueAttachment.contentType = #application/pdf
* extension[valueAttachmentR5].valueAttachment.title = "3e4907e4-a5f9-4403-b0a0-9b3201a97074.pdf"
* extension[valueAttachmentR5].valueAttachment.data = "JVBERi0xLjUKJcTl8uXrp/Og0MTGCjEgMCBvYmogICUgZW50cnkKPDwKL1R5cGUgL0NhdGFsb2cKPj4KZW5kb2Jq"

Instance: 379ebb53-11e3-42ac-b9db-0bad0ece46d1
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">EKG example</div>"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0201919990"
* name[official].use = #official
* name[official].family = "Lauridsen"
* name[official].given[0] = "Else"
* name[official].given[+] = "Test"
* gender = #female
* birthDate = "1991-02-02"

Instance: bb6fa4e1-f8b1-4bf4-b77e-bb03b2cc9820
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">EKG example</div>"
* practitioner = Reference(48ed6310-3095-44da-9e34-d1cd6bd830c9)
* code = $PractitionerRole#sygeplejerske
* identifier.system = "urn:uuid"
* identifier.value = "9a6fb982-ba4a-41d0-ac09-f04cc51c8f38"
* organization = Reference(f8d0eb07-5336-4005-9081-b065f9a82663)

Instance: 48ed6310-3095-44da-9e34-d1cd6bd830c9
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">EKG example</div>"
* name.given = "Sidsel"
* name.family = "Andersen"
* identifier.system = "urn:uuid"
* identifier.value = "a6c11dab-a9e9-46b8-9bb3-fe06d6587e07"

Instance: f8d0eb07-5336-4005-9081-b065f9a82663
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">EKG example</div>"
* identifier[SOR-ID].value = "61741000016007"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Hasseris Bymidte"

