# MedCom EKG Recording Observation
This page describes how the **MedCom Ekg Recording Observation** profile is intended to be used within the MedCom EKG Recording standard.

## Purpose of the Profile
This profile specifies how the Observation represents the PDF-encoded EKG recording using a dedicated extension. It also specifies how the related attachment metadata, acquisition note, and timing information must be captured, and how the required LOINC coding and references to the patient and performing organization must be applied. Read more about this in the following paragrafs.

### Use of the valueAttachment Extension
This Observation contains a FHIR extension designed to hold an EKG recording as a PDF file encoded in Base64. The `valueAttachment` element is implemented as an extension because the base `value[x]` element does not support the `Attachment` type in FHIR R4. The extension also captures essential metadata for the attachment - the MIME type and the title.

### EKG Recording note
This Observation includes a free-text note related to the EKG acquisition, intended for documenting brief, measurement-related remarks. To ensure consistency and concise usage, the note is limited to a maximum length of 1024 characters and allows line breaks.

#### Line breaks and special characters in the note
Implementations must preserve the logical value, including line breaks and Unicode characters, across both XML and JSON. The note element **MUST** follow:

- In JSON, line breaks **SHALL** be written as the escaped newline sequence `\n`. The special character `"` **MUST** be escaped with `\"` when used inside the note.
- In XML, line breaks **SHALL** be represented as the character reference `&#xA;`. Escaping of characters in XML **SHALL** preserve the logical value. XML-reserved characters `&`, `<`, `>`, `'` and `"` **SHALL** be escaped.

Unicode characters (e.g. ÆØÅ, ë, ð, ý) **SHALL** be supported without restriction in both XML and JSON as document consumer system and **SHOULD** be supported without restriction in both XML and JSON as document source system.

### EKG Recording date and time
The `effective[x]` element is a mandatory element used to represent the timing of the EKG recording and **SHALL** be provided either as a period or alternatively as a dateTime.

- `effectivePeriod.start` – Represents the exact start time of the EKG recording and is required if known.
- `effectivePeriod.end` – Represents the exact end time of the EKG recording and is required if known in combination with `effectivePeriod.start`.
- `effectiveDateTime` – Used only when the exact start time is unknown.

## Required LOINC coding
This Observation contains the fixed code:

- code.coding:LOINC: code: `11524-6` system: `http://loinc.org` display: `EKG study`.

## Resource references
This Observation references the `Patient` resource through the `subject` element and the author `Organization` through the `performer` element.