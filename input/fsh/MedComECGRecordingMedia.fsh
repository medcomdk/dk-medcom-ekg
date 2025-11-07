Profile: MedComDocumentMedia
Parent: MedComCoreMedia
Id: medcom-document-media
Title: "MedComDocumentMedia"
Description: "Profile to capture relevant attachments for MedCom FHIR Documents"
* content.contentType 1..
* content.creation obeys medcom-datetime-has-time-and-zone
* content.title ^short ="Title without file ending" // Core?
* content.title obeys XXX // Lav en invariant, som laver titlen som Media.identifier.

Invariant: medcom-datetime-has-time-and-zone
Description: "dateTime must include date, time, and time zone."
Severity: #error
Expression: "$this.toString().matches('^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}(\\.\\d+)?(Z|[+-]\\d{2}:\\d{2})$')"



//Core content:
Profile: MedComCoreMedia
Parent: Media
Id: medcom-core-media
Title: "MedComMedia"
Description: "Profile to capture relevant images,audio, video and document as part of the healthcare process"
* status MS
* identifier 1..1 MS
* identifier only MedComAssignedIdentifier // Hvorfor denne?
* operator 0..1 MS // Skal vi beholde denne?
* operator only Reference(MedComCorePractitioner or MedComCorePractitionerRole) // Skal vi beholde denne?
* content.data MS
* content.contentType MS
* content.contentType from $Mimetypes // Skal vi bruge et bredere sæt? http://medcomfhir.dk/ig/terminology/ValueSet/medcom-core-attachmentMimeTypes SKAL FINDE ET STØRRE VALUESET
* content.title 1..1 MS
* content.creation 1..1 MS
* operator obeys medcom-homecareReport-5 //Skal omdøbes, hvis vi skal bruge dem?
* operator obeys medcom-homecareReport-6 //Skal omdøbes, hvis vi skal bruge dem?


/* Invariant: medcom-homecareReport-5
Description: "There shall exist a practitioner when using a PractitionerRole as author of the attached file ."
Severity: #error
Expression: "reference.resolve().code.coding.code.exists()"

Invariant: medcom-homecareReport-6
Description: "There shall exist a name of the healtcare worker that performed the observations, as author of the attached file ."
Severity: #error
Expression: "reference.resolve().practitioner.resolve().name.exists()"




Instance: cb277ee2-5d96-4762-829d-d36449b2b17f
InstanceOf: MedComCoreMedia
Usage: #example
Title: "Normal EKG"
Description: "An example of an EKG that can be sendt with an diagnostic repport"
* status = $mediastatus#completed
* operator = Reference(6ff69f1c-690d-11ed-9022-0242ac120002)
* content.title = "EKG"
* identifier.value = "urn:uuid:974e7953-4cc2-465e-bc60-b1750ff41604"
* identifier.assigner = Reference(bca68510-fe3b-4161-aba0-908a693eb54f)
* content.contentType = #image/png
* content.creation = 2023-09-13T12:08:08+00:00 */