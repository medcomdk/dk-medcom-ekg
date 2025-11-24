Profile: MedComEkgRecordingComposition
Parent: MedComDocumentComposition
Id: medcom-ekg-recording-composition
Description: "A profile for the MedCom Ekg Recording Composition resource."
* type.coding MS
* type = $loinc#11524-6 "EKG Study"
//* type = $loinc#24412-3 "ECG, electrocardiagram" //RC: Hvad er kravene til type? Jeg har valgt kode fra den binding der er lavet.
* date ^short = "Creation date and time for the EKG Recording" //RCH: Eller er det selve dokumentets byggetidspunkt?
* title = "Elektrokardiogram, 12-aflednings"
* title ^short = "Title MUST be 'Elektrokardiogram, 12-aflednings'" //RCH: Er dette helt fastlagt?
* author[institution] only Reference(MedComEkgRecordingOrganization)
//* section.entry only Reference(MedComConditionListCondition)
* section.entry 1..
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
