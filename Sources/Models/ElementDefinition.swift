//
//  ElementDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/ElementDefinition) on 2017-03-22.
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
	
	/// Corresponding codes in terminologies.
	public var code: [Coding]?
	
	/// Comments about the use of this element.
	public var comment: FHIRString?
	
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
	
	/// What the order of the elements means.
	public var orderMeaning: FHIRString?
	
	/// Path of the element in the hierarchy of elements.
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
	
	/// Concise definition for space-constrained presentation.
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		alias = createInstances(of: FHIRString.self, for: "alias", in: json, context: &instCtx, owner: self) ?? alias
		base = createInstance(type: ElementDefinitionBase.self, for: "base", in: json, context: &instCtx, owner: self) ?? base
		binding = createInstance(type: ElementDefinitionBinding.self, for: "binding", in: json, context: &instCtx, owner: self) ?? binding
		code = createInstances(of: Coding.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		condition = createInstances(of: FHIRString.self, for: "condition", in: json, context: &instCtx, owner: self) ?? condition
		constraint = createInstances(of: ElementDefinitionConstraint.self, for: "constraint", in: json, context: &instCtx, owner: self) ?? constraint
		contentReference = createInstance(type: FHIRURL.self, for: "contentReference", in: json, context: &instCtx, owner: self) ?? contentReference
		defaultValueAddress = createInstance(type: Address.self, for: "defaultValueAddress", in: json, context: &instCtx, owner: self) ?? defaultValueAddress
		defaultValueAge = createInstance(type: Age.self, for: "defaultValueAge", in: json, context: &instCtx, owner: self) ?? defaultValueAge
		defaultValueAnnotation = createInstance(type: Annotation.self, for: "defaultValueAnnotation", in: json, context: &instCtx, owner: self) ?? defaultValueAnnotation
		defaultValueAttachment = createInstance(type: Attachment.self, for: "defaultValueAttachment", in: json, context: &instCtx, owner: self) ?? defaultValueAttachment
		defaultValueBase64Binary = createInstance(type: Base64Binary.self, for: "defaultValueBase64Binary", in: json, context: &instCtx, owner: self) ?? defaultValueBase64Binary
		defaultValueBoolean = createInstance(type: FHIRBool.self, for: "defaultValueBoolean", in: json, context: &instCtx, owner: self) ?? defaultValueBoolean
		defaultValueCode = createInstance(type: FHIRString.self, for: "defaultValueCode", in: json, context: &instCtx, owner: self) ?? defaultValueCode
		defaultValueCodeableConcept = createInstance(type: CodeableConcept.self, for: "defaultValueCodeableConcept", in: json, context: &instCtx, owner: self) ?? defaultValueCodeableConcept
		defaultValueCoding = createInstance(type: Coding.self, for: "defaultValueCoding", in: json, context: &instCtx, owner: self) ?? defaultValueCoding
		defaultValueContactPoint = createInstance(type: ContactPoint.self, for: "defaultValueContactPoint", in: json, context: &instCtx, owner: self) ?? defaultValueContactPoint
		defaultValueCount = createInstance(type: Count.self, for: "defaultValueCount", in: json, context: &instCtx, owner: self) ?? defaultValueCount
		defaultValueDate = createInstance(type: FHIRDate.self, for: "defaultValueDate", in: json, context: &instCtx, owner: self) ?? defaultValueDate
		defaultValueDateTime = createInstance(type: DateTime.self, for: "defaultValueDateTime", in: json, context: &instCtx, owner: self) ?? defaultValueDateTime
		defaultValueDecimal = createInstance(type: FHIRDecimal.self, for: "defaultValueDecimal", in: json, context: &instCtx, owner: self) ?? defaultValueDecimal
		defaultValueDistance = createInstance(type: Distance.self, for: "defaultValueDistance", in: json, context: &instCtx, owner: self) ?? defaultValueDistance
		defaultValueDuration = createInstance(type: Duration.self, for: "defaultValueDuration", in: json, context: &instCtx, owner: self) ?? defaultValueDuration
		defaultValueHumanName = createInstance(type: HumanName.self, for: "defaultValueHumanName", in: json, context: &instCtx, owner: self) ?? defaultValueHumanName
		defaultValueId = createInstance(type: FHIRString.self, for: "defaultValueId", in: json, context: &instCtx, owner: self) ?? defaultValueId
		defaultValueIdentifier = createInstance(type: Identifier.self, for: "defaultValueIdentifier", in: json, context: &instCtx, owner: self) ?? defaultValueIdentifier
		defaultValueInstant = createInstance(type: Instant.self, for: "defaultValueInstant", in: json, context: &instCtx, owner: self) ?? defaultValueInstant
		defaultValueInteger = createInstance(type: FHIRInteger.self, for: "defaultValueInteger", in: json, context: &instCtx, owner: self) ?? defaultValueInteger
		defaultValueMarkdown = createInstance(type: FHIRString.self, for: "defaultValueMarkdown", in: json, context: &instCtx, owner: self) ?? defaultValueMarkdown
		defaultValueMeta = createInstance(type: Meta.self, for: "defaultValueMeta", in: json, context: &instCtx, owner: self) ?? defaultValueMeta
		defaultValueMoney = createInstance(type: Money.self, for: "defaultValueMoney", in: json, context: &instCtx, owner: self) ?? defaultValueMoney
		defaultValueOid = createInstance(type: FHIRURL.self, for: "defaultValueOid", in: json, context: &instCtx, owner: self) ?? defaultValueOid
		defaultValuePeriod = createInstance(type: Period.self, for: "defaultValuePeriod", in: json, context: &instCtx, owner: self) ?? defaultValuePeriod
		defaultValuePositiveInt = createInstance(type: FHIRInteger.self, for: "defaultValuePositiveInt", in: json, context: &instCtx, owner: self) ?? defaultValuePositiveInt
		defaultValueQuantity = createInstance(type: Quantity.self, for: "defaultValueQuantity", in: json, context: &instCtx, owner: self) ?? defaultValueQuantity
		defaultValueRange = createInstance(type: Range.self, for: "defaultValueRange", in: json, context: &instCtx, owner: self) ?? defaultValueRange
		defaultValueRatio = createInstance(type: Ratio.self, for: "defaultValueRatio", in: json, context: &instCtx, owner: self) ?? defaultValueRatio
		defaultValueReference = createInstance(type: Reference.self, for: "defaultValueReference", in: json, context: &instCtx, owner: self) ?? defaultValueReference
		defaultValueSampledData = createInstance(type: SampledData.self, for: "defaultValueSampledData", in: json, context: &instCtx, owner: self) ?? defaultValueSampledData
		defaultValueSignature = createInstance(type: Signature.self, for: "defaultValueSignature", in: json, context: &instCtx, owner: self) ?? defaultValueSignature
		defaultValueString = createInstance(type: FHIRString.self, for: "defaultValueString", in: json, context: &instCtx, owner: self) ?? defaultValueString
		defaultValueTime = createInstance(type: FHIRTime.self, for: "defaultValueTime", in: json, context: &instCtx, owner: self) ?? defaultValueTime
		defaultValueTiming = createInstance(type: Timing.self, for: "defaultValueTiming", in: json, context: &instCtx, owner: self) ?? defaultValueTiming
		defaultValueUnsignedInt = createInstance(type: FHIRInteger.self, for: "defaultValueUnsignedInt", in: json, context: &instCtx, owner: self) ?? defaultValueUnsignedInt
		defaultValueUri = createInstance(type: FHIRURL.self, for: "defaultValueUri", in: json, context: &instCtx, owner: self) ?? defaultValueUri
		definition = createInstance(type: FHIRString.self, for: "definition", in: json, context: &instCtx, owner: self) ?? definition
		example = createInstances(of: ElementDefinitionExample.self, for: "example", in: json, context: &instCtx, owner: self) ?? example
		fixedAddress = createInstance(type: Address.self, for: "fixedAddress", in: json, context: &instCtx, owner: self) ?? fixedAddress
		fixedAge = createInstance(type: Age.self, for: "fixedAge", in: json, context: &instCtx, owner: self) ?? fixedAge
		fixedAnnotation = createInstance(type: Annotation.self, for: "fixedAnnotation", in: json, context: &instCtx, owner: self) ?? fixedAnnotation
		fixedAttachment = createInstance(type: Attachment.self, for: "fixedAttachment", in: json, context: &instCtx, owner: self) ?? fixedAttachment
		fixedBase64Binary = createInstance(type: Base64Binary.self, for: "fixedBase64Binary", in: json, context: &instCtx, owner: self) ?? fixedBase64Binary
		fixedBoolean = createInstance(type: FHIRBool.self, for: "fixedBoolean", in: json, context: &instCtx, owner: self) ?? fixedBoolean
		fixedCode = createInstance(type: FHIRString.self, for: "fixedCode", in: json, context: &instCtx, owner: self) ?? fixedCode
		fixedCodeableConcept = createInstance(type: CodeableConcept.self, for: "fixedCodeableConcept", in: json, context: &instCtx, owner: self) ?? fixedCodeableConcept
		fixedCoding = createInstance(type: Coding.self, for: "fixedCoding", in: json, context: &instCtx, owner: self) ?? fixedCoding
		fixedContactPoint = createInstance(type: ContactPoint.self, for: "fixedContactPoint", in: json, context: &instCtx, owner: self) ?? fixedContactPoint
		fixedCount = createInstance(type: Count.self, for: "fixedCount", in: json, context: &instCtx, owner: self) ?? fixedCount
		fixedDate = createInstance(type: FHIRDate.self, for: "fixedDate", in: json, context: &instCtx, owner: self) ?? fixedDate
		fixedDateTime = createInstance(type: DateTime.self, for: "fixedDateTime", in: json, context: &instCtx, owner: self) ?? fixedDateTime
		fixedDecimal = createInstance(type: FHIRDecimal.self, for: "fixedDecimal", in: json, context: &instCtx, owner: self) ?? fixedDecimal
		fixedDistance = createInstance(type: Distance.self, for: "fixedDistance", in: json, context: &instCtx, owner: self) ?? fixedDistance
		fixedDuration = createInstance(type: Duration.self, for: "fixedDuration", in: json, context: &instCtx, owner: self) ?? fixedDuration
		fixedHumanName = createInstance(type: HumanName.self, for: "fixedHumanName", in: json, context: &instCtx, owner: self) ?? fixedHumanName
		fixedId = createInstance(type: FHIRString.self, for: "fixedId", in: json, context: &instCtx, owner: self) ?? fixedId
		fixedIdentifier = createInstance(type: Identifier.self, for: "fixedIdentifier", in: json, context: &instCtx, owner: self) ?? fixedIdentifier
		fixedInstant = createInstance(type: Instant.self, for: "fixedInstant", in: json, context: &instCtx, owner: self) ?? fixedInstant
		fixedInteger = createInstance(type: FHIRInteger.self, for: "fixedInteger", in: json, context: &instCtx, owner: self) ?? fixedInteger
		fixedMarkdown = createInstance(type: FHIRString.self, for: "fixedMarkdown", in: json, context: &instCtx, owner: self) ?? fixedMarkdown
		fixedMeta = createInstance(type: Meta.self, for: "fixedMeta", in: json, context: &instCtx, owner: self) ?? fixedMeta
		fixedMoney = createInstance(type: Money.self, for: "fixedMoney", in: json, context: &instCtx, owner: self) ?? fixedMoney
		fixedOid = createInstance(type: FHIRURL.self, for: "fixedOid", in: json, context: &instCtx, owner: self) ?? fixedOid
		fixedPeriod = createInstance(type: Period.self, for: "fixedPeriod", in: json, context: &instCtx, owner: self) ?? fixedPeriod
		fixedPositiveInt = createInstance(type: FHIRInteger.self, for: "fixedPositiveInt", in: json, context: &instCtx, owner: self) ?? fixedPositiveInt
		fixedQuantity = createInstance(type: Quantity.self, for: "fixedQuantity", in: json, context: &instCtx, owner: self) ?? fixedQuantity
		fixedRange = createInstance(type: Range.self, for: "fixedRange", in: json, context: &instCtx, owner: self) ?? fixedRange
		fixedRatio = createInstance(type: Ratio.self, for: "fixedRatio", in: json, context: &instCtx, owner: self) ?? fixedRatio
		fixedReference = createInstance(type: Reference.self, for: "fixedReference", in: json, context: &instCtx, owner: self) ?? fixedReference
		fixedSampledData = createInstance(type: SampledData.self, for: "fixedSampledData", in: json, context: &instCtx, owner: self) ?? fixedSampledData
		fixedSignature = createInstance(type: Signature.self, for: "fixedSignature", in: json, context: &instCtx, owner: self) ?? fixedSignature
		fixedString = createInstance(type: FHIRString.self, for: "fixedString", in: json, context: &instCtx, owner: self) ?? fixedString
		fixedTime = createInstance(type: FHIRTime.self, for: "fixedTime", in: json, context: &instCtx, owner: self) ?? fixedTime
		fixedTiming = createInstance(type: Timing.self, for: "fixedTiming", in: json, context: &instCtx, owner: self) ?? fixedTiming
		fixedUnsignedInt = createInstance(type: FHIRInteger.self, for: "fixedUnsignedInt", in: json, context: &instCtx, owner: self) ?? fixedUnsignedInt
		fixedUri = createInstance(type: FHIRURL.self, for: "fixedUri", in: json, context: &instCtx, owner: self) ?? fixedUri
		isModifier = createInstance(type: FHIRBool.self, for: "isModifier", in: json, context: &instCtx, owner: self) ?? isModifier
		isSummary = createInstance(type: FHIRBool.self, for: "isSummary", in: json, context: &instCtx, owner: self) ?? isSummary
		label = createInstance(type: FHIRString.self, for: "label", in: json, context: &instCtx, owner: self) ?? label
		mapping = createInstances(of: ElementDefinitionMapping.self, for: "mapping", in: json, context: &instCtx, owner: self) ?? mapping
		max = createInstance(type: FHIRString.self, for: "max", in: json, context: &instCtx, owner: self) ?? max
		maxLength = createInstance(type: FHIRInteger.self, for: "maxLength", in: json, context: &instCtx, owner: self) ?? maxLength
		maxValueDate = createInstance(type: FHIRDate.self, for: "maxValueDate", in: json, context: &instCtx, owner: self) ?? maxValueDate
		maxValueDateTime = createInstance(type: DateTime.self, for: "maxValueDateTime", in: json, context: &instCtx, owner: self) ?? maxValueDateTime
		maxValueDecimal = createInstance(type: FHIRDecimal.self, for: "maxValueDecimal", in: json, context: &instCtx, owner: self) ?? maxValueDecimal
		maxValueInstant = createInstance(type: Instant.self, for: "maxValueInstant", in: json, context: &instCtx, owner: self) ?? maxValueInstant
		maxValueInteger = createInstance(type: FHIRInteger.self, for: "maxValueInteger", in: json, context: &instCtx, owner: self) ?? maxValueInteger
		maxValuePositiveInt = createInstance(type: FHIRInteger.self, for: "maxValuePositiveInt", in: json, context: &instCtx, owner: self) ?? maxValuePositiveInt
		maxValueQuantity = createInstance(type: Quantity.self, for: "maxValueQuantity", in: json, context: &instCtx, owner: self) ?? maxValueQuantity
		maxValueTime = createInstance(type: FHIRTime.self, for: "maxValueTime", in: json, context: &instCtx, owner: self) ?? maxValueTime
		maxValueUnsignedInt = createInstance(type: FHIRInteger.self, for: "maxValueUnsignedInt", in: json, context: &instCtx, owner: self) ?? maxValueUnsignedInt
		meaningWhenMissing = createInstance(type: FHIRString.self, for: "meaningWhenMissing", in: json, context: &instCtx, owner: self) ?? meaningWhenMissing
		min = createInstance(type: FHIRInteger.self, for: "min", in: json, context: &instCtx, owner: self) ?? min
		minValueDate = createInstance(type: FHIRDate.self, for: "minValueDate", in: json, context: &instCtx, owner: self) ?? minValueDate
		minValueDateTime = createInstance(type: DateTime.self, for: "minValueDateTime", in: json, context: &instCtx, owner: self) ?? minValueDateTime
		minValueDecimal = createInstance(type: FHIRDecimal.self, for: "minValueDecimal", in: json, context: &instCtx, owner: self) ?? minValueDecimal
		minValueInstant = createInstance(type: Instant.self, for: "minValueInstant", in: json, context: &instCtx, owner: self) ?? minValueInstant
		minValueInteger = createInstance(type: FHIRInteger.self, for: "minValueInteger", in: json, context: &instCtx, owner: self) ?? minValueInteger
		minValuePositiveInt = createInstance(type: FHIRInteger.self, for: "minValuePositiveInt", in: json, context: &instCtx, owner: self) ?? minValuePositiveInt
		minValueQuantity = createInstance(type: Quantity.self, for: "minValueQuantity", in: json, context: &instCtx, owner: self) ?? minValueQuantity
		minValueTime = createInstance(type: FHIRTime.self, for: "minValueTime", in: json, context: &instCtx, owner: self) ?? minValueTime
		minValueUnsignedInt = createInstance(type: FHIRInteger.self, for: "minValueUnsignedInt", in: json, context: &instCtx, owner: self) ?? minValueUnsignedInt
		mustSupport = createInstance(type: FHIRBool.self, for: "mustSupport", in: json, context: &instCtx, owner: self) ?? mustSupport
		orderMeaning = createInstance(type: FHIRString.self, for: "orderMeaning", in: json, context: &instCtx, owner: self) ?? orderMeaning
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		if nil == path && !instCtx.containsKey("path") {
			instCtx.addError(FHIRValidationError(missing: "path"))
		}
		patternAddress = createInstance(type: Address.self, for: "patternAddress", in: json, context: &instCtx, owner: self) ?? patternAddress
		patternAge = createInstance(type: Age.self, for: "patternAge", in: json, context: &instCtx, owner: self) ?? patternAge
		patternAnnotation = createInstance(type: Annotation.self, for: "patternAnnotation", in: json, context: &instCtx, owner: self) ?? patternAnnotation
		patternAttachment = createInstance(type: Attachment.self, for: "patternAttachment", in: json, context: &instCtx, owner: self) ?? patternAttachment
		patternBase64Binary = createInstance(type: Base64Binary.self, for: "patternBase64Binary", in: json, context: &instCtx, owner: self) ?? patternBase64Binary
		patternBoolean = createInstance(type: FHIRBool.self, for: "patternBoolean", in: json, context: &instCtx, owner: self) ?? patternBoolean
		patternCode = createInstance(type: FHIRString.self, for: "patternCode", in: json, context: &instCtx, owner: self) ?? patternCode
		patternCodeableConcept = createInstance(type: CodeableConcept.self, for: "patternCodeableConcept", in: json, context: &instCtx, owner: self) ?? patternCodeableConcept
		patternCoding = createInstance(type: Coding.self, for: "patternCoding", in: json, context: &instCtx, owner: self) ?? patternCoding
		patternContactPoint = createInstance(type: ContactPoint.self, for: "patternContactPoint", in: json, context: &instCtx, owner: self) ?? patternContactPoint
		patternCount = createInstance(type: Count.self, for: "patternCount", in: json, context: &instCtx, owner: self) ?? patternCount
		patternDate = createInstance(type: FHIRDate.self, for: "patternDate", in: json, context: &instCtx, owner: self) ?? patternDate
		patternDateTime = createInstance(type: DateTime.self, for: "patternDateTime", in: json, context: &instCtx, owner: self) ?? patternDateTime
		patternDecimal = createInstance(type: FHIRDecimal.self, for: "patternDecimal", in: json, context: &instCtx, owner: self) ?? patternDecimal
		patternDistance = createInstance(type: Distance.self, for: "patternDistance", in: json, context: &instCtx, owner: self) ?? patternDistance
		patternDuration = createInstance(type: Duration.self, for: "patternDuration", in: json, context: &instCtx, owner: self) ?? patternDuration
		patternHumanName = createInstance(type: HumanName.self, for: "patternHumanName", in: json, context: &instCtx, owner: self) ?? patternHumanName
		patternId = createInstance(type: FHIRString.self, for: "patternId", in: json, context: &instCtx, owner: self) ?? patternId
		patternIdentifier = createInstance(type: Identifier.self, for: "patternIdentifier", in: json, context: &instCtx, owner: self) ?? patternIdentifier
		patternInstant = createInstance(type: Instant.self, for: "patternInstant", in: json, context: &instCtx, owner: self) ?? patternInstant
		patternInteger = createInstance(type: FHIRInteger.self, for: "patternInteger", in: json, context: &instCtx, owner: self) ?? patternInteger
		patternMarkdown = createInstance(type: FHIRString.self, for: "patternMarkdown", in: json, context: &instCtx, owner: self) ?? patternMarkdown
		patternMeta = createInstance(type: Meta.self, for: "patternMeta", in: json, context: &instCtx, owner: self) ?? patternMeta
		patternMoney = createInstance(type: Money.self, for: "patternMoney", in: json, context: &instCtx, owner: self) ?? patternMoney
		patternOid = createInstance(type: FHIRURL.self, for: "patternOid", in: json, context: &instCtx, owner: self) ?? patternOid
		patternPeriod = createInstance(type: Period.self, for: "patternPeriod", in: json, context: &instCtx, owner: self) ?? patternPeriod
		patternPositiveInt = createInstance(type: FHIRInteger.self, for: "patternPositiveInt", in: json, context: &instCtx, owner: self) ?? patternPositiveInt
		patternQuantity = createInstance(type: Quantity.self, for: "patternQuantity", in: json, context: &instCtx, owner: self) ?? patternQuantity
		patternRange = createInstance(type: Range.self, for: "patternRange", in: json, context: &instCtx, owner: self) ?? patternRange
		patternRatio = createInstance(type: Ratio.self, for: "patternRatio", in: json, context: &instCtx, owner: self) ?? patternRatio
		patternReference = createInstance(type: Reference.self, for: "patternReference", in: json, context: &instCtx, owner: self) ?? patternReference
		patternSampledData = createInstance(type: SampledData.self, for: "patternSampledData", in: json, context: &instCtx, owner: self) ?? patternSampledData
		patternSignature = createInstance(type: Signature.self, for: "patternSignature", in: json, context: &instCtx, owner: self) ?? patternSignature
		patternString = createInstance(type: FHIRString.self, for: "patternString", in: json, context: &instCtx, owner: self) ?? patternString
		patternTime = createInstance(type: FHIRTime.self, for: "patternTime", in: json, context: &instCtx, owner: self) ?? patternTime
		patternTiming = createInstance(type: Timing.self, for: "patternTiming", in: json, context: &instCtx, owner: self) ?? patternTiming
		patternUnsignedInt = createInstance(type: FHIRInteger.self, for: "patternUnsignedInt", in: json, context: &instCtx, owner: self) ?? patternUnsignedInt
		patternUri = createInstance(type: FHIRURL.self, for: "patternUri", in: json, context: &instCtx, owner: self) ?? patternUri
		representation = createEnums(of: PropertyRepresentation.self, for: "representation", in: json, context: &instCtx) ?? representation
		requirements = createInstance(type: FHIRString.self, for: "requirements", in: json, context: &instCtx, owner: self) ?? requirements
		short = createInstance(type: FHIRString.self, for: "short", in: json, context: &instCtx, owner: self) ?? short
		sliceName = createInstance(type: FHIRString.self, for: "sliceName", in: json, context: &instCtx, owner: self) ?? sliceName
		slicing = createInstance(type: ElementDefinitionSlicing.self, for: "slicing", in: json, context: &instCtx, owner: self) ?? slicing
		type = createInstances(of: ElementDefinitionType.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "alias", using: self.alias, errors: &errors)
		self.base?.decorate(json: &json, withKey: "base", errors: &errors)
		self.binding?.decorate(json: &json, withKey: "binding", errors: &errors)
		arrayDecorate(json: &json, withKey: "code", using: self.code, errors: &errors)
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
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
		self.orderMeaning?.decorate(json: &json, withKey: "orderMeaning", errors: &errors)
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		max = createInstance(type: FHIRString.self, for: "max", in: json, context: &instCtx, owner: self) ?? max
		if nil == max && !instCtx.containsKey("max") {
			instCtx.addError(FHIRValidationError(missing: "max"))
		}
		min = createInstance(type: FHIRInteger.self, for: "min", in: json, context: &instCtx, owner: self) ?? min
		if nil == min && !instCtx.containsKey("min") {
			instCtx.addError(FHIRValidationError(missing: "min"))
		}
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		if nil == path && !instCtx.containsKey("path") {
			instCtx.addError(FHIRValidationError(missing: "path"))
		}
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

Binds to a value set if this element is coded (code, Coding, CodeableConcept, Quantity), or the data types (string,
uri).
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		strength = createEnum(type: BindingStrength.self, for: "strength", in: json, context: &instCtx) ?? strength
		if nil == strength && !instCtx.containsKey("strength") {
			instCtx.addError(FHIRValidationError(missing: "strength"))
		}
		valueSetReference = createInstance(type: Reference.self, for: "valueSetReference", in: json, context: &instCtx, owner: self) ?? valueSetReference
		valueSetUri = createInstance(type: FHIRURL.self, for: "valueSetUri", in: json, context: &instCtx, owner: self) ?? valueSetUri
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		expression = createInstance(type: FHIRString.self, for: "expression", in: json, context: &instCtx, owner: self) ?? expression
		if nil == expression && !instCtx.containsKey("expression") {
			instCtx.addError(FHIRValidationError(missing: "expression"))
		}
		human = createInstance(type: FHIRString.self, for: "human", in: json, context: &instCtx, owner: self) ?? human
		if nil == human && !instCtx.containsKey("human") {
			instCtx.addError(FHIRValidationError(missing: "human"))
		}
		key = createInstance(type: FHIRString.self, for: "key", in: json, context: &instCtx, owner: self) ?? key
		if nil == key && !instCtx.containsKey("key") {
			instCtx.addError(FHIRValidationError(missing: "key"))
		}
		requirements = createInstance(type: FHIRString.self, for: "requirements", in: json, context: &instCtx, owner: self) ?? requirements
		severity = createEnum(type: ConstraintSeverity.self, for: "severity", in: json, context: &instCtx) ?? severity
		if nil == severity && !instCtx.containsKey("severity") {
			instCtx.addError(FHIRValidationError(missing: "severity"))
		}
		source = createInstance(type: FHIRURL.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		xpath = createInstance(type: FHIRString.self, for: "xpath", in: json, context: &instCtx, owner: self) ?? xpath
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		label = createInstance(type: FHIRString.self, for: "label", in: json, context: &instCtx, owner: self) ?? label
		if nil == label && !instCtx.containsKey("label") {
			instCtx.addError(FHIRValidationError(missing: "label"))
		}
		valueAddress = createInstance(type: Address.self, for: "valueAddress", in: json, context: &instCtx, owner: self) ?? valueAddress
		valueAge = createInstance(type: Age.self, for: "valueAge", in: json, context: &instCtx, owner: self) ?? valueAge
		valueAnnotation = createInstance(type: Annotation.self, for: "valueAnnotation", in: json, context: &instCtx, owner: self) ?? valueAnnotation
		valueAttachment = createInstance(type: Attachment.self, for: "valueAttachment", in: json, context: &instCtx, owner: self) ?? valueAttachment
		valueBase64Binary = createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, context: &instCtx, owner: self) ?? valueBase64Binary
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCode = createInstance(type: FHIRString.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueContactPoint = createInstance(type: ContactPoint.self, for: "valueContactPoint", in: json, context: &instCtx, owner: self) ?? valueContactPoint
		valueCount = createInstance(type: Count.self, for: "valueCount", in: json, context: &instCtx, owner: self) ?? valueCount
		valueDate = createInstance(type: FHIRDate.self, for: "valueDate", in: json, context: &instCtx, owner: self) ?? valueDate
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueDecimal = createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, context: &instCtx, owner: self) ?? valueDecimal
		valueDistance = createInstance(type: Distance.self, for: "valueDistance", in: json, context: &instCtx, owner: self) ?? valueDistance
		valueDuration = createInstance(type: Duration.self, for: "valueDuration", in: json, context: &instCtx, owner: self) ?? valueDuration
		valueHumanName = createInstance(type: HumanName.self, for: "valueHumanName", in: json, context: &instCtx, owner: self) ?? valueHumanName
		valueId = createInstance(type: FHIRString.self, for: "valueId", in: json, context: &instCtx, owner: self) ?? valueId
		valueIdentifier = createInstance(type: Identifier.self, for: "valueIdentifier", in: json, context: &instCtx, owner: self) ?? valueIdentifier
		valueInstant = createInstance(type: Instant.self, for: "valueInstant", in: json, context: &instCtx, owner: self) ?? valueInstant
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueMarkdown = createInstance(type: FHIRString.self, for: "valueMarkdown", in: json, context: &instCtx, owner: self) ?? valueMarkdown
		valueMeta = createInstance(type: Meta.self, for: "valueMeta", in: json, context: &instCtx, owner: self) ?? valueMeta
		valueMoney = createInstance(type: Money.self, for: "valueMoney", in: json, context: &instCtx, owner: self) ?? valueMoney
		valueOid = createInstance(type: FHIRURL.self, for: "valueOid", in: json, context: &instCtx, owner: self) ?? valueOid
		valuePeriod = createInstance(type: Period.self, for: "valuePeriod", in: json, context: &instCtx, owner: self) ?? valuePeriod
		valuePositiveInt = createInstance(type: FHIRInteger.self, for: "valuePositiveInt", in: json, context: &instCtx, owner: self) ?? valuePositiveInt
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
		valueRatio = createInstance(type: Ratio.self, for: "valueRatio", in: json, context: &instCtx, owner: self) ?? valueRatio
		valueReference = createInstance(type: Reference.self, for: "valueReference", in: json, context: &instCtx, owner: self) ?? valueReference
		valueSampledData = createInstance(type: SampledData.self, for: "valueSampledData", in: json, context: &instCtx, owner: self) ?? valueSampledData
		valueSignature = createInstance(type: Signature.self, for: "valueSignature", in: json, context: &instCtx, owner: self) ?? valueSignature
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
		valueTiming = createInstance(type: Timing.self, for: "valueTiming", in: json, context: &instCtx, owner: self) ?? valueTiming
		valueUnsignedInt = createInstance(type: FHIRInteger.self, for: "valueUnsignedInt", in: json, context: &instCtx, owner: self) ?? valueUnsignedInt
		valueUri = createInstance(type: FHIRURL.self, for: "valueUri", in: json, context: &instCtx, owner: self) ?? valueUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			instCtx.addError(FHIRValidationError(missing: "value[x]"))
		}
		
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
	
	/// Comments about the mapping or its use.
	public var comment: FHIRString?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		comment = createInstance(type: FHIRString.self, for: "comment", in: json, context: &instCtx, owner: self) ?? comment
		identity = createInstance(type: FHIRString.self, for: "identity", in: json, context: &instCtx, owner: self) ?? identity
		if nil == identity && !instCtx.containsKey("identity") {
			instCtx.addError(FHIRValidationError(missing: "identity"))
		}
		language = createInstance(type: FHIRString.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		map = createInstance(type: FHIRString.self, for: "map", in: json, context: &instCtx, owner: self) ?? map
		if nil == map && !instCtx.containsKey("map") {
			instCtx.addError(FHIRValidationError(missing: "map"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
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
	public var discriminator: [ElementDefinitionSlicingDiscriminator]?
	
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
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		discriminator = createInstances(of: ElementDefinitionSlicingDiscriminator.self, for: "discriminator", in: json, context: &instCtx, owner: self) ?? discriminator
		ordered = createInstance(type: FHIRBool.self, for: "ordered", in: json, context: &instCtx, owner: self) ?? ordered
		rules = createEnum(type: SlicingRules.self, for: "rules", in: json, context: &instCtx) ?? rules
		if nil == rules && !instCtx.containsKey("rules") {
			instCtx.addError(FHIRValidationError(missing: "rules"))
		}
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
Element values that are used to distinguish the slices.

Designates which child elements are used to discriminate between the slices when processing an instance. If one or more
discriminators are provided, the value of the child elements in the instance data SHALL completely distinguish which
slice the element in the resource matches based on the allowed values for those elements in each of the slices.
*/
open class ElementDefinitionSlicingDiscriminator: Element {
	override open class var resourceType: String {
		get { return "ElementDefinitionSlicingDiscriminator" }
	}
	
	/// Path to element value.
	public var path: FHIRString?
	
	/// How the element value is interpreted when discrimination is evaluated.
	public var type: DiscriminatorType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: FHIRString, type: DiscriminatorType) {
		self.init()
		self.path = path
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		path = createInstance(type: FHIRString.self, for: "path", in: json, context: &instCtx, owner: self) ?? path
		if nil == path && !instCtx.containsKey("path") {
			instCtx.addError(FHIRValidationError(missing: "path"))
		}
		type = createEnum(type: DiscriminatorType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.path?.decorate(json: &json, withKey: "path", errors: &errors)
		if nil == self.path {
			errors.append(FHIRValidationError(missing: "path"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
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
	
	/// Whether this reference needs to be version specific or version independent, or whether either can be used.
	public var versioning: ReferenceVersionRules?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRURL) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		aggregation = createEnums(of: AggregationMode.self, for: "aggregation", in: json, context: &instCtx) ?? aggregation
		code = createInstance(type: FHIRURL.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		profile = createInstance(type: FHIRURL.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		targetProfile = createInstance(type: FHIRURL.self, for: "targetProfile", in: json, context: &instCtx, owner: self) ?? targetProfile
		versioning = createEnum(type: ReferenceVersionRules.self, for: "versioning", in: json, context: &instCtx) ?? versioning
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

