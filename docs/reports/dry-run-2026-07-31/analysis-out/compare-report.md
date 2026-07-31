# IG-Vergleich (2 IGs)

_Objektiver Kennzahlen-Vergleich der analysierten IGs inkl. Linguistik. Die Spalte „Σ Gesamt“ zeigt den aggregierten Gesamtumfang; faire Einordnung über normalisierte Werte._

## Kennzahlen (je IG + Gesamt)

<div align="center">

| Metrik | dokument | basis | Σ Gesamt |
|---|---|---|---|
| Artefakte gesamt | 18 | 62 | 80 |
| Profile | 1 | 7 | 8 |
| ValueSets | 6 | 14 | 20 |
| CodeSystems | 1 | 4 | 5 |
| Beispiele | 7 | 28 | 35 |
| Narrative-Inhalts-Seiten | 15 | 22 | 37 |
| Wörter gesamt | 7382 | 13655 | 21037 |
| Plattform-Direktiven | 130 | 4 | 134 |
| Doppelte Inhaltsblöcke | 3 | 7 | 10 |
| Nicht referenzierte Bilder | 1 | 7 | 8 |
| Dependencies (floating) | 5 (0) | 4 (0) | — |
| Ø Wörter / Seite | 492,1 | 620,7 | — |
| Median Wörter / Seite | 391 | 206 | — |
| Reifegrad /100 | 75 | 86 | — |
| Hersteller-Lock-in /100 | 100 | 2 | — |
| Standard-Terminologie % | 97 | 99 | — |
| Bus-Faktor % (Top-Autor) | 100 | 100 | — |

</div>

## Portfolio: Wiederverwendung & Konsolidierung

_Artefakte mit identischem Namen in mehreren IGs deuten auf Konsolidierungspotenzial (gemeinsames Basis-Modul) hin; senkt den Gesamt-Wartungsaufwand._

_Keine namensgleichen Artefakte über die IGs gefunden — geringe direkte Überlappung._

## Normalisierte Kennzahlen (fairer Vergleich)

<div align="center">

| Metrik | dokument | basis |
|---|---|---|
| Direktiven je Seite | 8.67 | 0.18 |
| Beispiele je Profil | 7.0 | 4.0 |

</div>

## Umfang: Artefakte vs. Plattform-Direktiven

<div align="center">

```mermaid
%%{init: {'theme':'base','themeVariables':{"quadrant1Fill": "#4E79A7", "quadrant2Fill": "#F28E2B", "quadrant3Fill": "#59A14F", "quadrant4Fill": "#E15759", "quadrant1TextFill": "#FFFFFF", "quadrant2TextFill": "#FFFFFF", "quadrant3TextFill": "#FFFFFF", "quadrant4TextFill": "#FFFFFF", "quadrantPointFill": "#1A1A1A", "quadrantPointTextFill": "#1A1A1A", "quadrantXAxisTextFill": "#1A1A1A", "quadrantYAxisTextFill": "#1A1A1A", "quadrantTitleFill": "#1A1A1A"}}}%%
quadrantChart
    title Artefakte vs. Direktiven
    x-axis Wenige_Artefakte --> Viele_Artefakte
    y-axis Wenige_Direktiven --> Viele_Direktiven
    quadrant-1 viele & direktivenlastig
    quadrant-2 wenige & direktivenlastig
    quadrant-3 wenige & direktivenarm
    quadrant-4 viele & direktivenarm
    "dokument": [0.29, 1.0]
    "basis": [1.0, 0.031]
```

</div>

# Anhang: Methodik & Metrik-Erklärung

_Beschreibung jeder im Report verwendeten Kennzahl - was sie misst und wie sie ermittelt wird - zur Nachvollziehbarkeit._

<div align="center">

| Kennzahl | Was es misst | Herkunft / Berechnung |
|---|---|---|
| Artefakte (publiziert) | Anzahl der vom IG bereitgestellten FHIR-Konformitätsressourcen je Typ (Profile, Extensions, ValueSets, CodeSystems, Logical Models, CapabilityStatements, Beispiele). | Zählung der Deklarationen in input/fsh (bzw. generierten Ressourcen); interne FSH-Konstrukte (RuleSets/Invarianten/Mappings) separat, nicht im Total. |
| Plattform-/Simplifier-Direktiven | Vorkommen plattformspezifischer Platzhalter in den Erklärseiten, die ein generischer IG Publisher nicht versteht. | Mustererkennung je Direktiven-Typ in den Narrative-Seiten; nicht abgedeckte -> UNBEKANNT. |
| Linguistik (Wörter/Seite) | Textumfang der Inhalts-Seiten als Durchschnitt, Median und Extremwerte - Indikator für Dokumentations- und Übersetzungsumfang. | Wortzählung je Inhalts-Seite (ohne Stubs). |
| Inhaltliche Dopplungen | Identische Textabsätze (>= 12 Wörter) bzw. identische Seiten - Hinweis auf Redundanz/Aufräumpotenzial. | Hash-Vergleich normalisierter Absätze/Dateien. |
| Repo-Hygiene (ungenutzte Dateien) | Bilder/Beispiele, die in keiner Erklärseite referenziert sind (Dead-Code-Analogie). | Heuristik: Datei-/Artefaktname kommt im Seitentext nicht vor (kein Beweis für Ungenutztheit). |
| Reifegrad (Score) | Freigabe-Indikator 0-100 mit Band (in Entwicklung/fortgeschritten/technisch reif). | Mittelwert aus Status, Doku-Vollständigkeit (Inhalt vs. Stubs), Beispiel-Abdeckung der Profile und Governance-Reife. |
| Hersteller-Lock-in | Bindung an die Quellplattform durch proprietäre Direktiven (0-100, Band). | Grobe Heuristik aus Direktiven je Seite. |
| Standard-Terminologie-Anteil | Anteil standardisierter Terminologie (SNOMED/LOINC/ICD/UCUM) gegenüber Eigen-Terminologie. | Grobe Heuristik aus Textvorkommen der Standardsysteme vs. Anzahl lokaler CodeSystems. |
| Wiederverwendung externer Profile | Anteil der Profil-Parents, die auf externen Basisbausteinen statt eigenem Material beruhen. | FSH Parent:-Referenzen; abstrakte LM-Basistypen (Element/Base/...) ausgeschlossen. |
| FHIR-Versions-Aktualität | Wie aktuell die FHIR-Basis ist (R4/R4B/R5) - Zukunftssicherheit. | fhirVersion aus sushi-config, gegen bekannte Versionslinie eingeordnet. |
| Pflege-Kadenz | Lebendigkeit der Pflege (Commits/Jahr, Tage seit letztem Commit). | Git-Historie des analysierten Repos. |
| Bus-Faktor (Wissenskonzentration) | Schlüsselpersonen-Risiko: Anteil des Top-Autors an allen Commits. | Git-Historie, Autoren nach E-Mail gruppiert (Alias-robust). |
| Terminologie-Lizenz | Lizenz-/IP-Risiko gebundener Terminologien (z.B. SNOMED CT lizenzpflichtig). | Erkennung der Standardsysteme im FSH + hinterlegte Lizenzeinstufung. |
| Unterdrückte Warnungen | Risiko, dass ausgeblendete QA-Meldungen echte Fehler verbergen (breit/Wildcard vs. eng). | Klassifikation der Einträge in input/ignoreWarnings.txt. |
| Datenschutz-Substanz | Ob die Datenschutz-Seite substanziell ist und ob Beispiele PII-artige Daten enthalten. | Wortzahl der security-privacy-Seite + Heuristik (birthDate/name) in Beispielen. |
| Breaking-Change-Risiko | Kompatibilitätsbruch gegenüber der publizierten Vorversion. | Nur per Build/Vorversions-Diff ermittelbar - im statischen Modus nicht erhoben (null). |
| Statisch vs. Build | Erhebungsmodus jeder Kennzahl. | static = nur Quelldateien/Git; build = erfordert IG-Publisher-Lauf (qa.json); extern = Registry/Netz. Nicht statisch erhebbare Größen bleiben null und sind so markiert. |

</div>
