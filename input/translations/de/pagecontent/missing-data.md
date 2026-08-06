<!-- markdownlint-disable MD041 -->
<!-- MIGRATED CONTENT — provenance:
     implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/TechnischeImplementierung/Conformance.page.md (Abschnitt „Fehlende Daten“)
     source commit 9f76fed80cb810c0f39a263d0162c9c2e64abc1e, migrated 2026-08-06.
     Simplifier directives were translated per the mii-ig-migration FQL crosswalk.
     No Liquid literal may appear in this file, including inside this comment. -->

### Umgang mit fehlenden Daten

Es gibt Situationen, in denen Informationen zu einem bestimmten Datenelement fehlen und das Quellsystem den Grund für das Fehlen nicht kennt.  

- Liegt dem Quellsystem keine Dateninstanz für ein Element mit einer Mindestkardinalität `0` vor (einschließlich der mit *Must Support* gekennzeichneten Elemente), MUSS das Datenelement in der Ressource **ausgelassen** werden.  
- Handelt es sich bei dem Datenelement um ein **obligatorisches Element** (d.h. Mindestkardinalität `1..`), MUSS es **vorhanden sein**, auch wenn das Quellsystem keine Daten hat.

Dies ist im Folgenden zusammengefasst:

### Nicht-codierte Datenelemente
- Es MUSS die Extension [`Data-Absent-Reason`](http://hl7.org/fhir/R4/extension-data-absent-reason.html) am Datentyp und der Code `unknown` verwendet werden.

### Codierte Datenelemente mit ValueSet-Binding „example“, „preferred“ oder „extensible“
- Wenn das Quellsystem **nur Freitext** enthält, SOLLTE ausschließlich das Textelement (`CodeableConcept.text`) genutzt werden.   
- Wenn weder Text noch codierte Daten vorhanden sind:  
  - wenn das ValueSet einen „unbekannt“-Code enthält, SOLL dieser verwendet werden.  
  - wenn kein „unbekannt“-Code im ValueSet vorhanden ist, SOLL der Code `unknown` aus dem CodeSystem [DataAbsentReason](http://hl7.org/fhir/R4/codesystem-data-absent-reason.html) genutzt werden.

### Codierte Datenelemente mit ValueSet-Binding „required“
- wenn das ValueSet einen „unbekannt“-Code enthält, MUSS dieser verwendet werden.  
- wenn kein „unbekannt“-Code im ValueSet vorhanden ist, MUSS ein Konzept aus dem ValueSet verwendet werden, da die Instanz ansonsten **nicht konform** ist.

---
