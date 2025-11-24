Invariant: medcom-datetime-has-time-and-zone
Description: "dateTime must include date, time, and time zone."
Severity: #error
Expression: "$this.toString().matches('^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\\\\.[0-9]+)?(Z|[+-][0-9]{2}:[0-9]{2})$')"