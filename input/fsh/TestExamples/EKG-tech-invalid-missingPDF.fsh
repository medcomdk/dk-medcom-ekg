Instance: e14a2b36-1dc3-4914-aa57-de2a9ddac3b7 //e14a = e: eksempel // 14: #14 // a: version
InstanceOf: MedComEkgRecordingBundle
Title: "Bundle instance"
Description: "Bundle"
* type = #document
* timestamp = 2026-05-14T14:06:43+02:00
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e14a7714-473c-47f5-915c-6571eb7f25b7" //e14a = e: eksempel // 14: #14 // a: version
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Composition/fbdb27d3-aed4-45c4-9849-49397423bd95"
* entry[=].resource = fbdb27d3-aed4-45c4-9849-49397423bd95 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Observation/156a6be1-adb1-4305-a93e-6918969b7a50"
* entry[=].resource = 156a6be1-adb1-4305-a93e-6918969b7a50
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Patient/9f292792-4622-46aa-b30b-6db6d120a262"
* entry[=].resource = 9f292792-4622-46aa-b30b-6db6d120a262
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Organization/44638fdf-4fd2-4e38-83cb-00b92403ffaf"
* entry[=].resource = 44638fdf-4fd2-4e38-83cb-00b92403ffaf

Instance: fbdb27d3-aed4-45c4-9849-49397423bd95
InstanceOf: MedComEkgRecordingComposition
Description: "Composition"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c5c592a2-79c6-4e75-9f42-8e5c3a6b005a"
* status = #final
* type.coding.system = $LoincOID
* type.coding.code = #11524-6
* type.coding.display = "EKG study"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(9f292792-4622-46aa-b30b-6db6d120a262)
* author[institution] = Reference(44638fdf-4fd2-4e38-83cb-00b92403ffaf)
* title = "Elektrokardiogram-12-aflednings"
* confidentiality = #N
* event.period.start = "2026-05-14T14:00:00+02:00"
* section[0].entry[0] = Reference(156a6be1-adb1-4305-a93e-6918969b7a50)
* date = "2026-05-14T14:06:43+02:00"
* language = #da "Danish"
* meta.profile = "http://medcomfhir.dk/ig/ekg/StructureDefinition/medcom-ekg-recording-composition|2.0"


Instance: 156a6be1-adb1-4305-a93e-6918969b7a50
InstanceOf: MedComEkgRecordingObservation
Title: "Observation"
Description: "Observation"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ab06b8f7-ea8f-465a-be6a-43c30df627e4"
* status = $ObsStatusCodeSystem#final
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #11524-6
* code.coding[LOINC].display = "EKG study"
* subject = Reference(9f292792-4622-46aa-b30b-6db6d120a262)
* effectiveDateTime = "2026-03-24T11:00:00+01:00"
* performer = Reference(44638fdf-4fd2-4e38-83cb-00b92403ffaf)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #application/pdf
* extension[valueAttachment].valueAttachment.title = "Elektrokardiogram-12-aflednings"
* extension[valueAttachment].valueAttachment.data = ""