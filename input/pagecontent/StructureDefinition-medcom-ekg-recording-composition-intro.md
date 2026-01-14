# MedCom EKG Recording Conposition

This page describes how the **MedCom Ekg Recording Composition** profile is used within the MedCom EKG Recording standard.

The MedComDocumentComposition profile defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type is 'document', and any other resources referenced from Composition must be included as subsequent entries in the Bundle.entry element.

## Purpose of the Profile

<!--The profile is designed to represent a complete EKG recording in FHIR, including:-->
This resource links the various resources used for sharing EKG recordings. The specific resources are:

- `Observation` (MedComDocumentObservation)​
- `Patient` (MedComDocumentPatient)​
- `Organization` (MedComDocumentOrganization)​
- `PractitionerRole` (MedComDocumentPractitionerRole) and/or Practitioner (MedComDocumentPractitioner) (both optional)

The `section.entry` element **MUST** reference the MedComDocumentObservation that contains the EKG PDF-A attachment.

It is required to use the profiles `MedComDocumentObservation` (representing the EKG PDF-A file and an optional note), `MedComDocumentPatient` (the patient of the EKG recording) and `MedComDocumentOrganization` (the author organization of the EKG recording), whereas it is optional to include a `MedComDocumentPractitionerRole` and/or `MedComDocumentPractitioner` (representing the author person).

### Profile identification and versioning (meta.profile)

The meta.profile element identifies the applied FHIR Composition profile, including the major and minor version of the MedCom document standard. Systems **SHALL** be able to receive and process documents where the minor version differs in this element, as long as the major version remains unchanged.

#### Mapping between XDS formatCode and FHIR Composition profile

The XDS `formatCode` `urn:ad:dk:medcom:ekg-v[major].[minor]:full`  
maps to the FHIR `Composition.meta.profile` `http://medcomfhir.dk/ig/ekg/StructureDefinition/medcom-ekg-recording-composition|[major].[minor]`.

The `[major].[minor]` version components are versioned in lockstep.   Any change to either the major or minor version SHALL be reflected in both to maintain semantic alignment between the MedCom XDS Metadata and the FHIR representation.

**Example (v1.0):**

- **XDS `formatCode`:**  
  `urn:ad:dk:medcom:ekg-v1.0:full`

- **FHIR `Composition.meta.profile`:**  
  `http://medcomfhir.dk/ig/ekg/StructureDefinition/medcom-ekg-recording-composition|1.0`


#### Timestamps

`Composition.event.period.start` and `Composition.event.period.end` is used to represent the time interval of the EKG recording.

If `Observation.effectivePeriod.start` is known, this **MUST** be inserted as `Composition.event.period.start`.

If `Observation.effectivePeriod.start` is **NOT** known, `Observation.effectiveDateTime` **MUST** be inserted as `Composition.event.period.start` instead.

If `Observation.effectivePeriod.end` is known, this **MUST** be inserted as `Composition.event.period.end`. If this is **NOT** known, this can be left empty, as it is optional.