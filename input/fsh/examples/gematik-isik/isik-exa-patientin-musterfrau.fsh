Alias: $identifier-type-de-basis = http://fhir.de/CodeSystem/identifier-type-de-basis
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

// https://simplifier.net/isik-dokumentenaustausch-v4/patientinmusterfrau
Instance: PatientinMusterfrau
InstanceOf: Patient
Usage: #example
* identifier[0].type = $identifier-type-de-basis#GKV
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "A123456789"
* identifier[+].type = $v2-0203#MR
* identifier[=].system = "https://fhir.krankenhaus.example/NamingSystem/PID"
* identifier[=].value = "TestPID"
* identifier[+].use = #secondary
* identifier[=].type = $identifier-type-de-basis#PKV
* identifier[=].value = "1234567890"
* identifier[=].assigner.display = "Test PKV AG"
* active = true
* name[0].use = #official
* name[=].family = "Fürstin von Musterfrau"
* name[=].family.extension[0].url = "http://fhir.de/StructureDefinition/humanname-namenszusatz"
* name[=].family.extension[=].valueString = "Graf"
* name[=].family.extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension[=].valueString = "Musterfrau"
* name[=].family.extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix"
* name[=].family.extension[=].valueString = "von"
* name[=].given = "Erika"
* name[=].prefix = "Dr."
* name[=].prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[=].prefix.extension.valueCode = #AC
* name[+].use = #maiden
* name[=].family = "Gabler"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Gabler"
* gender = #female
* birthDate = "1964-08-12"
* address[0].type = #both
* address[=].line[0] = "Musterweg 2"
* address[=].line[+] = "3. Etage"
* address[=].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line[=].extension[=].valueString = "Musterweg"
* address[=].line[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line[=].extension[=].valueString = "2"
* address[=].line[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* address[=].line[=].extension.valueString = "3. Etage"
* address[=].city = "Musterhausen"
* address[=].postalCode = "98764"
* address[=].country = "DE"
* address[+].type = #postal
* address[=].line = "Postfach 8 15"
* address[=].line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
* address[=].line.extension.valueString = "Postfach 8 15"
* address[=].city = "Musterhausen"
* address[=].postalCode = "98764"
* address[=].country = "DE"