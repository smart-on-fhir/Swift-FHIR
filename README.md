FHIR Swift Classes
==================

These are [Swift][] classes representing data models of [🔥 FHIR][fhir] resource profiles, compatible with **iOS 7** and **OS X 10.9** and later.
Building _Swift 3_ frameworks requires Xcode 8 or later, using frameworks on iOS requires **iOS 8**.

This work is [Apache licensed](LICENSE.txt).
FHIR® is the registered trademark of [HL7][] and is used with the permission of HL7.


### Versioning

Due to the complications of combining two volatile technologies, here's an overview of which version numbers use which **Swift** and **FHIR versions**.
The `master` branch should always compile and is on (point releases of) these main versions.
See the `develop` branch or specific `feature/x` branches for new Swift or FHIR versions, and check the [tags](https://github.com/smart-on-fhir/Swift-FHIR/releases).

 Version |   Swift   |      FHIR     | &nbsp;
---------|-----------|---------------|-----------------------------
 **2.9** |       3.0 |  `1.6.0.9663` | STU 3 Ballot, Sep 2016
 **2.8** |       3.0 |  `1.0.2.7202` | DSTU 2 (_+ technical errata_)
 **2.4** |       2.2 |  `1.6.0.9663` | STU 3 Ballot, Sept 2016
 **2.3** |       2.3 |  `1.0.2.7202` | DSTU 2 (_+ technical errata_)
**2.2.3**|       2.2 |  `1.0.2.7202` | DSTU 2 (_+ technical errata_)
 **2.2** |   2.0-2.2 |  `1.0.2.7202` | DSTU 2 (_+ technical errata_)
 **2.1** |   2.0-2.2 |  `1.0.1.7108` | DSTU 2
 **2.0** |   2.0-2.2 |  `0.5.0.5149` | DSTU 2 Ballot, May 2015
 **1.0** |       1.2 |  `0.5.0.5149` | DSTU 2 Ballot, May 2015
 **0.2** |       1.1 |  `0.5.0.5149` | DSTU 2 Ballot, May 2015
 **0.1** |       1.0 | `0.0.81.2382` | DSTU 1


SMART on FHIR
-------------

The [Swift-SMART][] framework utilizes these classes.
It also adds an implementation of the _FHIRServer_ protocol to make for a complete FHIR client framework.

- [Programming Guide](https://github.com/smart-on-fhir/Swift-SMART/wiki) with code examples
- [Technical Documentation](http://docs.smarthealthit.org/Swift-SMART/) of classes, properties and methods
- [Medication List](https://github.com/smart-on-fhir/SoF-MedList) sample app


Progress
--------

Here's a rough list of what still needs to be done.

```
[ ] Update/modernize FHIRSearch
[ ] Add convenience methods to working with resources in code
[ ] Create enums for `code` type properties
[ ] Nice support for simple PATCH operations
[ ] Handle resource versions nicely
[ ] Create a default behavior when a modifierExtension is detected
[ ] Search: report search parameters that the server ignored
[?] Use non-optional properties and implement failable initializers (see
    @smart-on-fhir/fhir-parser:feature/swift-failable-init)
```

Working, at least to some extent:

- Classes generated for FHIR's base resources
    + Use Swift native types whenever possible
    + Use custom Date/Time/DateTime/Instant structs
- Create elements and resources programmatically
- Use a FHIR server protocol for REST interactions with a server
- Deserialize from JSON
- Serialize to JSON
- Resolve contained/bundled/relative/absolute resource references
- Contain resources
- Construct searches with NoSQL-like statements (cf. [fhir.js][])
- Perform operations
- Use example resources for auto-created class unit tests
    + Tests deserialization from file
    + Tests serialization from deserialized instances


Naming Convention
-----------------

Standard Swift naming conventions apply.
Tabs are used for indentation and spaces for alignment – the best of both worlds.
Classes representing FHIR profiles do not have a prefix.
Custom classes and protocols start with `FHIR` to not make them clash with profile classes and make them easily distinguishable.


FHIR Profile Data Models
------------------------

Classes are generated from FHIR profiles with our [Python FHIR parser][fhir-parser].

### Verbousness

Swift is **statically typed** and introspection is _very_ limited at the time.
Therefore the generator needs to be a bit more verbose and create class-level serializers/deserializers, rather than looking at class properties at runtime and figure out how to serialize/deserialize.

### Cardinality

Some data models have properties with a cardinality of a minimum of 1.
While these can be enforced to never be nil in Swift by **not** making them _Optionals_, they are still optional to enable uniform initializers that only take a JSON dictionary.
For classes representing models with non-optional properties, a convenience initializer is supplied to reflect the need to set those properties without enforcing it.

### Contained Resources

FHIR makes use of [contained resources](http://hl7.org/fhir/references.html#contained).
An extension on the `Reference` class is included that adds method to handle reference resolving.

To resolve resource references, call `resolve(ModelClass) { resource in }` on a reference property, which will return an instance of the referenced type in the callback if resolved successfully.
To contain a resource and receive a `Reference` instance, call `parent.containResource(contained)`

```swift
// create a prescription with a contained medication
let order = MedicationOrder(json: nil)
let medication = Medication(json: {"id": "med"})
do {
    order.medicationReference = try order.containResource(medication)
}
catch let error {
    // failed to contain, either because no id or containing itself
}

// resolve the contained medication
order.medication?.resolve(Medication.self) { medication in
	if let medication = medication {
		// successfully resolved
	}
}
```

### Search

The client supports the NoSQL-like approach proposed and used by [fhir.js](https://github.com/FHIR/fhir.js#search).

#### Compartments

Search can be restricted to [compartments](https://www.hl7.org/fhir/compartments.html), these however are not yet supported in the SMART server nor in these classes.

```
[ ] Patient/23/procedure?date=>2010-01-01&date=<2011-12-31
```

#### Referenced (not yet implemented)

If search is restricted to a reference property, this applies:

- If the search token is merely an id, i.e. it does **not** contain a forward slash, a type restricted search is constructed based on which instance method is called:
    `GET {base-url}/Thing?referenced:InstanceType={id}`
- If the search token does contain a forward slash it is assumed to be an absolute reference and no `:InstanceType` will be appended:  
    `GET {base-url}/Thing?referenced={uri}`


[swift]: https://developer.apple.com/swift/
[fhir]: http://www.hl7.org/fhir
[hl7]: http://hl7.org/
[swift-smart]: https://github.com/smart-on-fhir/Swift-SMART
[fhir.js]: https://github.com/FHIR/fhir.js
[fhir-parser]: https://github.com/smart-on-fhir/fhir-parser
