//
//  ElementDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/ElementDefinition) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
Definition of an element in a resource or extension.

Captures constraints on each element within the resource, profile, or extension.
*/
open class ElementDefinition: Element {
	override open class var resourceType: String {
		get { return "ElementDefinition" }
	}
	
	/// Other names.
	public var alias: [FHIRString]?
	
	/// Base definition information for tools.
	public var base: ElementDefinitionBase?
	
	/// ValueSet details if this is coded.
	public var binding: ElementDefinitionBinding?
	
	/// Defining code.
	public var code: [Coding]?
	
	/// Comments about the use of this element.
	public var comments: FHIRString?
	
	/// Reference to invariant about presence.
	public var condition: [FHIRString]?
	
	/// Condition that must evaluate to true.
	public var constraint: [ElementDefinitionConstraint]?
	
	/// Reference to definition of content for the element.
	public var contentReference: FHIRURL?
	
	/// Specified value if missing from instance.
	public var defaultValueAddress: Address?
	
	/// Specified value if missing from instance.
	public var defaultValueAge: Age?
	
	/// Specified value if missing from instance.
	public var defaultValueAnnotation: Annotation?
	
	/// Specified value if missing from instance.
	public var defaultValueAttachment: Attachment?
	
	/// Specified value if missing from instance.
	public var defaultValueBase64Binary: Base64Binary?
	
	/// Specified value if missing from instance.
	public var defaultValueBoolean: FHIRBool?
	
	/// Specified value if missing from instance.
	public var defaultValueCode: FHIRString?
	
	/// Specified value if missing from instance.
	public var defaultValueCodeableConcept: CodeableConcept?
	
	/// Specified value if missing from instance.
	public var defaultValueCoding: Coding?
	
	/// Specified value if missing from instance.
	public var defaultValueContactPoint: ContactPoint?
	
	/// Specified value if missing from instance.
	public var defaultValueCount: Count?
	
	/// Specified value if missing from instance.
	public var defaultValueDate: FHIRDate?
	
	/// Specified value if missing from instance.
	public var defaultValueDateTime: DateTime?
	
	/// Specified value if missing from instance.
	public var defaultValueDecimal: FHIRDecimal?
	
	/// Specified value if missing from instance.
	public var defaultValueDistance: Distance?
	
	/// Specified value if missing from instance.
	public var defaultValueDuration: Duration?
	
	/// Specified value if missing from instance.
	public var defaultValueHumanName: HumanName?
	
	/// Specified value if missing from instance.
	public var defaultValueId: FHIRString?
	
	/// Specified value if missing from instance.
	public var defaultValueIdentifier: Identifier?
	
	/// Specified value if missing from instance.
	public var defaultValueInstant: Instant?
	
	/// Specified value if missing from instance.
	public var defaultValueInteger: FHIRInteger?
	
	/// Specified value if missing from instance.
	public var defaultValueMarkdown: FHIRString?
	
	/// Specified value if missing from instance.
	public var defaultValueMeta: Meta?
	
	/// Specified value if missing from instance.
	public var defaultValueMoney: Money?
	
	/// Specified value if missing from instance.
	public var defaultValueOid: FHIRURL?
	
	/// Specified value if missing from instance.
	public var defaultValuePeriod: Period?
	
	/// Specified value if missing from instance.
	public var defaultValuePositiveInt: FHIRInteger?
	
	/// Specified value if missing from instance.
	public var defaultValueQuantity: Quantity?
	
	/// Specified value if missing from instance.
	public var defaultValueRange: Range?
	
	/// Specified value if missing from instance.
	public var defaultValueRatio: Ratio?
	
	/// Specified value if missing from instance.
	public var defaultValueReference: Reference?
	
	/// Specified value if missing from instance.
	public var defaultValueSampledData: SampledData?
	
	/// Specified value if missing from instance.
	public var defaultValueSignature: Signature?
	
	/// Specified value if missing from instance.
	public var defaultValueString: FHIRString?
	
	/// Specified value if missing from instance.
	public var defaultValueTime: FHIRTime?
	
	/// Specified value if missing from instance.
	public var defaultValueTiming: Timing?
	
	/// Specified value if missing from instance.
	public var defaultValueUnsignedInt: FHIRInteger?
	
	/// Specified value if missing from instance.
	public var defaultValueUri: FHIRURL?
	
	/// Full formal definition as narrative text.
	public var definition: FHIRString?
	
	/// Example value (as defined for type).
	public var example: [ElementDefinitionExample]?
	
	/// Value must be exactly this.
	public var fixedAddress: Address?
	
	/// Value must be exactly this.
	public var fixedAge: Age?
	
	/// Value must be exactly this.
	public var fixedAnnotation: Annotation?
	
	/// Value must be exactly this.
	public var fixedAttachment: Attachment?
	
	/// Value must be exactly this.
	public var fixedBase64Binary: Base64Binary?
	
	/// Value must be exactly this.
	public var fixedBoolean: FHIRBool?
	
	/// Value must be exactly this.
	public var fixedCode: FHIRString?
	
	/// Value must be exactly this.
	public var fixedCodeableConcept: CodeableConcept?
	
	/// Value must be exactly this.
	public var fixedCoding: Coding?
	
	/// Value must be exactly this.
	public var fixedContactPoint: ContactPoint?
	
	/// Value must be exactly this.
	public var fixedCount: Count?
	
	/// Value must be exactly this.
	public var fixedDate: FHIRDate?
	
	/// Value must be exactly this.
	public var fixedDateTime: DateTime?
	
	/// Value must be exactly this.
	public var fixedDecimal: FHIRDecimal?
	
	/// Value must be exactly this.
	public var fixedDistance: Distance?
	
	/// Value must be exactly this.
	public var fixedDuration: Duration?
	
	/// Value must be exactly this.
	public var fixedHumanName: HumanName?
	
	/// Value must be exactly this.
	public var fixedId: FHIRString?
	
	/// Value must be exactly this.
	public var fixedIdentifier: Identifier?
	
	/// Value must be exactly this.
	public var fixedInstant: Instant?
	
	/// Value must be exactly this.
	public var fixedInteger: FHIRInteger?
	
	/// Value must be exactly this.
	public var fixedMarkdown: FHIRString?
	
	/// Value must be exactly this.
	public var fixedMeta: Meta?
	
	/// Value must be exactly this.
	public var fixedMoney: Money?
	
	/// Value must be exactly this.
	public var fixedOid: FHIRURL?
	
	/// Value must be exactly this.
	public var fixedPeriod: Period?
	
	/// Value must be exactly this.
	public var fixedPositiveInt: FHIRInteger?
	
	/// Value must be exactly this.
	public var fixedQuantity: Quantity?
	
	/// Value must be exactly this.
	public var fixedRange: Range?
	
	/// Value must be exactly this.
	public var fixedRatio: Ratio?
	
	/// Value must be exactly this.
	public var fixedReference: Reference?
	
	/// Value must be exactly this.
	public var fixedSampledData: SampledData?
	
	/// Value must be exactly this.
	public var fixedSignature: Signature?
	
	/// Value must be exactly this.
	public var fixedString: FHIRString?
	
	/// Value must be exactly this.
	public var fixedTime: FHIRTime?
	
	/// Value must be exactly this.
	public var fixedTiming: Timing?
	
	/// Value must be exactly this.
	public var fixedUnsignedInt: FHIRInteger?
	
	/// Value must be exactly this.
	public var fixedUri: FHIRURL?
	
	/// If this modifies the meaning of other elements.
	public var isModifier: FHIRBool?
	
	/// Include when _summary = true?.
	public var isSummary: FHIRBool?
	
	/// Name for element to display with or prompt for element.
	public var label: FHIRString?
	
	/// Map element to another set of definitions.
	public var mapping: [ElementDefinitionMapping]?
	
	/// Maximum Cardinality (a number or *).
	public var max: FHIRString?
	
	/// Max length for strings.
	public var maxLength: FHIRInteger?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueDate: FHIRDate?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueDateTime: DateTime?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueDecimal: FHIRDecimal?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueInstant: Instant?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueInteger: FHIRInteger?
	
	/// Maximum Allowed Value (for some types).
	public var maxValuePositiveInt: FHIRInteger?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueQuantity: Quantity?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueTime: FHIRTime?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueUnsignedInt: FHIRInteger?
	
	/// Implicit meaning when this element is missing.
	public var meaningWhenMissing: FHIRString?
	
	/// Minimum Cardinality.
	public var min: FHIRInteger?
	
	/// Minimum Allowed Value (for some types).
	public var minValueDate: FHIRDate?
	
	/// Minimum Allowed Value (for some types).
	public var minValueDateTime: DateTime?
	
	/// Minimum Allowed Value (for some types).
	public var minValueDecimal: FHIRDecimal?
	
	/// Minimum Allowed Value (for some types).
	public var minValueInstant: Instant?
	
	/// Minimum Allowed Value (for some types).
	public var minValueInteger: FHIRInteger?
	
	/// Minimum Allowed Value (for some types).
	public var minValuePositiveInt: FHIRInteger?
	
	/// Minimum Allowed Value (for some types).
	public var minValueQuantity: Quantity?
	
	/// Minimum Allowed Value (for some types).
	public var minValueTime: FHIRTime?
	
	/// Minimum Allowed Value (for some types).
	public var minValueUnsignedInt: FHIRInteger?
	
	/// If the element must supported.
	public var mustSupport: FHIRBool?
	
	/// Path of the element in the heirarchy of elements.
	public var path: FHIRString?
	
	/// Value must have at least these property values.
	public var patternAddress: Address?
	
	/// Value must have at least these property values.
	public var patternAge: Age?
	
	/// Value must have at least these property values.
	public var patternAnnotation: Annotation?
	
	/// Value must have at least these property values.
	public var patternAttachment: Attachment?
	
	/// Value must have at least these property values.
	public var patternBase64Binary: Base64Binary?
	
	/// Value must have at least these property values.
	public var patternBoolean: FHIRBool?
	
	/// Value must have at least these property values.
	public var patternCode: FHIRString?
	
	/// Value must have at least these property values.
	public var patternCodeableConcept: CodeableConcept?
	
	/// Value must have at least these property values.
	public var patternCoding: Coding?
	
	/// Value must have at least these property values.
	public var patternContactPoint: ContactPoint?
	
	/// Value must have at least these property values.
	public var patternCount: Count?
	
	/// Value must have at least these property values.
	public var patternDate: FHIRDate?
	
	/// Value must have at least these property values.
	public var patternDateTime: DateTime?
	
	/// Value must have at least these property values.
	public var patternDecimal: FHIRDecimal?
	
	/// Value must have at least these property values.
	public var patternDistance: Distance?
	
	/// Value must have at least these property values.
	public var patternDuration: Duration?
	
	/// Value must have at least these property values.
	public var patternHumanName: HumanName?
	
	/// Value must have at least these property values.
	public var patternId: FHIRString?
	
	/// Value must have at least these property values.
	public var patternIdentifier: Identifier?
	
	/// Value must have at least these property values.
	public var patternInstant: Instant?
	
	/// Value must have at least these property values.
	public var patternInteger: FHIRInteger?
	
	/// Value must have at least these property values.
	public var patternMarkdown: FHIRString?
	
	/// Value must have at least these property values.
	public var patternMeta: Meta?
	
	/// Value must have at least these property values.
	public var patternMoney: Money?
	
	/// Value must have at least these property values.
	public var patternOid: FHIRURL?
	
	/// Value must have at least these property values.
	public var patternPeriod: Period?
	
	/// Value must have at least these property values.
	public var patternPositiveInt: FHIRInteger?
	
	/// Value must have at least these property values.
	public var patternQuantity: Quantity?
	
	/// Value must have at least these property values.
	public var patternRange: Range?
	
	/// Value must have at least these property values.
	public var patternRatio: Ratio?
	
	/// Value must have at least these property values.
	public var patternReference: Reference?
	
	/// Value must have at least these property values.
	public var patternSampledData: SampledData?
	
	/// Value must have at least these property values.
	public var patternSignature: Signature?
	
	/// Value must have at least these property values.
	public var patternString: FHIRString?
	
	/// Value must have at least these property values.
	public var patternTime: FHIRTime?
	
	/// Value must have at least these property values.
	public var patternTiming: Timing?
	
	/// Value must have at least these property values.
	public var patternUnsignedInt: FHIRInteger?
	
	/// Value must have at least these property values.
	public var patternUri: FHIRURL?
	
	/// Codes that define how this element is represented in instances, when the deviation varies from the normal case.
	public var representation: [PropertyRepresentation]?
	
	/// Why this resource has been created.
	public var requirements: FHIRString?
	
	/// Concise definition for xml presentation.
	public var short: FHIRString?
	
	/// Name for this particular element (in a set of slices).
	public var sliceName: FHIRString?
	
	/// This element is sliced - slices follow.
	public var slicing: ElementDefinitionSlicing?
	
	/// Data type and Profile for this element.
	public var type: [ElementDefinitionType]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: FHIRString) {
		self.init()
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		alias = try createInstances(of: FHIRString.self, for: "alias", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? alias
		base = try createInstance(type: ElementDefinitionBase.self, for: "base", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? base
		binding = try createInstance(type: ElementDefinitionBinding.self, for: "binding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? binding
		code = try createInstances(of: Coding.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		comments = try createInstance(type: FHIRString.self, for: "comments", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comments
		condition = try createInstances(of: FHIRString.self, for: "condition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? condition
		constraint = try createInstances(of: ElementDefinitionConstraint.self, for: "constraint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? constraint
		contentReference = try createInstance(type: FHIRURL.self, for: "contentReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contentReference
		defaultValueAddress = try createInstance(type: Address.self, for: "defaultValueAddress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueAddress
		defaultValueAge = try createInstance(type: Age.self, for: "defaultValueAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueAge
		defaultValueAnnotation = try createInstance(type: Annotation.self, for: "defaultValueAnnotation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueAnnotation
		defaultValueAttachment = try createInstance(type: Attachment.self, for: "defaultValueAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueAttachment
		defaultValueBase64Binary = try createInstance(type: Base64Binary.self, for: "defaultValueBase64Binary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueBase64Binary
		defaultValueBoolean = try createInstance(type: FHIRBool.self, for: "defaultValueBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueBoolean
		defaultValueCode = try createInstance(type: FHIRString.self, for: "defaultValueCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueCode
		defaultValueCodeableConcept = try createInstance(type: CodeableConcept.self, for: "defaultValueCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueCodeableConcept
		defaultValueCoding = try createInstance(type: Coding.self, for: "defaultValueCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueCoding
		defaultValueContactPoint = try createInstance(type: ContactPoint.self, for: "defaultValueContactPoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueContactPoint
		defaultValueCount = try createInstance(type: Count.self, for: "defaultValueCount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueCount
		defaultValueDate = try createInstance(type: FHIRDate.self, for: "defaultValueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueDate
		defaultValueDateTime = try createInstance(type: DateTime.self, for: "defaultValueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueDateTime
		defaultValueDecimal = try createInstance(type: FHIRDecimal.self, for: "defaultValueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueDecimal
		defaultValueDistance = try createInstance(type: Distance.self, for: "defaultValueDistance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueDistance
		defaultValueDuration = try createInstance(type: Duration.self, for: "defaultValueDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueDuration
		defaultValueHumanName = try createInstance(type: HumanName.self, for: "defaultValueHumanName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueHumanName
		defaultValueId = try createInstance(type: FHIRString.self, for: "defaultValueId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueId
		defaultValueIdentifier = try createInstance(type: Identifier.self, for: "defaultValueIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueIdentifier
		defaultValueInstant = try createInstance(type: Instant.self, for: "defaultValueInstant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueInstant
		defaultValueInteger = try createInstance(type: FHIRInteger.self, for: "defaultValueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueInteger
		defaultValueMarkdown = try createInstance(type: FHIRString.self, for: "defaultValueMarkdown", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueMarkdown
		defaultValueMeta = try createInstance(type: Meta.self, for: "defaultValueMeta", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueMeta
		defaultValueMoney = try createInstance(type: Money.self, for: "defaultValueMoney", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueMoney
		defaultValueOid = try createInstance(type: FHIRURL.self, for: "defaultValueOid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueOid
		defaultValuePeriod = try createInstance(type: Period.self, for: "defaultValuePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValuePeriod
		defaultValuePositiveInt = try createInstance(type: FHIRInteger.self, for: "defaultValuePositiveInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValuePositiveInt
		defaultValueQuantity = try createInstance(type: Quantity.self, for: "defaultValueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueQuantity
		defaultValueRange = try createInstance(type: Range.self, for: "defaultValueRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueRange
		defaultValueRatio = try createInstance(type: Ratio.self, for: "defaultValueRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueRatio
		defaultValueReference = try createInstance(type: Reference.self, for: "defaultValueReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueReference
		defaultValueSampledData = try createInstance(type: SampledData.self, for: "defaultValueSampledData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueSampledData
		defaultValueSignature = try createInstance(type: Signature.self, for: "defaultValueSignature", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueSignature
		defaultValueString = try createInstance(type: FHIRString.self, for: "defaultValueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueString
		defaultValueTime = try createInstance(type: FHIRTime.self, for: "defaultValueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueTime
		defaultValueTiming = try createInstance(type: Timing.self, for: "defaultValueTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueTiming
		defaultValueUnsignedInt = try createInstance(type: FHIRInteger.self, for: "defaultValueUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueUnsignedInt
		defaultValueUri = try createInstance(type: FHIRURL.self, for: "defaultValueUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? defaultValueUri
		definition = try createInstance(type: FHIRString.self, for: "definition", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? definition
		example = try createInstances(of: ElementDefinitionExample.self, for: "example", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? example
		fixedAddress = try createInstance(type: Address.self, for: "fixedAddress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedAddress
		fixedAge = try createInstance(type: Age.self, for: "fixedAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedAge
		fixedAnnotation = try createInstance(type: Annotation.self, for: "fixedAnnotation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedAnnotation
		fixedAttachment = try createInstance(type: Attachment.self, for: "fixedAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedAttachment
		fixedBase64Binary = try createInstance(type: Base64Binary.self, for: "fixedBase64Binary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedBase64Binary
		fixedBoolean = try createInstance(type: FHIRBool.self, for: "fixedBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedBoolean
		fixedCode = try createInstance(type: FHIRString.self, for: "fixedCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedCode
		fixedCodeableConcept = try createInstance(type: CodeableConcept.self, for: "fixedCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedCodeableConcept
		fixedCoding = try createInstance(type: Coding.self, for: "fixedCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedCoding
		fixedContactPoint = try createInstance(type: ContactPoint.self, for: "fixedContactPoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedContactPoint
		fixedCount = try createInstance(type: Count.self, for: "fixedCount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedCount
		fixedDate = try createInstance(type: FHIRDate.self, for: "fixedDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedDate
		fixedDateTime = try createInstance(type: DateTime.self, for: "fixedDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedDateTime
		fixedDecimal = try createInstance(type: FHIRDecimal.self, for: "fixedDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedDecimal
		fixedDistance = try createInstance(type: Distance.self, for: "fixedDistance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedDistance
		fixedDuration = try createInstance(type: Duration.self, for: "fixedDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedDuration
		fixedHumanName = try createInstance(type: HumanName.self, for: "fixedHumanName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedHumanName
		fixedId = try createInstance(type: FHIRString.self, for: "fixedId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedId
		fixedIdentifier = try createInstance(type: Identifier.self, for: "fixedIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedIdentifier
		fixedInstant = try createInstance(type: Instant.self, for: "fixedInstant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedInstant
		fixedInteger = try createInstance(type: FHIRInteger.self, for: "fixedInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedInteger
		fixedMarkdown = try createInstance(type: FHIRString.self, for: "fixedMarkdown", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedMarkdown
		fixedMeta = try createInstance(type: Meta.self, for: "fixedMeta", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedMeta
		fixedMoney = try createInstance(type: Money.self, for: "fixedMoney", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedMoney
		fixedOid = try createInstance(type: FHIRURL.self, for: "fixedOid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedOid
		fixedPeriod = try createInstance(type: Period.self, for: "fixedPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedPeriod
		fixedPositiveInt = try createInstance(type: FHIRInteger.self, for: "fixedPositiveInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedPositiveInt
		fixedQuantity = try createInstance(type: Quantity.self, for: "fixedQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedQuantity
		fixedRange = try createInstance(type: Range.self, for: "fixedRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedRange
		fixedRatio = try createInstance(type: Ratio.self, for: "fixedRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedRatio
		fixedReference = try createInstance(type: Reference.self, for: "fixedReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedReference
		fixedSampledData = try createInstance(type: SampledData.self, for: "fixedSampledData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedSampledData
		fixedSignature = try createInstance(type: Signature.self, for: "fixedSignature", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedSignature
		fixedString = try createInstance(type: FHIRString.self, for: "fixedString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedString
		fixedTime = try createInstance(type: FHIRTime.self, for: "fixedTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedTime
		fixedTiming = try createInstance(type: Timing.self, for: "fixedTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedTiming
		fixedUnsignedInt = try createInstance(type: FHIRInteger.self, for: "fixedUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedUnsignedInt
		fixedUri = try createInstance(type: FHIRURL.self, for: "fixedUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? fixedUri
		isModifier = try createInstance(type: FHIRBool.self, for: "isModifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? isModifier
		isSummary = try createInstance(type: FHIRBool.self, for: "isSummary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? isSummary
		label = try createInstance(type: FHIRString.self, for: "label", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? label
		mapping = try createInstances(of: ElementDefinitionMapping.self, for: "mapping", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? mapping
		max = try createInstance(type: FHIRString.self, for: "max", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? max
		maxLength = try createInstance(type: FHIRInteger.self, for: "maxLength", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxLength
		maxValueDate = try createInstance(type: FHIRDate.self, for: "maxValueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxValueDate
		maxValueDateTime = try createInstance(type: DateTime.self, for: "maxValueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxValueDateTime
		maxValueDecimal = try createInstance(type: FHIRDecimal.self, for: "maxValueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxValueDecimal
		maxValueInstant = try createInstance(type: Instant.self, for: "maxValueInstant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxValueInstant
		maxValueInteger = try createInstance(type: FHIRInteger.self, for: "maxValueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxValueInteger
		maxValuePositiveInt = try createInstance(type: FHIRInteger.self, for: "maxValuePositiveInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxValuePositiveInt
		maxValueQuantity = try createInstance(type: Quantity.self, for: "maxValueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxValueQuantity
		maxValueTime = try createInstance(type: FHIRTime.self, for: "maxValueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxValueTime
		maxValueUnsignedInt = try createInstance(type: FHIRInteger.self, for: "maxValueUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? maxValueUnsignedInt
		meaningWhenMissing = try createInstance(type: FHIRString.self, for: "meaningWhenMissing", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? meaningWhenMissing
		min = try createInstance(type: FHIRInteger.self, for: "min", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? min
		minValueDate = try createInstance(type: FHIRDate.self, for: "minValueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? minValueDate
		minValueDateTime = try createInstance(type: DateTime.self, for: "minValueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? minValueDateTime
		minValueDecimal = try createInstance(type: FHIRDecimal.self, for: "minValueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? minValueDecimal
		minValueInstant = try createInstance(type: Instant.self, for: "minValueInstant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? minValueInstant
		minValueInteger = try createInstance(type: FHIRInteger.self, for: "minValueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? minValueInteger
		minValuePositiveInt = try createInstance(type: FHIRInteger.self, for: "minValuePositiveInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? minValuePositiveInt
		minValueQuantity = try createInstance(type: Quantity.self, for: "minValueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? minValueQuantity
		minValueTime = try createInstance(type: FHIRTime.self, for: "minValueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? minValueTime
		minValueUnsignedInt = try createInstance(type: FHIRInteger.self, for: "minValueUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? minValueUnsignedInt
		mustSupport = try createInstance(type: FHIRBool.self, for: "mustSupport", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? mustSupport
		path = try createInstance(type: FHIRString.self, for: "path", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? path
		if nil == path && !presentKeys.contains("path") {
			errors.append(FHIRValidationError(missing: "path"))
		}
		patternAddress = try createInstance(type: Address.self, for: "patternAddress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternAddress
		patternAge = try createInstance(type: Age.self, for: "patternAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternAge
		patternAnnotation = try createInstance(type: Annotation.self, for: "patternAnnotation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternAnnotation
		patternAttachment = try createInstance(type: Attachment.self, for: "patternAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternAttachment
		patternBase64Binary = try createInstance(type: Base64Binary.self, for: "patternBase64Binary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternBase64Binary
		patternBoolean = try createInstance(type: FHIRBool.self, for: "patternBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternBoolean
		patternCode = try createInstance(type: FHIRString.self, for: "patternCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternCode
		patternCodeableConcept = try createInstance(type: CodeableConcept.self, for: "patternCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternCodeableConcept
		patternCoding = try createInstance(type: Coding.self, for: "patternCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternCoding
		patternContactPoint = try createInstance(type: ContactPoint.self, for: "patternContactPoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternContactPoint
		patternCount = try createInstance(type: Count.self, for: "patternCount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternCount
		patternDate = try createInstance(type: FHIRDate.self, for: "patternDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternDate
		patternDateTime = try createInstance(type: DateTime.self, for: "patternDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternDateTime
		patternDecimal = try createInstance(type: FHIRDecimal.self, for: "patternDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternDecimal
		patternDistance = try createInstance(type: Distance.self, for: "patternDistance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternDistance
		patternDuration = try createInstance(type: Duration.self, for: "patternDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternDuration
		patternHumanName = try createInstance(type: HumanName.self, for: "patternHumanName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternHumanName
		patternId = try createInstance(type: FHIRString.self, for: "patternId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternId
		patternIdentifier = try createInstance(type: Identifier.self, for: "patternIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternIdentifier
		patternInstant = try createInstance(type: Instant.self, for: "patternInstant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternInstant
		patternInteger = try createInstance(type: FHIRInteger.self, for: "patternInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternInteger
		patternMarkdown = try createInstance(type: FHIRString.self, for: "patternMarkdown", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternMarkdown
		patternMeta = try createInstance(type: Meta.self, for: "patternMeta", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternMeta
		patternMoney = try createInstance(type: Money.self, for: "patternMoney", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternMoney
		patternOid = try createInstance(type: FHIRURL.self, for: "patternOid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternOid
		patternPeriod = try createInstance(type: Period.self, for: "patternPeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternPeriod
		patternPositiveInt = try createInstance(type: FHIRInteger.self, for: "patternPositiveInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternPositiveInt
		patternQuantity = try createInstance(type: Quantity.self, for: "patternQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternQuantity
		patternRange = try createInstance(type: Range.self, for: "patternRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternRange
		patternRatio = try createInstance(type: Ratio.self, for: "patternRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternRatio
		patternReference = try createInstance(type: Reference.self, for: "patternReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternReference
		patternSampledData = try createInstance(type: SampledData.self, for: "patternSampledData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternSampledData
		patternSignature = try createInstance(type: Signature.self, for: "patternSignature", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternSignature
		patternString = try createInstance(type: FHIRString.self, for: "patternString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternString
		patternTime = try createInstance(type: FHIRTime.self, for: "patternTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternTime
		patternTiming = try createInstance(type: Timing.self, for: "patternTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternTiming
		patternUnsignedInt = try createInstance(type: FHIRInteger.self, for: "patternUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternUnsignedInt
		patternUri = try createInstance(type: FHIRURL.self, for: "patternUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? patternUri
		representation = createEnums(of: PropertyRepresentation.self, for: "representation", in: json, presentKeys: &presentKeys, errors: &errors) ?? representation
		requirements = try createInstance(type: FHIRString.self, for: "requirements", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requirements
		short = try createInstance(type: FHIRString.self, for: "short", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? short
		sliceName = try createInstance(type: FHIRString.self, for: "sliceName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? sliceName
		slicing = try createInstance(type: ElementDefinitionSlicing.self, for: "slicing", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? slicing
		type = try createInstances(of: ElementDefinitionType.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "alias", using: self.alias, errors: &errors)
		self.base?.decorate(json: &json, withKey: "base", errors: &errors)
		self.binding?.decorate(json: &json, withKey: "binding", errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		self.comments?.decorate(json: &json, withKey: "comments", errors: &errors)
		arrayDecorate(json: &json, withKey: "condition", using: self.condition, errors: &errors)
		arrayDecorate(json: &json, withKey: "constraint", using: self.constraint, errors: &errors)
		self.contentReference?.decorate(json: &json, withKey: "contentReference", errors: &errors)
		self.defaultValueAddress?.decorate(json: &json, withKey: "defaultValueAddress", errors: &errors)
		self.defaultValueAge?.decorate(json: &json, withKey: "defaultValueAge", errors: &errors)
		self.defaultValueAnnotation?.decorate(json: &json, withKey: "defaultValueAnnotation", errors: &errors)
		self.defaultValueAttachment?.decorate(json: &json, withKey: "defaultValueAttachment", errors: &errors)
		self.defaultValueBase64Binary?.decorate(json: &json, withKey: "defaultValueBase64Binary", errors: &errors)
		self.defaultValueBoolean?.decorate(json: &json, withKey: "defaultValueBoolean", errors: &errors)
		self.defaultValueCode?.decorate(json: &json, withKey: "defaultValueCode", errors: &errors)
		self.defaultValueCodeableConcept?.decorate(json: &json, withKey: "defaultValueCodeableConcept", errors: &errors)
		self.defaultValueCoding?.decorate(json: &json, withKey: "defaultValueCoding", errors: &errors)
		self.defaultValueContactPoint?.decorate(json: &json, withKey: "defaultValueContactPoint", errors: &errors)
		self.defaultValueCount?.decorate(json: &json, withKey: "defaultValueCount", errors: &errors)
		self.defaultValueDate?.decorate(json: &json, withKey: "defaultValueDate", errors: &errors)
		self.defaultValueDateTime?.decorate(json: &json, withKey: "defaultValueDateTime", errors: &errors)
		self.defaultValueDecimal?.decorate(json: &json, withKey: "defaultValueDecimal", errors: &errors)
		self.defaultValueDistance?.decorate(json: &json, withKey: "defaultValueDistance", errors: &errors)
		self.defaultValueDuration?.decorate(json: &json, withKey: "defaultValueDuration", errors: &errors)
		self.defaultValueHumanName?.decorate(json: &json, withKey: "defaultValueHumanName", errors: &errors)
		self.defaultValueId?.decorate(json: &json, withKey: "defaultValueId", errors: &errors)
		self.defaultValueIdentifier?.decorate(json: &json, withKey: "defaultValueIdentifier", errors: &errors)
		self.defaultValueInstant?.decorate(json: &json, withKey: "defaultValueInstant", errors: &errors)
		self.defaultValueInteger?.decorate(json: &json, withKey: "defaultValueInteger", errors: &errors)
		self.defaultValueMarkdown?.decorate(json: &json, withKey: "defaultValueMarkdown", errors: &errors)
		self.defaultValueMeta?.decorate(json: &json, withKey: "defaultValueMeta", errors: &errors)
		self.defaultValueMoney?.decorate(json: &json, withKey: "defaultValueMoney", errors: &errors)
		self.defaultValueOid?.decorate(json: &json, withKey: "defaultValueOid", errors: &errors)
		self.defaultValuePeriod?.decorate(json: &json, withKey: "defaultValuePeriod", errors: &errors)
		self.defaultValuePositiveInt?.decorate(json: &json, withKey: "defaultValuePositiveInt", errors: &errors)
		self.defaultValueQuantity?.decorate(json: &json, withKey: "defaultValueQuantity", errors: &errors)
		self.defaultValueRange?.decorate(json: &json, withKey: "defaultValueRange", errors: &errors)
		self.defaultValueRatio?.decorate(json: &json, withKey: "defaultValueRatio", errors: &errors)
		self.defaultValueReference?.decorate(json: &json, withKey: "defaultValueReference", errors: &errors)
		self.defaultValueSampledData?.decorate(json: &json, withKey: "defaultValueSampledData", errors: &errors)
		self.defaultValueSignature?.decorate(json: &json, withKey: "defaultValueSignature", errors: &errors)
		self.defaultValueString?.decorate(json: &json, withKey: "defaultValueString", errors: &errors)
		self.defaultValueTime?.decorate(json: &json, withKey: "defaultValueTime", errors: &errors)
		self.defaultValueTiming?.decorate(json: &json, withKey: "defaultValueTiming", errors: &errors)
		self.defaultValueUnsignedInt?.decorate(json: &json, withKey: "defaultValueUnsignedInt", errors: &errors)
		self.defaultValueUri?.decorate(json: &json, withKey: "defaultValueUri", errors: &errors)
		self.definition?.decorate(json: &json, withKey: "definition", errors: &errors)
		arrayDecorate(json: &json, withKey: "example", using: self.example, errors: &errors)
		self.fixedAddress?.decorate(json: &json, withKey: "fixedAddress", errors: &errors)
		self.fixedAge?.decorate(json: &json, withKey: "fixedAge", errors: &errors)
		self.fixedAnnotation?.decorate(json: &json, withKey: "fixedAnnotation", errors: &errors)
		self.fixedAttachment?.decorate(json: &json, withKey: "fixedAttachment", errors: &errors)
		self.fixedBase64Binary?.decorate(json: &json, withKey: "fixedBase64Binary", errors: &errors)
		self.fixedBoolean?.decorate(json: &json, withKey: "fixedBoolean", errors: &errors)
		self.fixedCode?.decorate(json: &json, withKey: "fixedCode", errors: &errors)
		self.fixedCodeableConcept?.decorate(json: &json, withKey: "fixedCodeableConcept", errors: &errors)
		self.fixedCoding?.decorate(json: &json, withKey: "fixedCoding", errors: &errors)
		self.fixedContactPoint?.decorate(json: &json, withKey: "fixedContactPoint", errors: &errors)
		self.fixedCount?.decorate(json: &json, withKey: "fixedCount", errors: &errors)
		self.fixedDate?.decorate(json: &json, withKey: "fixedDate", errors: &errors)
		self.fixedDateTime?.decorate(json: &json, withKey: "fixedDateTime", errors: &errors)
		self.fixedDecimal?.decorate(json: &json, withKey: "fixedDecimal", errors: &errors)
		self.fixedDistance?.decorate(json: &json, withKey: "fixedDistance", errors: &errors)
		self.fixedDuration?.decorate(json: &json, withKey: "fixedDuration", errors: &errors)
		self.fixedHumanName?.decorate(json: &json, withKey: "fixedHumanName", errors: &errors)
		self.fixedId?.decorate(json: &json, withKey: "fixedId", errors: &errors)
		self.fixedIdentifier?.decorate(json: &json, withKey: "fixedIdentifier", errors: &errors)
		self.fixedInstant?.decorate(json: &json, withKey: "fixedInstant", errors: &errors)
		self.fixedInteger?.decorate(json: &json, withKey: "fixedInteger", errors: &errors)
		self.fixedMarkdown?.decorate(json: &json, withKey: "fixedMarkdown", errors: &errors)
		self.fixedMeta?.decorate(json: &json, withKey: "fixedMeta", errors: &errors)
		self.fixedMoney?.decorate(json: &json, withKey: "fixedMoney", errors: &errors)
		self.fixedOid?.decorate(json: &json, withKey: "fixedOid", errors: &errors)
		self.fixedPeriod?.decorate(json: &json, withKey: "fixedPeriod", errors: &errors)
		self.fixedPositiveInt?.decorate(json: &json, withKey: "fixedPositiveInt", errors: &errors)
		self.fixedQuantity?.decorate(json: &json, withKey: "fixedQuantity", errors: &errors)
		self.fixedRange?.decorate(json: &json, withKey: "fixedRange", errors: &errors)
		self.fixedRatio?.decorate(json: &json, withKey: "fixedRatio", errors: &errors)
		self.fixedReference?.decorate(json: &json, withKey: "fixedReference", errors: &errors)
		self.fixedSampledData?.decorate(json: &json, withKey: "fixedSampledData", errors: &errors)
		self.fixedSignature?.decorate(json: &json, withKey: "fixedSignature", errors: &errors)
		self.fixedString?.decorate(json: &json, withKey: "fixedString", errors: &errors)
		self.fixedTime?.decorate(json: &json, withKey: "fixedTime", errors: &errors)
		self.fixedTiming?.decorate(json: &json, withKey: "fixedTiming", errors: &errors)
		self.fixedUnsignedInt?.decorate(json: &json, withKey: "fixedUnsignedInt", errors: &errors)
		self.fixedUri?.decorate(json: &json, withKey: "fixedUri", errors: &errors)
		self.isModifier?.decorate(json: &json, withKey: "isModifier", errors: &errors)
		self.isSummary?.decorate(json: &json, withKey: "isSummary", errors: &errors)
		self.label?.decorate(json: &json, withKey: "label", errors: &errors)
		arrayDecorate(json: &json, withKey: "mapping", using: self.mapping, errors: &errors)
		self.max?.decorate(json: &json, withKey: "max", errors: &errors)
		self.maxLength?.decorate(json: &json, withKey: "maxLength", errors: &errors)
		self.maxValueDate?.decorate(json: &json, withKey: "maxValueDate", errors: &errors)
		self.maxValueDateTime?.decorate(json: &json, withKey: "maxValueDateTime", errors: &errors)
		self.maxValueDecimal?.decorate(json: &json, withKey: "maxValueDecimal", errors: &errors)
		self.maxValueInstant?.decorate(json: &json, withKey: "maxValueInstant", errors: &errors)
		self.maxValueInteger?.decorate(json: &json, withKey: "maxValueInteger", errors: &errors)
		self.maxValuePositiveInt?.decorate(json: &json, withKey: "maxValuePositiveInt", errors: &errors)
		self.maxValueQuantity?.decorate(json: &json, withKey: "maxValueQuantity", errors: &errors)
		self.maxValueTime?.decorate(json: &json, withKey: "maxValueTime", errors: &errors)
		self.maxValueUnsignedInt?.decorate(json: &json, withKey: "maxValueUnsignedInt", errors: &errors)
		self.meaningWhenMissing?.decorate(json: &json, withKey: "meaningWhenMissing", errors: &errors)
		self.min?.decorate(json: &json, withKey: "min", errors: &errors)
		self.minValueDate?.decorate(json: &json, withKey: "minValueDate", errors: &errors)
		self.minValueDateTime?.decorate(json: &json, withKey: "minValueDateTime", errors: &errors)
		self.minValueDecimal?.decorate(json: &json, withKey: "minValueDecimal", errors: &errors)
		self.minValueInstant?.decorate(json: &json, withKey: "minValueInstant", errors: &errors)
		self.minValueInteger?.decorate(json: &json, withKey: "minValueInteger", errors: &errors)
		self.minValuePositiveInt?.decorate(json: &json, withKey: "minValuePositiveInt", errors: &errors)
		self.minValueQuantity?.decorate(json: &json, withKey: "minValueQuantity", errors: &errors)
		self.minValueTime?.decorate(json: &json, withKey: "minValueTime", errors: &errors)
		self.minValueUnsignedInt?.decorate(json: &json, withKey: "minValueUnsignedInt", errors: &errors)
		self.mustSupport?.decorate(json: &json, withKey: "mustSupport", errors: &errors)
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		if nil == self.path {
			errors.append(FHIRValidationError(missing: "path"))
		}
		self.patternAddress?.decorate(json: &json, withKey: "patternAddress", errors: &errors)
		self.patternAge?.decorate(json: &json, withKey: "patternAge", errors: &errors)
		self.patternAnnotation?.decorate(json: &json, withKey: "patternAnnotation", errors: &errors)
		self.patternAttachment?.decorate(json: &json, withKey: "patternAttachment", errors: &errors)
		self.patternBase64Binary?.decorate(json: &json, withKey: "patternBase64Binary", errors: &errors)
		self.patternBoolean?.decorate(json: &json, withKey: "patternBoolean", errors: &errors)
		self.patternCode?.decorate(json: &json, withKey: "patternCode", errors: &errors)
		self.patternCodeableConcept?.decorate(json: &json, withKey: "patternCodeableConcept", errors: &errors)
		self.patternCoding?.decorate(json: &json, withKey: "patternCoding", errors: &errors)
		self.patternContactPoint?.decorate(json: &json, withKey: "patternContactPoint", errors: &errors)
		self.patternCount?.decorate(json: &json, withKey: "patternCount", errors: &errors)
		self.patternDate?.decorate(json: &json, withKey: "patternDate", errors: &errors)
		self.patternDateTime?.decorate(json: &json, withKey: "patternDateTime", errors: &errors)
		self.patternDecimal?.decorate(json: &json, withKey: "patternDecimal", errors: &errors)
		self.patternDistance?.decorate(json: &json, withKey: "patternDistance", errors: &errors)
		self.patternDuration?.decorate(json: &json, withKey: "patternDuration", errors: &errors)
		self.patternHumanName?.decorate(json: &json, withKey: "patternHumanName", errors: &errors)
		self.patternId?.decorate(json: &json, withKey: "patternId", errors: &errors)
		self.patternIdentifier?.decorate(json: &json, withKey: "patternIdentifier", errors: &errors)
		self.patternInstant?.decorate(json: &json, withKey: "patternInstant", errors: &errors)
		self.patternInteger?.decorate(json: &json, withKey: "patternInteger", errors: &errors)
		self.patternMarkdown?.decorate(json: &json, withKey: "patternMarkdown", errors: &errors)
		self.patternMeta?.decorate(json: &json, withKey: "patternMeta", errors: &errors)
		self.patternMoney?.decorate(json: &json, withKey: "patternMoney", errors: &errors)
		self.patternOid?.decorate(json: &json, withKey: "patternOid", errors: &errors)
		self.patternPeriod?.decorate(json: &json, withKey: "patternPeriod", errors: &errors)
		self.patternPositiveInt?.decorate(json: &json, withKey: "patternPositiveInt", errors: &errors)
		self.patternQuantity?.decorate(json: &json, withKey: "patternQuantity", errors: &errors)
		self.patternRange?.decorate(json: &json, withKey: "patternRange", errors: &errors)
		self.patternRatio?.decorate(json: &json, withKey: "patternRatio", errors: &errors)
		self.patternReference?.decorate(json: &json, withKey: "patternReference", errors: &errors)
		self.patternSampledData?.decorate(json: &json, withKey: "patternSampledData", errors: &errors)
		self.patternSignature?.decorate(json: &json, withKey: "patternSignature", errors: &errors)
		self.patternString?.decorate(json: &json, withKey: "patternString", errors: &errors)
		self.patternTime?.decorate(json: &json, withKey: "patternTime", errors: &errors)
		self.patternTiming?.decorate(json: &json, withKey: "patternTiming", errors: &errors)
		self.patternUnsignedInt?.decorate(json: &json, withKey: "patternUnsignedInt", errors: &errors)
		self.patternUri?.decorate(json: &json, withKey: "patternUri", errors: &errors)
		arrayDecorate(json: &json, withKey: "representation", using: self.representation, errors: &errors)
		self.requirements?.decorate(json: &json, withKey: "requirements", errors: &errors)
		self.short?.decorate(json: &json, withKey: "short", errors: &errors)
		self.sliceName?.decorate(json: &json, withKey: "sliceName", errors: &errors)
		self.slicing?.decorate(json: &json, withKey: "slicing", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
	}
}


/**
Base definition information for tools.

Information about the base definition of the element, provided to make it unnecessary for tools to trace the deviation
of the element through the derived and related profiles. This information is provided when the element definition is not
the original definition of an element - i.g. either in a constraint on another type, or for elements from a super type
in a snap shot.
*/
open class ElementDefinitionBase: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionBase" }
	}
	
	/// Max cardinality of the base element.
	public var max: FHIRString?
	
	/// Min cardinality of the base element.
	public var min: FHIRInteger?
	
	/// Path that identifies the base element.
	public var path: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(max: FHIRString, min: FHIRInteger, path: FHIRString) {
		self.init()
		self.max = max
		self.min = min
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		max = try createInstance(type: FHIRString.self, for: "max", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? max
		if nil == max && !presentKeys.contains("max") {
			errors.append(FHIRValidationError(missing: "max"))
		}
		min = try createInstance(type: FHIRInteger.self, for: "min", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? min
		if nil == min && !presentKeys.contains("min") {
			errors.append(FHIRValidationError(missing: "min"))
		}
		path = try createInstance(type: FHIRString.self, for: "path", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? path
		if nil == path && !presentKeys.contains("path") {
			errors.append(FHIRValidationError(missing: "path"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.max?.decorate(json: &json, withKey: "max", errors: &errors)
		if nil == self.max {
			errors.append(FHIRValidationError(missing: "max"))
		}
		self.min?.decorate(json: &json, withKey: "min", errors: &errors)
		if nil == self.min {
			errors.append(FHIRValidationError(missing: "min"))
		}
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		if nil == self.path {
			errors.append(FHIRValidationError(missing: "path"))
		}
	}
}


/**
ValueSet details if this is coded.

Binds to a value set if this element is coded (code, Coding, CodeableConcept).
*/
open class ElementDefinitionBinding: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionBinding" }
	}
	
	/// Human explanation of the value set.
	public var description_fhir: FHIRString?
	
	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	public var strength: BindingStrength?
	
	/// Source of value set.
	public var valueSetReference: Reference?
	
	/// Source of value set.
	public var valueSetUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(strength: BindingStrength) {
		self.init()
		self.strength = strength
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		strength = createEnum(type: BindingStrength.self, for: "strength", in: json, presentKeys: &presentKeys, errors: &errors) ?? strength
		if nil == strength && !presentKeys.contains("strength") {
			errors.append(FHIRValidationError(missing: "strength"))
		}
		valueSetReference = try createInstance(type: Reference.self, for: "valueSetReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSetReference
		valueSetUri = try createInstance(type: FHIRURL.self, for: "valueSetUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSetUri
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.strength?.decorate(json: &json, withKey: "strength", errors: &errors)
		if nil == self.strength {
			errors.append(FHIRValidationError(missing: "strength"))
		}
		self.valueSetReference?.decorate(json: &json, withKey: "valueSetReference", errors: &errors)
		self.valueSetUri?.decorate(json: &json, withKey: "valueSetUri", errors: &errors)
	}
}


/**
Condition that must evaluate to true.

Formal constraints such as co-occurrence and other constraints that can be computationally evaluated within the context
of the instance.
*/
open class ElementDefinitionConstraint: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionConstraint" }
	}
	
	/// FHIRPath expression of constraint.
	public var expression: FHIRString?
	
	/// Human description of constraint.
	public var human: FHIRString?
	
	/// Target of 'condition' reference above.
	public var key: FHIRString?
	
	/// Why this constraint is necessary or appropriate.
	public var requirements: FHIRString?
	
	/// Identifies the impact constraint violation has on the conformance of the instance.
	public var severity: ConstraintSeverity?
	
	/// Reference to original source of constraint.
	public var source: FHIRURL?
	
	/// XPath expression of constraint.
	public var xpath: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(expression: FHIRString, human: FHIRString, key: FHIRString, severity: ConstraintSeverity) {
		self.init()
		self.expression = expression
		self.human = human
		self.key = key
		self.severity = severity
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		expression = try createInstance(type: FHIRString.self, for: "expression", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? expression
		if nil == expression && !presentKeys.contains("expression") {
			errors.append(FHIRValidationError(missing: "expression"))
		}
		human = try createInstance(type: FHIRString.self, for: "human", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? human
		if nil == human && !presentKeys.contains("human") {
			errors.append(FHIRValidationError(missing: "human"))
		}
		key = try createInstance(type: FHIRString.self, for: "key", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? key
		if nil == key && !presentKeys.contains("key") {
			errors.append(FHIRValidationError(missing: "key"))
		}
		requirements = try createInstance(type: FHIRString.self, for: "requirements", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? requirements
		severity = createEnum(type: ConstraintSeverity.self, for: "severity", in: json, presentKeys: &presentKeys, errors: &errors) ?? severity
		if nil == severity && !presentKeys.contains("severity") {
			errors.append(FHIRValidationError(missing: "severity"))
		}
		source = try createInstance(type: FHIRURL.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		xpath = try createInstance(type: FHIRString.self, for: "xpath", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? xpath
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.expression?.decorate(json: &json, withKey: "expression", errors: &errors)
		if nil == self.expression {
			errors.append(FHIRValidationError(missing: "expression"))
		}
		self.human?.decorate(json: &json, withKey: "human", errors: &errors)
		if nil == self.human {
			errors.append(FHIRValidationError(missing: "human"))
		}
		self.key?.decorate(json: &json, withKey: "key", errors: &errors)
		if nil == self.key {
			errors.append(FHIRValidationError(missing: "key"))
		}
		self.requirements?.decorate(json: &json, withKey: "requirements", errors: &errors)
		self.severity?.decorate(json: &json, withKey: "severity", errors: &errors)
		if nil == self.severity {
			errors.append(FHIRValidationError(missing: "severity"))
		}
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.xpath?.decorate(json: &json, withKey: "xpath", errors: &errors)
	}
}


/**
Example value (as defined for type).

A sample value for this element demonstrating the type of information that would typically be found in the element.
*/
open class ElementDefinitionExample: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionExample" }
	}
	
	/// Describes the purpose of this example.
	public var label: FHIRString?
	
	/// Value of Example (one of allowed types).
	public var valueAddress: Address?
	
	/// Value of Example (one of allowed types).
	public var valueAge: Age?
	
	/// Value of Example (one of allowed types).
	public var valueAnnotation: Annotation?
	
	/// Value of Example (one of allowed types).
	public var valueAttachment: Attachment?
	
	/// Value of Example (one of allowed types).
	public var valueBase64Binary: Base64Binary?
	
	/// Value of Example (one of allowed types).
	public var valueBoolean: FHIRBool?
	
	/// Value of Example (one of allowed types).
	public var valueCode: FHIRString?
	
	/// Value of Example (one of allowed types).
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value of Example (one of allowed types).
	public var valueCoding: Coding?
	
	/// Value of Example (one of allowed types).
	public var valueContactPoint: ContactPoint?
	
	/// Value of Example (one of allowed types).
	public var valueCount: Count?
	
	/// Value of Example (one of allowed types).
	public var valueDate: FHIRDate?
	
	/// Value of Example (one of allowed types).
	public var valueDateTime: DateTime?
	
	/// Value of Example (one of allowed types).
	public var valueDecimal: FHIRDecimal?
	
	/// Value of Example (one of allowed types).
	public var valueDistance: Distance?
	
	/// Value of Example (one of allowed types).
	public var valueDuration: Duration?
	
	/// Value of Example (one of allowed types).
	public var valueHumanName: HumanName?
	
	/// Value of Example (one of allowed types).
	public var valueId: FHIRString?
	
	/// Value of Example (one of allowed types).
	public var valueIdentifier: Identifier?
	
	/// Value of Example (one of allowed types).
	public var valueInstant: Instant?
	
	/// Value of Example (one of allowed types).
	public var valueInteger: FHIRInteger?
	
	/// Value of Example (one of allowed types).
	public var valueMarkdown: FHIRString?
	
	/// Value of Example (one of allowed types).
	public var valueMeta: Meta?
	
	/// Value of Example (one of allowed types).
	public var valueMoney: Money?
	
	/// Value of Example (one of allowed types).
	public var valueOid: FHIRURL?
	
	/// Value of Example (one of allowed types).
	public var valuePeriod: Period?
	
	/// Value of Example (one of allowed types).
	public var valuePositiveInt: FHIRInteger?
	
	/// Value of Example (one of allowed types).
	public var valueQuantity: Quantity?
	
	/// Value of Example (one of allowed types).
	public var valueRange: Range?
	
	/// Value of Example (one of allowed types).
	public var valueRatio: Ratio?
	
	/// Value of Example (one of allowed types).
	public var valueReference: Reference?
	
	/// Value of Example (one of allowed types).
	public var valueSampledData: SampledData?
	
	/// Value of Example (one of allowed types).
	public var valueSignature: Signature?
	
	/// Value of Example (one of allowed types).
	public var valueString: FHIRString?
	
	/// Value of Example (one of allowed types).
	public var valueTime: FHIRTime?
	
	/// Value of Example (one of allowed types).
	public var valueTiming: Timing?
	
	/// Value of Example (one of allowed types).
	public var valueUnsignedInt: FHIRInteger?
	
	/// Value of Example (one of allowed types).
	public var valueUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(label: FHIRString, value: Any) {
		self.init()
		self.label = label
		if let value = value as? Base64Binary {
			self.valueBase64Binary = value
		}
		else if let value = value as? FHIRBool {
			self.valueBoolean = value
		}
		else if let value = value as? FHIRString {
			self.valueCode = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? FHIRDecimal {
			self.valueDecimal = value
		}
		else if let value = value as? FHIRString {
			self.valueId = value
		}
		else if let value = value as? Instant {
			self.valueInstant = value
		}
		else if let value = value as? FHIRInteger {
			self.valueInteger = value
		}
		else if let value = value as? FHIRString {
			self.valueMarkdown = value
		}
		else if let value = value as? FHIRURL {
			self.valueOid = value
		}
		else if let value = value as? FHIRInteger {
			self.valuePositiveInt = value
		}
		else if let value = value as? FHIRString {
			self.valueString = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? FHIRInteger {
			self.valueUnsignedInt = value
		}
		else if let value = value as? FHIRURL {
			self.valueUri = value
		}
		else if let value = value as? Address {
			self.valueAddress = value
		}
		else if let value = value as? Age {
			self.valueAge = value
		}
		else if let value = value as? Annotation {
			self.valueAnnotation = value
		}
		else if let value = value as? Attachment {
			self.valueAttachment = value
		}
		else if let value = value as? CodeableConcept {
			self.valueCodeableConcept = value
		}
		else if let value = value as? Coding {
			self.valueCoding = value
		}
		else if let value = value as? ContactPoint {
			self.valueContactPoint = value
		}
		else if let value = value as? Count {
			self.valueCount = value
		}
		else if let value = value as? Distance {
			self.valueDistance = value
		}
		else if let value = value as? Duration {
			self.valueDuration = value
		}
		else if let value = value as? HumanName {
			self.valueHumanName = value
		}
		else if let value = value as? Identifier {
			self.valueIdentifier = value
		}
		else if let value = value as? Money {
			self.valueMoney = value
		}
		else if let value = value as? Period {
			self.valuePeriod = value
		}
		else if let value = value as? Quantity {
			self.valueQuantity = value
		}
		else if let value = value as? Range {
			self.valueRange = value
		}
		else if let value = value as? Ratio {
			self.valueRatio = value
		}
		else if let value = value as? Reference {
			self.valueReference = value
		}
		else if let value = value as? SampledData {
			self.valueSampledData = value
		}
		else if let value = value as? Signature {
			self.valueSignature = value
		}
		else if let value = value as? Timing {
			self.valueTiming = value
		}
		else if let value = value as? Meta {
			self.valueMeta = value
		}
		else {
			fhir_warn("Type “\(type(of: value))” for property “\(value)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		label = try createInstance(type: FHIRString.self, for: "label", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? label
		if nil == label && !presentKeys.contains("label") {
			errors.append(FHIRValidationError(missing: "label"))
		}
		valueAddress = try createInstance(type: Address.self, for: "valueAddress", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAddress
		valueAge = try createInstance(type: Age.self, for: "valueAge", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAge
		valueAnnotation = try createInstance(type: Annotation.self, for: "valueAnnotation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAnnotation
		valueAttachment = try createInstance(type: Attachment.self, for: "valueAttachment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueAttachment
		valueBase64Binary = try createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBase64Binary
		valueBoolean = try createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueBoolean
		valueCode = try createInstance(type: FHIRString.self, for: "valueCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCode
		valueCodeableConcept = try createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCodeableConcept
		valueCoding = try createInstance(type: Coding.self, for: "valueCoding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCoding
		valueContactPoint = try createInstance(type: ContactPoint.self, for: "valueContactPoint", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueContactPoint
		valueCount = try createInstance(type: Count.self, for: "valueCount", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueCount
		valueDate = try createInstance(type: FHIRDate.self, for: "valueDate", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDate
		valueDateTime = try createInstance(type: DateTime.self, for: "valueDateTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDateTime
		valueDecimal = try createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDecimal
		valueDistance = try createInstance(type: Distance.self, for: "valueDistance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDistance
		valueDuration = try createInstance(type: Duration.self, for: "valueDuration", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueDuration
		valueHumanName = try createInstance(type: HumanName.self, for: "valueHumanName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueHumanName
		valueId = try createInstance(type: FHIRString.self, for: "valueId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueId
		valueIdentifier = try createInstance(type: Identifier.self, for: "valueIdentifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueIdentifier
		valueInstant = try createInstance(type: Instant.self, for: "valueInstant", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInstant
		valueInteger = try createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueInteger
		valueMarkdown = try createInstance(type: FHIRString.self, for: "valueMarkdown", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMarkdown
		valueMeta = try createInstance(type: Meta.self, for: "valueMeta", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMeta
		valueMoney = try createInstance(type: Money.self, for: "valueMoney", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueMoney
		valueOid = try createInstance(type: FHIRURL.self, for: "valueOid", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueOid
		valuePeriod = try createInstance(type: Period.self, for: "valuePeriod", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePeriod
		valuePositiveInt = try createInstance(type: FHIRInteger.self, for: "valuePositiveInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valuePositiveInt
		valueQuantity = try createInstance(type: Quantity.self, for: "valueQuantity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueQuantity
		valueRange = try createInstance(type: Range.self, for: "valueRange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRange
		valueRatio = try createInstance(type: Ratio.self, for: "valueRatio", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueRatio
		valueReference = try createInstance(type: Reference.self, for: "valueReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueReference
		valueSampledData = try createInstance(type: SampledData.self, for: "valueSampledData", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSampledData
		valueSignature = try createInstance(type: Signature.self, for: "valueSignature", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSignature
		valueString = try createInstance(type: FHIRString.self, for: "valueString", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueString
		valueTime = try createInstance(type: FHIRTime.self, for: "valueTime", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTime
		valueTiming = try createInstance(type: Timing.self, for: "valueTiming", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueTiming
		valueUnsignedInt = try createInstance(type: FHIRInteger.self, for: "valueUnsignedInt", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUnsignedInt
		valueUri = try createInstance(type: FHIRURL.self, for: "valueUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.label?.decorate(json: &json, withKey: "label", errors: &errors)
		if nil == self.label {
			errors.append(FHIRValidationError(missing: "label"))
		}
		self.valueAddress?.decorate(json: &json, withKey: "valueAddress", errors: &errors)
		self.valueAge?.decorate(json: &json, withKey: "valueAge", errors: &errors)
		self.valueAnnotation?.decorate(json: &json, withKey: "valueAnnotation", errors: &errors)
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueBase64Binary?.decorate(json: &json, withKey: "valueBase64Binary", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCode?.decorate(json: &json, withKey: "valueCode", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueContactPoint?.decorate(json: &json, withKey: "valueContactPoint", errors: &errors)
		self.valueCount?.decorate(json: &json, withKey: "valueCount", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueDistance?.decorate(json: &json, withKey: "valueDistance", errors: &errors)
		self.valueDuration?.decorate(json: &json, withKey: "valueDuration", errors: &errors)
		self.valueHumanName?.decorate(json: &json, withKey: "valueHumanName", errors: &errors)
		self.valueId?.decorate(json: &json, withKey: "valueId", errors: &errors)
		self.valueIdentifier?.decorate(json: &json, withKey: "valueIdentifier", errors: &errors)
		self.valueInstant?.decorate(json: &json, withKey: "valueInstant", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueMarkdown?.decorate(json: &json, withKey: "valueMarkdown", errors: &errors)
		self.valueMeta?.decorate(json: &json, withKey: "valueMeta", errors: &errors)
		self.valueMoney?.decorate(json: &json, withKey: "valueMoney", errors: &errors)
		self.valueOid?.decorate(json: &json, withKey: "valueOid", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
		self.valuePositiveInt?.decorate(json: &json, withKey: "valuePositiveInt", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		self.valueRatio?.decorate(json: &json, withKey: "valueRatio", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueSampledData?.decorate(json: &json, withKey: "valueSampledData", errors: &errors)
		self.valueSignature?.decorate(json: &json, withKey: "valueSignature", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		self.valueTiming?.decorate(json: &json, withKey: "valueTiming", errors: &errors)
		self.valueUnsignedInt?.decorate(json: &json, withKey: "valueUnsignedInt", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
	}
}


/**
Map element to another set of definitions.

Identifies a concept from an external specification that roughly corresponds to this element.
*/
open class ElementDefinitionMapping: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionMapping" }
	}
	
	/// Reference to mapping declaration.
	public var identity: FHIRString?
	
	/// Computable language of mapping.
	public var language: FHIRString?
	
	/// Details of the mapping.
	public var map: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identity: FHIRString, map: FHIRString) {
		self.init()
		self.identity = identity
		self.map = map
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		identity = try createInstance(type: FHIRString.self, for: "identity", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identity
		if nil == identity && !presentKeys.contains("identity") {
			errors.append(FHIRValidationError(missing: "identity"))
		}
		language = try createInstance(type: FHIRString.self, for: "language", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? language
		map = try createInstance(type: FHIRString.self, for: "map", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? map
		if nil == map && !presentKeys.contains("map") {
			errors.append(FHIRValidationError(missing: "map"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identity?.decorate(json: &json, withKey: "identity", errors: &errors)
		if nil == self.identity {
			errors.append(FHIRValidationError(missing: "identity"))
		}
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		self.map?.decorate(json: &json, withKey: "map", errors: &errors)
		if nil == self.map {
			errors.append(FHIRValidationError(missing: "map"))
		}
	}
}


/**
This element is sliced - slices follow.

Indicates that the element is sliced into a set of alternative definitions (i.e. in a structure definition, there are
multiple different constraints on a single element in the base resource). Slicing can be used in any resource that has
cardinality ..* on the base resource, or any resource with a choice of types. The set of slices is any elements that
come after this in the element sequence that have the same path, until a shorter path occurs (the shorter path
terminates the set).
*/
open class ElementDefinitionSlicing: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionSlicing" }
	}
	
	/// Text description of how slicing works (or not).
	public var description_fhir: FHIRString?
	
	/// Element values that are used to distinguish the slices.
	public var discriminator: [FHIRString]?
	
	/// If elements must be in same order as slices.
	public var ordered: FHIRBool?
	
	/// Whether additional slices are allowed or not. When the slices are ordered, profile authors can also say that
	/// additional slices are only allowed at the end.
	public var rules: SlicingRules?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(rules: SlicingRules) {
		self.init()
		self.rules = rules
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		discriminator = try createInstances(of: FHIRString.self, for: "discriminator", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? discriminator
		ordered = try createInstance(type: FHIRBool.self, for: "ordered", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? ordered
		rules = createEnum(type: SlicingRules.self, for: "rules", in: json, presentKeys: &presentKeys, errors: &errors) ?? rules
		if nil == rules && !presentKeys.contains("rules") {
			errors.append(FHIRValidationError(missing: "rules"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "discriminator", using: self.discriminator, errors: &errors)
		self.ordered?.decorate(json: &json, withKey: "ordered", errors: &errors)
		self.rules?.decorate(json: &json, withKey: "rules", errors: &errors)
		if nil == self.rules {
			errors.append(FHIRValidationError(missing: "rules"))
		}
	}
}


/**
Data type and Profile for this element.

The data type or resource that the value of this element is permitted to be.
*/
open class ElementDefinitionType: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionType" }
	}
	
	/// If the type is a reference to another resource, how the resource is or can be aggregated - is it a contained
	/// resource, or a reference, and if the context is a bundle, is it included in the bundle.
	public var aggregation: [AggregationMode]?
	
	/// Data type or Resource (reference to definition).
	public var code: FHIRURL?
	
	/// Profile (StructureDefinition) to apply (or IG).
	public var profile: FHIRURL?
	
	/// Profile (StructureDefinition) to apply to reference target (or IG).
	public var targetProfile: FHIRURL?
	
	/// Whether this reference needs to be version specific or version independent, or whetehr either can be used.
	public var versioning: ReferenceVersionRules?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRURL) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		aggregation = createEnums(of: AggregationMode.self, for: "aggregation", in: json, presentKeys: &presentKeys, errors: &errors) ?? aggregation
		code = try createInstance(type: FHIRURL.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		profile = try createInstance(type: FHIRURL.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		targetProfile = try createInstance(type: FHIRURL.self, for: "targetProfile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? targetProfile
		versioning = createEnum(type: ReferenceVersionRules.self, for: "versioning", in: json, presentKeys: &presentKeys, errors: &errors) ?? versioning
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "aggregation", using: self.aggregation, errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		self.targetProfile?.decorate(json: &json, withKey: "targetProfile", errors: &errors)
		self.versioning?.decorate(json: &json, withKey: "versioning", errors: &errors)
	}
}

