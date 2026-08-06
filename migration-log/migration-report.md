# Migration report — MII KDS Modul **Dokument** → MII KDS module template

**Sandbox** `forschungsgruppe-digital-health/mii-kds-dokument-ig-inoffiziell` (unofficial test migration; NOT an MII publication)
**Source** `medizininformatik-initiative/kerndatensatz-dokument` @ `9f76fed80cb810c0f39a263d0162c9c2e64abc1e` (read-only)
**Skill** `mii-ig-migration` @ `forschungsgruppe-digital-health/agent-skills` **v0.13.0** · **Template** `mii-kds-module-template` **v0.6.0** (`7efc8ff`)
**Date** 2026-08-06 · **Branch** `migration/fresh-20260806` · **Do not merge — Gate D is a human, organizational decision.**

## L0 — Read this first (for everyone)

An *Implementation Guide* (IG) is the published, human-readable + machine-readable specification of a
FHIR module. This module was authored on **Simplifier** and is being moved onto the FGDH **MII KDS
module template**, which builds the same content with the **HL7 IG Publisher** and renders it
bilingually. **Nothing about the module's identity changed**: the same package id, the same canonical
URLs, the same version, the same licence — that is the single most important property of a migration,
and it is verified below rather than asserted.

What a reviewer should take away in one minute:

* **The build works.** SUSHI 0 errors. IG Publisher: **7 errors, 112 warnings, 390 info, 0 broken links**.
* **1 of those 7 errors is pre-existing** — proven by building the *unmigrated* source with the same
  toolchain (it reports exactly that one error). **6 are migration-induced by CONFIGURATION** (a SNOMED
  version pin the public terminology server does not carry) and are named, root-caused and queued below.
* **The narrative is the module's own**, not the template's starter pages: 18 authored Simplifier pages
  → 22 German pages + 22 English pages.
* **The English pages are MACHINE TRANSLATIONS written by the agent** and have not been reviewed. Gate C.
* **The Simplifier guide could not be pinned** — it publishes only a preview — so the guide harvest did
  not run. That cost the migration a cross-check, not its source: the authored markdown is in git.

## ① Decision queue (Gate A — someone must choose)

| # | Decision | Options (with consequence) | Default applied | Decide at |
|---|---|---|---|---|
| D1 | `canonical` | keep `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument` (every consumer keeps resolving) \| adopt the template pattern `…/fhir/modul-dokument` (breaks every consumer — guardrail 1) | **kept the source's** (note the `/ext/` segment the template pattern does not have) | Gate A |
| D2 | `licence` | keep the source's `CC0-1.0` \| leave the template's literal `CC-BY-4.0` (silently relicenses published content) | **kept `CC0-1.0`**. Note: the source repository ships **no LICENSE file**, so tier R produced no independent evidence — the value rests on `sushi-config.yaml` + `package.json` + the generated IG only | Gate A |
| D3 | `title` contradiction | tier C/J/I/P all say `MII IG Dokument`; tier R (the README's first heading) says `Medizininformatik-Initiative KDS-Modul Dokument` | **nothing changed** — `sushi-config.yaml` wins because it is what the build reads; the divergence is reported, not resolved | Gate A |
| D4 | `canonical` contradiction | the packaged resources' common prefix (10 of 10 agree) says `…/fhir/ext/modul-dokument`; `package.json` says `…/fhir/ext/modul-dokument/ImplementationGuide/mii-ig-dokument` (the IG-resource URL, not a canonical base) | **nothing changed** | Gate A |
| D5 | `description` contradiction | tier P (the published manifest) `Medizininformatik Initiative - Modul Dokument` vs tier C/J `… - KDS-Modul Dokument` | **kept tier C** | Gate A |
| D6 | `publisher` | no machine source carries it: a FHIR package manifest has no such field, the GitHub owner is not a publisher, the Simplifier project page is client-rendered | **carried from the source `sushi-config.yaml`** (`Medizininformatik-Initiative`) — a human confirms it | Gate A |
| D7 | `{APPROVAL_DATE}` | no source yields an approval date | the `resource-approvalDate` extension block in `sushi-config.yaml` is **commented out** rather than shipped with a placeholder date | Gate A |
| D8 | `{TOPIC_NCI_CODE}` | no source yields an NCI Thesaurus topic code; the template says "there is no sensible default: an unreplaced value ships a bogus code" | the `artifact-topic` extension block is **commented out** | Gate A |
| D9 | `date:` | the source declares none | set to `2026-03-30`, the publication date of the upstream GitHub release `v2026.0.1` — evidence, not invention. A *formal MII* publication date does not exist for this sandbox | Gate A |
| D10 | `{RELEASE_DESCRIPTION}` / `{REGISTRY_DESCRIPTION}` in `publication-request.json` | invent release copy \| leave unreplaced | **left unreplaced** — publication-only fields, and the agent does not publish | Gate A/D |
| D11 | dependencies | the template also pins `de.basisprofil.r4@1.5.4` and `hl7.fhir.uv.xver-r5.r4@0.1.0`; the source declares neither | **the source's 5 pins kept**, plus `hl7.fhir.uv.crmi@2.0.0` **added** because the template's CRMI `meta.profile` claims do not resolve without it (template machinery, not source identity) | Gate A |
| D12 | SNOMED expansion pin | the template's `input/resources/Parameters-expansion-manifest.json` pins SNOMED International `20250701`; `tx.fhir.org` carries `20240201`/`20250201` | **not repinned** — it changes every expansion. Either build with the MII SU-TermServ certificate (which CI selects when the secret exists) or repin | Gate A |
| D13 | Simplifier guide not pinnable | the guide `medizininformatikinitiative-dokument` publishes **only a preview**; `?version=current` is the live editable project and was **not** harvested | **the git-resident authored markdown was used instead** — which the spec ranks above a rendering anyway. Publish a guide version to regain the cross-check | Gate B |
| D14 | template test fixtures | `tests/profiles/profiles.json` and `tests/profiles/valid/example-patient-valid.json` still name the deleted template example | **left in place** — not IG build inputs, so they did not block this build; the FHIR-validation workflow will | Gate A |

## ② Review queue (Gates B/C — someone must check)

| Where | What to check | Suggested action | Gate |
|---|---|---|---|
| **all 22 `input/pagecontent/*.md`** | every English page is a **machine translation written by this agent**, unreviewed; each carries a `TODO:REVIEW` banner naming the German file it renders | read against the German mirror, correct, remove the banner | C |
| `input/pagecontent/profiles-and-extensions.md` | the MII module-name/abbreviation table is deliberately **left in German** (agreed MII designations) | decide whether an English rendering is wanted | C |
| `input/pagecontent/implementer-guidance.md` | one **commented-out** German block (a summary the source itself had commented out) travelled along | keep or drop | B |
| `input/translations/de/pagecontent/examples.md` | the source links `AmandaAlzheimerVersorgungsstellen**k**ontakt`; the published instance is `…Versorgungsstellen**K**ontakt`. The link was repointed at the real artefact page and marked | fix the spelling upstream, or confirm the repoint | B |
| `input/translations/de/pagecontent/datasets-and-descriptions.md` (+ EN) | a **GENERATED TABLE** replaces an FQL query block: 25 logical-model elements extracted from `StructureDefinition-mii-lm-dokument.json` | confirm it reproduces what the FQL rendered | B |
| `profiles-and-extensions.md` (both languages) | 3 further FQL blocks became `TODO:REVIEW` notes (profile/extension metadata) — the generated artefact pages render those metadata | confirm nothing is missing | B |
| `guidance.md` | the source's "Technische Implementierung / Index" page was a deliberately blank section index; the template's page set has no section indexes, so it became a signpost page | confirm | B |
| `input/pagecontent/{researcher-guidance,security-and-privacy,downloads,metadata,translationinfo,version-history,must-support-en-parity}.md` | **template starter content — the source supplies no equivalent section.** Recorded as a gap, not filled (guardrail: a gap in the source is a `TODO:REVIEW`, never a writing task) | write, or delete the page | B |
| `input/includes/menu.xml` + the German mirror | menu labels are the template's generic ones, not module-specific | confirm | C |

## ③ QA triage (what the build says, and whose problem it is)

Baseline method: the **unmigrated source at `9f76fed`** was built in a scratch tree with the *same*
publisher (2.2.11, SHA-256 verified against the workflow pin), the *same* Jekyll (4.4.1) and the *same*
terminology server (`https://tx.fhir.org`). It reports **Errors: 1, Warnings: 103, Info: 24, Broken
Links: 0**. That is what "pre-existing" means here — a measurement, not a claim.

| Finding (shortened) | Count | Provenance (proof) | Next action |
|---|---|---|---|
| `ImplementationGuide.dependsOn[2]: The URL should refer directly to the ImplementationGuide resource` | 1 | **pre-existing** — it is the *only* error the baseline build produces, identical text | escalate to the module maintainers; not a migration defect |
| `ValueSet.compose.include[n].filter[0]: The value for a filter based on property 'concept' must be a valid code from the system 'http://snomed.info/sct'` | 6 | **migration-induced, by configuration** — absent from the baseline. qa.txt gives the cause verbatim: *"A definition for CodeSystem 'http://snomed.info/sct' version '…/900000000000207008/version/20250701' could not be found … Valid versions: … 20240201, 20250201 …"*. The template's expansion manifest pins a SNOMED edition `tx.fhir.org` does not carry. **The module's ValueSets are untouched** (canonical-URL diff empty) | D12 — build with the MII SU-TermServ certificate, or repin. **Not repinned silently** |
| broken links | 0 | the previous build had 2, **both migration-induced**, both fixed: a source-side lower-case-`k` instance name, and an intra-page anchor that became a cross-page link when the Conformance page was split per §9 | done |
| warnings 103 → 112 | +9 | not individually triaged in this run | Gate B |

## Content map (where every source page went)

Narrative source: **the module's own authored markdown in git** (`implementation-guides/mii-ig-dokument-de/**`),
which spec §5.1 ranks above a rendering. The order of sources was worked in full: ① the authenticated
project download — no credentials offered in a non-interactive run (`project-download-unavailable:`);
② the guide harvest — **blocked**, the guide publishes only a preview (D13); ③ "nothing" is not an
option and was not the outcome. **18 pages discovered, 18 migrated, 0 lost.**

| Source page (`…/MIIIGModulDokument/`) | Target page | Anything lost? |
|---|---|---|
| `Index.page.md` | `index.md` | no — `{index:root}` dropped (the ToC is generated) |
| `Beschreibung.page.md` | `index.md` § *Beschreibung des Moduls* | no |
| `Kontext-Bezuege.page.md` | `implementer-guidance.md` § 1 | no (§9: the primary home for module context) |
| `Referenzen.page.md` | `implementer-guidance.md` § 2 | no |
| `TechnischeImplementierung/Kompatibilitaet.page.md` | `implementer-guidance.md` § 3 | no |
| `Release-Notes.page.md` | `changes.md` | no |
| `AnwendungsflleInformationsmodell/Index.page.md` | — folded into `general-requirements.md` | it was a deliberately blank section index |
| `AnwendungsflleInformationsmodell/Szenarien.page.md` | `general-requirements.md` | no (§9: use cases/scenarios) |
| `AnwendungsflleInformationsmodell/UML.page.md` | `uml-diagrams.md` | no |
| `AnwendungsflleInformationsmodell/Datensaetze.page.md` | `datasets-and-descriptions.md` + `logical-models.md` | no — the FQL table became a generated table, the `{tree}` became the `-snapshot` include |
| `TechnischeImplementierung/Index.page.md` | `guidance.md` | it was a deliberately blank section index |
| `TechnischeImplementierung/Conformance.page.md` | `conformance.md` + `must-support.md` + `missing-data.md` | no — split so no page stays an empty stub |
| `TechnischeImplementierung/Terminologien.page.md` | `terminology.md` | no |
| `TechnischeImplementierung/CapabilityStatement.page.md` | `capability-statements.md` | no |
| `TechnischeImplementierung/FHIRProfile/Index.page.md` | `profiles-and-extensions.md` | no |
| `TechnischeImplementierung/FHIRProfile/Dokument-DocumentReference.page.md` | `profiles-and-extensions.md` § profile, its *Suchparameter* section → `search-parameters-and-operations.md`, its *Beispiele* → `examples.md` | no (§9: the per-profile search-parameter section has its own page) |
| `TechnischeImplementierung/FHIRProfile/NLP-Processing-Status-Extension.page.md` | `profiles-and-extensions.md` § extension, *Beispiele* → `examples.md` | no |
| `HinweisTemplate.page.md` | — retired | a Simplifier-internal `{render:HereBeDragons}` notice stub, no content |

**Directives converted** (per the FQL crosswalk): 13 `{page-title}`, 1 `{index:root}`, 12
`{pagelink:}`, 1 `{link:}`, 5 `{render:<image>}`, 9 `{render:<artefact>}`, 5 `{tree}`,
40 `<tabs>/<tab>` markers, 6 FQL blocks, 8 comments carrying directives. Post-migration
`fql-scan.sh --strict` over the migrated page set: **44 files scanned, 0 findings, exit 0.**
`{...}` in `input/pagecontent` / `input/translations`: **0** (guardrail 8 clean).

**Two pages were deleted, both template scaffolding, both recorded:** the template's example artefacts
(never copied in — guardrail 5) and `rendering-artifacts.md` (the template's own demo page, labelled
"delete me" in its menu, which hard-references those examples and failed the whole Jekyll run).

## Identity (what makes this module *this* module — verified unchanged)

The `fhir-ig-analysis` same-module verification (source first, migrated second — equal `packageId`
triggers it) reads:

* **Identität: IDENTISCH** — all ten fields: `id`, `canonical`, `packageId`, `name`, `title`,
  `version`, `status`, `fhirVersion`, `license`, `publisher`
* **Publizierter Artefakt-Satz: IDENTISCH** (18 artefacts)
* **Canonical-URLs: identisch** (11 URLs)

Independently, a per-file `(resourceType, id, url)` diff of all **19** generated resources against the
source commit: **0 differences, 0 resources added, 0 removed.**

> The first run of that comparison reported `publisher` DIVERGIERT. It was **diagnosed, not accepted**:
> the built ImplementationGuide resources were identical on `publisher` and `contact` in both trees, so
> the divergence was a *parse artefact* — two comment lines the migration had inserted between
> `publisher:` and its `name:` key. The comment was moved above the key (a comment move, no value
> change) and the comparison re-run: IDENTISCH.

### Where each value came from (generated from `migration-log/identity-claims.tsv` — do not retype)

| Field | Tier | Source | Value | Contradiction |
| --- | --- | --- | --- | --- |
| packageId | P | package/package.json | de.medizininformatikinitiative.kerndatensatz.dokument |  |
| version | P | package/package.json | 2026.0.1 |  |
| description | P | package/package.json | Medizininformatik Initiative - Modul Dokument | YES -- Gate A |
| fhirVersions | P | package/package.json | ["4.0.1"] |  |
| jurisdiction | P | package/package.json | http://unstats.un.org/unsd/methods/m49/m49.htm#276 |  |
| canonical | P | package/package.json | https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ImplementationGuide/mii-ig-dokument | YES -- Gate A |
| title | P | package/package.json | MII IG Dokument | YES -- Gate A |
| license | P | package/package.json | CC0-1.0 |  |
| homepage | P | package/package.json | https://www.medizininformatik-initiative.de |  |
| dependency:de.ihe-d.terminology | P | package/package.json (source pin) | 3.0.1 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.base | P | package/package.json (source pin) | 2026.0.0 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.meta | P | package/package.json (source pin) | 2026.0.0 |  |
| dependency:dvmd.kdl.r4 | P | package/package.json (source pin) | 2025.0.1 |  |
| dependency:ihe.formatcode.fhir | P | package/package.json (source pin) | 1.4.0 |  |
| canonical | P | packaged resource urls (10 of 10 agree) | https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument | YES -- Gate A |
| title | R | README.md first heading | Medizininformatik-Initiative KDS-Modul Dokument | YES -- Gate A |
| id | C | sushi-config.yaml (repo root, source commit 9f76fed) | mii-ig-dokument |  |
| name | C | sushi-config.yaml (repo root, source commit 9f76fed) | MII_IG_Dokument |  |
| title | C | sushi-config.yaml (repo root, source commit 9f76fed) | MII IG Dokument | YES -- Gate A |
| description | C | sushi-config.yaml (repo root, source commit 9f76fed) | Medizininformatik Initiative - KDS-Modul Dokument | YES -- Gate A |
| canonical | C | sushi-config.yaml (repo root, source commit 9f76fed) | https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument | YES -- Gate A |
| packageId | C | sushi-config.yaml (repo root, source commit 9f76fed) | de.medizininformatikinitiative.kerndatensatz.dokument |  |
| version | C | sushi-config.yaml (repo root, source commit 9f76fed) | 2026.0.1 |  |
| status | C | sushi-config.yaml (repo root, source commit 9f76fed) | draft |  |
| releaseLabel | C | sushi-config.yaml (repo root, source commit 9f76fed) | ci-build |  |
| license | C | sushi-config.yaml (repo root, source commit 9f76fed) | CC0-1.0 |  |
| copyrightYear | C | sushi-config.yaml (repo root, source commit 9f76fed) | 2026+ |  |
| jurisdiction | C | sushi-config.yaml (repo root, source commit 9f76fed) | http://unstats.un.org/unsd/methods/m49/m49.htm#276 |  |
| fhirVersion | C | sushi-config.yaml (repo root, source commit 9f76fed) | 4.0.1 |  |
| publisher | C | sushi-config.yaml (repo root, source commit 9f76fed) | Medizininformatik-Initiative |  |
| title | J | package.json (repo root, source commit 9f76fed) | MII IG Dokument | YES -- Gate A |
| license | J | package.json (repo root, source commit 9f76fed) | CC0-1.0 |  |
| packageId | J | package.json (repo root, source commit 9f76fed) | de.medizininformatikinitiative.kerndatensatz.dokument |  |
| version | J | package.json (repo root, source commit 9f76fed) | 2026.0.1 |  |
| canonical | J | package.json (repo root, source commit 9f76fed) | https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/ImplementationGuide/mii-ig-dokument | YES -- Gate A |
| id | I | fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json (generated, source commit) | mii-ig-dokument |  |
| name | I | fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json (generated, source commit) | MII_IG_Dokument |  |
| version | I | fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json (generated, source commit) | 2026.0.1 |  |
| status | I | fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json (generated, source commit) | draft |  |
| license | I | fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json (generated, source commit) | CC0-1.0 |  |
| packageId | I | fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json (generated, source commit) | de.medizininformatikinitiative.kerndatensatz.dokument |  |
| title | I | fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json (generated, source commit) | MII IG Dokument | YES -- Gate A |
| publisher | I | fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json (generated, source commit) | Medizininformatik-Initiative |  |

## Protocol (what was executed — generated FROM `migration-log/run.log`, 749 lines)

| Step | What ran | Measured outcome | Acceptance |
|---|---|---|---|
| pre.2 | classification by content | shape **A**; 28 FSH files, 50 FHIR resources by content, 18 narrative pages in git | met |
| pre.3 | target-template state | **hybrid** — Simplifier files (`.simplifier/`, `project.yaml`, `implementation-guides/`) beside IG-Publisher files (`ig.ini`, `_gen*`, `_build*`, committed `fsh-generated/`) | met |
| pre.4 | placeholder gate, before | 68 `{` hits, all accounted (Simplifier directives + upstream validator output) | met |
| pre.5 | toolchain | node 22.22.3, python 3.14.4, java 25, docker 29.6.2; SUSHI and goFSH only as pinned `npx` | met |
| 5.1c | `simplifier-discover.sh --org koordinationsstellemii --module dokument` | hop1 200/142233 B/23 packages → hop2 project `mii-erweiterungsmodul-dokument` → hop3 200/1647 B/**1** key → hop4 **only a preview** → `no-published-version:`, exit 1 | **NOT met — recorded, not worked around** (D13) |
| 5.1d | narrative source | ① project download unavailable (no credentials); ② harvest blocked; **git-resident authored markdown used** | met-as-qualified |
| 2.1 | `package-identity.sh`, `repo-identity.sh`, tier C/J/I claims | 44 claims, 10 fields from tier P, canonical unanimous **10 of 10**, 5 dependency pins, no LICENSE file, project page client-rendered (200 / 54968 B / 52 script markers / 0 identity markers) | met |
| 5.1 | source inventory | 91 FSH declarations, 19 generated resources, 19 narrative pages, 28 assets, 1 guide tree | met |
| 5.2 | vendor template v0.6.0 + `npx fsh-sushi@3.20.0 .` | **0 errors, 0 warnings**; 5 colliding template FSH files skipped (module wins) | met |
| 5.3 | artefact transfer (in place) | 19 = 19 resources, canonical/id diff **empty** | met |
| 5.4 | `fql-scan.sh` | pre-migration 129 findings / 0 unknown / 41 files; post-migration on the page set **0 findings / 44 files / exit 0** | met |
| 5.5 | `gen-page-title-po.py` | **23 pages, 23 units, 23 translated, 0 untranslated**; German breadcrumb + `<title>` verified **on the built output** | met |
| 5.6 | IG Publisher 2.2.11 (SHA-256 verified) | **Errors 7, Warnings 112, Info 390, Broken Links 0**; baseline of the unmigrated source: Errors 1 | met-as-qualified (see ③) |
| 5.6a | `sibling-skill-check.sh` + `fhir-ig-analysis` | sibling present; **IDENTISCH / IDENTISCH / identisch** | met |
| 7 | verification block | placeholder gate 149 hits, **0 unaccounted**; SUSHI exit 0; `fql-scan --strict` exit 0 | met |

`grep -F 'silent-partial-success:' migration-log/run.log` → **0 hits.**
`grep -E '  (WARN |ERROR)  ' migration-log/run.log` → **48 lines**, every one of which is in a queue above.
The single `ERROR` line in the log is the first IG Publisher run, which failed on the template's demo
page; the cause, the fix and the residue are the `template-demo-page-removed` WARN and D14.

## Mini-glossary (novices start here)

* **FSH / SUSHI** — FHIR Shorthand, the source language for FHIR profiles, and its compiler.
* **IG Publisher** — the HL7 tool that turns those resources plus the narrative pages into the website.
* **canonical URL** — the module's permanent identity prefix. Changing it breaks every consumer.
* **CalVer `YYYY.n.n`** — the MII's version scheme; not SemVer.
* **Gate A/B/C/D** — the four mandatory human reviews: identity, narrative, language, release.
* **`TODO:REVIEW`** — a marker meaning *a human must look*; never a guess left in place.
