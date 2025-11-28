Profile: MedComEkgRecordingObservation
Parent: MedComCoreObservation
Id: medcom-ekg-recording-observation
Title: "MedComEkgRecordingObservation"
Description: "Observation profile intended to be used in MedCom's Ekg Recording standard."
* status = #final //OBS: Experimental valueset - skal rettes i Terminology IG.
* status ^short = "Status MUST be final." 
* effective[x] only dateTime or Period
* effective[x] 1..1 MS
* effective[x] ^short = "The time or time period of the EKG recording."
* effectiveDateTime MS //RCH: Profilering af denne til PLSP. Skal tydeliggøres hvilken man skal bruge hvornår.
* effectiveDateTime ^short = "The time of the EKG recording"
* effectivePeriod MS
* effectivePeriod.start 1..1 MS
* effectivePeriod.start ^short = "The start time of the EKG recording"
* effectivePeriod.end 0..1 MS
* effectivePeriod.end ^short = "The end time of the EKG recording"
* code.coding[LOINC] 1..1 MS
* code.coding[LOINC].code MS
* code.coding[LOINC].code = #11524-6 (exactly)
* code.coding[LOINC].display = "EKG Study" (exactly) //RCH: Stiller vi krav om at medsende display eller ej? Det gør læsbarheden bedre, men best practice er ikke at sende den med.
* code.coding[LOINC].system MS
* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
* note 1..1 MS
* note.text MS
* note.text ^maxLength = 50
* note ^short = "Free-text note, used to document relevant measurement-related remarks."
* performer only Reference(MedComDocumentOrganization)
// --- R5 valueAttachment via official cross-version extension ---
* extension[valueAttachmentR5].url MS
* extension[valueAttachmentR5] 1..1 MS
* extension[valueAttachmentR5].valueAttachment 1..1 MS
* extension[valueAttachmentR5].valueAttachment.data 1..1 MS
* extension[valueAttachmentR5].valueAttachment.data ^short = "Base64-encoded content of the EKG recording PDF document."
* extension[valueAttachmentR5].valueAttachment.contentType 1..1 MS
* extension[valueAttachmentR5].valueAttachment.contentType = #application/pdf (exactly)
* extension[valueAttachmentR5].valueAttachment.contentType ^short = "MIME type of the attached EKG recording."
* extension[valueAttachmentR5].valueAttachment.title 1..1 MS
* extension[valueAttachmentR5].valueAttachment.title ^short = "Human-readable title for the attached EKG recording file." //RCH: FORMEN SKAL AFTALES. "Observations identifier".PDF

