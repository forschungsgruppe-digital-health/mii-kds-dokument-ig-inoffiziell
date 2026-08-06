<!-- markdownlint-disable MD041 -->
<!-- MIGRATED CONTENT — provenance:
     implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/AnwendungsflleInformationsmodell/UML.page.md
     source commit 9f76fed80cb810c0f39a263d0162c9c2e64abc1e, migrated 2026-08-06.
     Simplifier directives were translated per the mii-ig-migration FQL crosswalk.
     No Liquid literal may appear in this file, including inside this comment. -->

### UML-Diagramme

Zur Veranschaulichung des Informationsmodells wurde das nachfolgende Diagramm in der Unified Modeling Language (UML) erstellt. Dadurch lassen sich die Fachkonzepte, deren Zusammenhänge sowie der Bezug zu weiteren MII KDS-Modulen besser darstellen.

Mit einem *Dokument* lassen sich die Metadaten zu einem klinischen Dokument, einer Bild-, Audio- oder Videodatei beschreiben. Ein *Dokument* wird in der Regel in einem klinischen *Kontext* (`context`) erzeugt. Darüber hinaus kann ein *Dokument* auf eine bestimmte Art und Weise in Beziehung (`relatesTo`) zu einem oder mehreren anderen *Dokumenten* stehen, abhängig vom jeweiligen Szenario. Über einen oder mehrere *Anhänge* (`attachment`) lassen sich Details zum Speicherort und -format des klinischen Dokuments, der Bild-, Audio- oder Videodatei festlegen.

Ein *Dokument* kann in Abhängigkeit vom Szenario einen Patientenbezug (`subject`) ([MII KDS-Modul Person](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person)) aufweisen. Der Patientenbezug kann anhand identifizierender Eigenschaften, pseudonym oder anonym erfolgen. Analog lässt sich über einen klinischen *Kontext* der Bezug zum konkreten Fall (`encounter`) ([MII KDS-Modul Fall](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.fall)) herstellen.

<div style="text-align: center; margin-top: 5em">
<a target="_blank" href="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatz-dokument/refs/heads/dev/input/plantuml/Informationsmodell.svg">![Informationsmodell](Informationsmodell.png)</a></div>
