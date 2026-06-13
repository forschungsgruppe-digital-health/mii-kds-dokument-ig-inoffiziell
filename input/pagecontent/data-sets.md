# Datensätze und Beschreibungen

Die offiziell beschlossene Version des Informationsmodells befinden sich auf [ART DECOR](https://art-decor.org/ad/#/mide-/datasets/dataset/2.16.840.1.113883.3.1937.777.24.1.1/2018-06-05T12:44:12/concept/2.16.840.1.113883.3.1937.777.24.2.3740/2024-06-07T10:17:01). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet: [MII LM Dokument](StructureDefinition-mii-lm-dokument.html).

*Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.*

## Logischer Datensatz

Das vollständige Verzeichnis der Datenelemente mit ihren Beschreibungen ist im Logical Model hinterlegt:

{% include StructureDefinition-mii-lm-dokument-dict.xhtml %}

## Model-to-Profile-Mapping

Für jedes Element des Logical Models existiert ein 1:1-Mapping auf ein Element der konkreten FHIR-Ressource `DocumentReference`. Dieses Mapping ist im Logical Model unter der Mapping-Identität `mii-map-dokument` gepflegt und wird auf der [Logical-Model-Seite](StructureDefinition-mii-lm-dokument.html) sowie im [Dokument-Profil](StructureDefinition-mii-pr-dokument-dokument.html) dargestellt. Die fachliche Zuordnung der Datensatz-Elemente zu den FHIR-Elementen ist zusätzlich im Abschnitt *„Mapping Datensatz zu FHIR"* der [Profilseite](StructureDefinition-mii-pr-dokument-dokument.html) beschrieben.
