# Multi-language support (English default, German translation)

This template produces a bilingual IG with **English as the default language
and German as the translation**, the same model as
[kerndatensatz-basis](https://github.com/medizininformatik-initiative/kerndatensatz-basis).

The corresponding `sushi-config.yaml` parameters (already set):

```yaml
parameters:
  i18n-default-lang: en
  i18n-lang:
    - de
  translation-sources:
    - input/translations/de
```

## Directory structure

```
input/
└── translations/
    └── de/                          # German translation supplements
        ├── pagecontent/             # Translated narrative pages (same file
        │                            #   names as input/pagecontent/)
        ├── includes/                # Translated fragments (e.g. menu.xml)
        ├── intro-notes/             # Translated per-artifact intro/notes
        ├── ImplementationGuide-<ig-id>.po
        │                            # Page titles of the sushi-config `pages:`
        │                            #   tree — breadcrumbs, table of contents,
        │                            #   browser <title>
        └── *.po                     # Resource translations (PO format), e.g.
                                     #   StructureDefinition-<id>.po
```

## Workflow: adding German translations

1. **Build first.** The IG Publisher generates translation templates for
   every resource into `translations/de/po/` (repo root, gitignored) on each
   build.
2. **Resources (profiles, extensions, value sets, …):** copy the generated
   `.po` file into `input/translations/de/`, translate the `msgstr` lines
   (Poedit, any text editor, or machine translation with human review), and
   rebuild. Only some resource types and fields actually render — see the
   renders/does-not-render table in
   [`docs/recipes/add-translation.md`](../../docs/recipes/add-translation.md)
   §4 before you invest in a supplement.
3. **Pages:** create the German page under
   `input/translations/de/pagecontent/<same-filename>.md`; the publisher
   matches it to the English source by file name.
4. **Menu:** maintain the translated `menu.xml` under
   `input/translations/de/includes/`.
5. **Page titles:** keep `ImplementationGuide-<ig-id>.po` in step with the
   `pages:` tree of `sushi-config.yaml` — one unit per page title, tagged
   `#: ImplementationGuide.definition.page.title`. It drives the breadcrumbs,
   the table of contents and the browser title on `/de/`; an empty `msgstr`
   falls back to English. See
   [`docs/recipes/add-translation.md`](../../docs/recipes/add-translation.md) §5.

Translations placed under `input/translations/de/` are preserved across
rebuilds; everything under the repo-root `translations/` directory is
generated output.

Useful references:

- PO format: https://www.gnu.org/software/gettext/manual/html_node/PO-Files.html
- FHIR multi-language guidance: https://build.fhir.org/ig/FHIR/ig-guidance/languages.html
