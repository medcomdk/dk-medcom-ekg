Profile: MedComEkgRecordingComposition
Parent: MedComDocumentComposition
Id: medcom-ekg-recording-composition
Description: "A profile for the MedCom Ekg Recording Composition resource."
* type.coding.system = $LoincOID (exactly)
* type.coding.code = #11524-6 (exactly)
* type.coding.display = "EKG study" (exactly)
* title = "Elektrokardiogram-12-aflednings" (exactly)
* title ^short = "Title MUST be 'Elektrokardiogram-12-aflednings'"
* meta.profile obeys medcom-canonical-fixed-major
* meta.profile ^short = "[DocumentEntry.formatCode] The profile canonical SHALL include the major and minor version of the standard in the form `|x.y`."
* author only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPractitionerRole)
* author[institution] only Reference(MedComDocumentOrganization)
* category 1..
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* section.entry 1.. MS
* section.entry only Reference(MedComEkgRecordingObservation)
* confidentiality = #N (exactly)
* status = http://hl7.org/fhir/composition-status#final
* language = #da (exactly)
* event 1..1 MS
* event.period 1.. MS
* event.period.start 1..1 MS
* event.period.start obeys medcom-datetime-has-time-offset-zulu
* event.period.start ^short = "The start time of the EKG recording"
* event.period.end 0..1 MS
* event.period.end obeys medcom-datetime-has-time-offset-zulu
* event.period.start ^short = "The end time of the EKG recording"
* date ^short = "The clinical date and time when the clinical report represented by this Composition was finalized, typically equal to the event.period.end of the recorded ECG. If event.period.end is not available, use event.period.start or Observation.effectiveDateTime."