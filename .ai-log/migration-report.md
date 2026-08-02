# Migration report — MII KDS Modul Dokument → MII KDS module template

**Run:** 2026-08-02 · skill `mii-ig-migration` @ `agent-skills v0.6.0` · branch
`migration/mii-kds-module-template` of `forschungsgruppe-digital-health/mii-kds-dokument-ig-inoffiziell`
(bit-identical mirror of `medizininformatik-initiative/kerndatensatz-dokument` `master@9f76fed8`,
SHA-verified; the MII repositories were read-only throughout). Template: **v0.4.0** (`b5beedb1`).

**Outcome: the migration is COMPLETE through step 7 (build + QA) and delivered for the human
review gates.** An earlier session of this run stopped at Precondition 5 (no toolchain on the
host); the toolchain was then provided the way the template itself prescribes — its dev-container
recipe reproduced headless in Docker (digest-pinned `devcontainers/java:17-bookworm` base,
SUSHI 3.20.0, Jekyll 4.4.1, Graphviz, `publisher.jar` 2.2.11 verified against the CI-pinned
SHA-256). Deviation from the devcontainer, documented: Ruby 3.1 (Debian bookworm) instead of the
feature-compiled 3.3.12 — the CI `env:` pins (the template's stated source of truth) name only
PUBLISHER/SUSHI/JEKYLL, and Jekyll 4.4.1 supports Ruby ≥ 3.1.

## Results at a glance

| Check (SKILL.md Verification) | Result |
| --- | --- |
| `sushi .` | **0 errors, 0 warnings** (pristine-master baseline with the same SUSHI: also 0/0) |
| IG Publisher 2.2.11 | build completes; site + **German variant (`output/de/`) render** |
| `qa.txt` | **7 errors · 112 warnings · 0 broken links** — 1 pre-existing in the pristine module (baseline-proven) + 6 from the template's SNOMED version pin under fallback terminology; **none migration-induced** (itemized below) |
| Canonical URL diff vs source | **EMPTY** (guardrail 1) — verified per-artifact over `fsh-generated` |
| Identity diff vs source (`id`,`canonical`,`name`,`title`,`version`,`status`,`releaseLabel`,`license`,`packageId`) | **EMPTY** — incl. `license: CC0-1.0` (the template's CC-BY-4.0 literal was **not** adopted) and the `/ext/` canonical |
| `fql-scan.sh --strict` on `input/pagecontent` + `input/translations` | exit 0, 45 files scanned, **0 directives** (74 actively converted; the retained Simplifier originals under `implementation-guides/` still carry theirs — see *Retained files*) |
| Placeholders | 0 active `{{…}}` on build-read lines; remaining hits are comments/docs/retained originals, accounted |
| Template examples | deleted (`example-patient.fsh`, `example-patient-instance.fsh`) |
| Default branch | untouched; all work on this branch |

## The 7 remaining QA errors — provenance

1. **`ImplementationGuide.dependsOn[2]: The URL should refer directly to the ImplementationGuide resource`** — a
   property of the module's own dependency set (carried unchanged from the source); the flagged
   dependency package does not expose an IG-resource-shaped canonical. Not addressable without
   remodelling (out of scope). **Pre-existence proven:** a build of the pristine, unmigrated
   module (`master@9f76fed8`) in the identical container yields exactly this one error
   (baseline qa: 1 error, 103 warnings, 0 broken links). → Gate B / module maintainers.
2. **6 × SNOMED CT ValueSet-filter validations** (`mii-vs-dokument-einrichtungsart` ×3,
   `-fachgebiet`, `-sct-dokument-kategorie`, `-sct-dokument-typ`): *"A definition for CodeSystem
   http://snomed.info/sct version …20250701 could not be found, so the code cannot be validated"*
   — **not module-inherent and not a content error**: the baseline build (no expansion
   manifest) does NOT show them. They arise because the TEMPLATE's expansion manifest
   (`input/resources/Parameters-expansion-manifest.json`, MII terminology-version policy) pins
   SNOMED release `…/version/20250701`, which the fallback terminology server `tx.fhir.org`
   does not carry — so the filter codes cannot be validated against that pinned release. With
   the SU-TermServ client certificate (Germany-only; the template's CI uses it when the secret
   is configured) the pinned release resolves and these are expected to clear. Adjusting the pin
   would deviate from the template's terminology policy → left as-is, `TODO:REVIEW` at Gate B.
   The FSH is unchanged from the source.

The 112 warnings include the module-inherent `eld-20` element-naming warnings of the German-named
logical model (`mii-lm-dokument`, unchanged FSH) and terminology-fallback expansion notes. The 66
suppression entries of the pre-migration build were **carried over** into `input/ignoreWarnings.txt`
(marked section, `TODO:REVIEW`: prune what the new build no longer emits), plus the skill-mandated
`%(de-DE)%` entry for the cosmetic `^language = #de-DE` mismatch (`input/fsh/common/Meta.fsh`).

## What was done, step by step

1. **Inventory** (`source-inventory.json`): 19 artefacts + 19 narrative pages; rendered Simplifier
   IG not mechanically extractable (client-rendered) → repository-derived per spec §5.1 fallback,
   cross-check `TODO:REVIEW` at Gate B.
2. **Identity read** — carried over unchanged; `sushi-config.yaml` wins over `package.json`
   (canonical conflict recorded). Gate A divergences vs template: canonical keeps `/ext/`;
   licence stays `CC0-1.0`. Both flagged by the skill, neither normalized.
3. **Skeleton, in place**: template v0.4.0 vendored onto this branch (`ig-template/`, page set,
   menu.xml en+de, translations tree, qc, scripts, skills, CI workflows, publication request,
   devcontainer). The bootstrap's REMOVE list honored by omission (no release-please quartet, no
   template CHANGELOG). All 19 template placeholders filled from the step-2 identity;
   `{{TOPIC_NCI_CODE}}` **not** invented — the artifact-topic block is commented with
   `TODO:REVIEW` (a domain decision). `{{RELEASE_DATE}}`/`{{APPROVAL_DATE}}` carry placeholder
   dates marked `TODO:REVIEW` (Gate D governs). Dependency set = the source's five pinned
   packages **plus** `hl7.fhir.uv.crmi 2.0.0` (required by the template's CRMI `meta.profile`
   claims — an addition, documented). The template's demo page (`rendering-artifacts`) was
   deleted per the template's own instruction (it references the deleted template examples).
4. **Artefact transfer**: the module's 28 FSH files unchanged in place. Collision resolution
   (module definitions win): module `input/fsh/aliases.fsh` kept (43 aliases); template
   `rulesets/cps-rules.fsh`, `publisher.fsh`, `version.fsh`, `translation.fsh` **not** copied
   (module equivalents exist); template's unique rulesets + `parameters/manifest.fsh` +
   expansion-manifest resource adopted.
5. **Narrative**: all module content mapped onto the template page set (mapping below); **74
   directives converted** (page-title/index-root removed; pagelinks/links → migrated targets or
   artifact pages; tree/xml/json → `{% include <Type>-<id>-*.xhtml %}` fragments; images
   localized to `input/images/` — production-repo raw URLs replaced, originals recorded as
   `TODO:REVIEW`; live FQL tables → static pointers + `TODO:REVIEW`, nothing invented).
   `HinweisTemplate.page.md` retired (Simplifier platform notice, no module content).
6. **Bilingual setup (direction inverted per the skill)**: the German source text is the
   authoritative content at `input/translations/de/pagecontent/`; the English default pages are
   **machine translations, every page marked `TODO:REVIEW`**, for Gate C. Menus: template
   `menu.xml` (en) + `translations/de/includes/menu.xml`. `language: de-DE` was not carried into
   the i18n configuration (non-identity per the skill).
7. **Build + QA**: three publisher runs. Run 1 failed at Jekyll (wrong include fragment name
   `-xml.xhtml` → fixed to `-xml-html.xhtml`). Run 2: 7 errors + 22 broken links → the anchors
   (kramdown IAL ids unsupported here) were replaced and the scaffold `examples.md` rewritten to
   the module's real Amanda-Alzheimer example set. Run 3: **7 errors (provenance above: 1 pre-existing,
   6 template-pin × fallback-terminology), 0 broken links**, both language variants rendered.

### Page mapping (Manteldokument sections per spec §9)

| Source (Simplifier) | Target page | Note |
| --- | --- | --- |
| Index | `index.md` | landing |
| Kontext-Bezuege | `index.md` § Related guides | §9 mapping, `TODO:REVIEW` |
| Referenzen | `index.md` § Related guides + `downloads.md` § Package dependencies | §9 mapping, `TODO:REVIEW` |
| Beschreibung | `guidance.md` | |
| Datensaetze | `datasets-and-descriptions.md` | live FQL table → static pointer |
| Szenarien | `general-requirements.md` | §9 mapping, `TODO:REVIEW` |
| UML | `uml-diagrams.md` | |
| Release-Notes | `changes.md` | |
| CapabilityStatement | `capability-statements.md` | |
| Conformance + Kompatibilitaet | `conformance.md` (+ § Kompatibilität) | mapping `TODO:REVIEW` |
| Terminologien | `terminology.md` | |
| FHIRProfile/* (2 pages) | `profiles-and-extensions.md` (2 sections) | |
| HinweisTemplate | — retired | platform notice |

Template pages the source did not supply (kept as template scaffold, **gap recorded per §9**, not
invented): `researcher-guidance`, `implementer-guidance`, `missing-data`, `must-support`,
`search-parameters-and-operations`, `security-and-privacy`, `metadata`, `logical-models`,
`version-history`, `translationinfo`.

### Retained files (listed, not removed — Gate D decides retirement)

Simplifier project files (`.simplifier/`, `project.yaml`, `implementation-guides/**` incl. the
original German pages and their directives, `package.bake.yaml`), the fhir.base-era scripts
(`_genonce.*`, `_gencontinuous.*`, `_build.*`, `_updatePublisher.*`), the legacy CI workflows
(`build-ig.yml`, `build-profiles.yml`, `compare-profiles.yml`, `main.yml` — note: they will run
alongside the template CI until retired), and the committed rendered output `docs/` (the old
Pages site; template docs merged alongside). `fsh-generated/` is untracked in this commit per the
template's `.gitignore` policy (regenerated by every build; historical state remains in git
history). The module's old `qc/custom.rules.yaml` and `.gitignore` were replaced by the
template's (old versions in git history — `TODO:REVIEW`: port module-specific QC rules if any
still apply). The module's `README.md` was **kept** (content wins; reconcile with the template's
README expectations at Gate B). No `LICENSE` file was added (the template's CC-BY-4.0 file would
contradict the module's CC0-1.0 declaration — Gate A).

## Open points (all marked in-tree)

**101 `TODO:REVIEW` markers** across 25 files — the complete Gate B/C review roster (every English
page header, the §9 mapping homes, FQL-table replacements, image-source URLs, securityLevel-vs-
securityLabel domain question, terminology wording, `sushi-config` governance dates, topic code,
publication-request descriptions, ignoreWarnings pruning).

## Gates

| Gate | Status |
| --- | --- |
| A — canonical/ID/licence + artefact completeness | **ready**: identity diff EMPTY, canonical diff EMPTY, licence carried; divergences documented above |
| B — narrative | **ready**: mapping table + gap list + `TODO:REVIEW` roster; rendered-IG cross-check by hand |
| C — language/translation | **ready**: German authoritative, English machine-translated + marked; both variants render |
| D — KDS governance, before merge | **open** — nothing publishes; merging this PR does not publish (Pages is disabled on this repository) |
