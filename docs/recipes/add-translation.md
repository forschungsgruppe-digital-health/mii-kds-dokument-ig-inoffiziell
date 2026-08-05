# Recipe: extend the translations of your module IG (menu, footer, content, resources, page titles)

**Goal.** Add or extend a translation for any part of your module IG — the
navigation **menu**, the **footer / base UI chrome**, the **narrative content**,
the **conformance resources**, and the **page titles**.

**Prerequisites.** A module that builds ([create a new module](create-a-new-module.md)).
The five layers are independent — translate only the ones you need.

**Language policy.** This module is **English-default with a German translation**,
the same model as kerndatensatz-basis: English is the default rendering
language (`i18n-default-lang: en`), German
the recommended second rendering (`i18n-lang: [de]`, sources under
`input/translations/de`). Everything below works the same for a further language
— replace `de` with that language code and add it to `i18n-lang`.

> **Why translation is *additive*:** you never edit the English source to
> translate it. Each language gets its own file beside the source, and a part
> with no translation falls back to the English source. Nothing added here can
> break a build — at worst it is ignored.

---

## The five layers at a glance

Your IG's visible text comes from five places, each with its **own** mechanism:

| # | Layer | Example text | Where the translation goes | You maintain it? |
|---|---|---|---|---|
| 1 | **Narrative content** | your page prose | `input/translations/<lang>/pagecontent/<same-filename>.md` | **yes** |
| 2 | **Menu** | `Startseite`, `Anleitung` | `input/translations/<lang>/includes/menu.xml` | **yes** |
| 3 | **Base UI chrome** (footer, buttons, boilerplate) | `Erstellt <date>` | the **IG template**'s `translations/` | **no — inherited** |
| 4 | **Conformance resources** | a profile's `description` | `input/translations/<lang>/<ResourceType>-<id>.po` | **yes** |
| 5 | **Page titles** (breadcrumbs, browser `<title>`) | `Anleitung`, `Inhaltsverzeichnis` | `input/translations/<lang>/ImplementationGuide-<ig-id>.po` | **yes** |

---

## Steps

### 1. Narrative content (pages)

Put the translated page under `pagecontent/` in the translation-source folder,
with the **same file name** as the English source page:

```text
input/pagecontent/index.md                     # English — the source
input/translations/de/pagecontent/index.md     # German — renders on /de/
```

- Keep structure, headings and links 1:1 with the English source page.
- Translate prose, not identifiers: leave artifact links
  (`StructureDefinition-<id>.html`, …) and FHIR ids unchanged.
- A page with no German translation falls back to the English source on `/de/`,
  with a "no translation available" note. Translate the pages that matter most
  first.

> **The mistake to avoid:** a `<name>-de.md` sibling inside `input/pagecontent/`
> is **not** a translation — the toolchain renders it as a *separate page* and
> `/de/` keeps showing English. It must live under
> `input/translations/<lang>/pagecontent/`, mirroring the HL7 reference IG
> [`FHIR/multi-lang-test-ig`](https://github.com/FHIR/multi-lang-test-ig).

---

### 2. Menu

This module maintains its menu as **files**, one per language:

```text
input/includes/menu.xml                      # English — the source menu
input/translations/de/includes/menu.xml      # German translation
```

When you add, rename or remove a page, update **both** files (and the `pages:`
tree in `sushi-config.yaml`).

Rules:

- **Never add a `menu:` property to `sushi-config.yaml`.** SUSHI would generate a
  single `menu.xml` that cannot be translated and competes with these files —
  the navigation would then stay in one language on every rendering.
- Keep the `href` targets **identical** across languages; translate only labels.
- A dropdown parent must link to a **real page** (`href="#"` fails the
  template's menu QA check).
- Only **one** sub-menu level is supported.

---

### 3. Base UI chrome (footer, buttons, boilerplate) — inherited

The footer's `Links` / table-of-contents / QA-report labels, the copyright line,
`Package … based on FHIR …`, `Generated <date>` and the page-navigation buttons
come from the **IG template**, not from your module. You get German and English
for free.

**Nothing to do in a module.** If a base label is blank in some language, the
fix belongs in the template repository
([`ig-template-mii-kds`](https://github.com/forschungsgruppe-digital-health/ig-template-mii-kds)),
which vendors the base UI-string catalogs — see its
`docs/recipes/add-translation.md` §3. Open an issue there rather than patching
around it here.

> **Keep the template current** so you receive such fixes: the vendored copy in
> `ig-template/` is refreshed by `scripts/sync-ig-template.sh` and the
> `sync-ig-template` workflow.

---

### 4. Conformance resources (profiles, code systems, questionnaires)

For each resource whose text you want in German, add one supplement named
exactly `<ResourceType>-<id>.po`:

```text
input/translations/de/StructureDefinition-example-patient.po
```

Format (`msgid` = the English source, `msgstr` = the German translation):

```po
#: StructureDefinition.description
msgid "Minimal example profile …"
msgstr "Minimales Beispielprofil …"
```

- The `msgid` must match the generated English text **byte for byte** — copy it
  from `fsh-generated/resources/<Type>-<id>.json` after `sushi .` (quote style,
  umlauts and trailing punctuation included).
- The file name must match the **generated** `resourceType` + `id`, not the FSH
  name.

### What actually renders (verified on IG Publisher 2.2.11)

| Field | Translated by a `.po` supplement? |
|---|---|
| Resource-level `description` (StructureDefinition, CodeSystem, Questionnaire), and a StructureDefinition's element `definition` / `comment` / `requirements` | **Yes** |
| `CodeSystem.concept.display` / `concept.definition` | **No** — localize with a language-tagged `designation` in the resource |
| Resource `title` | **No** — it stays in the source language (English) in every rendering |
| ValueSet texts | **No** — a supplement is silently ignored |
| The IG's own `title` / `description` / `publisher` / `name` | **Not verified** on 2.2.11 — a unit in `ImplementationGuide-<ig-id>.po` may or may not reach them. The reference guide [`kerndatensatz-basis`](https://github.com/medizininformatik-initiative/kerndatensatz-basis) ships `#: ImplementationGuide.title` and `#: ImplementationGuide.description` units (evidence they are used upstream), but we have not observed them rendering — see §5 |

> **Do not "simulate" the unsupported cases.** A `ValueSet-*.po` is ignored —
> worse than an error, because it gives a false sense of coverage.
>
> `ImplementationGuide-<ig-id>.po` is the **exception**: it is not a resource
> supplement but the page-title catalogue, and its
> `ImplementationGuide.definition.page.title` units do render — in the
> breadcrumbs and the browser `<title>`. See §5 for exactly how far that goes.

---

### 5. Page titles (breadcrumbs, browser title)

The `pages:` tree in `sushi-config.yaml` carries **one** `title` per page, in the
default language. Their translations live in a gettext catalogue named after the
IG resource:

```text
input/translations/de/ImplementationGuide-mii-ig-dokument.po
```

One unit per page title, keyed by the English title:

```po
# A short title used to represent this page in navigational structures such
# as table of contents, bread crumbs, etc.
#: ImplementationGuide.definition.page.title
msgid "Guidance"
msgstr "Anleitung"
```

- The authoritative set of titles is the **`pages:` tree of the generated IG
  resource** (`fsh-generated/resources/ImplementationGuide-<ig-id>.json` after
  `sushi .`), walked recursively **including the root page** — whose title is
  `Table of Contents`. It contains pages that are not menu entries (Table of
  Contents, Downloads, Translation Information, Metadata Overview), so the menu
  alone is not a complete list.
- An **empty `msgstr` means untranslated**: that one entry falls back to the
  default language. Nothing breaks; the breadcrumb just stays English.
- The language must appear in **both** `i18n-lang` **and** `translation-sources`
  in `sushi-config.yaml`. A language missing from `translation-sources` has its
  `.po` files **silently ignored**.

Regenerate the catalogue after every change to the `pages:` tree — either by
hand or with the generator.

#### 5a. Updating the catalogue by hand (no tooling needed)

Run `sushi .`, open `fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json`,
and walk `definition.page` recursively — **including the root page**, whose
title is `Table of Contents`. The catalogue must hold **one unit per distinct
page title**:

```po
# A short title used to represent this page in navigational structures such
# as table of contents, bread crumbs, etc.
#: ImplementationGuide.definition.page.title
msgid "Guidance for Researchers"
msgstr "Anleitung für Forschende"
```

- Copy the `msgid` **byte for byte** from the JSON — it is the lookup key.
- Two pages sharing a title need only **one** unit.
- A unit whose title no longer exists in the tree is simply never matched;
  delete it to keep the catalogue readable.
- Leave `msgstr ""` for anything you cannot translate yet — that entry falls
  back to the default language and nothing breaks.

#### 5b. Updating the catalogue with the generator

The generator is **not part of this repository** — there is no
`scripts/gen-page-title-po.py` here. It is published in the skill catalog
[`forschungsgruppe-digital-health/agent-skills`](https://github.com/forschungsgruppe-digital-health/agent-skills),
in the skill `mii-ig-migration`, at
`skills/mii-ig-migration/scripts/gen-page-title-po.py`. Obtain it from there
(install the skill, or download that single file), then:

```sh
python3 gen-page-title-po.py \
  fsh-generated/resources/ImplementationGuide-mii-ig-dokument.json \
  - de input/translations/de/ImplementationGuide-mii-ig-dokument.po
```

It regenerates non-destructively: an existing non-empty `msgstr` survives and
wins over the seed, and units it does not own (the IG's own
`title` / `description` / `publisher`, a gettext header entry) are kept verbatim.
Exit code `1` means "written, but some titles are still untranslated" — a review
queue, not a build failure.

#### 5c. What this catalogue does — and does not — localize

**Verified on IG Publisher 2.2.11**, on the live CI previews: with this
catalogue in place,

- the **breadcrumbs** on translated pages render German, down to the root label
  `Inhaltsverzeichnis`, and
- the browser **`<title>` tag** renders German.

Two things it does **not** do — do not expect them, and do not report them as
translation gaps:

- **The table-of-contents page *body* is not localized.** The generated
  hierarchy table on `toc.html` keeps the default-language titles: the German
  `toc.html` renders `2.1 Guidance for Researchers` in English even though this
  catalogue supplies `Anleitung für Forschende` **and** the breadcrumb on that
  same page is German. This is a **publisher limitation, not a missing unit** —
  adding units, chasing a `msgid` mismatch or re-generating the catalogue will
  not change it.
- **The navigation menu is not driven by it.** The left-hand/top menu's German
  comes from the separate, pre-existing per-language file
  `input/translations/<lang>/includes/menu.xml` (§2). A complete catalogue does
  not translate the menu, and a missing catalogue does not un-translate it.

**The IG's own `title` / `description`.** The reference guide
[`kerndatensatz-basis`](https://github.com/medizininformatik-initiative/kerndatensatz-basis)
puts `#: ImplementationGuide.title` and `#: ImplementationGuide.description`
units at the top of the same catalogue — evidence that they are used upstream;
we have **not** observed them rendering on 2.2.11. This module ships neither,
because its `title` and `description` are carried unchanged from the published
MII source and are already German, so a German unit would only repeat the
`msgid`. Add them (and mark them as *used by the upstream reference guide;
rendering not verified on our pin*) if those source strings ever become English.

---

### 6. Build and check

```sh
sushi .
# then the IG Publisher (see first-build-in-devcontainer.md), or push the branch
# and let CI build the /de/ and /en/ preview.
```

1. `/de/` — menu in German; footer shows the copyright, `Package … basiert auf
   FHIR …` and `Erstellt <date>`.
2. `/en/` — menu in English; footer shows `Package … based on FHIR …` and
   `Generated <date>`.
3. A translated page renders in German on `/de/`; an untranslated one falls back
   to the English source.
4. A translated resource's `description` is German on that resource's own `/de/`
   page, English on `/en/`. The artifacts index keeps the default-language
   (English) resource title and description in **both** trees.
5. On a `/de/` page the breadcrumb reads `Inhaltsverzeichnis / <deutscher
   Seitentitel>` — not `Table of Contents / <English title>`, and the browser
   tab shows the German title. If either is still English, check §5 (missing
   unit, empty `msgstr`, or `de` missing from `translation-sources`).
6. **Expected, not a defect:** the body of `/de/toc.html` — the generated
   hierarchy table — still lists the **English** page titles. The publisher does
   not localize it (§5c); the breadcrumb on the same page being German is the
   proof that the catalogue is working.

The build must stay green (QA errors = 0).

---

## Expected result

Both renderings are complete: `/en/` and `/de/` each show their own menu, pages
and resource text, the footer labels are filled in, and the language switcher
moves between them.

## Common errors & fixes

| Symptom | Cause | Fix |
|---|---|---|
| Menu stays in one language everywhere | A `menu:` property crept into `sushi-config.yaml`, or the per-language menu file is missing | Remove the property; add `input/translations/<lang>/includes/menu.xml` (§2) |
| Menu QA error about `href="#"` | A dropdown parent has no real target | Point it at a real page (§2) |
| Navigation differs between languages | An entry was added to one menu file only | Keep both menu files in step (§2) |
| Base/footer labels blank in some language | The template lacks that language's UI-string catalog | Fix in the template repo (§3); make sure your `ig-template/` mirror is current |
| A translated page does not appear on `/de/` | It is a `<name>-de.md` sibling, or the file name differs from the English source page | Move it to `input/translations/de/pagecontent/<same-filename>` (§1) |
| A resource supplement does nothing | `msgid` mismatch, wrong file name, or an untranslatable field | Copy the `msgid` from `fsh-generated/resources/…`; check §4 |
| Breadcrumb or browser `<title>` stays English on `/de/` | No unit for that title, an empty `msgstr`, or `de` is missing from `translation-sources` | Add/regenerate the unit in `ImplementationGuide-<ig-id>.po` and fill the `msgstr` (§5a/§5b) |
| The `toc.html` **body** lists English titles on `/de/` | Publisher limitation — the generated hierarchy table is not localized | **Nothing to fix.** Not a missing unit; do not add units or edit the catalogue for it (§5c) |
| The menu is English on `/de/` although the page-title catalogue is complete | The menu is a different layer | Fix `input/translations/de/includes/menu.xml` (§2) — the catalogue never touches the menu (§5c) |

---

## Adding a third language

1. Add the code to `i18n-lang` and a matching entry to `translation-sources` in
   `sushi-config.yaml`.
2. Create `input/translations/<lang>/` with `pagecontent/`, `includes/menu.xml`
   and any resource `.po` files.
3. Ask the template repo to vendor that language's base UI-string catalogs (§3),
   otherwise the footer/base labels render blank in the new language.

## Breadcrumbs and page titles of `pages:`-tree pages

Page titles are **layer 5** — translate them in
`input/translations/<lang>/ImplementationGuide-<ig-id>.po`, see [§5](#5-page-titles-breadcrumbs-browser-title).

Historical note: an earlier revision of this template rewrote the rendered
breadcrumb HTML in an override of the base `fragment-pagebegin.html`, driven by
a mapping file `input/includes/breadcrumb-titles-de.txt`. That workaround rested
on a misdiagnosis — the publisher **does** localize the breadcrumbs (and the
browser `<title>`) from `pages:`-tree titles, through the catalogue above — and
has been retired. Neither file exists any more; do not
reintroduce them. Do not try sibling pages or menu tricks for page titles either
(both break the i18n model).
