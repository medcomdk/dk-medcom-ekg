## Release Notes

This release is published as a **patch release**. It addresses issues that were identified shortly after publication, and as a result, **no implementations of versions 1.0.0 or 1.0.1 are expected to exist**.  
Therefore, **versions 1.0.0 and 1.0.1 MUST NOT be used**.

### Changes

- **Relaxed cardinality for the observation note**  
  The observation note requirement was incorrectly profiled. The cardinality has been changed from `1..1` to `0..1`.

- **Corrected Composition profile description**  
  A text in the profile description incorrectly stated that an Observation from the MedCom Document IG must be used. This has been corrected to be an Observation from this EKG Recording IG.  
  There is no change to the actual profiling of the resource.

- **Removed dependency on the MHD IG**  
  The dependency to the MHD Implementation Guide has been removed, as it was only used for `DocumentReference`, which is not included in this IG. This has no influence on the profiles in this IG.