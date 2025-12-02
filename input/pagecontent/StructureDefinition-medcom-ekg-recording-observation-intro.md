# MedCom EKG Recording Observation

This page describes how the **MedCom Ekg Recording Observation** profile is intended to be used within the MedCom EKG Recording standard.

## Purpose of the Profile
The profile is designed to:
- Contain an ECG recording provided as a PDF/A attachment encoded in Base64 in a FHIR extension.
- Capture the metadata MIME type and title for the attachment.
- Include a note related to the ECG acquisition: a free-text note used to document relevant measurement-related remarks, with a maximum length of 50 characters.
- Record the date and time of the ECG acquisition.
- Provide references to the patient and the organization.

## Use of the valueAttachment Extension


## Required Coding
This Observation resource contains the following codes with corresponding codes system and display values:

- code.coding:LOINC


`valueAttachmentR5.valueAttachment.data`
