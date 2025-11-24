Profile: MedComEkgRecordingComposition
Parent: MedComDocumentComposition
Id: medcom-ekg-recording-composition
Description: "A profile for the MedCom Composition HOD resource."
* type.coding MS
* type = $loinc#24412-3 "ECG, electrocardiagram"
* date ^short = "Last update of the condition list"
* title ^short = "Expected: 'Diagnoseoversigt for **CPR-nummer**'"
* author[institution] only Reference(MedComDocumentAuthorInstitutionOrganization)
//* section.entry only Reference(MedComConditionListCondition)
* section.entry 1..
* confidentiality = #N
* status = http://hl7.org/fhir/composition-status#final
* language = #da
