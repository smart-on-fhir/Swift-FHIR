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
