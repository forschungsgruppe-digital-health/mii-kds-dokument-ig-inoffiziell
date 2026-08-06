<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW - MACHINE TRANSLATION.
     This English page was produced by the migration agent as a machine translation of
     input/translations/de/pagecontent/missing-data.md, which carries the module's ORIGINAL German
     narrative (source: implementation-guides/mii-ig-dokument-de/**, commit 9f76fed).
     English is the template's default language, so the direction is inverted: the German
     text is the source and this page is the translation (mii-ig-migration, Language).
     It has NOT been reviewed by a human. Gate C reviews it. Where a value is normative -
     element definitions, code displays, conformance verbs - the German wording is kept
     verbatim and marked as such rather than translated.
     No Liquid literal may appear in this file, including inside this comment. -->

### Handling missing data

There are situations in which information for a given data element is missing and the source system
does not know the reason for the absence.

- Where the source system holds no data instance for an element with a minimum cardinality of `0`
  (including elements marked *Must Support*), the data element SHALL be **omitted** from the
  resource.
- Where the data element is a **mandatory element** (minimum cardinality `1..`), it SHALL be
  **present** even where the source system has no data.

Summarised:

#### Non-coded data elements
- The extension [`Data-Absent-Reason`](http://hl7.org/fhir/R4/extension-data-absent-reason.html)
  SHALL be used on the data type, with the code `unknown`.

#### Coded data elements with a value set binding of "example", "preferred" or "extensible"
- Where the source system holds **free text only**, only the text element (`CodeableConcept.text`)
  SHOULD be used.
- Where neither text nor coded data are present:
  - where the value set contains an "unknown" code, that code SHALL be used;
  - where the value set contains no "unknown" code, the code `unknown` from the code system
    [DataAbsentReason](http://hl7.org/fhir/R4/codesystem-data-absent-reason.html) SHALL be used.

#### Coded data elements with a value set binding of "required"
- Where the value set contains an "unknown" code, that code SHALL be used.
- Where the value set contains no "unknown" code, a concept from the value set SHALL be used,
  because the instance would otherwise be **non-conformant**.
