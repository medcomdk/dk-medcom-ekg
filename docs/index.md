<!-- HomePage -->
# MedCom Shared ECG Recording
<!-- below is the table of content. Ensure to update it. -->
**Table of Content**
* [1 Standard Documentation](#standard)
  * [1.1 Use Cases](#11-use-cases)
  * [1.2 Technical specification](#12-technical-specification)
* [2 Test and Certification](#2-test-and-certification)

The MedCom Shared ECG Recording standard (MedCom Deling af EKG-optagelser) named ECGRecording enables cross-sectoral sharing of electrocardiograms (ECGs). The standard supports the establishment of a national sharing portal for EKG data in the form of PDF documents encolsed in a FHIR Document. The solution ensures near real-time access to EKG data across the Danish healthcare sector.
 
> MANGLER: Clinical Guidelines for application and use cases are in both Danish and English. The remaining documentation will be in English.

## 1 Standard Documentation {#standard}
The standard documentation below provides the necessary content to understand the role of the ECGRecording FHIR Document, what to implement and how to get a MedCom certificate. The standard documentation for ECGRecording includes:
  * User stories
  * Use cases
  * Technical Specifications in terms of the relevant IGs and clinical introduction to the content of the IG.
  * *mention other relevant documentation*
<p>&nbsp;</p>

### 1.1 Use Cases

Use cases describe the different scenarios a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the MedCom Shared ECG Recording standard. The descriptions are targeted IT-system vendors and the people responsible for the implementation.

The use cases are qualified in...

Below can the use cases in Danish and English be found:

[Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md) 

### 1.2 Technical specification

The technical specification for the standard is composed by profiles form *IG name* 

The profiles that are part of the technical specification are: 
 * *Insert link to ImplemantationGuides*

The link below gives an overview of the included profiles, what their purpose is, and which elements the system should support. Further, the structure of the standard is described and supported with examples in different degree of technical skills.

[Click here to read an introduction to the technical specificationscan be found here.](assets/documents/Intro-Technical-Spec-ENG.md)

## 2 Test and Certification
Certification of a system implies both an approved testprotocol and run-through of TouchStone test scripts. TouchStone describes an infrastructure that allows for automated test and validation against the IG's developed by MedCom. 

 [Click here to find the description of test and certification of FHIR standards in MedCom.](https://tmsmedcom.github.io/GitHubPagesTest/#test-and-certification). 

**Sending a STANDARDNAME message**
  * Testprotocol
  * TouchStone Testscripts
<p>&nbsp;</p>
 
**Receiving a STANDARDNAME message**
  * Testprotocol
<p>&nbsp;</p>
