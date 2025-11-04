Profile: MedComConditionListComposition
Parent: MedComDocumentComposition
Id: medcom-conditionlist-composition
Description: "A profile for the MedCom ConditionList Composition resource."
* type.coding MS
* type = $loinc#11450-4 "Problem list - Reported"
* date ^short = "Last update of the condition list"
* title ^short = "Expected: 'Diagnoseoversigt for **CPR-nummer**'"
* author[institution] only Reference(MedComConditionListOrganization)
* section.entry only Reference(MedComConditionListCondition)
* section.entry 1..
* confidentiality = #N
* status = http://hl7.org/fhir/composition-status#final
* language = #da
