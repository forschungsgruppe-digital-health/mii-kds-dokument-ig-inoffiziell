Alias: $AufnahmegrundErsteUndZweiteStelle = http://fhir.de/CodeSystem/dkgev/AufnahmegrundErsteUndZweiteStelle
Alias: $AufnahmegrundDritteStelle = http://fhir.de/CodeSystem/dkgev/AufnahmegrundDritteStelle
Alias: $AufnahmegrundVierteStelle = http://fhir.de/CodeSystem/dkgev/AufnahmegrundVierteStelle
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-act-code = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $kontaktart-de = http://fhir.de/CodeSystem/kontaktart-de
Alias: $Kontaktebene = http://fhir.de/CodeSystem/Kontaktebene
Alias: $Fachabteilungsschluessel = http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel
Alias: $Aufnahmeanlass = http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass
Alias: $EntlassungsgrundErsteUndZweiteStelle = http://fhir.de/CodeSystem/dkgev/EntlassungsgrundErsteUndZweiteStelle
Alias: $EntlassungsgrundDritteStelle = http://fhir.de/CodeSystem/dkgev/EntlassungsgrundDritteStelle
Alias: $location-physical-type = http://terminology.hl7.org/CodeSystem/location-physical-type

// https://simplifier.net/isik-dokumentenaustausch-v4/beispielbesuch
Instance: BeispielBesuch
InstanceOf: Encounter
Usage: #example
* extension.url = "http://fhir.de/StructureDefinition/Aufnahmegrund"
* extension.extension[0].url = "ErsteUndZweiteStelle"
* extension.extension[=].valueCoding = $AufnahmegrundErsteUndZweiteStelle#01 "Krankenhausbehandlung, vollstationär"
* extension.extension[+].url = "DritteStelle"
* extension.extension[=].valueCoding = $AufnahmegrundDritteStelle#0 "Anderes"
* extension.extension[+].url = "VierteStelle"
* extension.extension[=].valueCoding = $AufnahmegrundVierteStelle#1 "Normalfall"
* identifier.type = $v2-0203#VN
* identifier.system = "https://test.krankenhaus.de/fhir/sid/fallnr"
* identifier.value = "0123456789"
* status = #finished
* class = $v3-act-code#IMP
* type[0] = $kontaktart-de#operation
* type[+] = $Kontaktebene#abteilungskontakt
* serviceType = $Fachabteilungsschluessel#0100
* subject = Reference(Patient/PatientinMusterfrau)
* period.start = "2021-02-12"
* period.end = "2021-02-13"
* account = Reference(AbrechnungsfallAmbulant)
* hospitalization.admitSource = $Aufnahmeanlass#E
* hospitalization.dischargeDisposition.extension.url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension.extension[0].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension.extension[=].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension.extension[+].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension.extension[=].valueCoding = $EntlassungsgrundDritteStelle#1 "arbeitsfähig entlassen"
* location.physicalType = $location-physical-type#bd "Bed"
* location.location.identifier.system = "https://test.krankenhaus.de/fhir/sid/locationid"
* location.location.identifier.value = "123"
* location.location.display = "Bett 123"
* serviceProvider.identifier.system = "https://test.krankenhaus.de/fhir/sid/fachabteilungsid"
* serviceProvider.identifier.value = "XYZ"
* serviceProvider.display = "Fachabteilung XYZ"
* partOf = Reference(Einrichtungskontakt)