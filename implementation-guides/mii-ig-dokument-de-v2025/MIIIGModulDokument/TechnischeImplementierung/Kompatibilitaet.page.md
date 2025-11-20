---
topic: Kompatibilität 
---

## {{page-title}}

Die Kompatibilität der FHIR DocumentReference-Profile des MII KDS Dokument mit den Profilen aus Gematik ISiK Dokumentenaustausch, KBV MIO Basis und IHE MHD wurde anhand der [Berichte des FHIR Validators](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/) und der technischen Profileigenschaften geprüft. Im Fokus stehen die Kardinalitäten, Must Support (MS)-Kennzeichnungen und die Terminologie-Bindungen, da diese für die automatisierte Transformation und Integration, z.B. in Datenintegrationszentren, entscheidend sind.

### Zusammenfassung

Das MII KDS Dokument-Profil ist im Hinblick auf die verwendbaren Terminologien und die Ausgestaltung der meisten Metadatenfelder bewusst flexibel gehalten. Für zentrale Felder wie `type` und `category` werden KDL- und XDS-Codes empfohlen, aber nicht verpflichtend gefordert. Stattdessen sind auch LOINC und SNOMED CT als Codesysteme explizit unterstützt und können gleichwertig verwendet werden. Die Bindungsstärke ist nicht required und mit einem Constraint versehen. Die Kardinalitäten für diese Felder sind 0..1 (`type`) bzw. 0..* (`category`), und MS ist gesetzt. Damit ist das MII KDS Dokument Profil grundsätzlich offen für lokale, nationale oder internationale Dokumentenklassifikationen und lässt sich mit unterschiedlich strukturierten Quellprofilen gut harmonisieren.

Im Gegensatz dazu ist das ISiK Dokumentenaustausch-Profil deutlich restriktiver. Hier sind KDL- und XDS-Codes für das Feld `type` verpflichtend. Die Bindung ist erforderlich, alternative Codesysteme sind nicht vorgesehen. Auch das Feld `securityLabel` ist im ISiK Dokumentenaustausch-Profil verpflichtend und muss eine der vorgegebenen Vertraulichkeitsstufen enthalten.

Das KBV MIO Basis- und das IHE MHD-Profil sind ähnlich wie das MII KDS Dokument-Profil flexibel. Beide Profile erlauben für `type` und `category` verschiedene Codesysteme, darunter LOINC und SNOMED CT, und setzen keine strikten Vorgaben. Die Felder sind optional, und die Bindungen extensible oder preferred. Damit sind diese Profile für eine breite Palette von Anwendungsfällen und internationale Interoperabilität geeignet.

### Detaillierte Kompatibilitätsbetrachtung

#### Kardinalitäten und Must Support

Im MII KDS Dokument-Profil sind die meisten Metadatenfelder optional, darunter auch die zentralen Felder `type` und `category`. Die Kardinalität für `type` ist 0..1, für `category` 0..*, und MS ist gesetzt. Das bedeutet, dass Instanzen, die aus weniger restriktiven Profilen wie KBV MIO Basis oder IHE MHD stammen, in der Regel ohne Anpassung übernommen werden können, sofern die für die jeweilige Anwendung erforderlichen Metadaten vorhanden sind.

Im ISiK Dokumentenaustausch-Profil hingegen sind Metadatenfelder wie `type`, `subject`, `securityLabel`, `content` und `context` verpflichtend (Kardinalität 1..1) und mit MS versehen. Für eine Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist dies unproblematisch, da alle erforderlichen Informationen vorliegen. Umgekehrt – etwa bei einer (nicht unterstützten) Transformation von MII KDS Dokument nach ISiK Dokumentenaustausch – müssten fehlende Pflichtfelder ergänzt werden.

#### Terminologie-Bindungen

Für das Feld `type` empfiehlt das MII KDS Dokument-Profil die Verwendung von KDL- und XDS-Type-Codes, unterstützt aber ausdrücklich auch LOINC und SNOMED CT. Die Bindung ist extensible, sodass auch andere Codesysteme zulässig sind. Gleiches gilt für das Feld `category` - auch hier sind XDS-Codes empfohlen, aber LOINC und SNOMED CT werden gleichwertig unterstützt. Die Bindungstärke ist bewusst niedrig gehalten, um maximale Flexibilität zu erreichen.

Im ISiK Dokumentenaustausch-Profil ist dies anders spezifiziert: Hier sind KDL- und XDS-Codes für `type` required, und die Kategorie wird aus dem KDL-Code abgeleitet. Andere Codesysteme sind nicht vorgesehen. Das Feld `securityLabel` ist ebenfalls required und muss einen der vorgegebenen Codes enthalten.

Im KBV MIO Basis- und IHE MHD-Profil können verschiedene Codesysteme verwendet werden, darunter LOINC, SNOMED CT und XDS. Die Profile sind damit für internationale und sektorenübergreifende Anwendungen geeignet.

#### Weitere Unterschiede und Gemeinsamkeiten

Ein weiterer wichtiger Unterschied betrifft die Handhabung von Kontextfeldern wie `context.facilityType` und `context.practiceSetting`. Im MII KDS Dokument-Profil sind diese Felder optional, im ISiK Dokumentenaustausch-Profil hingegen verpflichtend. Für die Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist dies unproblematisch, da alle Informationen vorhanden sind. Bei der Transformation von KBV MIO Basis oder IHE MHD nach MII KDS Dokument können diese Metadatenfelder fehlen, was aber aufgrund der Flexibilität des Zielprofils zulässig ist.

Auch bei den Metadatenfelder für den Dokumentenzugriff (`content.attachment.data` und `content.attachment.url`) gibt es Unterschiede in der Kardinalität und MS-Kennzeichnung. Das MII KDS Dokument-Profil erlaubt beide Varianten und ist damit kompatibel zu den unterschiedlichen Ansätzen der Quellprofile.

### Fazit und Empfehlungen

Das MII KDS Dokument-Profil ist so gestaltet, dass es eine hohe Kompatibilität zu den gängigen deutschen und internationalen FHIR-Profilen für Dokumentenmetadaten bietet. Die wichtigsten Metadatenfelder sind optional und unterstützen verschiedene Codesysteme, darunter KDL, XDS, LOINC und SNOMED CT. Für die Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist keine Anpassung der Terminologien erforderlich, da die ISiK-Anforderungen strenger sind. Bei der Transformation von KBV MIO Basis oder IHE MHD nach MII KDS Dokument können die vorhandenen Codes übernommen werden, sofern sie aus unterstützten Codesystemen stammen. Fehlende Pflichtfelder sind im Zielprofil in der Regel kein Problem, da diese dort optional sind.

Für die Praxis bedeutet dies, dass eine automatisierte ETL-Strecke von ISiK Dokumentenaustausch, KBV MIO Basis oder IHE MHD nach MII KDS Dokument technisch gut umsetzbar ist. Die größte Herausforderung besteht darin, bei Bedarf die Terminologien zu harmonisieren und sicherzustellen, dass alle für die jeweilige Anwendung relevanten Metadaten vorhanden sind. Die Flexibilität des MII KDS Dokument-Profils erleichtert die Integration und fördert die Interoperabilität im deutschen und internationalen Kontext.