Profile: BHAEpisodeOfCare
Parent: https://hl7.org/fhir/R4/episodeofcare.html
Id: bha-episodeofcare
Title: "BHA Episode of Care Profile"
Description: "Episode of Care profile for BHA client treatment programs"

// BHASO Encounter ID - required
* identifier contains clientId 1..1 MS
* identifier[clientId].type = http://
* identifier[clientId].value 1..1 MS
* identifier[clientId] ^short = "BHASO Encounter ID (10 characters max)"

* status MS
* type MS
* patient MS
* diagnosis MS
* period MS
* period.end 1..1 MS

