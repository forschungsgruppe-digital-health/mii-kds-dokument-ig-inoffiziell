# Migration report — MII KDS Modul Dokument → MII KDS module template

**Run:** 2026-08-02 · skill `mii-ig-migration` @ `agent-skills v0.6.0` · working branch
`migration/mii-kds-module-template` of `forschungsgruppe-digital-health/mii-kds-dokument-ig-inoffiziell`
(bit-identical mirror of `medizininformatik-initiative/kerndatensatz-dokument` `master@9f76fed8` —
verified by SHA; the MII repository was read-only and untouched).
Template read at **v0.4.0** (`b5beedb1`).

**Outcome: STOPPED after step 2, as Precondition 5 mandates** ("`sushi` and the IG Publisher must
be runnable … Missing → report which one and stop after step 2"). Missing on this host:
the **IG Publisher** (no `publisher.jar`; the template's workflows download it at build time) and
**Jekyll** (system Ruby 2.6.10). `sushi` 3.20.0 is runnable; `gofsh` is not needed (the source
ships FSH). No toolchain was fetched to get past the gate. Steps 3–7 (skeleton, transfer,
narrative, bilingual, build/QA) were **not** performed; no build or QA result is claimed.

## Preconditions — results

| # | Check | Result |
| --- | --- | --- |
| 1 | Human inputs | Rendered IG: <https://simplifier.net/mii-erweiterungsmodul-dokument> · Source repo: <https://github.com/medizininformatik-initiative/kerndatensatz-dokument>. Both provided. |
| 2 | IG project | `sushi-config.yaml` + `ig.ini` + `input/fsh/` (28 `.fsh`) present. |
| 3 | Template state | **Hybrid, on another template.** `ig.ini` → `fhir.base.template#current`; Simplifier files (`.simplifier/`, `project.yaml`, `implementation-guides/`, `package.bake.yaml`) coexist with IG-Publisher files. Inventory per the skill (list, do not remove): **replaced by the module template** → `ig.ini`, `_genonce.*`, `_gencontinuous.*`, `_build.*`, `_updatePublisher.*`; **carry content to transfer** → `input/` (FSH + pagecontent + plantuml), `fsh-generated/`; **retired only after Gate D** → the Simplifier project files above and the committed rendered output `docs/` (was the GitHub-Pages source). |
| 4 | Placeholders | Scoped grep: all `{{` hits are GitHub-Actions expressions (`.github/**`, excluded), Simplifier directives in `implementation-guides/**` (step-5 material — accounted), or generated `docs/` content. No template placeholders exist yet. |
| 5 | Toolchain | **FAILED** — IG Publisher + Jekyll missing (see outcome above). → stop after step 2. |

## Step 1 — Source inventory

[`source-inventory.json`](source-inventory.json): 1 Profile, 1 Extension, 6 ValueSets,
1 CodeSystem, 1 Logical Model, 8 Instances, 2 Invariants, 27 RuleSets, 43 Aliases;
19 generated resources; 19 narrative pages (18 German Simplifier `*.page.md` +
`input/pagecontent/index.md`, which is untouched English SUSHI boilerplate).

**Rendered-IG cross-check `TODO:REVIEW`** (spec §5.1 fallback): the Simplifier project page and
its guide listing are client-rendered — not mechanically extractable — so the inventory is
repository-derived; Gate B verifies it against the rendering by hand.

## Step 2 — Identity (read, carried over unchanged; sushi-config wins on conflict)

| Field | Value | Note |
| --- | --- | --- |
| title | `MII IG Dokument` | |
| id / name | `mii-ig-dokument` / `MII_IG_Dokument` | |
| packageId | `de.medizininformatikinitiative.kerndatensatz.dokument` | matches template pattern |
| canonical | `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument` | **diverges from template — see below**. `package.json` disagrees (it carries the IG-resource URL `…/ImplementationGuide/mii-ig-dokument`); sushi-config wins, disagreement recorded. |
| version | `2026.0.1` | target version = human decision; default = source's |
| status / releaseLabel | `draft` / `ci-build` | |
| **license** | **`CC0-1.0`** | **diverges from template — see below** |
| dependencies | `de.ihe-d.terminology 3.0.1`, `…kerndatensatz.base 2026.0.0`, `…kerndatensatz.meta 2026.0.0`, `dvmd.kdl.r4 2025.0.1`, `ihe.formatcode.fhir 1.4.0` | all pinned; no floating pins. (A sixth entry, `ihe-de.iti.xds-vs.r4`, is commented out in the YAML and is not a dependency.) |
| publisher | Medizininformatik-Initiative | |
| language | `de-DE` (top-level) | **not identity** per the skill — part of the old single-language setup; not to be carried into the template's i18n configuration |

### Source-vs-template divergences (Gate A input — human decision required, never normalized silently)

1. **Canonical.** Source `…/fhir/ext/modul-dokument` (with `/ext/`) vs template pattern
   `…/fhir/modul-<slug>`. Source wins; changing a published canonical breaks every consumer.
2. **Licence.** Source `CC0-1.0` vs the template's **literal** `license: CC-BY-4.0`
   (template `sushi-config.yaml:101` @ v0.4.0 — a literal, so no placeholder check would flag
   it). Source wins; relicensing is a human decision, never a default.

## What remains when the toolchain is available

Steps 3–7 per the skill: in-place skeleton from template v0.4.0 (placeholders from the identity
above, licence carried as `CC0-1.0` pending Gate A, template examples deleted), artefact transfer
(IDs/URLs unchanged), narrative migration (`bash "$SKILL_DIR/scripts/fql-scan.sh"` reports
**129 mapped findings, 0 unknown, in 19 scanned files** on this tree — the conversion workload),
bilingual setup with the **German-only-source inversion** (German pages →
`input/translations/de/pagecontent/`; English defaults as machine translations, each
`TODO:REVIEW`, Gate C), then `sushi .` + IG Publisher with the pins from the template's workflow
`env:` block; acceptance `qa.txt` `Errors: 0`.

## Pull-request target (step 9 discovery)

Default branch `master`; the repository's PR history targets `master`; no CONTRIBUTING overrides
it. → PR base `master`. GitHub Pages is currently **disabled** on this repository, so the base is
not publication-coupled here.

## Gates

| Gate | Status |
| --- | --- |
| A (canonical/ID/licence + artefact completeness) | **input ready above — awaiting human review** |
| B (narrative) | not reached (stop) — rendered-IG cross-check `TODO:REVIEW` queued for it |
| C (language/translation) | not reached (stop) |
| D (KDS governance, before merge) | open — nothing publishes |
