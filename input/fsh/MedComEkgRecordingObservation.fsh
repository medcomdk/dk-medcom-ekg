Profile: MedComEkgRecordingObservation
Parent: MedComCoreObservation
Id: medcom-ekg-recording-observation
Title: "MedComEkgRecordingObservation"
Description: "Observation profile intended to be used in MedCom's Ekg Recording standard."
* status = #final //OBS: Experimental valueset - skal rettes i Terminology IG.
* status ^short = "Status MUST be final." 
* effective[x] only dateTime or Period
* effective[x] 1..1
* effective[x] ^short = "The time or time period of the EKG recording."
* effectiveDateTime MS //RCH: Profilering af denne til PLSP. Skal tydeliggøres hvilken man skal bruge hvornår.
* effectiveDateTime ^short = "The time of the EKG recording"
* effectivePeriod MS
* effectivePeriod.start 1..1 MS
* effectivePeriod.start ^short = "The start time of the EKG recording"
* effectivePeriod.end 0..1 MS
* effectivePeriod.end ^short = "The end time of the EKG recording"
* code MS //RCH: Fjern MS fra de ekelte systemer i Core?
* code.coding.code MS //RCH: Fjern MS fra de ekelte systemer i Core?
* code.coding.system MS //RCH: Fjern MS fra de ekelte systemer i Core?
* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
* note 1..1 MS
* note.text MS
* note.text ^maxLength = 50
* note ^short = "A note related to the EKG recording."
* performer only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPractitionerRole) //Hvem skal kunne indsættes her? (Og skal den være med?)

//Vi skal bruge noget a la dette til extension:

/*
* .data 1..1 MS
* .data ^short = "Base64 encoded data of the EKG PDF document."
* .contentType 1..1 MS
* .contentType = #application/pdf
* .title 1..1 MS
* .title ^short = "Title of the attached file" */