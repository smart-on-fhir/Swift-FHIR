FHIR Swift Classes
==================

These are [Swift](https://developer.apple.com/swift/) classes for data models of [FHIR](http://hl7.org/implement/standards/fhir/) elements and resources.
Classes are generated from the FHIR resource profiles and instantiate themselves from JSON representations.

This repo contains a framework target for both OS X and iOS, hence the deployment targets will have to be OS X 10.9 and iOS 8.
As soon as it's possible to build static libraries from Swift code we may be able to lower the iOS deployment target to iOS 7.


SMART on FHIR
-------------

The [SMART on FHIR](https://github.com/p2/SMART-on-FHIR-Cocoa) Cocoa framework utilizes these classes.


Progress
--------

Here's a rough list of what should be done.
Things that have an `X` are done in the sense that they work but have not necessarily been tested extensively.
The `generate.py` script also has a few `TODO`s to point out unresolved issues.

```
[X] Create classes for all FHIR profiles/resources from spec
[X] Write deserializer that instantiates from JSON
[X] Reference resolver: resolve inline referenced resources
[~] Construct search URL parameters in code with properties (see below)
[ ] Write serializer
[ ] Add validation capability to serialized JSON?
[~] Write unit tests that use the example JSONs
[ ] Write a real nice documentation
```


Class Generation
----------------

### Verbousness

Swift is **statically typed** and introspection is _very_ limited at the time.
Therefore the generator needs to be a bit more verbose and create class-level serializers/deserializers, rather than looking at class properties at runtime and figure out how to serialize/deserialize.

### Cardinality

Some data models have properties with a cardinality of a minimum of 1.
While these can be enforced to never be nil in Swift by **not** making them _Optionals_, they are currently still made optional to enable uniform initializers that only take a JSON dictionary.
For classes representing models with non-optional properties, a convenience initializer is supplied to reflect the need to set those properties without enforcing it.

### Contained Resources

FHIR makes use of [contained resources](http://hl7.org/implement/standards/fhir/references.html#contained).
There is a mechanism in place that resolves those lazily in a way that they can still be used like standard properties, but they may need to be casted to specific classes.


Search
------

> Search is **work in progress**.

There is **preliminary** support for creating search query URLs in an object-oriented way.
Using the `search()` method on either a FHIRResource instance or on a class itself returns a `FHIRSearchParam` instance, which has methods for all currently defined search params.
These method calls can be chained and will eventually support all possible parameter combinations.

Calling the `construct()` method on the _last_ search parameter will construct the URL query that can be used to perform the search on a FHIR server:

```swift
let id = "1288992"
let path = MedicationPrescription.search().patient(id).construct()
// path now is: MedicationPrescription?patient=1288992
fhir_server.requestJSON(path) { json, error in
    // ...
}
```

There is a convenience method to construct the search URL and request data from the server in one go:

```swift
let id = "1288992"
MedicationPrescription.search().patient(id).perform(fhir_server) {
    results, error in
    // on success `results` is an array of MedicationPrescriptions
    // ...
}
```

Some examples of what we need to construct:

```
[X] Patient?name=eve
    Patient.search().name("eve")

[X] Patient?name:exact=Eve
    Patient.search().name(exact: "Eve")

[X] Patient?gender=male
    Patient.search().gender("male")

[~] Patient?gender=http://hl7.org/fhir/v2/0001|M
    Patient.search().gender("http://hl7.org/fhir/v2/0001|M")
 !  Patient.search().gender("http://hl7.org/fhir/v2/0001", "M")

[X] Patient?gender:text=male
    Patient.search().gender(asText: "male")

[X] Patient?gender:missing=true
    Patient.search().gender(missing: true)

[ ] Patient?language=FR,NL              // French or Dutch
    Patient.search().language("FR", "NL")

[X] Patient?language=FR&language=NL     // French and Dutch
    Patient.search().language("FR").language("NL")

[X] Condition?date-asserted=2014-03
    Condition.search().dateAsserted("2014-03")

[ ] DiagnosticReport?subject:Patient=23
    DiagnosticReport.search().subject(???)

[ ] DiagnosticReport?subject.name=peter
    DiagnosticReport.search().???

[ ] DiagnosticReport?subject:Patient.name=peter
    DiagnosticReport.search().???

[~] Observation?value-quantity=<5.4|http://unitsofmeasure.org|mg
    Observation.search().valueQuantity("<5.4|http://unitsofmeasure.org|mg")
 !  Observation.search().valueQuantity("<5.4", "mg")

...
```

#### Compartments

Search can be restricted to [compartments](http://hl7.org/implement/standards/fhir/extras.html#compartment), these however are not yet supported in the SMART server nor in these classes.

```
[ ] Patient/23/procedure?date=>2010-01-01&date=<2011-12-31
```

#### Referenced (not yet implemented)

If search is restricted to a reference property, this applies:

- If the search token is merely an id, i.e. it does **not** contain a forward slash, a type restricted search is constructed based on which instance method is called:
    `GET {base-url}/Thing?referenced:InstanceType={id}`
- If the search token does contain a forward slash it is assumed to be an absolute reference and no `:InstanceType` will be appended:  
    `GET {base-url}/Thing?referenced={uri}`


### Weirdnesses

_Observation_ has the search parameter `name-value-[x]` which can adapt to certain types (to replace `[x]`).
This has yet to be implemented.
