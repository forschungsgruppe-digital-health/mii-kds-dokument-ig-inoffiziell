ValueSet: MII_VS_Dokument_SCT_Dokument_Einrichtung
Id: mii-vs-dokument-sct-dokument-einrichtung
Title: "MII VS Dokument SCT Dokument Einrichtung"
Description: "SNOMED CT ValueSet zur erzeugenden Einrichtung eines Dokuments"
* insert VS_Header($mii-vs-dokument-sct-dokument-einrichtung)
* include codes from system $SCT where concept descendant-of #440654001 // Inpatient environment (environment)
* include codes from system $SCT where concept descendant-of #440655000 // Outpatient environment (environment)
* include codes from system $SCT where concept descendant-of #43741000 // Site of care (environment)