# MedCom EKG Recording Conposition

This page describes how the **MedCom Ekg Recording Composition** profile is intended to be used within the MedCom EKG Recording standard.

## Purpose of the Profile
The profile is designed to represent a complete EKG recording in FHIR, including:

### Profile identification and versioning (meta.profile)

The meta.profile element identifies the applied FHIR Composition profile, including the major and minor version of the MedCom document standard. Systems **SHALL** be able to receive and process documents where the minor version differs in this element, as long as the major version remains unchanged.

## Required Coding
All EKG recordings SHALL use...
