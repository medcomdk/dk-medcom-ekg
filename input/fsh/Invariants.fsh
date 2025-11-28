Invariant: medcom-datetime-has-time-offset-zulu
//"2025-11-27T13:34:56+01:00"
//"2025-11-27T12:34:56.789Z"
//"2025-06-27T14:34:56+02:00"
//"2025-06-27T12:34:56.789Z"
Description: "dateTime must include date, time, and time zone."
Severity: #error
Expression: "$this.toString().matches('^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]([.][0-9]+)?(Z|[+-][0-9]{2}:[0-9]{2})$')"

Invariant: title-matches-identifier
Description: "valueAttachment.title in R5 extension MUST equal identifier.value appended with '.pdf'"
Severity: #error
Expression: "extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x]')
    .valueAttachment.title = identifier.value & '.pdf'"