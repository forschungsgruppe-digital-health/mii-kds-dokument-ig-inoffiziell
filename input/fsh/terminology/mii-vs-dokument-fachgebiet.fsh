ValueSet: MII_VS_Dokument_Fachgebiet
Id: mii-vs-dokument-fachgebiet
Title: "MII VS Dokument Fachgebiet"
Description: "ValueSet zum erzeugenden Fachgebiet eines Dokuments"
* insert VS_Header($mii-vs-dokument-fachgebiet)
* include codes from system $SCT where concept descendant-of #394733009 // Medical specialty (qualifier value)
* include codes from valueset $ihe-xds-practice-setting-code-vs