# Migration report — MII KDS Modul Dokument → MII KDS module template

<!-- Written from the skill's references/migration-report-template.md (agent-skills v0.7.0). -->

## L0 — Read this first (for everyone)

This module was moved from Simplifier onto the MII KDS module template.
**State:** complete through build (steps 1–7 of `mii-ig-migration` @ **agent-skills v0.7.0**, template **v0.5.0**).
**Build:** sushi 0 errors · qa **7**/112/**0 broken links** · preview: <https://forschungsgruppe-digital-health.github.io/mii-kds-dokument-ig-inoffiziell/> (branch preview).
**Your job as reviewer:** work the three queues below in order — ① decide, ② review, ③ triage.
Nothing is published until Gate D (a human merge decision); everything here is reversible.

## ① Decision queue (Gate A — someone must choose)

| # | Decision | Options (with consequence) | Default applied | Decide at |
|---|---|---|---|---|
| D1 | canonical | keep `…/fhir/ext/modul-dokument` (consumers keep resolving) \| adopt template pattern `…/fhir/modul-dokument` (breaks every consumer) | kept source | Gate A |
| D2 | licence | keep `CC0-1.0` \| adopt template `CC-BY-4.0` (relicenses published content) | kept source | Gate A |
| D3 | target version | keep `2026.0.1` \| bump per MII CalVer | kept source | Gate A/D |
| D4 | NCI topic code | name the module's NCI Thesaurus topic (block is commented out; a wrong code ships a bogus artefact) | not invented — commented, `TODO:REVIEW` | Gate A/B |
| D5 | `date` / `approvalDate` | set the real publication/approval dates | placeholder `2026-08-02`, marked | Gate D |
| D6 | added dependency | keep `hl7.fhir.uv.crmi 2.0.0` (required by the template's CRMI claims; NOT in the source) \| drop the CRMI claims instead | kept, documented | Gate A |

## ② Review queue (Gates B/C — someone must check)

74 in-tree `TODO:REVIEW` markers across 28 files, grouped (the in-tree markers carry the detail):

| Where | What to check | Suggested action | Gate |
|---|---|---|---|
| every `input/pagecontent/*.md` with a first-line banner (11 pages) | machine-translated English vs the authoritative German mirror | correct wording, remove banner | C |
| `implementer-guidance.md` | §9 mapping: Kontext-Bezüge + Referenzen substance lives here; index carries only the link list | confirm the homes | B |
| `general-requirements.md` | §9 mapping: 'Szenarien' default home (recorded alternative: implementer-guidance) | confirm | B |
| `datasets-and-descriptions.md` ↔ `logical-models.md` | §9 split (narrative vs LM rendering) | confirm | B |
| `conformance.md` | 'Kompatibilität' carried as a section; source typos carried faithfully (e.g. "keines der beides Profile") | confirm home; copy-edit is a human decision | B |
| `profiles-and-extensions.md` | GENERATED mapping table (from the LM's `element.mapping`); structure-tabs renders; examples as links; `securityLevel`-vs-`securityLabel` domain question | verify table + decide the element-name question | B |
| `search-parameters-and-operations.md` | 24 search parameters moved from the source profile page | confirm | B |
| `downloads.md` | Paketabhängigkeiten diagram (local PNG replaces production-repo raw SVG; original URL in comment) | confirm image currency | B |
| `guidance.md` | dropped never-rendered `Blockdiagramm.png` reference (image not in source's image set) | decide whether to obtain it | B |
| `input/includes/breadcrumb-titles-de.txt` | generated from the two menus (21 pairs) — drives German breadcrumbs | spot-check labels | C |
| `input/ignoreWarnings.txt` | 66 carried legacy suppressions + `%(de-DE)%` | prune stale entries after QA review | B |
| rendered-IG cross-check | Simplifier guide not mechanically extractable (client-rendered) — inventory is repository-derived | verify against the rendering by hand | B |

## ③ QA triage (what the build says, and whose problem it is)

| Finding (shortened) | Count | Provenance (proof) | Next action |
|---|---|---|---|
| `ImplementationGuide.dependsOn[2]` URL shape | 1 | **pre-existing** — the pristine, unmigrated module builds with exactly this one error in the identical container (baseline build, round 1) | escalate to module maintainers |
| SNOMED VS-filter codes not validatable against pinned release `…20250701` | 6 | **environment** — the template's expansion-manifest SNOMED pin is unavailable on the `tx.fhir.org` fallback; expected to clear with the SU-TermServ client certificate | accept in fallback mode; verify in CI with the certificate |
| English breadcrumbs on `/de/` | 0 (fixed) | template v0.5.0 remaps breadcrumbs from the generated `breadcrumb-titles-de.txt` — German incl. parent titles, verified | none |
| warnings 112 | — | incl. module-inherent `eld-20` LM element-naming (unchanged FSH) + terminology-fallback notes; 66 legacy suppressions carried | prune suppressions at Gate B |

**No migration-induced QA error remains** (0 broken links; first build of this run was already at the
baseline error set).

## Content map (where every source page went)

| Source page | Target page | Anything lost? |
|---|---|---|
| Index | `index.md` (lean landing per §9) | none |
| Kontext-Bezuege | `implementer-guidance.md` § Bezüge zu anderen Modulen | none |
| Referenzen | `implementer-guidance.md` § Referenzen…; diagram → `downloads.md` § Paketabhängigkeiten; link list → `index.md` § Related guides | none |
| Beschreibung | `guidance.md` | dropped a *never-rendered* commented image reference (`TODO:REVIEW`) |
| Datensaetze | `datasets-and-descriptions.md` + `logical-models.md` (§9 split) | live FQL element table → LM artifact page + generated mapping table (no data loss) |
| Szenarien | `general-requirements.md` | none |
| UML | `uml-diagrams.md` | none |
| Release-Notes | `changes.md` | none |
| CapabilityStatement | `capability-statements.md` | none |
| Conformance + Kompatibilitaet | `conformance.md` (+ § Kompatibilität) | none |
| Terminologien | `terminology.md` | none |
| FHIRProfile/* (2 pages) | `profiles-and-extensions.md` (structure-tabs renders; **GENERATED** dataset→FHIR mapping table); Suchparameter → `search-parameters-and-operations.md`; example serializations → links (artifact pages carry the tabbed views) | none — the source's live FQL mapping table is reproduced as a generated static table |
| HinweisTemplate | — retired (Simplifier platform notice) | n/a |

**Template pages without source content (kept as stubs — gaps, not errors):** `researcher-guidance`,
`missing-data`, `must-support`, `metadata`, `security-and-privacy`, `translationinfo`,
`version-history` (parent), `examples` (rewritten to list the module's real examples).
**Source files retained for Gate-D retirement (listed, not removed):** `.simplifier/`, `project.yaml`,
`implementation-guides/**`, `package.bake.yaml`, `_gen*`/`_build*`/`_updatePublisher*`, legacy CI
workflows (`build-ig`, `build-profiles`, `compare-profiles`, `main`), committed rendered `docs/`.
`fsh-generated/` untracked per template policy.

## Identity (what makes this module *this* module — verified unchanged)

| Field | Value | Same as source? |
|---|---|---|
| id / packageId | `mii-ig-dokument` / `de.medizininformatikinitiative.kerndatensatz.dokument` | yes |
| canonical | `https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument` | yes → D1 |
| version / status / releaseLabel | `2026.0.1` / `draft` / `ci-build` | yes |
| licence | `CC0-1.0` | yes → D2 (template literal NOT adopted) |
| publisher | Medizininformatik-Initiative (+ url, email) | yes |
| dependencies | the source's 5 pinned + `hl7.fhir.uv.crmi 2.0.0` | source's unchanged → D6 for the addition |

Per-artifact canonical-URL diff vs the source: **EMPTY** (guardrail 1). `sushi-config` wins over
`package.json` on the recorded canonical conflict (IG-resource URL there).

## Protocol (what was executed — for auditors; keep last)

Skill `mii-ig-migration` @ agent-skills **v0.7.0** (fresh install, lock ref verified); template
**v0.5.0**; toolchain per the template's pins in the headless devcontainer clone (Publisher 2.2.11
SHA-verified, SUSHI 3.20.0, Jekyll 4.4.1; Ruby 3.1 deviation documented). Preconditions 1–5 (hybrid
state inventoried; scoped `{{` check; toolchain present). Steps 1–2 scripted (inventory:
19 artefacts, 18 Simplifier pages; identity read, sushi-config-wins). Step 3 in-place skeleton
(19 placeholders filled; identity surgery per §2.1/§2.2; topic not invented; template examples and
demo page removed; collision policy module-content-wins: module `aliases.fsh` kept, template
`cps-rules`/`publisher`/`version`/`translation` rulesets not copied). Steps 5–6: 11-agent page
migration per the released crosswalk/§9 — **89 directives converted, 0 left in migrated dirs**
(fql-scan strict, 45 files); plain Markdown images (template CSS); structure-tabs include;
generated mapping table; `breadcrumb-titles-de.txt` (21 pairs) generated from the two menus;
ignoreWarnings merged + `%(de-DE)%`. Step 7: one build — sushi 0/0; qa 7/112/0 (triage above);
German variant incl. breadcrumbs and structure-tabs verified in the output. MII organisation
repositories read-only throughout (source read via the SHA-verified sandbox mirror).

## Mini-glossary (novices start here)

- **canonical** — the module's permanent identifying URL; changing it breaks everyone who uses it.
- **qa.txt / qa.html** — the IG Publisher's validation report; errors block a release, warnings
  need judgement, "broken links" are unresolved references in the rendered site.
- **Gate A–D** — the four human sign-offs: identity (A) → narrative (B) → language (C) → release
  governance (D). The agent never passes a gate itself.
- **TODO:REVIEW** — an in-tree marker meaning "a human must look here"; queue ② groups them all.
- **Logical model / profile** — the dataset described abstractly vs. its concrete FHIR shape.
