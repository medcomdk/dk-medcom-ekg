Profile: MedComEkgRecordingObservation
Parent: MedComDocumentObservation
Id: medcom-ekg-recording-observation
Title: "MedComEkgRecordingObservation"
Description: "Observation profile intended to be used in MedCom's Ekg Recording standard."
* status = #final //OBS: Experimental valueset - skal rettes i Terminology IG.
* status ^short = "Status MUST be final." 
* effective[x] only dateTime or Period
* effective[x] 1..1 MS
* effective[x] ^short = "The time or time period of the EKG recording."
* effectiveDateTime MS
* effectiveDateTime ^short = "The time of the EKG recording. Use this if effectivePeriod.start is unknown."
* effectivePeriod MS
* effectivePeriod.start 1..1 MS
* effectivePeriod.start ^short = "The start time of the EKG recording"
* effectivePeriod.end 0..1 MS
* effectivePeriod.end ^short = "The end time of the EKG recording"
* code.coding[LOINC] 1..1 MS
* code.coding[LOINC].code MS
* code.coding[LOINC].code = #11524-6 (exactly)
* code.coding[LOINC].display 1.. MS
* code.coding[LOINC].display = "EKG Study" (exactly)
* code.coding[LOINC].system MS
* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
* note 1..1 MS
* note.text MS
* note.text ^maxLength = 50
* note ^short = "Free-text note, used to document relevant measurement-related remarks."
* performer ..1
* performer only Reference(MedComDocumentOrganization)
// --- R5 valueAttachment via official cross-version extension ---
* extension[valueAttachmentR5].url MS
* extension[valueAttachmentR5] 1..1 MS
* extension[valueAttachmentR5].valueAttachment 1..1 MS
* extension[valueAttachmentR5].valueAttachment.data 1..1 MS
* extension[valueAttachmentR5].valueAttachment.data ^short = "Base64-encoded content of the EKG recording PDF/A document."
* extension[valueAttachmentR5].valueAttachment.contentType 1..1 MS
* extension[valueAttachmentR5].valueAttachment.contentType = #application/pdf (exactly)
* extension[valueAttachmentR5].valueAttachment.contentType ^short = "MIME type of the attached EKG recording."
* extension[valueAttachmentR5].valueAttachment.title 1..1 MS
* extension[valueAttachmentR5].valueAttachment.title ^short = "MUST equal identifier.value appended with '.pdf'. Example: 6ca24102-66dc-47e4-a266-6e5c01131f0e.pdf"
//* extension[valueAttachmentR5].valueAttachment.title obeys title-matches-identifier

* insert ProducerShallPutInNarrative(effectiveDateTime)
* insert ProducerShallPutInNarrative(effectivePeriod.start)
* insert ProducerShallPutInNarrative(effectivePeriod.end)
* insert ProducerShallPutInNarrative(code.coding[LOINC].code)
* insert ProducerShallPutInNarrative(code.coding[LOINC].display)
* insert ProducerShallPutInNarrative(code.coding[LOINC].system)
* insert ProducerShallPutInNarrative(note.text)
* insert ProducerShallPutInNarrative(extension[valueAttachmentR5].valueAttachment.contentType)
* insert ProducerShallPutInNarrative(extension[valueAttachmentR5].valueAttachment.title)
