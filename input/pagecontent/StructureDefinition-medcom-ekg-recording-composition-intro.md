# MedCom EKG Recording Conposition

This page describes how the **MedCom Ekg Recording Composition** profile is intended to be used within the MedCom EKG Recording standard.

## Purpose of the Profile
The profile is designed to represent a complete EKG recording in FHIR, including:

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

## Required Coding
All EKG recordings SHALL use...

