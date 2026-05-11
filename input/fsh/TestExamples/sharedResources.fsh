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

//Patient with name and address protection
Instance: 70e06ce3-6197-4377-82a2-4892cc9aef38
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0605009514"
* birthDate = "2000-05-06"
* name[official].family = "ADRESSEBESKYTTET"
* name[official].given[0] = "ADRESSEBESKYTTET"
* name[official].given[+] = "ADRESSEBESKYTTET"
* name[official].use = #official
* gender = #female

//Organization with no name (SLB Hjertesygdomme ambulatorium (Kolding))
Instance: 7802dceb-5199-4b12-adac-240225948867
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "913231000016003"
* name = ""

//Patient with alternative id + additional elements
Instance: dk.patient-12345
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0305004030"
* birthDate = "2000-05-03"
* name[official].use = #official
* gender = #female
* telecom[0].system = #phone
* telecom[0].value = "12345678"
* telecom[0].use = #mobile
* telecom[0].rank = 1
* name[official].given[0] = "Mia"
* name[official].given[+] = "Med"
* name[official].family = "EKG"

//PractitionerRole with text role
Instance: ab05bfa2-2031-41ab-bc35-d278f1ea8786
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ddcb54c1-6bcb-4d43-99ed-53d76b057a1e"
* organization = Reference(44638fdf-4fd2-4e38-83cb-00b92403ffaf)
* practitioner = Reference(c78ad403-3cc2-477f-9861-7c76cafe7e8c)
* code.text = "Hjertelæge"