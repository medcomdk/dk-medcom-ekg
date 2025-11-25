Profile: MedComEkgRecordingComposition
Parent: MedComDocumentComposition
Id: medcom-ekg-recording-composition
Description: "A profile for the MedCom Ekg Recording Composition resource."
* type.coding.system = $loinc
* type.coding.code = #11524-6
* type.coding.display = "EKG Study"
* title = "Elektrokardiogram, 12-aflednings"
* title ^short = "Title MUST be 'Elektrokardiogram, 12-aflednings'" //RCH: Er dette helt fastlagt?
* author[institution] only Reference(MedComEkgRecordingOrganization)
* author[person] only Reference(MedComDocumentPractitioner or MedComDocumentPractitionerRole or Device)
* section.entry 1.. MS
* section.entry only Reference(MedComEkgRecordingContentDocumentReference)
* confidentiality = #N
* status = http://hl7.org/fhir/composition-status#final
* language = #da
* event 1..1 MS
* event.period 1.. MS
* event.period.start 1.. MS
* event.period.start obeys medcom-datetime-has-time-and-zone
* event.period.start ^short = "The start time of the EKG recording"
* event.period.end 1.. MS
* event.period.end obeys medcom-datetime-has-time-and-zone
* event.period.start ^short = "The end time of the EKG recording"
