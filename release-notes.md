## Release Notes

This release is published as a **major release**. It addresses issues that were identified shortly after publication, and as a result, **no implementations of versions 1.0.0, 1.0.1 or 1.0.2 are expected to exist**.  
Therefore, **versions 1.0.0, 1.0.1 and 1.0.2 MUST NOT be used**.

### Changes

- The standard is updated from **version 1.0 to 2.0**
- The `Composition.meta.profile` element is updated to contain version 2.0 in the profile canonical.
- The textual description of the handling of **quotation marks in JSON** has been corrected in the Observation resource description.
- The requirement for **PDF/A** has been loosened to accept standard **PDF**.
- The specification for **line breaks** has been updated; literal newlines in element text are no longer permitted.
- Clarified requirements for **special characters** in the observation note.
- Clarified that `attester`, `event.code`, and `event.detail` are optional XDS metadata elements, but is not used in this standard.
- Updated dependency to **medcom.fhir.dk.document#2.0.2** to include dependency to the updated FormatCode.
- Corrected an issue on the Composition page in the **Description and constraints** for the event start timestamp.
- Minor graphical adjustments to the heading hierarchy on the Composition introduction page.