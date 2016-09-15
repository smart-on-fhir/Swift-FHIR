Changelog
=========

## 2.8

- Update to Swift 3.0


## 2.4

- Update to FHIR `1.6.0.9663`


## 2.3

- Update to Swift 2.3


## 2.2.4

- Support resolving bundled references
- Logging improvements


## 2.2.3

- Address deprecation warnings appearing with Swift 2.2


## 2.2.2

- Re-implement handling of contained resources and containing of resources
- Add `Package.swift` and reorganize code to be compatible with the upcoming Swift package manager
- Support PATCH operation (but no convenience implementation yet)

## 2.2.1

- Add a very simple base implementation of `FHIRServer` called `FHIROpenServer`and a typealias `FHIRBaseServer`
- Improvements to reference resolving

## 2.2

- Update to FHIR `1.0.2.7202` (DSTU 2 with technical errata, compatible to `1.0.1`)
- New error handling using `FHIRError`
- Implement absolute reference resolver (will not work if the other server is protected)
- Fixes to `ElementDefinition`

## 2.1

- Update to FHIR `1.0.1.7108` (official DSTU 2)

## 2.0

- Update to Swift 2.0

## 1.0

- Update to swift 1.2

## 0.2

- Update to FHIR `0.5.0.5149` (DSTU 2 May 2015 ballot version)
- Update to Swift 1.1

## 0.1

- Initial release:
    + FHIR `0.0.81.2382` (DSTU 1)
    + Swift 1.0
