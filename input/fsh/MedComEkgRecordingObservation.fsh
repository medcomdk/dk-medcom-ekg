Profile: MedComEkgRecordingObservation
Parent: MedComDocumentObservation
Id: medcom-ekg-recording-observation
Title: "MedComEkgRecordingObservation"
Description: "Observation profile intended to be used in MedCom's Ekg Recording standard."
* status = #final
* status ^short = "Status MUST be final." 
* effective[x] only dateTime or Period
* effective[x] 1..1 MS
* effective[x] ^short = "The time or time period of the EKG recording."
* effectiveDateTime MS
* effectiveDateTime ^short = "The time of the EKG recording. Use this if effectivePeriod.start is unknown."
* effectiveDateTime obeys medcom-datetime-has-time-offset-zulu
* effectivePeriod MS
* effectivePeriod.start 1..1 MS
* effectivePeriod.start obeys medcom-datetime-has-time-offset-zulu
* effectivePeriod.start ^short = "The start time of the EKG recording"
* effectivePeriod.end 0..1 MS
* effectivePeriod.end obeys medcom-datetime-has-time-offset-zulu
* effectivePeriod.end ^short = "The end time of the EKG recording"
* code.coding[LOINC] 1..1 MS
* code.coding[LOINC].code MS
* code.coding[LOINC].code = #11524-6 (exactly)
* code.coding[LOINC].display 1.. MS
* code.coding[LOINC].display = "EKG study" (exactly)
* code.coding[LOINC].system MS
* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
* note 1..1 MS
* note.text MS
* note.text ^maxLength = 1024
* note ^short = "Free-text note, used to document relevant measurement-related remarks."
* performer ..1
* performer only Reference(MedComDocumentOrganization)
* extension[valueAttachment].url MS
* extension[valueAttachment] 1..1 MS
* extension[valueAttachment].valueAttachment 1..1 MS
* extension[valueAttachment].valueAttachment.data 1..1 MS
* extension[valueAttachment].valueAttachment.data ^short = "Base64-encoded content of the EKG recording PDF/A document."
* extension[valueAttachment].valueAttachment.contentType 1..1 MS
* extension[valueAttachment].valueAttachment.contentType = #application/pdf (exactly)
* extension[valueAttachment].valueAttachment.contentType ^short = "MIME type of the attached EKG recording."
* extension[valueAttachment].valueAttachment.title 1..1 MS
* extension[valueAttachment].valueAttachment.title = "Elektrokardiogram-12-aflednings"

* insert ProducerShallPutInNarrative(effectiveDateTime)
* insert ProducerShallPutInNarrative(effectivePeriod.start)
* insert ProducerShallPutInNarrative(effectivePeriod.end)
* insert ProducerShallPutInNarrative(code.coding[LOINC].code)
* insert ProducerShallPutInNarrative(code.coding[LOINC].display)
* insert ProducerShallPutInNarrative(code.coding[LOINC].system)
* insert ProducerShallPutInNarrative(note.text)
* insert ProducerShallPutInNarrative(extension[valueAttachment].valueAttachment.contentType)
* insert ProducerShallPutInNarrative(extension[valueAttachment].valueAttachment.title)
