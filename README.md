FHIR Swift Classes
==================

These are [Swift][] classes representing data models of [🔥 FHIR][fhir] elements and resources, compatible with **iOS 11** and **OS X 10.13** and later.

This work is [Apache licensed](LICENSE.txt).
FHIR® is the registered trademark of [HL7][] and is used with the permission of HL7.


### Versioning

Due to the complications of combining two volatile technologies, here's an overview of which version numbers use which **Swift** and **FHIR versions**.

- The [`master`](https://github.com/smart-on-fhir/Swift-FHIR) branch should always compile and is on (point releases of) these main versions.
- The [`develop`](https://github.com/smart-on-fhir/Swift-FHIR/tree/develop) branch should be on versions corresponding to the latest freezes.
- The [`feature/latest-ci`](https://github.com/smart-on-fhir/Swift-FHIR/tree/feature/latest-ci) branch is updated from time to time with the latest and greatest.

See [tags/releases](https://github.com/smart-on-fhir/Swift-FHIR/releases).

 Version |   Swift   |      FHIR     | &nbsp;
---------|-----------|---------------|-----------------------------
**4.0**|       4.2 | `4.0.0-a53ec6ee1b` | R4
  **3.1**|       3.2 | `3.0.0.11832` | STU 3
 **3.0** |       3.0 | `3.0.0.11832` | STU 3
**2.10** |       3.0 | `1.8.0.10521` | STU 3 Freeze, Jan 2017
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

- [Programming Guide](https://github.com/smart-on-fhir/Swift-SMART/wiki) with code examples
- [Technical Documentation](http://docs.smarthealthit.org/Swift-SMART/) of classes, properties and methods
- [Medication List](https://github.com/smart-on-fhir/SoF-MedList) sample app


Progress
--------

Here's a rough list of what still needs to be done.

```
[ ] Remove _isSummaryResource workaround to STU-3's nMin/isSummary errors
[ ] More convenience methods to working with resources in code
[ ] Nice support for simple PATCH operations
[ ] Separate resource models from base models; needs untangling of
    _owningResource, _owningBundle (easy), _resolved etc.
[ ] Handle resource versions nicely
[ ] Create a default behavior when a modifierExtension is detected
[ ] Update/modernize FHIRSearch
[ ] Search: report search parameters that the server ignored
```

Working, at least to some extent:

- Classes generated for FHIR's base resources
    + Use custom structs for primitive types
    + Use custom Date/Time/DateTime/Instant structs
    + Generate enums for many closed ValueSets
- Create elements and resources programmatically
- Use a FHIR server protocol for REST interactions with a server
- Deserialize from JSON
    + Tells you which mandatory properties were missing,
    + which properties were not expected or
    + which were of a wrong type
- Serialize to JSON
    + Refuses to serialize incomplete elements
- Resolve contained/bundled/relative/absolute resource references
- Contain resources
- Create enums for `code` type properties
- Construct searches with NoSQL-like statements (cf. [fhir.js][])
- Perform operations
- Use example resources for auto-created class unit tests
    + Tests deserialization from file
    + Tests serialization from deserialized instances


Naming Convention
-----------------

Standard Swift naming conventions apply.
Tabs are used for indentation and spaces for alignment – the best of both worlds.
Classes representing FHIR resources do not have a prefix.
Custom classes and protocols start with `FHIR` to not make them clash with element or resource classes and make them easily distinguishable.


FHIR Data Models
----------------

Classes are generated from FHIR resource definitions with our [Python FHIR parser][fhir-parser].

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
let order = MedicationRequest()
let medication = Medication()
medication.id = "med"
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


Packaging
---------

The full build of the framework will include all FHIR resources, which will result in a rather large binary.
Take a look at the `package.py` script: provide one or more resource names when invoking the script from command line and it will output all the elements and resources that are needed for the desired resources.
You may then be able to remove unnecessary resources, which unfortunately is a tedious task and requires fumbling with the factory.

There is an experimental `SwiftFHIRMin-iOS` build target which only includes a minimal set of resources.
The problem here is that the factory is excluded and hence dereferencing, bundles and contained resources won't be properly instantiated.


[swift]: https://developer.apple.com/swift/
[fhir]: http://www.hl7.org/fhir
[hl7]: http://hl7.org/
[swift-smart]: https://github.com/smart-on-fhir/Swift-SMART
[fhir.js]: https://github.com/FHIR/fhir.js
[fhir-parser]: https://github.com/smart-on-fhir/fhir-parser
