Profile: MedComDocumentDiagnosticReport
Parent: MedComCoreDiagnosticReport
Id: medcom-document-diagnosticreport
Title: "MedComDocumentDiagnosticReport"
Description: "Report containing observation results."
* code 1..1
* effectiveDateTime 0..1 MS
* presentedForm MS
* presentedForm.data MS
* presentedForm.data ^short = "Base64 encoded data of attached file."
* presentedForm.contentType 1..1 MS
* presentedForm.title MS
* presentedForm.title ^short = "Title of the attached file."

