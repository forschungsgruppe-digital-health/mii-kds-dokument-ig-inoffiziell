ValueSet: MII_VS_Dokument_Dokument_Fachgebiet
Id: mii-vs-dokument-dokument-fachgebiet
Title: "MII VS Dokument Dokument Fachgebiet"
Description: "ValueSet zum erzeugenden Fachgebiet eines Dokuments"
* insert VS_Header($mii-vs-dokument-dokument-fachgebiet)
* include codes from system $SCT where concept descendant-of #362981000 // Qualifier value (qualifier value)
* include codes from valueset $ihe-xds-practice-setting-code-vs