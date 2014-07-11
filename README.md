FHIR Swift Classes
==================

These are [Swift](https://developer.apple.com/swift/) classes for data models of [FHIR](http://hl7.org/implement/standards/fhir/) elements and resources.
Classes are generated from the FHIR resource profiles and at one point should be able to instantiate themselves from JSON representations.


SMART on FHIR
-------------

The [SMART on FHIR](https://github.com/p2/SMART-on-FHIR-Cocoa) Cocoa framework utilizes these classes.


Class Generation
----------------

### Verbousness

Swift is **statically typed** and introspection is _very_ limited at the time.
Therefore the generator needs to be a bit more verbose and create class-level serializers/deserializers, rather than looking at class properties at runtime and figure out how to serialize/deserialize.


### Cardinality

Some data models have properties with a cardinality of a minimum of 1.
While these can be enforced to never be nil in Swift by **not** making them _Optionals_, they are currently still made optional to enable uniform initializers that only take a JSON dictionary.
For classes representing models with non-optional properties, a convenience initializer is supplied to reflect the need to set those properties without enforcing it.


Search
------

> Search is **work in progress** like nothing has ever been work in progress.

There is **preliminary** support for creating search query URLs in an object-oriented way.
Using the `search()` method on either a FHIRResource instance or on a class itself returns a `FHIRSearchParam` instance, which has methods for all currently defined search params.
These method calls can be chained and will eventually support all possible parameter combinations.

Calling the `construct()` method on the _last_ search parameter will construct the URL query that can be used to perform the search on a FHIR server:

```swift
let id = "1288992"
let path = MedicationPrescription.search().subject(id).construct()
// path now is: MedicationPrescription?subject=1288992
fhir_server.requestJSON(path) { json, error in
    // ...
}
```

Some examples of what we need to construct:

```
[X] Patient?name=eve
[ ] Patient?name:exact=Eve
[X] Patient?gender=male
[~] Patient?gender=http://hl7.org/fhir/v2/0001|M
[ ] Patient?gender:text=male
[X] Patient?gender:missing=true
[ ] Patient?language=FR,NL              // French or Dutch
[X] Patient?language=FR&language=NL     // French and Dutch
[X] Condition?date-asserted=2014-03
[ ] DiagnosticReport?subject:Patient=23
[ ] DiagnosticReport?subject.name=peter
[ ] DiagnosticReport?subject:Patient.name=peter
[ ] Observation?value=<5.4|http://unitsofmeasure.org|mg
…
```

#### Compartments

These are not yet supported in the SMART server:

```
[ ] Patient/23/procedure?date=>2010-01-01&date=<2011-12-31
```

#### Referenced (not yet implemented)

If search is restricted to a reference property, this applies:

- If the search token is merely an id, i.e. it does **not** contain a forward slash, a type restricted search is constructed based on which instance method is called:
    `GET {base-url}/Thing?referenced:InstanceType={id}`
- If the search token does contain a forward slash it is assumed to be an absolute reference and no `:InstanceType` will be appended:  
    `GET {base-url}/Thing?referenced={uri}`

#### Weirdnesses

_Observation_ has the search parameter `name-value-[x]` which can adapt to certain types (to replace `[x]`).
This has yet to be implemented.
