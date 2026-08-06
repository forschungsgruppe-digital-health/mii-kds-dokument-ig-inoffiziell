# Must-Support - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Must-Support**

## Must-Support

### Must-Support

### Definition

Elemente einer FHIR-Ressource können in einem Profil als obligatorisch oder [Must Support](http://hl7.org/fhir/R4/profiling.html#mustsupport) gekennzeichnet werden.

* **Obligatorische Elemente** sind Elemente mit Mindestkardinalität `1` (z.B. `1..1`, `1..*`). Diese MÜSSEN grundsätzlich vorhanden sein. In Ausnahmefällen können die Werte fehlen -> in diesem Fall MUSS die Abwesenheit durch Mechanismen wie `Data-Absent-Reason Extension` dokumentiert werden (siehe [Umgang mit fehlenden Daten](missing-data.md))
* **Must Support (MS)** bei einem Element bedeutet, dass Systeme dieses Element unterstützen MÜSSEN, auch wenn die Kardinalität `0..*` lautet. **Unterstützen** heißt: Systeme MÜSSEN in der Lage sein, das Element zu befüllen, zu speichern, anzuzeigen und korrekt zu verarbeiten.

### Anforderungen

#### Daten-erzeugende Systeme (z.B. FHIR-API eines Datenintegrationszentrums)

Ein konformes daten-erzeugendes System MUSS:

* ein MS-Element mit Daten füllen, sofern diese lokal verfügbar sind (z.B. über ETL aus dem Primärsystem),
* das MS-Element in der Ressource speichern können,
* das MS-Element auf Anfrage (z.B. bei einer Feasibility-Query) bereitstellen.

#### Daten-verarbeitende Systeme (z.B. anfragende Anwendungen)

Ein konformes daten-verarbeitendes System MUSS:

* MS-Elemente dem Benutzer korrekt anzeigen,
* die Werte für Berechnungen oder Weiterverarbeitung berücksichtigen können,
* Ressourceninstanzen mit MS-Elementen fehlerfrei verarbeiten, ohne dass Fehler oder Abbrüche entstehen.

-------

