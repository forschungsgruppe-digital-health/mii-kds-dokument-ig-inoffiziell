Invariant: mii-iv-dokument-dokument-category
Description: "Empfehlung: Eine Kodierungen aus XDS SOLLTE in `category` vorhanden sein"
Severity: #warning
Expression: "coding.where(system = 'http://ihe-d.de/CodeSystems/IHEXDSclassCode').exists()"