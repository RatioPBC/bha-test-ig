Extension: BHARace
Id: bha-race
Title: "BHA Race Extension"
Description: "Race classification per BHA requirements"
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* valueCodeableConcept from BHARaceVS (required)
* valueCodeableConcept ^short = "BHA race code"

