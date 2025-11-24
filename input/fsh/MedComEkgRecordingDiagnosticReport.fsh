/* Profile: MedComEKGRecordingDiagnosticReport
Parent: MedComDocumentDiagnosticReport
Id: medcom-ekg-diagnosticreport
Title: "MedComEKGDiagnosticReport"
Description: "Report containing observation results."
* code = #HomeCareReport //NY KODE SKAL LAVES FOR EKG
* status = #final
* conclusion ^short = "A note related to the EKG recording."
* effectiveDateTime 0..
* presentedForm 1..1
* presentedForm.data 1..1
* presentedForm.data ^short = "Base64 encoded data of the EKG PDF document."
* presentedForm.contentType 1..1
* presentedForm.contentType = #application/pdf
* presentedForm.title 1..1
* presentedForm.title ^short = "Title of the attached file" */