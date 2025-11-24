Profile: MedComEkgRecordingBundle
Parent: MedComDocumentBundle
Id: medcom-ekg-recording-bundle
Description: "A profile for the MedCom ConditionList Bundle resource."
* entry 1..* MS
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this.resource"
//"$this.information.resolve()"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the resource type"
* entry contains 
    medcom-ekg-recording-composition 1..1 MS
* entry[medcom-ekg-recording-composition] ^short = "First entry is a composition"
// * entry[medcom-ekg-recording-composition].resource only MedComEkgRecordingComposition //RCH: Hvorfor er denne udkommenteret?