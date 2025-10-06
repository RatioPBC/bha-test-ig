Profile: BHABaby
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: bha-baby
Title: "Colorado BHA Special Connections-Baby Profile"
Description: "Client profile for BHA CCAR reporting with required demographics"

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open

// BHASO Client ID - required
* identifier contains clientId 1..1 MS
* identifier[clientId].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
* identifier[clientId].value 1..1 MS
* identifier[clientId] ^short = "BHASO Client ID (10 characters max)"

// Medicaid ID when applicable  
* identifier contains medicaidId 0..1 MS
* identifier[medicaidId].type = http://terminology.hl7.org/CodeSystem/v2-0203#MA
* identifier[medicaidId].value 1..1 MS
* identifier[medicaidId] ^short = "Medicaid ID (X999999 format)"

// Colorado PEAK state ID when applicable  
* identifier contains PEAKID 0..1 MS
* identifier[PEAKID].type = http://terminology.hl7.org/CodeSystem/v2-0203#PI
* identifier[PEAKID].value 1..1 MS
* identifier[PEAKID] ^short = "PEAK ID (X999999 format)"

// Social Security number when applicable  
* identifier contains SSN 0..1 MS
//* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[SSN].value 1..1 MS
* identifier[SSN].type = http://terminology.hl7.org/CodeSystem/v2-0203#SS
* identifier[SSN] ^short = "Social Security number"



// Required demographics
// NOTE: Race, Ethnicity, and BirthSex should be restored to 1..1 when I can debug the example Client 
* name 1..* MS
* name ^short = "A name associated with the baby."
* birthDate 1..1 MS
* gender 1..1 MS
* deceasedBoolean 1..1 MS
* extension[birthsex] 1..1
