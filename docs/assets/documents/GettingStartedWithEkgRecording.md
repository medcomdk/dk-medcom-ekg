# Getting Started – EKG Recording

This page provides an overview of where you, as a vendor, can find information, documentation, and tools to get started with the development and testing of the MedCom standard **EKG Recording**.

---

## Table of Contents
1. [General Introduction and Governance](#general-introduction-and-governance)  
   - [New to FHIR?](#new-to-fhir)  
   - [MedCom Landing Page](#medcom-landing-page)
   - [Dependencies and Inheritance](#dependencies-and-inheritance)
   - [Guidance for Narrative Text](#guidance-for-narrative-text)  
   - [Governance for MedCom FHIR Validation](#governance-for-medcom-fhir-validation)  
2. [FHIR Forum and Support](#fhir-forum-and-support)  
   - [FHIR Zulip Chat](#fhir-zulip-chat)  
3. [MedCom EKG Recording standard](#medcom-ekg-recording-standard)  
   - [EKG Recording Implementation Guide (IG)](#ekg-recording-implementation-guide-ig)

---

## General Introduction and Governance

### New to FHIR?
If you are new to FHIR, [this page]( https://medcomdk.github.io/MedComLandingPage/assets/documents/NewToFHIR.html) gives you a short introduction to the basic principles and structure of the FHIR standard.  
In addition, MedCom offers two introductory webinars that provide a good starting point for understanding FHIR:
- [FHIR Introduction Webinar (May 17, 2022)](https://www.youtube.com/watch?v=8doBKskz3J8).
- [FHIR Demo Webinar with MedCom, Mjølner, and Trifork (February 10, 2022)](https://www.youtube.com/watch?v=bfzx7U2Suug).

### MedCom Landing Page
This is the best place to start if you are already familiar with FHIR. Here you can find:
- General information about MedCom’s FHIR standards  
- Governance for MedCom FHIR Documents and Terminology  
- Versioning principles  
- Information about the testing and certification process  

[Visit MedCom Landing Page](https://medcomdk.github.io/MedComLandingPage/).

### Dependencies and Inheritance

The EKG Recording Implementation Guide is not a standalone specification. It builds on and inherits rules, profiles, and design principles from other MedCom Implementation Guides (IG) and MedCom FHIR Governance. When implementing EKG Recording, it is therefore essential to be aware of what applies implicitly through inheritance.

In particular, the EKG Recording IG depends on these highlighted IGs:

- [Dk MedCom Core IG](https://medcomfhir.dk/ig/core/)
- [MedCom Document](https://medcomfhir.dk/ig/document/)

**Note** that the IG versions linked may be newer than the versions used as dependencies in the EKG IG. For the exact dependency versions applied, see the Dependencies tab in the top menu under More in the EKG IG.

These Implementation Guides define common structures, constraints, and governance principles that apply across all MedCom FHIR standards and FHIR Documents. Vendors are strongly encouraged to familiarize themselves with MedCom Core and MedCom Document treat them as integral parts of the EKG Recording standard.

**MedCom Core**

MedCom Core provides the foundational profiles and rules that are reused across MedCom standards.

**MedCom Document**

MedCom Document defines the general framework for document-based FHIR exchanges within MedCom.

### Guidance for Narrative Text
This page provides guidance on what the narrative text must contain and the associated requirements.  
[Guidance for narrative texts](https://medcomdk.github.io/MedComLandingPage/assets/documents/GeneralGovernanceFHIRStandards.html#5-implementation-requirements-for-narrative-texts).

### Governance for MedCom FHIR Validation

The [governance for MedCom FHIR Validation can be found here](https://medcomdk.github.io/MedComLandingPage/assets/documents/FHIRValidationGovernance.html), and contains both governance and guidance.

---

## FHIR Forum and Support

### FHIR Zulip Chat
A global chat forum where FHIR developers from around the world share knowledge and answer questions.
- Well suited for technical and professional discussions on FHIR-specific topics.
- You typically receive a response within minutes.  

[Visit FHIR Zulip Chat](https://chat.fhir.org/).

---

## MedCom EKG Recording standard

### EKG Recording Implementation Guide (IG)
The technical documentation for EKG Recording, including profiles, constraints, examples, and usage rules is found here: [EKG Recording Implementation Guide](https://medcomfhir.dk/ig/ekg/).

