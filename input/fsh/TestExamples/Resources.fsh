//Patient
Instance: f98285ec-c3bc-4283-a840-0e276cd4bb1c
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0305004030"
* birthDate = "2000-05-03"
* name[official].family = "EKG"
* name[official].given[0] = "Mia"
* name[official].given[+] = "Med"
* name[official].use = #official
* gender = #female

//PractitionerRole
Instance: 613a8bdb-5f05-483c-bc9b-9bf8f4b12915
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:caaa160c-1a20-4b86-a65d-3ded47f51840"
* organization = Reference(44638fdf-4fd2-4e38-83cb-00b92403ffaf)
* practitioner = Reference(c78ad403-3cc2-477f-9861-7c76cafe7e8c)
* code = $PractitionerRole#sygeplejerske

//Practitioner
Instance: c78ad403-3cc2-477f-9861-7c76cafe7e8c
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ee8c7fa9-fdef-4e15-9986-985c956cc66c"
* name.given[0] = "Sidsel"
* name.given[+] = "Marie"
* name.family = "Andersen"

//Organization
Instance: 44638fdf-4fd2-4e38-83cb-00b92403ffaf
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "61741000016007"
* name = "Lægerne Hasseris Bymidte"