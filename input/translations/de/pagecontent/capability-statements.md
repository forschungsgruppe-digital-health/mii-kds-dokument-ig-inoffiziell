<!-- markdownlint-disable MD041 -->
<!-- Quelle: implementation-guides/mii-ig-dokument-de/MIIIGModulDokument/
     TechnischeImplementierung/CapabilityStatement.page.md (Simplifier-
     Manteldokument). Simplifier-Direktiven gemäß dem Migrations-Crosswalk
     konvertiert; die Simplifier-Seitenmetadaten (topic/subject/canonical/
     expand) entfallen auf dem Template. Deutsche Fassung = autoritativ;
     englischer Spiegel: input/pagecontent/capability-statements.md. -->

Um eine dezentrale Datenauswertung mittels des Deutschen
Forschungsdatenportals für Gesundheit der Medizininformatik-Initiative zu
ermöglichen MUSS die
[Capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities)
unterstützt werden, sodass durch den FHIR-Server unter `[BASE_URL]/metadata`
ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement
MUSS angegeben werden welche Profile inkl. Version, sowie welche
Suchparameter unterstützt werden.

Nachfolgend wird aufgelistet welche Inhalte verpflichtend im
CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine
Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen
CapabilityStatement Instanz unter
[`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates)
angegeben werden.

Canonical: `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/CapabilityStatement/mii-cps-dokument-capabilitystatement`

Link zur Artefakt-Übersicht:
[MII CPS Dokument CapabilityStatement](CapabilityStatement-mii-cps-dokument-capabilitystatement.html)

<!-- TODO:REVIEW Konvertierung (Gate B): Die Quellseite verlinkte an dieser
     Stelle die "Simplifier-Übersicht" des Artefakts und renderte darunter das
     vollständige CapabilityStatement inline (Simplifier-Render-Direktive auf
     die Canonical-URL). Beides deckt jetzt die oben verlinkte, vom
     IG-Publisher generierte Artefakt-Seite ab; sie zeigt das Rendering sowie
     XML und JSON als Tabs. "Nachfolgend"/"nachfolgenden" im Text verweist
     damit auf das dort dargestellte CapabilityStatement. Falls eine
     Inline-Darstellung auf dieser Seite gewünscht ist, bei Gate B
     entscheiden. -->
