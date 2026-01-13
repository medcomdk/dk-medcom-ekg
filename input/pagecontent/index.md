## Introdukction


### MedCom EKG Recording
The structure of an EKG Recording is depicted on the following diagram:

<img alt="Shows the general MedCom document model. Each document must at least contain the following resources: Bundle, Composition, Organization, Patient and use case specific resources." src="./EkgDocumentModel.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The figure shows the structure of an EKG Recording. Diagram showing the structure and references of a MedCom EKG Recording document bundle, including the relationships between Bundle, Composition, Observation, Patient, Organization, Practitioner, PractitionerRole, and AuthorPerson.

The EKG Recording standard follows the general MedCom FHIR Document model. The following sections describe the overall purpose of each profile.

### Background
The ECG project has been established with the overall objective of supporting secure, consistent, and nationwide sharing of electrocardiograms (ECGs) across healthcare providers. Today, ECGs are recorded both in general practice and in regional healthcare settings, and there is a clinical and organizational need to make these ECGs accessible across sectors, regardless of the originating system.

As part of the project, it has been decided that ECGs recorded in general practice and regional healthcare services shall be shared as PDF documents. This approach has been chosen to ensure a pragmatic and widely applicable solution that can be supported by existing clinical IT systems while preserving the correct visual representation of the ECG.

Sharing of ECGs will take place via the National Service Platform (NSP) using the Document Sharing Service (DDS), which is already used for national sharing of healthcare documents and thus provides a proven and secure infrastructure.

### Need for standardisation
Based on dialogue between the ECG project, MedCom, the project stakeholders, and the Danish Health Data Authority, a need has been identified for a more standardised and future-proof data model for sharing ECGs. MedCom has been has requested to develop a new FHIR standard specifically aimed at supporting the sharing of ECGs as PDF documents via the national infrastructure.

The FHIR standard will ensure consistent structuring of metadata and clinically relevant information, enabling ECGs to be searched, interpreted, and used correctly by receiving systems and clinicians.

### ECG Recording in FHIR
The profile is designed to represent a complete ECG recording in FHIR, provided as a PDF/A document with the option to add a note. This note will typically provide guidance to the recipient regarding conditions or details that may have influenced the ECG recording.