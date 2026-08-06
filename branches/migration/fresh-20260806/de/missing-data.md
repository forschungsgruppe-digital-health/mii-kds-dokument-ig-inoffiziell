# Umgang mit fehlenden Daten - MII IG Dokument v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Umgang mit fehlenden Daten**

## Umgang mit fehlenden Daten

### Umgang mit fehlenden Daten

Es gibt Situationen, in denen Informationen zu einem bestimmten Datenelement fehlen und das Quellsystem den Grund für das Fehlen nicht kennt.

* Liegt dem Quellsystem keine Dateninstanz für ein Element mit einer Mindestkardinalität `0` vor (einschließlich der mit **Must Support** gekennzeichneten Elemente), MUSS das Datenelement in der Ressource **ausgelassen** werden.
* Handelt es sich bei dem Datenelement um ein **obligatorisches Element** (d.h. Mindestkardinalität `1..`), MUSS es **vorhanden sein**, auch wenn das Quellsystem keine Daten hat.

Dies ist im Folgenden zusammengefasst:

### Nicht-codierte Datenelemente

* Es MUSS die Extension [`Data-Absent-Reason`](http://hl7.org/fhir/R4/extension-data-absent-reason.html) am Datentyp und der Code `unknown` verwendet werden.

### Codierte Datenelemente mit ValueSet-Binding „example“, „preferred“ oder „extensible“

* Wenn das Quellsystem **nur Freitext** enthält, SOLLTE ausschließlich das Textelement (`CodeableConcept.text`) genutzt werden.
* Wenn weder Text noch codierte Daten vorhanden sind: 
* wenn das ValueSet einen „unbekannt“-Code enthält, SOLL dieser verwendet werden.
* wenn kein „unbekannt“-Code im ValueSet vorhanden ist, SOLL der Code `unknown` aus dem CodeSystem [DataAbsentReason](http://hl7.org/fhir/R4/codesystem-data-absent-reason.html) genutzt werden.
 

### Codierte Datenelemente mit ValueSet-Binding „required“

* wenn das ValueSet einen „unbekannt“-Code enthält, MUSS dieser verwendet werden.
* wenn kein „unbekannt“-Code im ValueSet vorhanden ist, MUSS ein Konzept aus dem ValueSet verwendet werden, da die Instanz ansonsten **nicht konform** ist.

-------

