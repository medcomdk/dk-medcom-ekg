Invariant: medcom-datetime-has-time-and-zone
Description: "dateTime must include date, time, and time zone."
Severity: #error
Expression: "$this.toString().matches('^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}(\\.\\d+)?(Z|[+-]\\d{2}:\\d{2})$')"