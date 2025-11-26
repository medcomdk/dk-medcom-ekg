Profile: MedComEKGRecordingDiagnosticReport
Parent: MedComCoreDiagnosticReport
Id: medcom-ekg-diagnosticreport
Title: "MedComEKGDiagnosticReport"
Description: "Report containing observation results."
* code = #HomeCareReport //NY KODE SKAL LAVES FOR EKG
* status = #final
* conclusion 1..1 MS
* conclusion ^short = "The clinical narrative/interpretaion of the EKG Recording" //TIL FREMTIDEN
* presentedForm 1..1 MS
* presentedForm.data 1..1 MS
* presentedForm.data ^short = "Base64 encoded data of the EKG PDF document."
* presentedForm.contentType 1..1 MS
* presentedForm.contentType = #application/pdf
* presentedForm.title 1..1 MS
* presentedForm.title ^short = "Title of the attached file"
* subject 1.. MS //Er det nødvendigt at referere patienten her også?
* subject only Reference(MedComDocumentPatient)
* result 0..1 MS
* result only Reference(MedComEkgRecordingObservation) 