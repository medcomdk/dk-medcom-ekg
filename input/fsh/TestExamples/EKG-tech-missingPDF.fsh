Instance: 9f392b36-1dc3-4914-aa57-de2a9ddac3b7
InstanceOf: MedComEkgRecordingBundle
Title: "Bundle instance"
Description: "Bundle"
* type = #document
* timestamp = 2026-03-24T11:06:43+01:00
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1e527714-473c-47f5-915c-6571eb7f25b7"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Composition/fbdb27d3-aed4-45c4-9849-49397423bd95"
* entry[=].resource = fbdb27d3-aed4-45c4-9849-49397423bd95 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Observation/156a6be1-adb1-4305-a93e-6918969b7a50"
* entry[=].resource = 156a6be1-adb1-4305-a93e-6918969b7a50
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Patient/f98285ec-c3bc-4283-a840-0e276cd4bb1c"
* entry[=].resource = f98285ec-c3bc-4283-a840-0e276cd4bb1c
* entry[+].fullUrl = "http://medcomfhir.dk/ig/ekgrecording/Organization/44638fdf-4fd2-4e38-83cb-00b92403ffaf"
* entry[=].resource = 44638fdf-4fd2-4e38-83cb-00b92403ffaf

Instance: fbdb27d3-aed4-45c4-9849-49397423bd95
InstanceOf: MedComEkgRecordingComposition
Description: "Composition"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7b212d6d-1b95-4901-bd93-ead58279410e"
* status = #final
* type.coding.system = $LoincOID
* type.coding.code = #11524-6
* type.coding.display = "EKG study"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(f98285ec-c3bc-4283-a840-0e276cd4bb1c)
* author[institution] = Reference(44638fdf-4fd2-4e38-83cb-00b92403ffaf)
* title = "Elektrokardiogram-12-aflednings"
* confidentiality = #N
* event.period.start = "2026-03-24T11:00:00+01:00"
* section[0].entry[0] = Reference(156a6be1-adb1-4305-a93e-6918969b7a50)
* date = "2026-03-24T11:05:00+01:00"
* language = #da "Danish"
* meta.profile = "http://medcomfhir.dk/ig/ekg/StructureDefinition/medcom-ekg-recording-composition|2.0"


Instance: 156a6be1-adb1-4305-a93e-6918969b7a50
InstanceOf: MedComEkgRecordingObservation
Title: "Observation"
Description: "Observation"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:4ee5ebad-a700-47b2-ae17-43a5a67b2f4e"
* status = $ObsStatusCodeSystem#final
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #11524-6
* code.coding[LOINC].display = "EKG study"
* subject = Reference(f98285ec-c3bc-4283-a840-0e276cd4bb1c)
* effectiveDateTime = "2026-03-24T11:00:00+01:00"
* performer = Reference(44638fdf-4fd2-4e38-83cb-00b92403ffaf)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #application/pdf
* extension[valueAttachment].valueAttachment.title = "Elektrokardiogram-12-aflednings"
* extension[valueAttachment].valueAttachment.data = ""