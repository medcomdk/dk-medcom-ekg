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

//Patient with ENHANCED name and address protection
Instance: c48dec51-a234-482f-86b6-271305272b0b
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0805919396"
* birthDate = "1991-05-08"
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

//Test patients for invalid files:

Instance: ccc3f30d-c5e2-4329-b2ec-6b6f233244b2
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "1605703859"
* birthDate = "1970-05-16"
* name[official].family = "Ærøholm "
* name[official].given[0] = "Jørn"
* name[official].use = #official
* gender = #male

Instance: a2c366dd-90db-441a-bbfd-d0bb61041352
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "1305044098"
* birthDate = "2004-05-13"
* name[official].family = "Nørgård"
* name[official].given[0] = "Maja"
* name[official].use = #official
* gender = #female

Instance: 8655b003-7021-4378-9d2e-450c148d3401
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "1507543908"
* birthDate = "1954-07-15"
* name[official].family = "Vestergaard"
* name[official].given[0] = "Inga"
* name[official].use = #official
* gender = #female

Instance: 9f292792-4622-46aa-b30b-6db6d120a262
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0108860774"
* birthDate = "1986-08-01"
* name[official].family = "Østerby"
* name[official].given[0] = "Lærke"
* name[official].use = #official
* gender = #female

Instance: 7e1b4d90-6f46-41fb-95d1-ededb3c807d2
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2809900544"
* birthDate = "1990-09-28"
* name[official].family = "Guðmundsdóttir"
* name[official].given[0] = "Þórunn"
* name[official].use = #official
* gender = #female

Instance: 3a570d0e-9210-48e1-8f52-9ea24fb492ed
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2105704081"
* birthDate = "1970-05-21"
* name[official].family = "Agerbo"
* name[official].given[0] = "Thorkild"
* name[official].use = #official
* gender = #male

Instance: 326ef192-ef30-4c5c-a838-637377b3fdf5
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0705008590"
* birthDate = "2000-05-07"
* name[official].family = "Myrup"
* name[official].given[0] = "Sigrid"
* name[official].use = #official
* gender = #female

Instance: ff9789de-7711-4ead-8dea-73d39bc71a8b
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0605614345"
* birthDate = "1961-05-06"
* name[official].family = "Mikkelsen"
* name[official].given[0] = "Halfdan"
* name[official].use = #official
* gender = #male

Instance: b2a8f340-18d8-4f88-bad7-94fc95993297
InstanceOf: MedComDocumentPatient
Title: "Patient"
Description: "Instance of a patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "1005824814"
* birthDate = "1982-05-10"
* name[official].family = "Falkenberg"
* name[official].given[0] = "Yrsa"
* name[official].given[+] = "Eline"
* name[official].given[+] = "Solveig"
* name[official].use = #official
* gender = #female