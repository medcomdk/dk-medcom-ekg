# MedCom EKG Recording Observation

This page describes how the **MedComEkgRecordingObservation** profile is intended to be used within the MedCom EKG Recording standard.

## Purpose of the Profile
The profile is designed to represent a complete EKG recording in FHIR, including:
- Metadata about the EKG study (e.g., timing, performer, and coding)
- A PDF document containing the actual EKG waveform data
- A brief note describing the recording
- The patient reference for whom the EKG was performed

This profile ensures consistent representation of EKG recordings across all Danish healthcare systems following MedCom guidelines.

## Use of the R5 valueAttachment Extension
Since FHIR R4 does not support `valueAttachment` natively in `Observation.value[x]`, this profile uses the official **R5 cross-version extension**:

http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x]


In this IG, the extension is sliced as **valueAttachmentR5** and constrained to the `Attachment` datatype only.

The following constraints apply:
- The PDF MUST be included using `valueAttachmentR5.valueAttachment.data`
- The MIME type MUST be `application/pdf`
- A human-readable title MUST be provided

## Required Coding
All EKG recordings SHALL use the LOINC code:

- **11524-6 — EKG Study**

This ensures interoperability and consistent interpretation across systems.

## Required Metadata Fields
The following elements MUST be populated:
- `Observation.status = final`
- `Observation.effective[x]` (either `dateTime` or `Period`)
- `Observation.subject` (reference to the patient)
- `Observation.performer` (organization that performed the recording)
- `Observation.note.text` (up to 50 characters)

## Summary
Use this profile whenever transmitting EKG recording data in MedCom workflows.  
The combination of standard Observation metadata and the R5 valueAttachment extension ensures that the EKG recording is packaged in a consistent, future-proof way.
