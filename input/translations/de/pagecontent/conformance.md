<!-- markdownlint-disable MD041 -->
<!-- Seite "Konformität". Inhalt migriert aus den Simplifier-Quellen
     MIIIGModulDokument/TechnischeImplementierung/Conformance.page.md und
     MIIIGModulDokument/TechnischeImplementierung/Kompatibilitaet.page.md
     (Letztere als Abschnitt "Kompatibilität zu anderen Spezifikationen");
     Direktiven gemäß dem Migrations-Crosswalk konvertiert (Simplifier-
     Seitentitel-Direktive und Simplifier-Frontmatter "topic" entfernt).
     Die Unterseiten-Liste folgt den beiden Menü-Dateien. Englisches
     Gegenstück: input/pagecontent/conformance.md — beide Seiten synchron
     halten. -->

### Konformität

Dieser Abschnitt definiert die Konformitätsanforderungen für Systeme, die die
Profile des Moduls **Dokument** umsetzen. Diese Seite beschreibt, wie
Konformitätsanforderungen dokumentiert werden. Eine ggf. aktuellere Version ist
im
[Kerndatensatz-Wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance)
dokumentiert.

Unterseiten dieses Abschnitts:

* **[Allgemeine Anforderungen](general-requirements.html)** — die
  Konformitäts-Verben (MUSS/SOLLTE/KANN nach RFC-2119), das Beanspruchen von
  Konformität, die Verwendung von Codes in den Profilen und die Erwartungen an
  die FHIR-RESTful-API.
* **[Must-Support](must-support.html)** — was *Must Support* für
  daten-erzeugende und daten-verarbeitende Systeme bedeutet.
* **[Umgang mit fehlenden Daten](missing-data.html)** — wie fehlende oder
  unbekannte Werte kodiert werden.
* **[Sicherheit und Datenschutz](security-and-privacy.html)** — die
  Sicherheits- und Datenschutzbetrachtungen dieses Moduls.

<!-- TODO:REVIEW (Gate B): Die Vorlagen-Unterseiten "Allgemeine Anforderungen",
     "Must-Support" und "Umgang mit fehlenden Daten" geben die MII-weiten
     Konformitätsregeln wieder; die nachfolgend aus der Simplifier-Quelle
     Conformance.page.md übernommenen Abschnitte "Anforderungsdokumentation",
     "Must Support (MS)" und "Fehlende Daten" überschneiden sich inhaltlich
     damit. Dopplung in Gate B auflösen (kürzen oder auf die Unterseiten
     verweisen); bis dahin bleibt der Quelltext hier vollständig erhalten. -->

---

### Anforderungsdokumentation

Anforderungen in dieser Spezifikation werden durch folgende in Großbuchstaben geschriebenen Schlüsselworte (Conformance verbs) basierend auf [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119) gekennzeichnet:

| Deutsch                      	| Englisch    	       |
|------------------------------	|--------------------- |
| MUSS / MÜSSEN                	| MUST / SHALL         |
| DARF NICHT / DÜRFEN NICHT    	| MUST NOT / SHALL NOT |
| VERPFLICHTEND                	| REQUIRED    	       |
| SOLLTE / SOLLTEN             	| SHOULD      	       |
| SOLLTE NICHT / SOLLTEN NICHT 	| SHOULD NOT  	       |
| EMPFOHLEN                    	| RECOMMENDED 	       |
| KANN / OPTIONAL               | MAY                  |

---

### Must Support (MS)

#### Definition

Elemente einer FHIR-Ressource können in einem Profil als obligatorisch oder [Must Support](http://hl7.org/fhir/R4/profiling.html#mustsupport) gekennzeichnet werden.

- **Obligatorische Elemente** sind Elemente mit Mindestkardinalität `1` (z.B. `1..1`, `1..*`). Diese MÜSSEN grundsätzlich vorhanden sein. In Ausnahmefällen können die Werte fehlen -> in diesem Fall MUSS die Abwesenheit durch Mechanismen wie `Data-Absent-Reason Extension` dokumentiert werden (siehe [Abschnitt *Fehlende Daten*](#fehlende-daten))

- **Must Support (MS)** bei einem Element bedeutet, dass Systeme dieses Element unterstützen MÜSSEN, auch wenn die Kardinalität `0..*` lautet. **Unterstützen** heißt: Systeme MÜSSEN in der Lage sein, das Element zu befüllen, zu speichern, anzuzeigen und korrekt zu verarbeiten.

#### Anforderungen

##### Daten-erzeugende Systeme (z.B. FHIR-API eines Datenintegrationszentrums)

Ein konformes daten-erzeugendes System MUSS:
- ein MS-Element mit Daten füllen, sofern diese lokal verfügbar sind (z.B. über ETL aus dem Primärsystem),
- das MS-Element in der Ressource speichern können,
- das MS-Element auf Anfrage (z.B. bei einer Feasibility-Query) bereitstellen.

##### Daten-verarbeitende Systeme (z.B. anfragende Anwendungen)

Ein konformes daten-verarbeitendes System MUSS:
- MS-Elemente dem Benutzer korrekt anzeigen,
- die Werte für Berechnungen oder Weiterverarbeitung berücksichtigen können,
- Ressourceninstanzen mit MS-Elementen fehlerfrei verarbeiten, ohne dass Fehler oder Abbrüche entstehen.

---

### Fehlende Daten

Es gibt Situationen, in denen Informationen zu einem bestimmten Datenelement fehlen und das Quellsystem den Grund für das Fehlen nicht kennt.

- Liegt dem Quellsystem keine Dateninstanz für ein Element mit einer Mindestkardinalität `0` vor (einschließlich der mit *Must Support* gekennzeichneten Elemente), MUSS das Datenelement in der Ressource **ausgelassen** werden.
- Handelt es sich bei dem Datenelement um ein **obligatorisches Element** (d.h. Mindestkardinalität `1..`), MUSS es **vorhanden sein**, auch wenn das Quellsystem keine Daten hat.

Dies ist im Folgenden zusammengefasst:

#### Nicht-codierte Datenelemente
- Es MUSS die Extension [`Data-Absent-Reason`](http://hl7.org/fhir/R4/extension-data-absent-reason.html) am Datentyp und der Code `unknown` verwendet werden.

#### Codierte Datenelemente mit ValueSet-Binding „example“, „preferred“ oder „extensible“
- Wenn das Quellsystem **nur Freitext** enthält, SOLLTE ausschließlich das Textelement (`CodeableConcept.text`) genutzt werden.
- Wenn weder Text noch codierte Daten vorhanden sind:
  - wenn das ValueSet einen „unbekannt“-Code enthält, SOLL dieser verwendet werden.
  - wenn kein „unbekannt“-Code im ValueSet vorhanden ist, SOLL der Code `unknown` aus dem CodeSystem [DataAbsentReason](http://hl7.org/fhir/R4/codesystem-data-absent-reason.html) genutzt werden.

#### Codierte Datenelemente mit ValueSet-Binding „required“
- wenn das ValueSet einen „unbekannt“-Code enthält, MUSS dieser verwendet werden.
- wenn kein „unbekannt“-Code im ValueSet vorhanden ist, MUSS ein Konzept aus dem ValueSet verwendet werden, da die Instanz ansonsten **nicht konform** ist.

---

<!-- TODO:REVIEW (Gate B): 'Kompatibilitaet' mapped as a conformance section -->

### Kompatibilität zu anderen Spezifikationen

<!-- TODO:REVIEW: Der folgende Link auf die Berichte des FHIR Validators zeigt
     auf die bisher veröffentlichte Seite des Quell-Repositorys
     (medizininformatik-initiative.github.io/kerndatensatz-dokument). Nach der
     Migration prüfen, ob die Berichte dort weiterhin gepflegt werden, und den
     Link ggf. aktualisieren. -->

Die Kompatibilität der FHIR DocumentReference-Profile des MII KDS Dokument mit den Profilen aus Gematik ISiK Dokumentenaustausch, KBV MIO Basis und IHE MHD wurde anhand der [Berichte des FHIR Validators](https://medizininformatik-initiative.github.io/kerndatensatz-dokument/) und der technischen Profileigenschaften geprüft. Im Fokus stehen die Kardinalitäten, Must Support (MS)-Kennzeichnungen und die Terminologie-Bindungen, da diese für die automatisierte Transformation und Integration, z.B. in Datenintegrationszentren, entscheidend sind.

<!-- TODO:REVIEW: Die Quellseite Kompatibilitaet.page.md begann mit einer
     "Übersicht" — einem handgebauten Anker-Inhaltsverzeichnis, dessen
     Listeneinträge in der Quelle keine funktionierenden Linkziele hatten.
     Gemäß Crosswalk (keine Anker-Inhaltsverzeichnisse; die Navigation erzeugt
     der Publisher) entfernt. -->

<!--
#### Zusammenfassung

Das MII KDS Dokument-Profil ist im Hinblick auf die verwendbaren Terminologien und die Ausgestaltung der meisten Metadatenfelder bewusst flexibel gehalten. Für zentrale Felder wie `type` und `category` werden KDL- und XDS-Codes empfohlen, aber nicht verpflichtend gefordert. Stattdessen sind auch LOINC und SNOMED CT als Codesysteme explizit unterstützt und können gleichwertig verwendet werden. Die Bindungsstärke ist nicht required und mit einem Constraint hinsichtlich der Empfehlung versehen. Die Kardinalitäten für diese Felder sind 0..1 (`type`) bzw. 0..* (`category`), und MS ist gesetzt. Damit ist das MII KDS Dokument Profil grundsätzlich offen für lokale, nationale oder internationale Dokumentenklassifikationen und lässt sich mit unterschiedlich strukturierten Quellprofilen gut harmonisieren.

Im Gegensatz dazu ist das ISiK Dokumentenaustausch-Profil deutlich restriktiver. Hier sind KDL- und XDS-Codes für das Feld `type` verpflichtend. Die Bindung ist erforderlich, alternative Codesysteme sind nicht vorgesehen. Auch das Feld `securityLabel` ist im ISiK Dokumentenaustausch-Profil verpflichtend und muss eine der vorgegebenen Vertraulichkeitsstufen enthalten.

Das KBV MIO Basis- und das IHE MHD-Profil sind ähnlich wie das MII KDS Dokument-Profil flexibel. Beide Profile erlauben für `type` und `category` verschiedene Codesysteme, darunter LOINC und SNOMED CT, und setzen keine strikten Vorgaben. Die Felder sind optional, und die Bindungen extensible oder preferred. Damit sind diese Profile für eine breite Palette von Anwendungsfällen und internationale Interoperabilität geeignet.
-->
<!-- TODO:REVIEW: Der vorstehende auskommentierte Abschnitt "Zusammenfassung"
     war bereits in der Quelle auskommentiert (nicht gerendert) und wurde
     originalgetreu übernommen. In Gate B entscheiden: aktivieren oder
     entfernen. -->

---

#### Detaillierte Kompatibilitätsbetrachtung

##### Kardinalitäten und Must Support

Im MII KDS Dokument-Profil sind die meisten Metadatenfelder optional, darunter auch die zentralen Felder `type` und `category`. Die Kardinalität für `type` ist 0..1, für `category` 0..*, und MS ist gesetzt. Das bedeutet, dass Instanzen, die aus weniger restriktiven Profilen wie KBV MIO Basis oder IHE MHD stammen, in der Regel ohne Anpassung übernommen werden können, sofern die für die jeweilige Anwendung erforderlichen Metadaten vorhanden sind.

Im ISiK Dokumentenaustausch-Profil hingegen sind Metadatenfelder wie `type`, `subject`, `securityLabel`, `content` und `context` verpflichtend (Kardinalität 1..1) und mit MS versehen. Für eine Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist dies unproblematisch, da alle erforderlichen Informationen vorliegen. Umgekehrt – etwa bei einer möglichen Transformation von MII KDS Dokument nach ISiK Dokumentenaustausch – müssten fehlende Pflichtfelder ergänzt werden.

##### Terminologie-Bindungen

Für das Feld `type` empfiehlt das MII KDS Dokument-Profil die Verwendung von KDL- und XDS-Type-Codes, unterstützt aber ausdrücklich auch LOINC und SNOMED CT. Die Bindung ist extensible, sodass auch andere Codesysteme zulässig sind. Gleiches gilt für das Feld `category` - auch hier sind XDS-Codes empfohlen, aber LOINC und SNOMED CT werden gleichwertig unterstützt. Die Bindungsstärke ist bewusst niedrig gehalten, um maximale Flexibilität zu erreichen.

Im ISiK Dokumentenaustausch-Profil ist dies anders spezifiziert: Hier sind KDL- und XDS-Codes für `type` required, und die Kategorie wird aus dem KDL-Code abgeleitet. Andere Codesysteme sind nicht vorgesehen. Das Feld `securityLabel` ist ebenfalls required und muss einen der vorgegebenen Codes enthalten.

Im KBV MIO Basis- und IHE MHD-Profil können verschiedene Codesysteme verwendet werden, darunter LOINC, SNOMED CT und XDS. Die Profile sind damit für internationale und sektorenübergreifende Anwendungen geeignet.

##### Weitere Unterschiede und Gemeinsamkeiten

Ein weiterer wichtiger Unterschied betrifft die Handhabung von Kontextfeldern wie `context.facilityType` und `context.practiceSetting`. Im MII KDS Dokument-Profil sind diese Felder optional, im ISiK Dokumentenaustausch-Profil hingegen verpflichtend. Für die Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist dies unproblematisch, da alle Informationen vorhanden sind. Bei der Transformation von KBV MIO Basis oder IHE MHD nach MII KDS Dokument können diese Metadatenfelder fehlen, was aber aufgrund der Flexibilität des Zielprofils zulässig ist.

Auch bei den Metadatenfelder für den Dokumentenzugriff (`content.attachment.data` und `content.attachment.url`) gibt es Unterschiede in der Kardinalität und MS-Kennzeichnung. Das MII KDS Dokument-Profil erlaubt beide Varianten und ist damit kompatibel zu den unterschiedlichen Ansätzen der Quellprofile.

#### Fazit und Empfehlungen

Das MII KDS Dokument-Profil ist so gestaltet, dass es eine hohe Kompatibilität zu den gängigen deutschen und internationalen FHIR-Profilen für Dokumentenmetadaten bietet. Die wichtigsten Metadatenfelder sind optional und unterstützen verschiedene Codesysteme, darunter KDL, XDS, LOINC und SNOMED CT. Für die Transformation von ISiK Dokumentenaustausch nach MII KDS Dokument ist keine Anpassung der Terminologien erforderlich, da die ISiK-Anforderungen strenger sind. Bei der Transformation von KBV MIO Basis oder IHE MHD nach MII KDS Dokument können die vorhandenen Codes übernommen werden, sofern sie aus unterstützten Codesystemen stammen. Fehlende Pflichtfelder sind im Zielprofil in der Regel kein Problem, da diese dort optional sind.

Für die Praxis bedeutet dies, dass eine automatisierte Extract-Transform-Load (ETL)-Strecke von ISiK Dokumentenaustausch, KBV MIO Basis oder IHE MHD nach MII KDS Dokument technisch gut umsetzbar ist. Die größte Herausforderung besteht darin, bei Bedarf die Terminologien zu harmonisieren und sicherzustellen, dass alle für die jeweilige Anwendung relevanten Metadaten vorhanden sind. Die Flexibilität des MII KDS Dokument-Profils erleichtert die Integration und fördert die Interoperabilität im deutschen und internationalen Kontext.

---

#### Technischer Überblick

Dieser Abschnitt bietet eine strukturierte Übersicht zur Kompatibilität des MII KDS Dokument Profils mit den Profilen ISiK Dokumentenaustausch, KBV MIO Basis und IHE MHD. Für jedes Vergleichsprofil werden Motivation, Kompatibilität und Einschränkungen detailliert dargestellt.

##### ISiK Dokumentenaustausch

###### Motivation

Die Kompatibilität mit dem ISiK Dokumentenaustausch ist essenziell, um sektorenübergreifende Interoperabilität im deutschen Gesundheitswesen zu gewährleisten. ISiK definiert verbindliche Metadatenstandards für Dokumente in Krankenhäusern. Eine Harmonisierung ermöglicht die reibungslose Integration von ISiK-konformen Dokumenten in MII-Datenintegrationszentren und unterstützt die Umsetzung nationaler Interoperabilitätsziele.

###### Kompatibilität

Das MII KDS Dokument Profil ist als Superset des ISiK Profils konzipiert und deckt alle ISiK-Anforderungen ab. Die wichtigsten Vergleichspunkte sind:

| FHIR-Element      | MII KDS Dokument                                   | ISiK Dokumentenaustausch                | Kompatibilität                        |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `status`          | 1..1, Must Support                                 | 1..1, Must Support                      | ✓ Vollständig kompatibel              |
| `type`            | 0..1, Must Support, extensible (KDL/XDS, LOINC, SNOMED CT) | 1..1, Must Support, required (KDL/XDS)  | ✓ MII KDS Dokument unterstützt ISiK-Codes          |
| `category`        | 0..*, Must Support, extensible                     | 1..1, Must Support, derived from KDL    | ✓ MII KDS Dokument unterstützt ISiK-Ableitung      |
| `subject`         | 1..1, Must Support                                 | 1..1, Must Support                      | ✓ Vollständig kompatibel              |
| `content`         | 1..*, Must Support                                 | 1..1, Must Support                      | ✓ MII KDS Dokument erlaubt mehrere Inhalte         |
| `securityLabel`   | 0..*, extensible                                  | 1..*, required                          | ⚠️ MII KDS Dokument macht Sicherheitslabels optional|
| `context`         | 0..1                                               | 1..1, Must Support                      | ⚠️ MII KDS Dokument macht Kontext optional         |

Anmerkungen:

- **Must Support:** Alle ISiK Must Support Felder sind auch im MII KDS Dokument-Profil als Must Support gekennzeichnet.
- **Terminologie:** MII unterstützt alle ISiK-verpflichtenden Codes und erweitert diese um internationale Codesysteme.

###### Einschränkungen

- **Sicherheitslabels:** Im MII KDS Dokument optional, in ISiK verpflichtend. Bei Transformation von MII nach ISiK müssen ggf. Sicherheitslabels ergänzt werden.
- **Kontext:** ISiK verlangt Kontextinformationen, MII KDS Dokument lässt diese optional. Für ISiK-Kompatibilität müssen Kontextdaten ergänzt werden.
- **Kategorie:** Die ISiK-spezifische Ableitung der Kategorie aus KDL muss bei Transformation beachtet werden.

##### KBV MIO Basis

###### Motivation

Die Kompatibilität mit dem KBV MIO Basis Profil ist entscheidend für die Integration von Dokumenten aus der ambulanten Versorgung und von Medizinischen Informationsobjekten (MIOs) in die MII-Infrastruktur. Eine Harmonisierung ermöglicht den sektorenübergreifenden Austausch zwischen ambulanter und stationärer Versorgung.

###### Kompatibilität

Beide Profile sind auf Flexibilität und Interoperabilität ausgelegt:

| FHIR-Element      | MII KDS Dokument                                   | KBV MIO Basis                           | Kompatibilität                        |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `status`          | 1..1, Must Support                                 | 1..1                                    | ✓ Vollständig kompatibel              |
| `type`            | 0..1, Must Support, extensible                     | 0..1, preferred (LOINC, SNOMED CT, XDS) | ✓ Beide unterstützen gleiche Codes     |
| `category`        | 0..*, Must Support, extensible                     | 0..*, example binding                   | ✓ Vollständig kompatibel              |
| `subject`         | 1..1, Must Support                                 | 0..1                                    | ✓ MII KDS Dokument spezifiziert Pflichtfeld        |
| `content`         | 1..*, Must Support                                 | 1..*                                    | ✓ Vollständig kompatibel              |
| `author`          | 0..*, Must Support                                 | 0..*                                    | ✓ Vollständig kompatibel              |
| `custodian`       | 0..1                                               | 0..1                                    | ✓ Vollständig kompatibel              |

Anmerkungen:

- **Terminologie:** Beide Profile unterstützen LOINC, SNOMED CT und XDS.
- **Kardinalitäten:** Weitgehend kompatibel, das MII KDS Dokument-Profil ist bei `subject` restriktiver.

###### Einschränkungen

- **Subject:** MII KDS Dokument verlangt eine Patientenreferenz, KBV MIO Basis lässt diese optional. Bei Transformation von KBV MIO Basis nach MII KDS Dokument muss ggf. eine Referenz ergänzt werden.
- **Must Support:** MII KDS Dokument kennzeichnet mehr Felder als Must Support.
- **Weitere Einschränkungen:** Keine nennenswerten Inkompatibilitäten.

##### IHE MHD

###### Motivation

Die Kompatibilität mit IHE MHD ermöglicht internationale Interoperabilität und die Anbindung an weltweit etablierte Standards für den Dokumentenaustausch. IHE MHD ist Referenz für FHIR-basierten Dokumentenaustausch in vielen Ländern.

###### Kompatibilität

Das MII KDS Dokument-Profil ist weitgehend mit dem IHE MHD Comprehensive-Profil kompatibel, mit Unterschieden in der Restriktivität:

| FHIR-Element      | MII KDS Dokument                                   | IHE MHD Comprehensive                   | Kompatibilität                        |
|-------------------|----------------------------------------------------|-----------------------------------------|---------------------------------------|
| `masterIdentifier`| 0..1                                               | 1..1                                    | ⚠️ IHE MHD fordert Master Identifier       |
| `status`          | 1..1, Must Support                                 | 1..1                                    | ✓ Vollständig kompatibel              |
| `type`            | 0..1, Must Support, extensible                     | 1..1, preferred (LOINC)                 | ⚠️ IHE MHD fordert Dokumenttyp             |
| `category`        | 0..*, Must Support, extensible                     | 1..1, example binding                   | ⚠️ IHE MHD fordert Kategorie               |
| `subject`         | 1..1, Must Support                                 | 1..1                                    | ✓ Vollständig kompatibel              |
| `securityLabel`   | 0..*, extensible                                  | 1..*, extensible                        | ⚠️ IHE MHD fordert Sicherheitslabels       |
| `content.attachment`| 1..1, Must Support                              | 1..1                                    | ✓ Vollständig kompatibel              |
| `context`         | 0..1                                               | 1..1                                    | ⚠️ IHE MHD fordert Kontext                 |
| `content.format`  | 0..1                                               | 1..1, preferred (IHE Format Codes)      | ⚠️ IHE MHD fordert Format-Code             |

Anmerkungen:

- **Terminologie:** Beide Profile unterstützen LOINC und internationale Codesysteme.
- **Metadaten:** IHE MHD verlangt umfangreichere Metadaten als MII KDS Dokument.

###### Einschränkungen

- **Pflichtfelder:** IHE MHD fordert mehrere Felder als verpflichtend, die im MII KDS Dokument optional sind (`masterIdentifier`, `type`, `category`, `securityLabel`, `context`, `content.format`).
- **Master Identifier:** Für IHE MHD muss ein eindeutiger Master Identifier vergeben werden.
- **Format Codes:** IHE MHD verlangt Format Codes, die ggf. ergänzt werden müssen.
- **Kontext:** Kontextinformationen müssen für IHE MHD bereitgestellt werden.
- **Sicherheitslabel:** Mindestens ein Sicherheitslabel ist für IHE MHD erforderlich.
- **Transformationshinweis:** Für die Transformation von MII KDS Dokument nach IHE MHD sollten fehlende Pflichtfelder ergänzt werden. Die umgekehrte Transformation ist ohne Informationsverlust möglich.

#### Zusammenfassung

Das MII KDS Dokument-Profil ist als flexibles Superset konzipiert und ermöglicht die Harmonisierung von Dokumentenmetadaten aus verschiedenen Quellen. Die Kompatibilität ist mit ISiK und KBV MIO Basis sehr hoch, mit IHE MHD bestehen Anpassungsbedarfe bei Pflichtfeldern und Metadaten. Damit ist eine sektorenübergreifende und internationale Interoperabilität sichergestellt.

**Kompatibilitätsübersicht:**

| Zielprofil              | Kompatibilität        | Haupteinschränkungen                           |
|-------------------------|-----------------------|-------------------------------------------------|
| ISiK Dokumentenaustausch| Sehr hoch             | Sicherheitslabel, Kontext, Kategorie            |
| KBV MIO Basis           | Nahezu vollständig    | Subject-Referenz, Must Support Unterschiede     |
| IHE MHD                 | Hoch, mit Anpassungen | Pflichtfelder (z.B. masterIdentifier, Kontext)  |

---

> [TODO: Ergänzen Sie modul-spezifische Konformitätsaussagen.
>
> Hinweis zur Erfassung: Konformitätsaussagen werden **nicht** automatisch
> erkannt. Jeder normative Satz der englischen Seiten wird ausdrücklich
> markiert — eine Id, ein Doppelpunkt und der Satz, begrenzt durch
> Paragraphenzeichen — und daraus erzeugt der IG-Publisher die Übersichtstabelle
> am Ende der englischen Fassung dieser Seite. Die Syntax steht im Original in
> `input/pagecontent/general-requirements.md`. Diese deutsche Fassung trägt
> bewusst keine Markierungen.
>
> Halten Sie die Menge **kuratiert** — markieren Sie echte Verpflichtungen,
> nicht jeden Satz mit einem fett gesetzten Verb — und formulieren Sie jeden
> markierten Satz für sich verständlich: die Tabelle zeigt ihn ohne Kontext.]

---

{:.bg-info}
**Hinweis:** Eine Liste der Konformitätsaussagen ist in der englischen Fassung
dieses Implementierungsleitfadens verfügbar. Die Aussagen sind ausschließlich
auf den englischen Originalseiten markiert und werden nur dort erzeugt.
