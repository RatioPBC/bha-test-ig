Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type

Instance: BHAOrganizationExample
InstanceOf: Organization
Title: "Example Organization"
Description: "Example Organization record for a BHA clinic."

Usage: #example

* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234567893"

* active = true
* type = $organization-type#prov
* type.text = "Provider"
* name = "Community Health Clinic"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 555-555-5555"
* telecom[+].system = #email
* telecom[=].value = "hq@chc.org"
* address.line = "100 Hope Place"
* address.city = "Denver"
* address.state = "CO"
* address.postalCode = "11111"
* address.country = "USA"