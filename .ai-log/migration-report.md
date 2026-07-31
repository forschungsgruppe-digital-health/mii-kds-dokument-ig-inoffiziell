# Migration report — MII KDS Modul Dokument → MII KDS module template

**Run:** dry-run 2026-07-31, branch `dryrun/migration-20260731`, sandbox
`forschungsgruppe-digital-health/mii-kds-dokument-ig-inoffiziell` (mirror of production
`master@9f76fed8`). Skill: `mii-ig-migration` @ catalog `v0.5.2`.

**Outcome: STOPPED before step 3 (artefact transfer) by Precondition 5 (toolchain).**
This report covers what the skill's preconditions and steps 1–2 produced up to that stop.
No template was vendored, no artefact was moved, no file outside `.ai-log/` was changed.

---

## Preconditions — results

| # | Check | Result |
| --- | --- | --- |
| 1 | Human inputs: rendered IG URL + source repo URL | **Partially blocked.** Source repo URL provided. Rendered IG: only the Simplifier *project* page (<https://simplifier.net/mii-erweiterungsmodul-dokument>, HTTP 200) is reachable. The project page and its `~guides` tab are client-rendered — no guide URL is mechanically discoverable — and the repo-recorded guide slug (`implementation-guides/mii-ig-dokument-de/guide.yaml`) resolves to a 404 under the `…/guide/<project>/<slug>` pattern. `TODO:REVIEW`: a human must supply the working rendered-guide URL, or confirm none is published. |
| 2 | IG project? (`sushi-config.yaml` or `ig.ini` + `input/fsh/`) | **Yes.** Both `sushi-config.yaml` and `ig.ini` present; `input/fsh/` has 28 `.fsh` files. |
| 3 | Template state | **Not on the module template** (no vendored `ig-template/`; `ig.ini` names `fhir.base.template#current`, an HL7 base template). NOTE: the module is a **hybrid** — it carries both Simplifier project files (`.simplifier/`, `project.yaml`, `implementation-guides/`, `package.bake.yaml`) and IG-Publisher files (`sushi-config.yaml`, `ig.ini`, `fsh-generated/`, `input/`, `_genonce.sh`, committed `docs/` = the published Pages output). The skill's two-state discovery does not describe this state; see decision log D1. |
| 4 | `{{` placeholders accounted | **Yes.** All hits are GitHub-Actions `${{ }}` expressions (`.github/workflows/*`), Simplifier directives in `implementation-guides/**/*.page.md` (to be converted in step 4), or generated content under `docs/`. No template placeholders exist yet (no template present). |
| 5 | Toolchain: `sushi`, IG Publisher (+ `gofsh` if needed) | **FAILED.** `sushi` v3.20.0 runnable; `gofsh` not needed (source ships FSH). **IG Publisher: no `publisher.jar` present and not runnable. Jekyll: absent (system Ruby 2.6.10).** Per the skill: "Missing → report which one and stop before step 3. Do not fetch and execute a toolchain to get past this." → **Stop.** |

## Step 1 — Source inventory

Written to [`source-inventory.json`](source-inventory.json). Summary: 1 Profile, 1 Extension,
6 ValueSets, 1 CodeSystem, 1 Logical Model, 8 Instances (examples), 2 Invariants, 27 RuleSets,
43 Aliases; 19 generated resources in `fsh-generated/resources/`; 19 narrative pages
(18 Simplifier `*.page.md` + `input/pagecontent/index.md`).

Because the rendered IG is not mechanically extractable (Precondition 1), the inventory is
derived from the repository tree only; cross-checking it against the rendered guide is
`TODO:REVIEW` for a human.

## Step 2 — Module identity (read, not asked; carried over unchanged)

| Field | Value (source) | Notes |
| --- | --- | --- |
| title | `MII IG Dokument` | |
| id / name | `mii-ig-dokument` / `MII_IG_Dokument` | |
| packageId | `de.medizininformatikinitiative.kerndatensatz.dokument` | matches template pattern — no divergence |
| canonical | `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument` | **DIVERGES from template — see below** |
| version | `2026.0.1` | target version = human decision; default = source's |
| status / releaseLabel | `draft` / `ci-build` | |
| dependencies | 5, all pinned (`de.ihe-d.terminology 3.0.1`, `…kerndatensatz.base 2026.0.0`, `…kerndatensatz.meta 2026.0.0`, `dvmd.kdl.r4 2025.0.1`, `ihe.formatcode.fhir 1.4.0`) | no floating pins to resolve |
| publisher | Medizininformatik-Initiative (+ url, email) | |

Additionally read, **although the skill's identity list (§2.1) does not name them**:

| Field | Value (source) | Template prescribes | Covered by §2.2? |
| --- | --- | --- | --- |
| license | `CC0-1.0` | `CC-BY-4.0` | **NO — silent-normalization risk, see D2** |
| language | `language: de-DE` (top-level) | `i18n-default-lang: en` + `i18n-lang: de` | **NO — see D4** |
| copyrightYear | `2026+` | (template placeholder) | not addressed |

### §2.2 divergence report (Gate A input — human decision required)

1. **Canonical.** Source: `…/fhir/ext/modul-dokument` (with `/ext/`). Template pattern:
   `…/fhir/modul-<slug>` (without). Per §2.2 **the source wins**; the divergence is reported
   here and a human decides. Not normalized. ✔ the skill covers this case explicitly.
2. **Licence.** Source: `CC0-1.0`. Template: `CC-BY-4.0`. The skill's §2.1 identity table has
   **no licence row** and §2.2 names only canonical + packageId. Nothing in the skill stops an
   agent from filling the template's `license: CC-BY-4.0` as-is — which would silently relicense
   published CC0 content. Flagged here **by the operator, not by the skill** — recorded as
   dry-run finding F-04 (blocker).
3. **`package.json` vs `sushi-config.yaml` canonical.** `package.json` carries
   `…/ext/modul-dokument/ImplementationGuide/mii-ig-dokument` (the IG-resource URL), not the
   canonical base. The skill's read order ("sushi-config / package.json") implies precedence but
   never says what to do when they disagree. Sushi-config's value used. `TODO:REVIEW`.

## Stop point

Per Precondition 5 the migration stops **before step 3**. Not performed: template vendoring /
skeleton (spec §5.2), artefact transfer (§5.3), narrative migration + FQL conversion (§5.4),
bilingual setup (§5.5), build/QA (§5.6). **No build was run; no QA result exists; no rendered
page was produced.**

## Decision log (dry-run instrumentation)

- **D1 (hybrid).** Precondition 3 offers exactly two states; this module is a hybrid of
  Simplifier + IG Publisher (its `docs/` **is** the live GitHub-Pages output). The skill never
  says what happens to the pre-existing IG-Publisher files (`ig.ini` pointing at
  `fhir.base.template`, `_genonce.sh` & co., committed `docs/`, committed `fsh-generated/`), nor
  whether "create the module repository from the template" means a new repository or vendoring
  the template into a branch of this one — while its Preconditions preamble simultaneously
  forbids creating what is missing.
- **D2 (identity conflict).** Canonical: caught by §2.2. Licence: **not caught** (see above).
- **D3 (branch).** Step 8: "determine the target branch from the module repository's own
  convention — do not assume one." No discovery procedure is given. Evidence gathered by the
  operator: default branch `master`; the only two PRs in the repo's history both target
  `master`; `master` is simultaneously the GitHub-Pages source, so merging a PR republishes the
  live guide — the skill does not surface this publication coupling when telling you to follow
  the discovered convention (Gate D is the only guard). The old attempt's `hl7-ig-build`
  convention no longer exists in the current skill (per its Provenance).
- **D4 (language).** The source declares `language: de-DE` and its entire narrative is German;
  the template's default is English. The skill covers (a) the en-default policy and (b) the
  conditional `^language = #de-DE` warning (which **is** live here: `input/fsh/common/Meta.fsh:9`).
  It does **not** say who produces the English default-language pages when the source is
  German-only, nor that the migration inverts the direction (the German source text becomes the
  *translation* of English pages that do not yet exist). Recorded as finding F-06.

## Open points

All open points above are marked `TODO:REVIEW` or recorded as dry-run findings in
`docs/reports/dry-run-2026-07-31/findings.json`.
