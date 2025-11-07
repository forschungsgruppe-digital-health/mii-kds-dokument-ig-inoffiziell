ValueSet: MII_VS_Dokument_Dokument_Einrichtungsart
Id: mii-vs-dokument-dokument-einrichtungsart
Title: "MII VS Dokument Dokument Einrichtungart"
Description: "ValueSet zur Art der erzeugenden Einrichtung eines Dokuments"
* insert VS_Header($mii-vs-dokument-dokument-einrichtungsart)
* include codes from system $SCT where concept descendant-of #440654001 // Inpatient environment (environment)
* include codes from system $SCT where concept descendant-of #440655000 // Outpatient environment (environment)
* include codes from system $SCT where concept descendant-of #43741000 // Site of care (environment)
* include codes from valueset $ihe-xds-healthcare-facility-type-code-vs