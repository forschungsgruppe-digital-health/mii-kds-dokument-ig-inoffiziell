---
topic: Szenarien 
---

## {{page-title}}

Grundsätzlich soll mit dem Profil Dokument die Möglichkeit gegeben werden Dokumente aus der klinischen Routine, sowohl intern als auch extern, interoperabel zu nutzen. Die detaillierte Kollektion von Metadaten unterstützt die Auffindbarkeit, Selektion und Weiterverarbeitung von Dokumenten. Dokumente aus der klinischen Routine bilden eine sehr heterogene Gruppe. Eine Vielzahl an unterschiedlichne Quellsystemen und historisch gewachsenen Strukturen wie zum Beispiel interne Hauscodes für die Kategorisierung der Dokumentenarten verhindern an den Standorten selbst und über die Standorte hinweg eine effektive Nutzung.

### Primärdatennutzung

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em">
<a target="_blank" href="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Anwendungsszenarien/Primaerdatennutzung.svg"><img src="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Anwendungsszenarien/Primaerdatennutzung.svg" width="75%"/></a></div>

Die Primärdatennutzung umfasst die Archivierung, Verwaltung und Nutzung klinischer Dokumente innerhalb eines Krankenhauses oder einer klinischen Einrichtung. Hierbei stehen insbesondere die Datenintegrationszentren (`Standort`) im Fokus, die als zentrale Instanzen für die Datenverwaltung fungieren.

#### Archivierung und Auffindbarkeit klinischer Dokumente

Datenintegrationszentren sollen in der Lage sein, klinische Dokumente zusammen mit ihren Metadaten zu archivieren (`Dokument archivieren`) und auffindbar (`Dokumentenarchiv navigieren`) zu machen. Die Metadaten, die im [Dokument-Profil](../TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md) beschrieben werden, umfassen unter anderem:

- Dokumententyp (z. B. Arztbrief, Befundbericht),
- Bezeichner (z. B. eindeutige IDs),
- Erstellungsdatum,
- Autor und
- Zugehörigkeit zu einem Patienten.

Durch die standardisierte Beschreibung dieser Metadaten wird eine effiziente Navigation im Archiv ermöglicht. Ärzte und andere klinische Nutzer können Dokumente gezielt anfragen (`Hausinterne Anfragen bearbeiten`) und durchsuchen, um relevante Informationen zu finden.

#### Konvertierung bestehender Dokumente

Ein weiterer wichtiger Aspekt der Primärdatennutzung ist die Konvertierung (`Dokument konvertieren`) von klinischen Dokumenten und Metadaten, die nach anderen Interoperabilitätsstandards (z. B. HL7 CDA, Gematik ISiK, KBV MIO) vorliegen, in einen Datensatz gemäß dem [Dokument-Profil](../TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md). Diese Konvertierung stellt sicher, dass auch ältere oder anders erzeugte Dokumente und Metadaten integriert und einheitlich verwaltet werden können.

#### Nutzung durch Wissenschaftler: Verarbeitung und Versionierung

Neben den vorher beschriebenen Zwecken spielt die Primärdatennutzung auch eine Rolle in der Forschung. Wissenschaftler können im Rahmen von Natural Language Processing (NLP)-Prozessen Zwischenergebnisse und Verarbeitungsschritte gemäß dem [Dokument-Profil](../TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md) speichern (`Dokument verarbeiten`). Dies ermöglicht:

- Versionierung: Die Beziehung zwischen den einzelnen Zwischenschritten (z.B. Pseudonymisierung, Annotation) kann dokumentiert werden (`Dokument versionieren`, `Dokument pseudonymisieren`).
- Nachvollziehbarkeit: Wissenschaftler können die Verarbeitungsschritte einer NLP-Pipeline nachvollziehen und reproduzieren.

<!--
- Dokumentennavigation am DIZ
Die Erfahrungen aus dem GeMTeX-Projekt haben gezeigt, dass eine feingranulare Archivierung an den meisten Standorten bisher ausgeblieben ist. 

- Transformationsszenarien, z.B. ISiK -> KDS

- Nachvollziehbarkeit NLP Verarbeitung
Versionierung Status Pseudonym status annotiert 
-->

### Sekundärdatennutzung

<div style="text-align: center; margin-top: 2em; margin-bottom: 2em">
<a target="_blank" href="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Anwendungsszenarien/Sekundaerdatennutzung.svg"><img src="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Anwendungsszenarien/Sekundaerdatennutzung.svg" width="75%"/></a></div>

Die Sekundärdatennutzung zielt auf die Bereitstellung von klinischen Dokumenten und deren Metadaten für Forschungszwecke ab. Hierbei steht die Nutzung durch Wissenschaftler:innen im Vordergrund, die auf Basis der archivierten Daten neue Erkenntnisse gewinnen möchten.

#### Nutzung eines mit Metadaten angereicherten Dokumentenkorpus

Wissenschaftler:innen (`Wissenschaftler:in`) können auf einen mit Metadaten angereicherten Korpus klinischer Dokumente zugreifen (`Korpus navigieren`). Die Metadaten, die gemäß dem [Dokument-Profil](../TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md) beschrieben werden, ermöglichen eine gezielte Auswahl und Filterung der Dokumente. So können beispielsweise Dokumente eines bestimmten Typs, aus einem bestimmten Zeitraum oder von einer bestimmten Kohorte identifiziert werden.

#### Forschungsdatenportal und Machbarkeitsanfragen

Ein zentrales Element der Sekundärdatennutzung ist das Forschungsdatenportal (`Forschungsdatenportal`), das Forschenden den Zugang zu Forschungsdaten erleichtert. Darüber können Wissenschaftler:innen Machbarkeitsanfragen stellen (`Machbarkeitsanfrage stellen`), um zu prüfen, ob die benötigten Daten für eine geplante Studie verfügbar sind. Das Forschungsdatenportal nutzt die im [Dokument-Profil](../TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md) hinterlegten Spezifikationen, um die Benutzeroberfläche für die Machbarkeitsanfragen zu generieren (`Profil auslesen`, `Codes auslesen`). Beispielsweise werden die Metadaten zu Dokumententypen, Bezeichnern und Beschriftungen verwendet, um die Formulare dynamisch zu erstellen. Dies gewährleistet eine konsistente und benutzerfreundliche Darstellung der verfügbaren Daten.

<!--
- FDPG (Metadaten, mit Daten/Texten)
- Korpusnavigation
-->