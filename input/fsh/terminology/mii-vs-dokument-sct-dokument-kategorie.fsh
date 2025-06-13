ValueSet: MII_VS_Dokument_SCT_Dokument_Kategorie
Id: mii-vs-dokument-sct-dokument-kategorie
Title: "MII VS Dokument SCT Dokument Kategorie"
Description: "SNOMED CT ValueSet zur Kategorie (oder Klasse) eines Dokuments"
* insert VS_Header($mii-vs-dokument-sct-dokument-kategorie)
* include codes from system $SCT where concept descendant-of #419891008 // Record artifact (record artifact)