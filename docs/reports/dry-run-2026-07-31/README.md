# Dry run — four FGDH catalog skills vs the MII KDS Dokument module (2026-07-31)

First real exercise of `fhir-ig-analysis`, `mii-ig-migration`, `fhir-ig-translation` and
`skill-authoring` from `forschungsgruppe-digital-health/agent-skills` @ **v0.5.2** (all four
`fgdh.status: experimental`). Goal: find where the skills are wrong, unclear or unusable — not to
ship a migration. Machine-readable findings: [`findings.json`](findings.json).

**Bottom line: 22 findings (1 blocker, 10 defects, 5 friction, 6 observations) and 9 confirmed
guardrails.** Every skill-/tooling-defect finding was adversarially re-verified by an independent
reviewer instructed to refute it against the installed files; none was refuted. The production
repository is untouched (diffs below).

## What ran, in order, and where each stopped

1. **Preflight (§1.3).** Recorded all 6 branches + 2 tags of
   `medizininformatik-initiative/kerndatensatz-dokument`; every SHA matched the prompt's table.
   Cloned it read-only and removed the remote (`git remote -v` → empty).
2. **Toolchain.** Java 25.0.2, Node 22.22.3, SUSHI 3.20.0 available; **Ruby 2.6.10 → no Jekyll,
   no IG Publisher jar**. Consequence: **no build was executed anywhere in this run**; no QA
   result, no `Errors: 0`, no rendered page is claimed.
3. **Install (§3).** `npx skills add … v0.5.2` → 4 skills, every lock ref `v0.5.2`.
4. **fhir-ig-analysis (§4.1).** Ran on Dokument + `kerndatensatz-basis` (compare). Exit 0, mode
   `static`, JSON + Markdown + compare written (committed under [`analysis-out/`](analysis-out/)).
   Ran to completion — the findings here are about report *content* (readiness score, migration
   prose, shallow-clone git metrics, stale schema), not about it failing.
5. **mii-ig-migration (§4.2).** On branch `dryrun/migration-20260731` of this sandbox. Ran its
   Preconditions faithfully: **stopped before step 3 (artefact transfer) at Precondition 5** (IG
   Publisher + Jekyll missing; fetching a toolchain to get past it is forbidden). Before the stop
   it produced [`.ai-log/source-inventory.json`](../../../.ai-log/source-inventory.json) and
   [`.ai-log/migration-report.md`](../../../.ai-log/migration-report.md) with the §2.2 identity
   divergence report. **The canonical `/ext/` divergence was caught by the skill; the licence
   conflict (CC0-1.0 vs CC-BY-4.0) was not — F-01, the run's only blocker.**
6. **fhir-ig-translation (§4.3).** Phase A vs the unmigrated module: **refused as designed** (no
   `i18n-default-lang`/`i18n-lang` → report-and-ask; script refuses a missing language argument
   and a non-IG directory with exit 2). Phase B proper was **not applicable** (the migration never
   produced a template-based IG); the script's `--scan de`/`--validate de` were exercised against
   the unmigrated module instead ([output](ig-translate-scan-output.txt)) and were dry-run as
   claimed — but `--validate`'s unconditional exit 0 is F-11.
7. **skill-authoring (§4.4).** No new skill was invented. Legitimate use only: its outside-catalog
   checklist was applied mechanically to all four SKILL.md files (all pass), which itself exposed
   a checklist gap (no allowed-tools-vs-scripts rule — F-05 follow-up). The "de-hybridise a
   module" idea from the prompt is deliberately NOT a stub skill: the gap belongs in
   `mii-ig-migration` Precondition 3 (F-02), not in a new skill.
8. **Adversarial verification.** 14 independent refutation attempts (one per substantive finding)
   + a completeness critic. All 14 findings confirmed; the critic contributed F-04, F-05, F-09,
   F-10, F-20 — including the two highest-value tooling defects of the run.

## Safety postflight (§1.4)

```
$ diff production-branches.before production-branches.after && echo "BRANCHES UNCHANGED"
BRANCHES UNCHANGED
$ diff production-tags.before production-tags.after && echo "TAGS UNCHANGED"
TAGS UNCHANGED
```

(Verified mid-run after the verification workflow and again before opening the sandbox PR; the
`.before` files are committed [here](production-branches.before). No command in this run pushed,
posted, or mutated anything under `medizininformatik-initiative/`.)

## Findings

| id | sev | skill | title | fix belongs in |
| --- | --- | --- | --- | --- |
| F-01 | blocker | mii-ig-migration | Licence absent from identity read-list → silent CC0-1.0→CC-BY-4.0 relicensing | migration-spec.md §2.1+§2.2 |
| F-02 | defect | mii-ig-migration | Hybrid Simplifier+IG-Publisher state unclassifiable; "create the repository" contradictory + new-repo-vs-in-place ambiguous | SKILL.md Preconditions 3 |
| F-03 | defect | mii-ig-migration | German-only source vs English default: nobody assigned to produce the English pages | SKILL.md §Language |
| F-04 | defect | mii-ig-migration | fql-scan.sh false green on the actual source; DoD gate vacuously satisfiable | scripts/fql-scan.sh:41,53 |
| F-05 | defect | migration+translation | allowed-tools grants cannot execute the skills' own shipped scripts | both SKILL.md frontmatters |
| F-06 | defect | fhir-ig-analysis | Git metrics on undetected shallow clones → constant "Bus-Faktor 100 % → hoch" | scripts/ig-stats.py git_stats |
| F-07 | defect | fhir-ig-analysis | Ships the readiness score its own SKILL.md disclaims ("Reifegrad/Freigabe-Indikator") | SKILL.md §Scope vs compute_maturity |
| F-08 | defect | fhir-ig-analysis | Migration-scoping prose (incl. metric-less "Arbeitsweise" row) labeled "NEUTRALE Report-Texte" | report-content.json mapping_rows |
| F-09 | defect | analysis+migration | Two diverged "single sources of truth" for directive detection (11 vs 12 labels, 129 vs 130) | fql-rules.tsv vs report-content.json |
| F-10 | defect | fhir-ig-analysis | ig-stats-schema.json stale vs the schemaVersion 1.3 output | references/ig-stats-schema.json |
| F-11 | defect | fhir-ig-translation | `--validate` exits 0 unconditionally — empty/valid/INVALID indistinguishable | scripts/ig-translate.sh:141 |
| F-12 | friction | mii-ig-migration | Branch-convention rule without a discovery procedure; Pages-coupled conventions unwarned | SKILL.md step 8 |
| F-13 | friction | mii-ig-migration | No fallback when the rendered Simplifier IG is present but not extractable | migration-spec.md §5.1 |
| F-14 | friction | mii-ig-migration | Skeleton creation has no numbered step; "stop before step 3" ambiguous | SKILL.md §Procedure |
| F-15 | friction | mii-ig-migration | Precondition 4's bare `{{` grep is noise (GH-Actions `${{ }}`, Simplifier directives) | SKILL.md Preconditions 4 |
| F-16 | friction | fhir-ig-analysis | `--label` affects console only; purpose undocumented | scripts/ig-stats.py |
| F-17 | obs | mii-ig-migration | "basis page set identical to the template's" false in both directions (3 files) | migration-spec.md §9 |
| F-18 | obs | mii-ig-migration | No sushi-config-vs-package.json conflict rule (and they DO conflict here) | migration-spec.md §2.1 |
| F-19 | obs | fhir-ig-translation | Script never cross-checks `<lang>` against the guide's i18n config (documented delegation) | scripts/ig-translate.sh |
| F-20 | obs | fhir-ig-translation | Harvest mode: English-only page_map example; the mode this module actually needs is unexercised | references/harvest-config.yaml |
| F-21 | obs | (module) | package.json canonical = IG-resource URL, disagrees with sushi-config | kerndatensatz-dokument package.json |
| F-22 | obs | (prompt) | "43 files under input/fsh/" is actually 34 files / 43 FSH aliases | dry-run prompt §2.1 |

## The three things that cost the most time

1. **Discovering that the run's real stop point is Precondition 5, and that this is correct.**
   The instinct is to fetch the publisher jar and "just build" — the skill explicitly forbids it,
   and honoring that reshaped the whole run (no Phase B, no QA claims). The ambiguity of *where*
   exactly the stop sits (F-14: skeleton creation has no step number) made this a reasoning
   exercise instead of a lookup.
2. **The rendered-guide hunt.** Simplifier's project page and `~guides` tab are client-rendered;
   the repo-recorded guide slug 404s. Working out that the honest answer is "not mechanically
   discoverable → repo-derived inventory + TODO:REVIEW" took longer than the inventory itself
   (F-13 exists so the next run doesn't repeat this).
3. **Chasing the directive numbers.** 130 (ig-stats) vs 129 (fql-scan, only after manual file
   enumeration) vs 0 (fql-scan as documented) — reconciling three answers to "how many directives
   does this module have" uncovered F-04 and F-09, the run's two most consequential tooling
   defects.

## What was NOT done, and why

- **No build, no QA, no rendered page** — toolchain absent (Jekyll/publisher); Precondition 5
  stop honored. Everything downstream of spec §5.2 (skeleton, transfer, narrative/FQL conversion,
  bilingual setup, build) is **unexercised**.
- **Translation Phase B and harvest mode** — Phase B had no subject (no migrated IG); harvest
  (realistically THIS module's path: it has FSH translation extensions and a German rendering)
  was not exercised — F-20 records the readable part; the rest awaits a follow-up run.
- **fql-scan.sh in anger on migrated pagecontent** — only its (broken) pre-migration behavior was
  measured (F-04).
- **No skill fixes** — per the prompt's non-goals, findings were recorded, not repaired;
  `proposed_fix` fields carry the suggested wording instead.
- **Production repo:** read-only throughout; postflight diffs empty (above).

## Committed artefacts

- [`findings.json`](findings.json) — machine-readable findings (this report's SSOT)
- [`analysis-out/`](analysis-out/) — §4.1 per-IG reports + stats JSON + `compare-report.md`
  (the tool's `_sources/` clone is not committed)
- [`ig-translate-scan-output.txt`](ig-translate-scan-output.txt) — §4.3 scan/validate transcript
- [`production-branches.before`](production-branches.before) /
  [`production-tags.before`](production-tags.before) — preflight state
- [`../../../.ai-log/source-inventory.json`](../../../.ai-log/source-inventory.json) +
  [`../../../.ai-log/migration-report.md`](../../../.ai-log/migration-report.md) — §4.2 outputs
  up to the Precondition 5 stop
- Control group untouched: `master`, `migration/ig-publisher`, `hl7-ig-build` are as they were.
