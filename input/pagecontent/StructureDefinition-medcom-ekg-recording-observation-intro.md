# MedCom EKG Recording Observation
This page describes how the **MedCom Ekg Recording Observation** profile is intended to be used within the MedCom EKG Recording standard.

## Purpose of the Profile
This profile specifies how the Observation represents the PDF/A-encoded EKG recording using a dedicated extension. It also specifies how the related attachment metadata, acquisition note, and timing information must be captured, and how the required LOINC coding and references to the patient and performing organization must be applied. Read more about this in the following paragrafs.

### Use of the valueAttachment Extension
This Observation contains a FHIR extension designed to hold an EKG recording as a PDF/A file encoded in Base64. The `valueAttachment` element is implemented as an extension because the base `value[x]` element does not support the `Attachment` type in FHIR R4. The extension also captures essential metadata for the attachment - the MIME type and the title.

### EKG Recording note
This Observation includes a free-text note related to the EKG acquisition, intended for documenting brief, measurement-related remarks. To ensure consistency and concise usage, the note is limited to a maximum length of 50 characters.

### EKG Recording date and time
The `effective[x]` element is used to represent the timing of the EKG recording and must be provided either as a `dateTime` or a `Period`.

- `effectivePeriod.start` – Represents the exact start time of the EKG recording and is required if known.
- `effectivePeriod.end` – Represents the exact end time of the EKG recording and is required if known in combination with `effectivePeriod.start`.
- `effectiveDateTime` – Used when only when the exact start time is unknown.

In all cases, the timing information is mandatory to ensure correct interpretation of the EKG data.

## Required LOINC coding
This Observation contains the fixed code:

- code.coding:LOINC: code: `11524-6` system: `http://loinc.org` display: `EKG Study`.

## Resource references
This Observation references the `Patient` resource through the `subject` element and the author `Organization` through the `performer` element.




