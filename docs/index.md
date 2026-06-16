<!-- HomePage -->
# MedCom Shared EKG Recording
<!-- below is the table of content. Ensure to update it. -->
**Table of Content**
* [1 Standard Documentation](#standard)
  * [1.1 User Stories and Use Cases](#11-user-stories-and-use-cases)
  * [1.2 Technical specification](#12-technical-specification)
* [2 Test and Certification](#2-test-and-certification)
  * [2.1 Detailed test information document](#21-detailed-test-information-document)
* [3 Vendor chat-forum](#3-vendor-chat-forum)

The MedCom Shared EKG Recording standard (DA: Deling af EKG-optagelser), named EKG Recording, enables cross-sectoral sharing of electrocardiograms (EKGs). The standard supports the establishment of a national sharing portal for EKG data in the form of PDF documents enclosed in a FHIR Document.

**New to the EKG Recording standard?**  
> Start here: [Getting Started – EKG Recording](assets/documents/GettingStartedWithEkgRecording.md).
> It gives you a quick overview of the documentation, tools, and helpful resources to get you started.

## 1 Standard Documentation {#standard}
The standard documentation below provides the necessary content to understand the role of the EKG Recording FHIR Document, what to implement and how to obtain a MedCom certificate. The standard documentation for EKGRecording includes:
  * User stories
  * Use cases
  * Technical Specifications in terms of the relevant Implementation Guides (IGs).
<p>&nbsp;</p>

### 1.1 User Stories and Use Cases

A user story is an informal, general description of a systems functionality as perceived from the user’s perspective. User stories have the end user at the centre of the dialogue about system functionality. User stories describe which needs the end user wants fulfilled, so that the developer understands the context of the development task: why they are developing the function and what value it must provide the end user. Not all user stories will be supported with this current implementation, which is noted for the specific user story.

Use cases describe the different scenarios a standard supports. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the MedCom Shared EKG Recording standard. The descriptions are targeted at IT-system vendors and the people responsible for the implementation.

The user stories and use cases can be found here:

  * [Use cases](assets/documents/UseCases_SharedEKG_eng v1.0.pdf).
  
*(User stories will be published when available)*

### 1.2 Technical specification

The technical specification for the standard is composed of profiles originating from multiple Implementation Guides (IGs). The Implementation Guide for the MedCom EKG Recording standard is available here: [MedCom EKG Recording Implementation Guide](https://medcomfhir.dk/ig/ekg/).

On the front page of this Implementation Guide, there is a description of the other relevant IGs on which the standard depends. In addition, a dependency tree can be viewed under the Dependencies tab, which is accessible via the More section of the Implementation Guide.

XDS metadata attributes for sharing MedCom’s standard: EKG Recording (In Danish): [XDS-metadata - Deling af EKG.pdf](assets/documents/XDS-metadata - Deling af EKG.pdf)

## 2 Test and Certification
Certification of a system implies both an approved test protocol and a run-through of test scripts via ITB (Interoperability Test Bed). The ITB describes an infrastructure that allows for automated testing of specific use cases and validation against the IGs developed by MedCom.

[Click here to find a description of getting started with ITB](https://medcomdk.github.io/MedComLandingPage/assets/documents/ITBGettingStarted.html).

**Providing an EKG Recording document**
  * ITB test suite (EKG Document Source Suite)
<p>&nbsp;</p>
 
**Receiving an EKG Recording document**
  * ITB test suite (EKG Document Consumer Suite)
<p>&nbsp;</p>

### 2.1 Detailed test information document
A detailed description of the test setup can be found here:

  * [Detailed test setup](assets/documents/Guide-til-test-af-deling-af-EKG.pdf) (in Danish)

## 3 Vendor chat-forum
Vendors using the Shared EKG Recording standard can use this [EKG Zulip FHIR chat forum](https://chat.fhir.org/#narrow/channel/593837-denmark.2Fmedcom.2Fprofile.2FEKG/topic/channel.20events/with/591084298) to ask questions and help each other. 