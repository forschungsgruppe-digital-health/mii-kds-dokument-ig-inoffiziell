<!-- markdownlint-disable MD041 -->
<!--
  Startseite — DEUTSCHE Fassung (maßgeblich). Quelle:
  implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/Index.page.md.
  Der Abschnitt "Weiterführende Leitfäden" enthält nur die Link-Liste der in
  Kontext-Bezuege.page.md und Referenzen.page.md genannten Leitfäden — die
  inhaltliche Substanz dieser beiden Seiten liegt auf der Seite
  implementer-guidance. Das Quell-Inhaltsverzeichnis entfällt: Navigation und
  Seitentitel erzeugt das Template. Englische Fassung:
  input/pagecontent/index.md (maschinelle Übersetzung, Review an Gate C).
-->

### Einleitung

Die vorliegende Spezifikation beschreibt die FHIR Repräsentation des Kerndatensatz Moduls Dokument der Medizininformatik Initiative.
Im Folgenden werden die Use Cases des Moduls, sowie die dazugehörigen FHIR Profile und Terminologie Ressourcen in ihrer verbindlichen Form beschrieben.

| Veröffentlichung | |
|---------|---|
| Datum   | 11.03.2026 |
| Version | 2026.0.1 |
| Status  | Active |
| Realm   | DE |
<!-- | Reifegrad | MII Maturity Model (MM0\|MM1\|MM2\|MM3)| -->

### Zielgruppe

Dieser Implementierungsleitfaden richtet sich an:

<div class="mii-highlight mii-highlight-blue">
<h5>Implementierende</h5>
<p>Datenintegrationszentren (DIZ), Software-Entwickelnde und System-Architekt:innen, die FHIR-basierte Lösungen umsetzen.<br/>
→ siehe <a href="profiles-and-extensions.html">Profile und Extensions</a> und <a href="logical-models.html">Logische Modelle</a>.</p>
</div>

<div class="mii-highlight mii-highlight-green">
<h5>Forschende</h5>
<p>Wissenschaftler:innen, die MII-Daten für die medizinische Forschung nutzen.<br/>
→ siehe <a href="researcher-guidance.html">Anleitung für Forschende</a>.</p>
</div>

### Inhalt dieses Leitfadens

- **[Anleitung](guidance.html)** — Einstieg und fachliche Hinweise.
- **[Konformität](conformance.html)** — verbindliche Anforderungen, Must-Support
  und der Umgang mit fehlenden Daten.
- **[Profile und Extensions](profiles-and-extensions.html)** und
  **[Terminologie](terminology.html)** — die technischen Artefakte.
- **[Beispiele](examples.html)** — Beispielinstanzen.

### Weiterführende Leitfäden

Abgeglichene, kompatible Standards:

* [KBV Basis-Profile mit Medizinischen Informationsobjekten (MIO)](https://simplifier.net/base1x0)
* [Gematik Informationstechnische Systeme im Krankenhaus (ISiK) Dokumentenaustausch](https://simplifier.net/guide/isik-dokumentenaustausch-stufe-5)
* [IHE Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD)

MII-KDS-Module mit Bezug zu diesem Modul ([Bezüge im Detail](implementer-guidance.html)):

* [Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)
* [Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)
* [Consent](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.consent)
* [Studie](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie)
* [Bildgebung](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.bildgebung)
* [Molgen Befund](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen)
* [Meta](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.meta)

Weitere Leitfäden:

* [FHIR IG Registry](https://fhir.org/guides/registry/) — weitere FHIR-Implementierungsleitfäden

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik Initiative erstellt wurden und unterliegt per Governance Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V..

### Ansprechpartner

* Frank Meineke, SMITH
* Jakob Faller, MIRACUM

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik wird in Form von 'Issues' im GitHub Projekt stets gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)

* Frank Meineke, SMITH, Informationsmodellierung/Fachvertretung
* Jakob Faller, MIRACUM, Informationsmodellierung/Fachvertretung
* Katja Hoffmann, MIRACUM/DigiHub MiHUBx, Technische Umsetzung
* Marcel Susky, MIRACUM/DigiHub MiHUBx, Informationsmodellierung/Fachvertretung/Technische Umsetzung
* Martin Boeker, MIRACUM, Fachvertretung
* Noemi Deppenwiese, MIRACUM, Technische Umsetzung
* Thomas Ganslandt, MIRACUM, Fachvertretung

### Copyright-Hinweis, Nutzungshinweise

<p>
    © 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin. <br>
    Dieses Werk ist lizenziert unter der
    <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">Creative Commons Namensnennung 4.0 International Lizenz</a>.
</p>
<a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">
    <img src="https://licensebuttons.net/l/by/4.0/88x31.png" alt="CC BY 4.0 Logo" style="border:0;">
</a>

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die Copyright HL7 International gilt.
