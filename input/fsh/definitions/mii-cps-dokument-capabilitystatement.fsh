Instance: mii-cps-dokument-capabilitystatement
InstanceOf: CapabilityStatement
Usage: #definition
* insert Version
* insert SP_Publisher

* url = $mii-cps-dokument
* name = "MII_CPS_Dokument_CapabilityStatement"
* title = "MII CPS Dokument CapabilityStatement"
* description = "
    Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss,
    um das Modul Dokument der Medizininformatik Initiative zu implementieren."

* status = #active
* experimental = false
* date = 2025-04-25
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"

* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest.mode = #server

// General requirements
* insert SupportResource(DocumentReference, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/metadata, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)

// Resource requirements
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Resource-identifier, #token, #SHALL)

// DocumentReference requirements
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/DocumentReference-status, #token, #SHALL)
//* insert SupportSearchParam(doc-status, http://hl7.org/fhir/SearchParameter/DocumentReference-doc-status, #token, #SHALL)
* insert SupportSearchParam(type, http://hl7.org/fhir/SearchParameter/DocumentReference-type, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/DocumentReference-category, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/DocumentReference-patient, #reference, #SHALL)
* insert SupportSearchParam(relatesto, http://hl7.org/fhir/SearchParameter/DocumentReference-relatesto, #reference, #SHALL)
* insert SupportSearchParam(relation, http://hl7.org/fhir/SearchParameter/DocumentReference-relation, #token, #SHALL)
* insert SupportSearchParam(relationship, http://hl7.org/fhir/SearchParameter/DocumentReference-relationship, #composite, #SHALL)
* insert SupportSearchParam(description, http://hl7.org/fhir/SearchParameter/DocumentReference-description, #string, #SHALL)
* insert SupportSearchParam(security-label, http://hl7.org/fhir/SearchParameter/DocumentReference-security-label, #token, #SHALL)

// DocumentReference.content requirements
* insert SupportSearchParam(contenttype, http://hl7.org/fhir/SearchParameter/DocumentReference-contenttype, #token, #SHALL)
* insert SupportSearchParam(language, http://hl7.org/fhir/SearchParameter/DocumentReference-language, #token, #SHALL)
* insert SupportSearchParam(location, http://hl7.org/fhir/SearchParameter/DocumentReference-location, #uri, #SHALL)
//* insert SupportSearchParam(creation, http://hl7.org/fhir/SearchParameter/DocumentReference-creation, #date, #SHALL)
* insert SupportSearchParam(format, http://hl7.org/fhir/SearchParameter/DocumentReference-format, #token, #SHALL)

// DocumentReference.context requirements
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/DocumentReference-encounter, #reference, #SHALL)
* insert SupportSearchParam(event, http://hl7.org/fhir/SearchParameter/DocumentReference-event, #token, #SHALL)
* insert SupportSearchParam(period, http://hl7.org/fhir/SearchParameter/DocumentReference-period, #date, #SHALL)
* insert SupportSearchParam(facility, http://hl7.org/fhir/SearchParameter/DocumentReference-facility, #token, #SHALL)
* insert SupportSearchParam(setting, http://hl7.org/fhir/SearchParameter/DocumentReference-setting, #token, #SHALL)