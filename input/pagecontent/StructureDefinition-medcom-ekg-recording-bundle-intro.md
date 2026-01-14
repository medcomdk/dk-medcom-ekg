# MedCom EKG Recording Bundle
This page describes how the **MedCom Ekg Recording Bundle** profile is used within the MedCom EKG Recording standard. It inherits from the [MedComDocumentBundle](https://medcomfhir.dk/ig/document/StructureDefinition-medcom-document-bundle.html). Please note that the version of the Document Implementation Guide referenced by this link may change over time. For the correct inherited version, refer to the dependency list for this Implementation Guide.

The first entry in the Bundle **MUST** be a MedComEkgRecordingComposition resource.

The `Bundle.timestamp` **MUST** be the time of the assemblement of the Bundle.