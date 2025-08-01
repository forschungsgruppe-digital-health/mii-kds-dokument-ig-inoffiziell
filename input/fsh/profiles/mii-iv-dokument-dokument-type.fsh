Invariant: mii-iv-dokument-dokument-type
Description: "Empfehlung: Mindestens eine Kodierungen aus KDL oder XDS SOLLTE in `type` vorhanden sein"
Severity: #warning
Expression: "coding.where(system = 'http://dvmd.de/fhir/CodeSystem/kdl').exists() or coding.where(system = 'http://ihe-d.de/CodeSystems/IHEXDStypeCode').exists()"