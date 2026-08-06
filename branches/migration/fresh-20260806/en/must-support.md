# Must Support - MII IG Dokument v2026.0.1

* [**Table of Contents**](toc.md)
* **Must Support**

## Must Support

### Must Support

#### Definition

Elements of a FHIR resource can be marked in a profile as mandatory or as [Must Support](http://hl7.org/fhir/R4/profiling.html#mustsupport).

* **Mandatory elements** are elements with a minimum cardinality of `1` (e.g. `1..1`, `1..*`). They SHALL be present. In exceptional cases the values may be missing - in that case the absence SHALL be documented through a mechanism such as the `Data-Absent-Reason` extension (see [Handling Missing Data](missing-data.md)).
* **Must Support (MS)** on an element means that systems SHALL support that element even where the cardinality is `0..*`. **Support** means: systems SHALL be able to populate, store, display and correctly process the element.

#### Requirements

##### Data-producing systems (e.g. the FHIR API of a data integration centre)

A conformant data-producing system SHALL:

* populate an MS element with data where those data are locally available (e.g. through ETL from the primary system),
* be able to store the MS element in the resource,
* provide the MS element on request (e.g. for a feasibility query).

##### Data-consuming systems (e.g. requesting applications)

A conformant data-consuming system SHALL:

* display MS elements to the user correctly,
* be able to take the values into account for computation or further processing,
* process resource instances carrying MS elements without error or abort.

