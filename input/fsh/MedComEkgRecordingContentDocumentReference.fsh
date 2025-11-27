Profile: MedComEkgRecordingContentDocumentReference
Parent: MedComContentDocumentReference
Id: medcom-ekg-recording-content-documentreference
Description: "A DocumentReference profile to contain actual content of a MedCom FHIR ECK Recording document."
* content ..1 MS
* content.attachment MS
* content.attachment.data 1.. MS
* content.attachment.data ^short = "The attachment content PDF encoded as Base64."
* content.attachment.contentType 1.. MS
* content.attachment.contentType = #application/pdf (exactly)
* content.attachment.contentType ^short = "The MIME type of the PDF document."
* content.attachment.title 1.. MS //RCH: Er den nødvendig?
* content.attachment.title ^short = "A filename for the document."
//* content.attachment.creation 1.. MS //RCH: Ingen dato sat her, det er sat i Composition i stedet for.
//* content.attachment.creation ^short = "The date and time when the PDF document was created."
//* content.attachment.creation obeys medcom-datetime-has-time-offset-zulu
* description 1.. MS
* description ^maxLength = 50
* description ^definition = "Free-text note, used to document relevant measurement-related remarks."

//DateTime invariant
