/* not used
Extension: BHAEthnicity
Id: bha-ethnicity
Title: "BHA Ethnicity Extension"
Description: "Ethnicity classification per BHA requirements"
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept from BHAEthnicityVS (required)
*/
