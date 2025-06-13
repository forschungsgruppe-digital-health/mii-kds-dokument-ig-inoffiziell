ValueSet: MII_VS_Dokument_SCT_Dokument_Typ
Id: mii-vs-dokument-sct-dokument-typ
Title: "MII VS Dokument SCT Dokument Typ"
Description: "SNOMED CT ValueSet zum Typ eines Dokuments"
* insert VS_Header($mii-vs-dokument-sct-dokument-typ)
* include codes from system $SCT where concept descendant-of #404684003 // Clinical finding (finding)
* include codes from system $SCT where concept descendant-of #71388002 // Procedure (procedure)
* include codes from system $SCT where concept descendant-of #362981000 // Qualifier value (qualifier value)