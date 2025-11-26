Profile: MedComEkgRecordingObservation
Parent: MedComCoreObservation
Id: medcom-ekg-recording-observation
Title: "MedComEkgRecordingObservation"
Description: "Observation profile intended to be used in MedCom's Ekg Recording standard."
* status = #final
* status ^short = "Status MUST be final." 
* effectiveDateTime MS //RCH: Fjern fra core? Eller indsæt start for ekg optagelsen (OBS: Gentagelse)
* effectiveDateTime ^short = "The date and time the sample was taken (Danish: prøvetegningstidspunkt)."
* code MS //RCH: Fjern MS fra de ekelte systemer i Core?
* code.coding.code MS //RCH: Fjern MS fra de ekelte systemer i Core?
* code.coding.system MS //RCH: Fjern MS fra de ekelte systemer i Core?
* subject 1..1 MS
* subject only Reference(MedComDocumentPatient) //OBS: Core skal laves til DkCorePatient i stedet for medcom core Patient.
* subject ^type.aggregation = #bundled
* note 1..1 MS
* note.text MS
* note.text ^maxLength = 50
* note ^short = "A note related to the EKG recording."
