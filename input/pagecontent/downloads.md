<!-- markdownlint-disable MD041 -->
<!-- Default-language (English) page. Ported from kerndatensatz-basis
     input/pagecontent/downloads.md (branch main).
     German mirror: input/translations/de/pagecontent/downloads.md — both files
     must say the same thing.

     The `../<file>` links below point at the artifacts the IG Publisher writes
     NEXT TO the rendered pages. The publisher does NOT add them to a narrative
     page by itself — this page IS the download list, so keep it in step with
     what the build actually produces (e.g. `excludexml: true` in
     sushi-config.yaml would remove examples.xml.zip). The links resolve only in
     the published output, not in a local preview of this Markdown file. -->

### Downloads

This page links the downloadable artifacts of the **Dokument** module.

#### Package file

The package file is an NPM-format FHIR package used by most FHIR tooling. It
contains all value sets, profiles, extensions and the list of pages and URLs of
this guide, as defined by this version. It **SHOULD** be the first choice
whenever implementation artifacts are generated, because it carries all rules
that make the profiles valid. Implementers still need to know the specification
content and the applicable profiles to build a conformant implementation — see
the FHIR documentation on
[validating profiles and resources](http://hl7.org/fhir/R4/validation.html).

* [Package (compressed folder)](../package.tgz){::download="true"}

#### Downloadable copy of this guide

A downloadable copy of the rendered guide, for hosting locally:

* [Downloadable copy (compressed folder)](../full-ig.zip)

#### Examples

All examples of this guide:

* [XML (compressed folder)](../examples.xml.zip)
* [JSON (compressed folder)](../examples.json.zip)

#### Consolidated CSV and Excel representations of the profiles

The profile information of the whole guide in a single CSV or Excel file —
useful for testers and analysts who want to review element properties across
profiles in one table:

* [CSV (compressed folder)](../csvs.zip)
* [Excel (compressed folder)](../excels.zip)

#### Schematrons

* [Schematrons (compressed folder)](../schematrons.zip)

#### ImplementationGuide resource

The `ImplementationGuide` resource carries the technical details of this
publication, including its dependencies and publication parameters.

> [TODO: This template ships no page for that resource, so there is nothing to
> link here yet. `kerndatensatz-basis` publishes one as
> `input/pagecontent/ImplementationGuide-mii-ig-base.md`, registered under
> `pages:` in `sushi-config.yaml`. Add the equivalent for your module in both
> languages and link it from here. The file name must carry your slug
> literally: a `pages:` file name cannot hold a placeholder, because the
> placeholder substitution rewrites file contents, not file names.]

#### Version history

Earlier versions and the detailed change history are on the
[Versioning](version-history.html) and [Changelog](changes.html) pages.

> [TODO: Add any further downloads your module offers — for example an example
> bundle, a data dictionary or a mapping table — and remove the entries above
> that your build does not produce.]

### Package dependencies

<!-- TODO:REVIEW (Gate B): mapped per migration-spec §9 -->
<!-- TODO:REVIEW machine translation of the appended section in input/translations/de/pagecontent/downloads.md — the German text is authoritative until Gate C signs this section off -->

The following package dependency diagram shows the relationships of the MII KDS
module Dokument to the other packages; the relationships between the MII modules
are shown in green (see also the section [Related guides](index.html) on the
home page).

<div style="text-align: center;"><img src="Paketabhaengigkeiten.png" alt="Paketabhaengigkeiten" style="max-width: 100%;"/></div>

<!-- TODO:REVIEW: the Simplifier source (Referenzen.page.md) linked the
     externally rendered SVG
     https://github.com/medizininformatik-initiative/kerndatensatz-dokument/raw/refs/heads/dev/input/plantuml/Paketabhaengigkeiten.svg
     (production repository) at this position; replaced with the local PNG from
     input/images/. -->
