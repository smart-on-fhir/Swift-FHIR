//
//  ElementDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/ElementDefinition) on 2016-12-06.
//  2016, SMART Health IT.
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
	public var alias: [String]?
	
	/// Base definition information for tools.
	public var base: ElementDefinitionBase?
	
	/// ValueSet details if this is coded.
	public var binding: ElementDefinitionBinding?
	
	/// Defining code.
	public var code: [Coding]?
	
	/// Comments about the use of this element.
	public var comments: String?
	
	/// Reference to invariant about presence.
	public var condition: [String]?
	
	/// Condition that must evaluate to true.
	public var constraint: [ElementDefinitionConstraint]?
	
	/// Reference to definition of content for the element.
	public var contentReference: URL?
	
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
	public var defaultValueBoolean: Bool?
	
	/// Specified value if missing from instance.
	public var defaultValueCode: String?
	
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
	public var defaultValueDecimal: NSDecimalNumber?
	
	/// Specified value if missing from instance.
	public var defaultValueDistance: Distance?
	
	/// Specified value if missing from instance.
	public var defaultValueDuration: Duration?
	
	/// Specified value if missing from instance.
	public var defaultValueHumanName: HumanName?
	
	/// Specified value if missing from instance.
	public var defaultValueId: String?
	
	/// Specified value if missing from instance.
	public var defaultValueIdentifier: Identifier?
	
	/// Specified value if missing from instance.
	public var defaultValueInstant: Instant?
	
	/// Specified value if missing from instance.
	public var defaultValueInteger: Int?
	
	/// Specified value if missing from instance.
	public var defaultValueMarkdown: String?
	
	/// Specified value if missing from instance.
	public var defaultValueMeta: Meta?
	
	/// Specified value if missing from instance.
	public var defaultValueMoney: Money?
	
	/// Specified value if missing from instance.
	public var defaultValueOid: String?
	
	/// Specified value if missing from instance.
	public var defaultValuePeriod: Period?
	
	/// Specified value if missing from instance.
	public var defaultValuePositiveInt: UInt?
	
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
	public var defaultValueString: String?
	
	/// Specified value if missing from instance.
	public var defaultValueTime: FHIRTime?
	
	/// Specified value if missing from instance.
	public var defaultValueTiming: Timing?
	
	/// Specified value if missing from instance.
	public var defaultValueUnsignedInt: UInt?
	
	/// Specified value if missing from instance.
	public var defaultValueUri: URL?
	
	/// Full formal definition as narrative text.
	public var definition: String?
	
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
	public var fixedBoolean: Bool?
	
	/// Value must be exactly this.
	public var fixedCode: String?
	
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
	public var fixedDecimal: NSDecimalNumber?
	
	/// Value must be exactly this.
	public var fixedDistance: Distance?
	
	/// Value must be exactly this.
	public var fixedDuration: Duration?
	
	/// Value must be exactly this.
	public var fixedHumanName: HumanName?
	
	/// Value must be exactly this.
	public var fixedId: String?
	
	/// Value must be exactly this.
	public var fixedIdentifier: Identifier?
	
	/// Value must be exactly this.
	public var fixedInstant: Instant?
	
	/// Value must be exactly this.
	public var fixedInteger: Int?
	
	/// Value must be exactly this.
	public var fixedMarkdown: String?
	
	/// Value must be exactly this.
	public var fixedMeta: Meta?
	
	/// Value must be exactly this.
	public var fixedMoney: Money?
	
	/// Value must be exactly this.
	public var fixedOid: String?
	
	/// Value must be exactly this.
	public var fixedPeriod: Period?
	
	/// Value must be exactly this.
	public var fixedPositiveInt: UInt?
	
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
	public var fixedString: String?
	
	/// Value must be exactly this.
	public var fixedTime: FHIRTime?
	
	/// Value must be exactly this.
	public var fixedTiming: Timing?
	
	/// Value must be exactly this.
	public var fixedUnsignedInt: UInt?
	
	/// Value must be exactly this.
	public var fixedUri: URL?
	
	/// If this modifies the meaning of other elements.
	public var isModifier: Bool?
	
	/// Include when _summary = true?.
	public var isSummary: Bool?
	
	/// Name for element to display with or prompt for element.
	public var label: String?
	
	/// Map element to another set of definitions.
	public var mapping: [ElementDefinitionMapping]?
	
	/// Maximum Cardinality (a number or *).
	public var max: String?
	
	/// Max length for strings.
	public var maxLength: Int?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueDate: FHIRDate?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueDateTime: DateTime?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueDecimal: NSDecimalNumber?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueInstant: Instant?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueInteger: Int?
	
	/// Maximum Allowed Value (for some types).
	public var maxValuePositiveInt: UInt?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueQuantity: Quantity?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueTime: FHIRTime?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueUnsignedInt: UInt?
	
	/// Implicit meaning when this element is missing.
	public var meaningWhenMissing: String?
	
	/// Minimum Cardinality.
	public var min: Int?
	
	/// Minimum Allowed Value (for some types).
	public var minValueDate: FHIRDate?
	
	/// Minimum Allowed Value (for some types).
	public var minValueDateTime: DateTime?
	
	/// Minimum Allowed Value (for some types).
	public var minValueDecimal: NSDecimalNumber?
	
	/// Minimum Allowed Value (for some types).
	public var minValueInstant: Instant?
	
	/// Minimum Allowed Value (for some types).
	public var minValueInteger: Int?
	
	/// Minimum Allowed Value (for some types).
	public var minValuePositiveInt: UInt?
	
	/// Minimum Allowed Value (for some types).
	public var minValueQuantity: Quantity?
	
	/// Minimum Allowed Value (for some types).
	public var minValueTime: FHIRTime?
	
	/// Minimum Allowed Value (for some types).
	public var minValueUnsignedInt: UInt?
	
	/// If the element must supported.
	public var mustSupport: Bool?
	
	/// Path of the element in the heirarchy of elements.
	public var path: String?
	
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
	public var patternBoolean: Bool?
	
	/// Value must have at least these property values.
	public var patternCode: String?
	
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
	public var patternDecimal: NSDecimalNumber?
	
	/// Value must have at least these property values.
	public var patternDistance: Distance?
	
	/// Value must have at least these property values.
	public var patternDuration: Duration?
	
	/// Value must have at least these property values.
	public var patternHumanName: HumanName?
	
	/// Value must have at least these property values.
	public var patternId: String?
	
	/// Value must have at least these property values.
	public var patternIdentifier: Identifier?
	
	/// Value must have at least these property values.
	public var patternInstant: Instant?
	
	/// Value must have at least these property values.
	public var patternInteger: Int?
	
	/// Value must have at least these property values.
	public var patternMarkdown: String?
	
	/// Value must have at least these property values.
	public var patternMeta: Meta?
	
	/// Value must have at least these property values.
	public var patternMoney: Money?
	
	/// Value must have at least these property values.
	public var patternOid: String?
	
	/// Value must have at least these property values.
	public var patternPeriod: Period?
	
	/// Value must have at least these property values.
	public var patternPositiveInt: UInt?
	
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
	public var patternString: String?
	
	/// Value must have at least these property values.
	public var patternTime: FHIRTime?
	
	/// Value must have at least these property values.
	public var patternTiming: Timing?
	
	/// Value must have at least these property values.
	public var patternUnsignedInt: UInt?
	
	/// Value must have at least these property values.
	public var patternUri: URL?
	
	/// Codes that define how this element is represented in instances, when the deviation varies from the normal case.
	public var representation: [PropertyRepresentation]?
	
	/// Why this resource has been created.
	public var requirements: String?
	
	/// Concise definition for xml presentation.
	public var short: String?
	
	/// Name for this particular element (in a set of slices).
	public var sliceName: String?
	
	/// This element is sliced - slices follow.
	public var slicing: ElementDefinitionSlicing?
	
	/// Data type and Profile for this element.
	public var type: [ElementDefinitionType]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: String) {
		self.init()
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["alias"] {
			presentKeys.insert("alias")
			if let val = exist as? [String] {
				self.alias = val
			}
			else {
				errors.append(FHIRValidationError(key: "alias", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["base"] {
			presentKeys.insert("base")
			if let val = exist as? FHIRJSON {
				do {
					self.base = try ElementDefinitionBase(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "base"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "base", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["binding"] {
			presentKeys.insert("binding")
			if let val = exist as? FHIRJSON {
				do {
					self.binding = try ElementDefinitionBinding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "binding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "binding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? [FHIRJSON] {
				do {
					self.code = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["comments"] {
			presentKeys.insert("comments")
			if let val = exist as? String {
				self.comments = val
			}
			else {
				errors.append(FHIRValidationError(key: "comments", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["condition"] {
			presentKeys.insert("condition")
			if let val = exist as? [String] {
				self.condition = val
			}
			else {
				errors.append(FHIRValidationError(key: "condition", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["constraint"] {
			presentKeys.insert("constraint")
			if let val = exist as? [FHIRJSON] {
				do {
					self.constraint = try ElementDefinitionConstraint.instantiate(fromArray: val, owner: self) as? [ElementDefinitionConstraint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "constraint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "constraint", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["contentReference"] {
			presentKeys.insert("contentReference")
			if let val = exist as? String {
				self.contentReference = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "contentReference", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueAddress"] {
			presentKeys.insert("defaultValueAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueAge"] {
			presentKeys.insert("defaultValueAge")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueAnnotation"] {
			presentKeys.insert("defaultValueAnnotation")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueAnnotation = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueAnnotation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueAttachment"] {
			presentKeys.insert("defaultValueAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueBase64Binary"] {
			presentKeys.insert("defaultValueBase64Binary")
			if let val = exist as? String {
				self.defaultValueBase64Binary = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueBase64Binary", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueBoolean"] {
			presentKeys.insert("defaultValueBoolean")
			if let val = exist as? Bool {
				self.defaultValueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueCode"] {
			presentKeys.insert("defaultValueCode")
			if let val = exist as? String {
				self.defaultValueCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueCodeableConcept"] {
			presentKeys.insert("defaultValueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueCoding"] {
			presentKeys.insert("defaultValueCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueContactPoint"] {
			presentKeys.insert("defaultValueContactPoint")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueContactPoint = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueContactPoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueCount"] {
			presentKeys.insert("defaultValueCount")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueCount = try Count(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueCount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueCount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueDate"] {
			presentKeys.insert("defaultValueDate")
			if let val = exist as? String {
				self.defaultValueDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueDateTime"] {
			presentKeys.insert("defaultValueDateTime")
			if let val = exist as? String {
				self.defaultValueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueDecimal"] {
			presentKeys.insert("defaultValueDecimal")
			if let val = exist as? NSNumber {
				self.defaultValueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueDistance"] {
			presentKeys.insert("defaultValueDistance")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueDistance = try Distance(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueDistance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueDistance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueDuration"] {
			presentKeys.insert("defaultValueDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueHumanName"] {
			presentKeys.insert("defaultValueHumanName")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueHumanName = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueHumanName"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueHumanName", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueId"] {
			presentKeys.insert("defaultValueId")
			if let val = exist as? String {
				self.defaultValueId = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueIdentifier"] {
			presentKeys.insert("defaultValueIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueInstant"] {
			presentKeys.insert("defaultValueInstant")
			if let val = exist as? String {
				self.defaultValueInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueInteger"] {
			presentKeys.insert("defaultValueInteger")
			if let val = exist as? Int {
				self.defaultValueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueMarkdown"] {
			presentKeys.insert("defaultValueMarkdown")
			if let val = exist as? String {
				self.defaultValueMarkdown = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueMarkdown", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueMeta"] {
			presentKeys.insert("defaultValueMeta")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueMeta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueMeta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueMeta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueMoney"] {
			presentKeys.insert("defaultValueMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueOid"] {
			presentKeys.insert("defaultValueOid")
			if let val = exist as? String {
				self.defaultValueOid = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueOid", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValuePeriod"] {
			presentKeys.insert("defaultValuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValuePositiveInt"] {
			presentKeys.insert("defaultValuePositiveInt")
			if let val = exist as? UInt {
				self.defaultValuePositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValuePositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueQuantity"] {
			presentKeys.insert("defaultValueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueRange"] {
			presentKeys.insert("defaultValueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueRatio"] {
			presentKeys.insert("defaultValueRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueReference"] {
			presentKeys.insert("defaultValueReference")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueSampledData"] {
			presentKeys.insert("defaultValueSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueSignature"] {
			presentKeys.insert("defaultValueSignature")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueSignature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueSignature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueSignature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueString"] {
			presentKeys.insert("defaultValueString")
			if let val = exist as? String {
				self.defaultValueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueTime"] {
			presentKeys.insert("defaultValueTime")
			if let val = exist as? String {
				self.defaultValueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueTiming"] {
			presentKeys.insert("defaultValueTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.defaultValueTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "defaultValueTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueUnsignedInt"] {
			presentKeys.insert("defaultValueUnsignedInt")
			if let val = exist as? UInt {
				self.defaultValueUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["defaultValueUri"] {
			presentKeys.insert("defaultValueUri")
			if let val = exist as? String {
				self.defaultValueUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "defaultValueUri", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? String {
				self.definition = val
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["example"] {
			presentKeys.insert("example")
			if let val = exist as? [FHIRJSON] {
				do {
					self.example = try ElementDefinitionExample.instantiate(fromArray: val, owner: self) as? [ElementDefinitionExample]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "example"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "example", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedAddress"] {
			presentKeys.insert("fixedAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedAge"] {
			presentKeys.insert("fixedAge")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedAnnotation"] {
			presentKeys.insert("fixedAnnotation")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedAnnotation = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedAnnotation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedAttachment"] {
			presentKeys.insert("fixedAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedBase64Binary"] {
			presentKeys.insert("fixedBase64Binary")
			if let val = exist as? String {
				self.fixedBase64Binary = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fixedBase64Binary", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedBoolean"] {
			presentKeys.insert("fixedBoolean")
			if let val = exist as? Bool {
				self.fixedBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "fixedBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedCode"] {
			presentKeys.insert("fixedCode")
			if let val = exist as? String {
				self.fixedCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "fixedCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedCodeableConcept"] {
			presentKeys.insert("fixedCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedCoding"] {
			presentKeys.insert("fixedCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedContactPoint"] {
			presentKeys.insert("fixedContactPoint")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedContactPoint = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedContactPoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedCount"] {
			presentKeys.insert("fixedCount")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedCount = try Count(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedCount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedCount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedDate"] {
			presentKeys.insert("fixedDate")
			if let val = exist as? String {
				self.fixedDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fixedDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedDateTime"] {
			presentKeys.insert("fixedDateTime")
			if let val = exist as? String {
				self.fixedDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fixedDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedDecimal"] {
			presentKeys.insert("fixedDecimal")
			if let val = exist as? NSNumber {
				self.fixedDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fixedDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedDistance"] {
			presentKeys.insert("fixedDistance")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedDistance = try Distance(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedDistance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedDistance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedDuration"] {
			presentKeys.insert("fixedDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedHumanName"] {
			presentKeys.insert("fixedHumanName")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedHumanName = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedHumanName"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedHumanName", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedId"] {
			presentKeys.insert("fixedId")
			if let val = exist as? String {
				self.fixedId = val
			}
			else {
				errors.append(FHIRValidationError(key: "fixedId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedIdentifier"] {
			presentKeys.insert("fixedIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedInstant"] {
			presentKeys.insert("fixedInstant")
			if let val = exist as? String {
				self.fixedInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fixedInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedInteger"] {
			presentKeys.insert("fixedInteger")
			if let val = exist as? Int {
				self.fixedInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "fixedInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedMarkdown"] {
			presentKeys.insert("fixedMarkdown")
			if let val = exist as? String {
				self.fixedMarkdown = val
			}
			else {
				errors.append(FHIRValidationError(key: "fixedMarkdown", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedMeta"] {
			presentKeys.insert("fixedMeta")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedMeta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedMeta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedMeta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedMoney"] {
			presentKeys.insert("fixedMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedOid"] {
			presentKeys.insert("fixedOid")
			if let val = exist as? String {
				self.fixedOid = val
			}
			else {
				errors.append(FHIRValidationError(key: "fixedOid", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedPeriod"] {
			presentKeys.insert("fixedPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedPositiveInt"] {
			presentKeys.insert("fixedPositiveInt")
			if let val = exist as? UInt {
				self.fixedPositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "fixedPositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedQuantity"] {
			presentKeys.insert("fixedQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedRange"] {
			presentKeys.insert("fixedRange")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedRatio"] {
			presentKeys.insert("fixedRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedReference"] {
			presentKeys.insert("fixedReference")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedSampledData"] {
			presentKeys.insert("fixedSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedSignature"] {
			presentKeys.insert("fixedSignature")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedSignature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedSignature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedSignature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedString"] {
			presentKeys.insert("fixedString")
			if let val = exist as? String {
				self.fixedString = val
			}
			else {
				errors.append(FHIRValidationError(key: "fixedString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedTime"] {
			presentKeys.insert("fixedTime")
			if let val = exist as? String {
				self.fixedTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fixedTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedTiming"] {
			presentKeys.insert("fixedTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.fixedTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fixedTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fixedTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedUnsignedInt"] {
			presentKeys.insert("fixedUnsignedInt")
			if let val = exist as? UInt {
				self.fixedUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "fixedUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["fixedUri"] {
			presentKeys.insert("fixedUri")
			if let val = exist as? String {
				self.fixedUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "fixedUri", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["isModifier"] {
			presentKeys.insert("isModifier")
			if let val = exist as? Bool {
				self.isModifier = val
			}
			else {
				errors.append(FHIRValidationError(key: "isModifier", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["isSummary"] {
			presentKeys.insert("isSummary")
			if let val = exist as? Bool {
				self.isSummary = val
			}
			else {
				errors.append(FHIRValidationError(key: "isSummary", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["label"] {
			presentKeys.insert("label")
			if let val = exist as? String {
				self.label = val
			}
			else {
				errors.append(FHIRValidationError(key: "label", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["mapping"] {
			presentKeys.insert("mapping")
			if let val = exist as? [FHIRJSON] {
				do {
					self.mapping = try ElementDefinitionMapping.instantiate(fromArray: val, owner: self) as? [ElementDefinitionMapping]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "mapping"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "mapping", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["max"] {
			presentKeys.insert("max")
			if let val = exist as? String {
				self.max = val
			}
			else {
				errors.append(FHIRValidationError(key: "max", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxLength"] {
			presentKeys.insert("maxLength")
			if let val = exist as? Int {
				self.maxLength = val
			}
			else {
				errors.append(FHIRValidationError(key: "maxLength", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxValueDate"] {
			presentKeys.insert("maxValueDate")
			if let val = exist as? String {
				self.maxValueDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "maxValueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxValueDateTime"] {
			presentKeys.insert("maxValueDateTime")
			if let val = exist as? String {
				self.maxValueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "maxValueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxValueDecimal"] {
			presentKeys.insert("maxValueDecimal")
			if let val = exist as? NSNumber {
				self.maxValueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "maxValueDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxValueInstant"] {
			presentKeys.insert("maxValueInstant")
			if let val = exist as? String {
				self.maxValueInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "maxValueInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxValueInteger"] {
			presentKeys.insert("maxValueInteger")
			if let val = exist as? Int {
				self.maxValueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "maxValueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxValuePositiveInt"] {
			presentKeys.insert("maxValuePositiveInt")
			if let val = exist as? UInt {
				self.maxValuePositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "maxValuePositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxValueQuantity"] {
			presentKeys.insert("maxValueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.maxValueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "maxValueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "maxValueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxValueTime"] {
			presentKeys.insert("maxValueTime")
			if let val = exist as? String {
				self.maxValueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "maxValueTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["maxValueUnsignedInt"] {
			presentKeys.insert("maxValueUnsignedInt")
			if let val = exist as? UInt {
				self.maxValueUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "maxValueUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["meaningWhenMissing"] {
			presentKeys.insert("meaningWhenMissing")
			if let val = exist as? String {
				self.meaningWhenMissing = val
			}
			else {
				errors.append(FHIRValidationError(key: "meaningWhenMissing", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["min"] {
			presentKeys.insert("min")
			if let val = exist as? Int {
				self.min = val
			}
			else {
				errors.append(FHIRValidationError(key: "min", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["minValueDate"] {
			presentKeys.insert("minValueDate")
			if let val = exist as? String {
				self.minValueDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "minValueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["minValueDateTime"] {
			presentKeys.insert("minValueDateTime")
			if let val = exist as? String {
				self.minValueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "minValueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["minValueDecimal"] {
			presentKeys.insert("minValueDecimal")
			if let val = exist as? NSNumber {
				self.minValueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "minValueDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["minValueInstant"] {
			presentKeys.insert("minValueInstant")
			if let val = exist as? String {
				self.minValueInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "minValueInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["minValueInteger"] {
			presentKeys.insert("minValueInteger")
			if let val = exist as? Int {
				self.minValueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "minValueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["minValuePositiveInt"] {
			presentKeys.insert("minValuePositiveInt")
			if let val = exist as? UInt {
				self.minValuePositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "minValuePositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["minValueQuantity"] {
			presentKeys.insert("minValueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.minValueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "minValueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "minValueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["minValueTime"] {
			presentKeys.insert("minValueTime")
			if let val = exist as? String {
				self.minValueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "minValueTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["minValueUnsignedInt"] {
			presentKeys.insert("minValueUnsignedInt")
			if let val = exist as? UInt {
				self.minValueUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "minValueUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["mustSupport"] {
			presentKeys.insert("mustSupport")
			if let val = exist as? Bool {
				self.mustSupport = val
			}
			else {
				errors.append(FHIRValidationError(key: "mustSupport", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = val
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "path"))
		}
		if let exist = json["patternAddress"] {
			presentKeys.insert("patternAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.patternAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternAge"] {
			presentKeys.insert("patternAge")
			if let val = exist as? FHIRJSON {
				do {
					self.patternAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternAnnotation"] {
			presentKeys.insert("patternAnnotation")
			if let val = exist as? FHIRJSON {
				do {
					self.patternAnnotation = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternAnnotation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternAttachment"] {
			presentKeys.insert("patternAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.patternAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternBase64Binary"] {
			presentKeys.insert("patternBase64Binary")
			if let val = exist as? String {
				self.patternBase64Binary = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "patternBase64Binary", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternBoolean"] {
			presentKeys.insert("patternBoolean")
			if let val = exist as? Bool {
				self.patternBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "patternBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternCode"] {
			presentKeys.insert("patternCode")
			if let val = exist as? String {
				self.patternCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "patternCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternCodeableConcept"] {
			presentKeys.insert("patternCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.patternCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternCoding"] {
			presentKeys.insert("patternCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.patternCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternContactPoint"] {
			presentKeys.insert("patternContactPoint")
			if let val = exist as? FHIRJSON {
				do {
					self.patternContactPoint = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternContactPoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternCount"] {
			presentKeys.insert("patternCount")
			if let val = exist as? FHIRJSON {
				do {
					self.patternCount = try Count(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternCount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternCount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternDate"] {
			presentKeys.insert("patternDate")
			if let val = exist as? String {
				self.patternDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "patternDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternDateTime"] {
			presentKeys.insert("patternDateTime")
			if let val = exist as? String {
				self.patternDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "patternDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternDecimal"] {
			presentKeys.insert("patternDecimal")
			if let val = exist as? NSNumber {
				self.patternDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "patternDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternDistance"] {
			presentKeys.insert("patternDistance")
			if let val = exist as? FHIRJSON {
				do {
					self.patternDistance = try Distance(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternDistance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternDistance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternDuration"] {
			presentKeys.insert("patternDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.patternDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternHumanName"] {
			presentKeys.insert("patternHumanName")
			if let val = exist as? FHIRJSON {
				do {
					self.patternHumanName = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternHumanName"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternHumanName", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternId"] {
			presentKeys.insert("patternId")
			if let val = exist as? String {
				self.patternId = val
			}
			else {
				errors.append(FHIRValidationError(key: "patternId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternIdentifier"] {
			presentKeys.insert("patternIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.patternIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternInstant"] {
			presentKeys.insert("patternInstant")
			if let val = exist as? String {
				self.patternInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "patternInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternInteger"] {
			presentKeys.insert("patternInteger")
			if let val = exist as? Int {
				self.patternInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "patternInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternMarkdown"] {
			presentKeys.insert("patternMarkdown")
			if let val = exist as? String {
				self.patternMarkdown = val
			}
			else {
				errors.append(FHIRValidationError(key: "patternMarkdown", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternMeta"] {
			presentKeys.insert("patternMeta")
			if let val = exist as? FHIRJSON {
				do {
					self.patternMeta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternMeta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternMeta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternMoney"] {
			presentKeys.insert("patternMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.patternMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternOid"] {
			presentKeys.insert("patternOid")
			if let val = exist as? String {
				self.patternOid = val
			}
			else {
				errors.append(FHIRValidationError(key: "patternOid", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternPeriod"] {
			presentKeys.insert("patternPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.patternPeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternPositiveInt"] {
			presentKeys.insert("patternPositiveInt")
			if let val = exist as? UInt {
				self.patternPositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "patternPositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternQuantity"] {
			presentKeys.insert("patternQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.patternQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternRange"] {
			presentKeys.insert("patternRange")
			if let val = exist as? FHIRJSON {
				do {
					self.patternRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternRatio"] {
			presentKeys.insert("patternRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.patternRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternReference"] {
			presentKeys.insert("patternReference")
			if let val = exist as? FHIRJSON {
				do {
					self.patternReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternSampledData"] {
			presentKeys.insert("patternSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.patternSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternSignature"] {
			presentKeys.insert("patternSignature")
			if let val = exist as? FHIRJSON {
				do {
					self.patternSignature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternSignature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternSignature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternString"] {
			presentKeys.insert("patternString")
			if let val = exist as? String {
				self.patternString = val
			}
			else {
				errors.append(FHIRValidationError(key: "patternString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternTime"] {
			presentKeys.insert("patternTime")
			if let val = exist as? String {
				self.patternTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "patternTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternTiming"] {
			presentKeys.insert("patternTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.patternTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "patternTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "patternTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternUnsignedInt"] {
			presentKeys.insert("patternUnsignedInt")
			if let val = exist as? UInt {
				self.patternUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "patternUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["patternUri"] {
			presentKeys.insert("patternUri")
			if let val = exist as? String {
				self.patternUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "patternUri", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["representation"] {
			presentKeys.insert("representation")
			if let val = exist as? [String] { var i = -1
				self.representation = val.map() { i += 1
					if let enumval = PropertyRepresentation(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "representation.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "representation", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["requirements"] {
			presentKeys.insert("requirements")
			if let val = exist as? String {
				self.requirements = val
			}
			else {
				errors.append(FHIRValidationError(key: "requirements", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["short"] {
			presentKeys.insert("short")
			if let val = exist as? String {
				self.short = val
			}
			else {
				errors.append(FHIRValidationError(key: "short", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["sliceName"] {
			presentKeys.insert("sliceName")
			if let val = exist as? String {
				self.sliceName = val
			}
			else {
				errors.append(FHIRValidationError(key: "sliceName", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["slicing"] {
			presentKeys.insert("slicing")
			if let val = exist as? FHIRJSON {
				do {
					self.slicing = try ElementDefinitionSlicing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "slicing"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "slicing", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? [FHIRJSON] {
				do {
					self.type = try ElementDefinitionType.instantiate(fromArray: val, owner: self) as? [ElementDefinitionType]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let alias = self.alias {
			json["alias"] = alias.map() { $0.asJSON() }
		}
		if let base = self.base {
			json["base"] = base.asJSON(errors: &errors)
		}
		if let binding = self.binding {
			json["binding"] = binding.asJSON(errors: &errors)
		}
		if let code = self.code {
			json["code"] = code.map() { $0.asJSON(errors: &errors) }
		}
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let condition = self.condition {
			json["condition"] = condition.map() { $0.asJSON() }
		}
		if let constraint = self.constraint {
			json["constraint"] = constraint.map() { $0.asJSON(errors: &errors) }
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		if let defaultValueAddress = self.defaultValueAddress {
			json["defaultValueAddress"] = defaultValueAddress.asJSON(errors: &errors)
		}
		if let defaultValueAge = self.defaultValueAge {
			json["defaultValueAge"] = defaultValueAge.asJSON(errors: &errors)
		}
		if let defaultValueAnnotation = self.defaultValueAnnotation {
			json["defaultValueAnnotation"] = defaultValueAnnotation.asJSON(errors: &errors)
		}
		if let defaultValueAttachment = self.defaultValueAttachment {
			json["defaultValueAttachment"] = defaultValueAttachment.asJSON(errors: &errors)
		}
		if let defaultValueBase64Binary = self.defaultValueBase64Binary {
			json["defaultValueBase64Binary"] = defaultValueBase64Binary.asJSON()
		}
		if let defaultValueBoolean = self.defaultValueBoolean {
			json["defaultValueBoolean"] = defaultValueBoolean.asJSON()
		}
		if let defaultValueCode = self.defaultValueCode {
			json["defaultValueCode"] = defaultValueCode.asJSON()
		}
		if let defaultValueCodeableConcept = self.defaultValueCodeableConcept {
			json["defaultValueCodeableConcept"] = defaultValueCodeableConcept.asJSON(errors: &errors)
		}
		if let defaultValueCoding = self.defaultValueCoding {
			json["defaultValueCoding"] = defaultValueCoding.asJSON(errors: &errors)
		}
		if let defaultValueContactPoint = self.defaultValueContactPoint {
			json["defaultValueContactPoint"] = defaultValueContactPoint.asJSON(errors: &errors)
		}
		if let defaultValueCount = self.defaultValueCount {
			json["defaultValueCount"] = defaultValueCount.asJSON(errors: &errors)
		}
		if let defaultValueDate = self.defaultValueDate {
			json["defaultValueDate"] = defaultValueDate.asJSON()
		}
		if let defaultValueDateTime = self.defaultValueDateTime {
			json["defaultValueDateTime"] = defaultValueDateTime.asJSON()
		}
		if let defaultValueDecimal = self.defaultValueDecimal {
			json["defaultValueDecimal"] = defaultValueDecimal.asJSON()
		}
		if let defaultValueDistance = self.defaultValueDistance {
			json["defaultValueDistance"] = defaultValueDistance.asJSON(errors: &errors)
		}
		if let defaultValueDuration = self.defaultValueDuration {
			json["defaultValueDuration"] = defaultValueDuration.asJSON(errors: &errors)
		}
		if let defaultValueHumanName = self.defaultValueHumanName {
			json["defaultValueHumanName"] = defaultValueHumanName.asJSON(errors: &errors)
		}
		if let defaultValueId = self.defaultValueId {
			json["defaultValueId"] = defaultValueId.asJSON()
		}
		if let defaultValueIdentifier = self.defaultValueIdentifier {
			json["defaultValueIdentifier"] = defaultValueIdentifier.asJSON(errors: &errors)
		}
		if let defaultValueInstant = self.defaultValueInstant {
			json["defaultValueInstant"] = defaultValueInstant.asJSON()
		}
		if let defaultValueInteger = self.defaultValueInteger {
			json["defaultValueInteger"] = defaultValueInteger.asJSON()
		}
		if let defaultValueMarkdown = self.defaultValueMarkdown {
			json["defaultValueMarkdown"] = defaultValueMarkdown.asJSON()
		}
		if let defaultValueMeta = self.defaultValueMeta {
			json["defaultValueMeta"] = defaultValueMeta.asJSON(errors: &errors)
		}
		if let defaultValueMoney = self.defaultValueMoney {
			json["defaultValueMoney"] = defaultValueMoney.asJSON(errors: &errors)
		}
		if let defaultValueOid = self.defaultValueOid {
			json["defaultValueOid"] = defaultValueOid.asJSON()
		}
		if let defaultValuePeriod = self.defaultValuePeriod {
			json["defaultValuePeriod"] = defaultValuePeriod.asJSON(errors: &errors)
		}
		if let defaultValuePositiveInt = self.defaultValuePositiveInt {
			json["defaultValuePositiveInt"] = defaultValuePositiveInt.asJSON()
		}
		if let defaultValueQuantity = self.defaultValueQuantity {
			json["defaultValueQuantity"] = defaultValueQuantity.asJSON(errors: &errors)
		}
		if let defaultValueRange = self.defaultValueRange {
			json["defaultValueRange"] = defaultValueRange.asJSON(errors: &errors)
		}
		if let defaultValueRatio = self.defaultValueRatio {
			json["defaultValueRatio"] = defaultValueRatio.asJSON(errors: &errors)
		}
		if let defaultValueReference = self.defaultValueReference {
			json["defaultValueReference"] = defaultValueReference.asJSON(errors: &errors)
		}
		if let defaultValueSampledData = self.defaultValueSampledData {
			json["defaultValueSampledData"] = defaultValueSampledData.asJSON(errors: &errors)
		}
		if let defaultValueSignature = self.defaultValueSignature {
			json["defaultValueSignature"] = defaultValueSignature.asJSON(errors: &errors)
		}
		if let defaultValueString = self.defaultValueString {
			json["defaultValueString"] = defaultValueString.asJSON()
		}
		if let defaultValueTime = self.defaultValueTime {
			json["defaultValueTime"] = defaultValueTime.asJSON()
		}
		if let defaultValueTiming = self.defaultValueTiming {
			json["defaultValueTiming"] = defaultValueTiming.asJSON(errors: &errors)
		}
		if let defaultValueUnsignedInt = self.defaultValueUnsignedInt {
			json["defaultValueUnsignedInt"] = defaultValueUnsignedInt.asJSON()
		}
		if let defaultValueUri = self.defaultValueUri {
			json["defaultValueUri"] = defaultValueUri.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let example = self.example {
			json["example"] = example.map() { $0.asJSON(errors: &errors) }
		}
		if let fixedAddress = self.fixedAddress {
			json["fixedAddress"] = fixedAddress.asJSON(errors: &errors)
		}
		if let fixedAge = self.fixedAge {
			json["fixedAge"] = fixedAge.asJSON(errors: &errors)
		}
		if let fixedAnnotation = self.fixedAnnotation {
			json["fixedAnnotation"] = fixedAnnotation.asJSON(errors: &errors)
		}
		if let fixedAttachment = self.fixedAttachment {
			json["fixedAttachment"] = fixedAttachment.asJSON(errors: &errors)
		}
		if let fixedBase64Binary = self.fixedBase64Binary {
			json["fixedBase64Binary"] = fixedBase64Binary.asJSON()
		}
		if let fixedBoolean = self.fixedBoolean {
			json["fixedBoolean"] = fixedBoolean.asJSON()
		}
		if let fixedCode = self.fixedCode {
			json["fixedCode"] = fixedCode.asJSON()
		}
		if let fixedCodeableConcept = self.fixedCodeableConcept {
			json["fixedCodeableConcept"] = fixedCodeableConcept.asJSON(errors: &errors)
		}
		if let fixedCoding = self.fixedCoding {
			json["fixedCoding"] = fixedCoding.asJSON(errors: &errors)
		}
		if let fixedContactPoint = self.fixedContactPoint {
			json["fixedContactPoint"] = fixedContactPoint.asJSON(errors: &errors)
		}
		if let fixedCount = self.fixedCount {
			json["fixedCount"] = fixedCount.asJSON(errors: &errors)
		}
		if let fixedDate = self.fixedDate {
			json["fixedDate"] = fixedDate.asJSON()
		}
		if let fixedDateTime = self.fixedDateTime {
			json["fixedDateTime"] = fixedDateTime.asJSON()
		}
		if let fixedDecimal = self.fixedDecimal {
			json["fixedDecimal"] = fixedDecimal.asJSON()
		}
		if let fixedDistance = self.fixedDistance {
			json["fixedDistance"] = fixedDistance.asJSON(errors: &errors)
		}
		if let fixedDuration = self.fixedDuration {
			json["fixedDuration"] = fixedDuration.asJSON(errors: &errors)
		}
		if let fixedHumanName = self.fixedHumanName {
			json["fixedHumanName"] = fixedHumanName.asJSON(errors: &errors)
		}
		if let fixedId = self.fixedId {
			json["fixedId"] = fixedId.asJSON()
		}
		if let fixedIdentifier = self.fixedIdentifier {
			json["fixedIdentifier"] = fixedIdentifier.asJSON(errors: &errors)
		}
		if let fixedInstant = self.fixedInstant {
			json["fixedInstant"] = fixedInstant.asJSON()
		}
		if let fixedInteger = self.fixedInteger {
			json["fixedInteger"] = fixedInteger.asJSON()
		}
		if let fixedMarkdown = self.fixedMarkdown {
			json["fixedMarkdown"] = fixedMarkdown.asJSON()
		}
		if let fixedMeta = self.fixedMeta {
			json["fixedMeta"] = fixedMeta.asJSON(errors: &errors)
		}
		if let fixedMoney = self.fixedMoney {
			json["fixedMoney"] = fixedMoney.asJSON(errors: &errors)
		}
		if let fixedOid = self.fixedOid {
			json["fixedOid"] = fixedOid.asJSON()
		}
		if let fixedPeriod = self.fixedPeriod {
			json["fixedPeriod"] = fixedPeriod.asJSON(errors: &errors)
		}
		if let fixedPositiveInt = self.fixedPositiveInt {
			json["fixedPositiveInt"] = fixedPositiveInt.asJSON()
		}
		if let fixedQuantity = self.fixedQuantity {
			json["fixedQuantity"] = fixedQuantity.asJSON(errors: &errors)
		}
		if let fixedRange = self.fixedRange {
			json["fixedRange"] = fixedRange.asJSON(errors: &errors)
		}
		if let fixedRatio = self.fixedRatio {
			json["fixedRatio"] = fixedRatio.asJSON(errors: &errors)
		}
		if let fixedReference = self.fixedReference {
			json["fixedReference"] = fixedReference.asJSON(errors: &errors)
		}
		if let fixedSampledData = self.fixedSampledData {
			json["fixedSampledData"] = fixedSampledData.asJSON(errors: &errors)
		}
		if let fixedSignature = self.fixedSignature {
			json["fixedSignature"] = fixedSignature.asJSON(errors: &errors)
		}
		if let fixedString = self.fixedString {
			json["fixedString"] = fixedString.asJSON()
		}
		if let fixedTime = self.fixedTime {
			json["fixedTime"] = fixedTime.asJSON()
		}
		if let fixedTiming = self.fixedTiming {
			json["fixedTiming"] = fixedTiming.asJSON(errors: &errors)
		}
		if let fixedUnsignedInt = self.fixedUnsignedInt {
			json["fixedUnsignedInt"] = fixedUnsignedInt.asJSON()
		}
		if let fixedUri = self.fixedUri {
			json["fixedUri"] = fixedUri.asJSON()
		}
		if let isModifier = self.isModifier {
			json["isModifier"] = isModifier.asJSON()
		}
		if let isSummary = self.isSummary {
			json["isSummary"] = isSummary.asJSON()
		}
		if let label = self.label {
			json["label"] = label.asJSON()
		}
		if let mapping = self.mapping {
			json["mapping"] = mapping.map() { $0.asJSON(errors: &errors) }
		}
		if let max = self.max {
			json["max"] = max.asJSON()
		}
		if let maxLength = self.maxLength {
			json["maxLength"] = maxLength.asJSON()
		}
		if let maxValueDate = self.maxValueDate {
			json["maxValueDate"] = maxValueDate.asJSON()
		}
		if let maxValueDateTime = self.maxValueDateTime {
			json["maxValueDateTime"] = maxValueDateTime.asJSON()
		}
		if let maxValueDecimal = self.maxValueDecimal {
			json["maxValueDecimal"] = maxValueDecimal.asJSON()
		}
		if let maxValueInstant = self.maxValueInstant {
			json["maxValueInstant"] = maxValueInstant.asJSON()
		}
		if let maxValueInteger = self.maxValueInteger {
			json["maxValueInteger"] = maxValueInteger.asJSON()
		}
		if let maxValuePositiveInt = self.maxValuePositiveInt {
			json["maxValuePositiveInt"] = maxValuePositiveInt.asJSON()
		}
		if let maxValueQuantity = self.maxValueQuantity {
			json["maxValueQuantity"] = maxValueQuantity.asJSON(errors: &errors)
		}
		if let maxValueTime = self.maxValueTime {
			json["maxValueTime"] = maxValueTime.asJSON()
		}
		if let maxValueUnsignedInt = self.maxValueUnsignedInt {
			json["maxValueUnsignedInt"] = maxValueUnsignedInt.asJSON()
		}
		if let meaningWhenMissing = self.meaningWhenMissing {
			json["meaningWhenMissing"] = meaningWhenMissing.asJSON()
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		if let minValueDate = self.minValueDate {
			json["minValueDate"] = minValueDate.asJSON()
		}
		if let minValueDateTime = self.minValueDateTime {
			json["minValueDateTime"] = minValueDateTime.asJSON()
		}
		if let minValueDecimal = self.minValueDecimal {
			json["minValueDecimal"] = minValueDecimal.asJSON()
		}
		if let minValueInstant = self.minValueInstant {
			json["minValueInstant"] = minValueInstant.asJSON()
		}
		if let minValueInteger = self.minValueInteger {
			json["minValueInteger"] = minValueInteger.asJSON()
		}
		if let minValuePositiveInt = self.minValuePositiveInt {
			json["minValuePositiveInt"] = minValuePositiveInt.asJSON()
		}
		if let minValueQuantity = self.minValueQuantity {
			json["minValueQuantity"] = minValueQuantity.asJSON(errors: &errors)
		}
		if let minValueTime = self.minValueTime {
			json["minValueTime"] = minValueTime.asJSON()
		}
		if let minValueUnsignedInt = self.minValueUnsignedInt {
			json["minValueUnsignedInt"] = minValueUnsignedInt.asJSON()
		}
		if let mustSupport = self.mustSupport {
			json["mustSupport"] = mustSupport.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let patternAddress = self.patternAddress {
			json["patternAddress"] = patternAddress.asJSON(errors: &errors)
		}
		if let patternAge = self.patternAge {
			json["patternAge"] = patternAge.asJSON(errors: &errors)
		}
		if let patternAnnotation = self.patternAnnotation {
			json["patternAnnotation"] = patternAnnotation.asJSON(errors: &errors)
		}
		if let patternAttachment = self.patternAttachment {
			json["patternAttachment"] = patternAttachment.asJSON(errors: &errors)
		}
		if let patternBase64Binary = self.patternBase64Binary {
			json["patternBase64Binary"] = patternBase64Binary.asJSON()
		}
		if let patternBoolean = self.patternBoolean {
			json["patternBoolean"] = patternBoolean.asJSON()
		}
		if let patternCode = self.patternCode {
			json["patternCode"] = patternCode.asJSON()
		}
		if let patternCodeableConcept = self.patternCodeableConcept {
			json["patternCodeableConcept"] = patternCodeableConcept.asJSON(errors: &errors)
		}
		if let patternCoding = self.patternCoding {
			json["patternCoding"] = patternCoding.asJSON(errors: &errors)
		}
		if let patternContactPoint = self.patternContactPoint {
			json["patternContactPoint"] = patternContactPoint.asJSON(errors: &errors)
		}
		if let patternCount = self.patternCount {
			json["patternCount"] = patternCount.asJSON(errors: &errors)
		}
		if let patternDate = self.patternDate {
			json["patternDate"] = patternDate.asJSON()
		}
		if let patternDateTime = self.patternDateTime {
			json["patternDateTime"] = patternDateTime.asJSON()
		}
		if let patternDecimal = self.patternDecimal {
			json["patternDecimal"] = patternDecimal.asJSON()
		}
		if let patternDistance = self.patternDistance {
			json["patternDistance"] = patternDistance.asJSON(errors: &errors)
		}
		if let patternDuration = self.patternDuration {
			json["patternDuration"] = patternDuration.asJSON(errors: &errors)
		}
		if let patternHumanName = self.patternHumanName {
			json["patternHumanName"] = patternHumanName.asJSON(errors: &errors)
		}
		if let patternId = self.patternId {
			json["patternId"] = patternId.asJSON()
		}
		if let patternIdentifier = self.patternIdentifier {
			json["patternIdentifier"] = patternIdentifier.asJSON(errors: &errors)
		}
		if let patternInstant = self.patternInstant {
			json["patternInstant"] = patternInstant.asJSON()
		}
		if let patternInteger = self.patternInteger {
			json["patternInteger"] = patternInteger.asJSON()
		}
		if let patternMarkdown = self.patternMarkdown {
			json["patternMarkdown"] = patternMarkdown.asJSON()
		}
		if let patternMeta = self.patternMeta {
			json["patternMeta"] = patternMeta.asJSON(errors: &errors)
		}
		if let patternMoney = self.patternMoney {
			json["patternMoney"] = patternMoney.asJSON(errors: &errors)
		}
		if let patternOid = self.patternOid {
			json["patternOid"] = patternOid.asJSON()
		}
		if let patternPeriod = self.patternPeriod {
			json["patternPeriod"] = patternPeriod.asJSON(errors: &errors)
		}
		if let patternPositiveInt = self.patternPositiveInt {
			json["patternPositiveInt"] = patternPositiveInt.asJSON()
		}
		if let patternQuantity = self.patternQuantity {
			json["patternQuantity"] = patternQuantity.asJSON(errors: &errors)
		}
		if let patternRange = self.patternRange {
			json["patternRange"] = patternRange.asJSON(errors: &errors)
		}
		if let patternRatio = self.patternRatio {
			json["patternRatio"] = patternRatio.asJSON(errors: &errors)
		}
		if let patternReference = self.patternReference {
			json["patternReference"] = patternReference.asJSON(errors: &errors)
		}
		if let patternSampledData = self.patternSampledData {
			json["patternSampledData"] = patternSampledData.asJSON(errors: &errors)
		}
		if let patternSignature = self.patternSignature {
			json["patternSignature"] = patternSignature.asJSON(errors: &errors)
		}
		if let patternString = self.patternString {
			json["patternString"] = patternString.asJSON()
		}
		if let patternTime = self.patternTime {
			json["patternTime"] = patternTime.asJSON()
		}
		if let patternTiming = self.patternTiming {
			json["patternTiming"] = patternTiming.asJSON(errors: &errors)
		}
		if let patternUnsignedInt = self.patternUnsignedInt {
			json["patternUnsignedInt"] = patternUnsignedInt.asJSON()
		}
		if let patternUri = self.patternUri {
			json["patternUri"] = patternUri.asJSON()
		}
		if let representation = self.representation {
			json["representation"] = representation.map() { $0.rawValue }
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let short = self.short {
			json["short"] = short.asJSON()
		}
		if let sliceName = self.sliceName {
			json["sliceName"] = sliceName.asJSON()
		}
		if let slicing = self.slicing {
			json["slicing"] = slicing.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
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
	public var max: String?
	
	/// Min cardinality of the base element.
	public var min: Int?
	
	/// Path that identifies the base element.
	public var path: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(max: String, min: Int, path: String) {
		self.init()
		self.max = max
		self.min = min
		self.path = path
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["max"] {
			presentKeys.insert("max")
			if let val = exist as? String {
				self.max = val
			}
			else {
				errors.append(FHIRValidationError(key: "max", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "max"))
		}
		if let exist = json["min"] {
			presentKeys.insert("min")
			if let val = exist as? Int {
				self.min = val
			}
			else {
				errors.append(FHIRValidationError(key: "min", wants: Int.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "min"))
		}
		if let exist = json["path"] {
			presentKeys.insert("path")
			if let val = exist as? String {
				self.path = val
			}
			else {
				errors.append(FHIRValidationError(key: "path", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "path"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let max = self.max {
			json["max"] = max.asJSON()
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		
		return json
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
	public var description_fhir: String?
	
	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	public var strength: BindingStrength?
	
	/// Source of value set.
	public var valueSetReference: Reference?
	
	/// Source of value set.
	public var valueSetUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(strength: BindingStrength) {
		self.init()
		self.strength = strength
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["strength"] {
			presentKeys.insert("strength")
			if let val = exist as? String {
				if let enumval = BindingStrength(rawValue: val) {
					self.strength = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "strength", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "strength", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "strength"))
		}
		if let exist = json["valueSetReference"] {
			presentKeys.insert("valueSetReference")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSetReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSetReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSetReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSetUri"] {
			presentKeys.insert("valueSetUri")
			if let val = exist as? String {
				self.valueSetUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueSetUri", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let strength = self.strength {
			json["strength"] = strength.rawValue
		}
		if let valueSetReference = self.valueSetReference {
			json["valueSetReference"] = valueSetReference.asJSON(errors: &errors)
		}
		if let valueSetUri = self.valueSetUri {
			json["valueSetUri"] = valueSetUri.asJSON()
		}
		
		return json
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
	
	/// FluentPath expression of constraint.
	public var expression: String?
	
	/// Human description of constraint.
	public var human: String?
	
	/// Target of 'condition' reference above.
	public var key: String?
	
	/// Why this constraint is necessary or appropriate.
	public var requirements: String?
	
	/// Identifies the impact constraint violation has on the conformance of the instance.
	public var severity: ConstraintSeverity?
	
	/// Reference to original source of constraint.
	public var source: URL?
	
	/// XPath expression of constraint.
	public var xpath: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(expression: String, human: String, key: String, severity: ConstraintSeverity) {
		self.init()
		self.expression = expression
		self.human = human
		self.key = key
		self.severity = severity
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["expression"] {
			presentKeys.insert("expression")
			if let val = exist as? String {
				self.expression = val
			}
			else {
				errors.append(FHIRValidationError(key: "expression", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "expression"))
		}
		if let exist = json["human"] {
			presentKeys.insert("human")
			if let val = exist as? String {
				self.human = val
			}
			else {
				errors.append(FHIRValidationError(key: "human", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "human"))
		}
		if let exist = json["key"] {
			presentKeys.insert("key")
			if let val = exist as? String {
				self.key = val
			}
			else {
				errors.append(FHIRValidationError(key: "key", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "key"))
		}
		if let exist = json["requirements"] {
			presentKeys.insert("requirements")
			if let val = exist as? String {
				self.requirements = val
			}
			else {
				errors.append(FHIRValidationError(key: "requirements", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["severity"] {
			presentKeys.insert("severity")
			if let val = exist as? String {
				if let enumval = ConstraintSeverity(rawValue: val) {
					self.severity = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "severity", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "severity", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "severity"))
		}
		if let exist = json["source"] {
			presentKeys.insert("source")
			if let val = exist as? String {
				self.source = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "source", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["xpath"] {
			presentKeys.insert("xpath")
			if let val = exist as? String {
				self.xpath = val
			}
			else {
				errors.append(FHIRValidationError(key: "xpath", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let expression = self.expression {
			json["expression"] = expression.asJSON()
		}
		if let human = self.human {
			json["human"] = human.asJSON()
		}
		if let key = self.key {
			json["key"] = key.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let severity = self.severity {
			json["severity"] = severity.rawValue
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let xpath = self.xpath {
			json["xpath"] = xpath.asJSON()
		}
		
		return json
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
	public var label: String?
	
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
	public var valueBoolean: Bool?
	
	/// Value of Example (one of allowed types).
	public var valueCode: String?
	
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
	public var valueDecimal: NSDecimalNumber?
	
	/// Value of Example (one of allowed types).
	public var valueDistance: Distance?
	
	/// Value of Example (one of allowed types).
	public var valueDuration: Duration?
	
	/// Value of Example (one of allowed types).
	public var valueHumanName: HumanName?
	
	/// Value of Example (one of allowed types).
	public var valueId: String?
	
	/// Value of Example (one of allowed types).
	public var valueIdentifier: Identifier?
	
	/// Value of Example (one of allowed types).
	public var valueInstant: Instant?
	
	/// Value of Example (one of allowed types).
	public var valueInteger: Int?
	
	/// Value of Example (one of allowed types).
	public var valueMarkdown: String?
	
	/// Value of Example (one of allowed types).
	public var valueMeta: Meta?
	
	/// Value of Example (one of allowed types).
	public var valueMoney: Money?
	
	/// Value of Example (one of allowed types).
	public var valueOid: String?
	
	/// Value of Example (one of allowed types).
	public var valuePeriod: Period?
	
	/// Value of Example (one of allowed types).
	public var valuePositiveInt: UInt?
	
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
	public var valueString: String?
	
	/// Value of Example (one of allowed types).
	public var valueTime: FHIRTime?
	
	/// Value of Example (one of allowed types).
	public var valueTiming: Timing?
	
	/// Value of Example (one of allowed types).
	public var valueUnsignedInt: UInt?
	
	/// Value of Example (one of allowed types).
	public var valueUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(label: String, value: Any) {
		self.init()
		self.label = label
		if let value = value as? Base64Binary {
			self.valueBase64Binary = value
		}
		else if let value = value as? Bool {
			self.valueBoolean = value
		}
		else if let value = value as? String {
			self.valueCode = value
		}
		else if let value = value as? FHIRDate {
			self.valueDate = value
		}
		else if let value = value as? DateTime {
			self.valueDateTime = value
		}
		else if let value = value as? NSDecimalNumber {
			self.valueDecimal = value
		}
		else if let value = value as? String {
			self.valueId = value
		}
		else if let value = value as? Instant {
			self.valueInstant = value
		}
		else if let value = value as? Int {
			self.valueInteger = value
		}
		else if let value = value as? String {
			self.valueMarkdown = value
		}
		else if let value = value as? String {
			self.valueOid = value
		}
		else if let value = value as? UInt {
			self.valuePositiveInt = value
		}
		else if let value = value as? String {
			self.valueString = value
		}
		else if let value = value as? FHIRTime {
			self.valueTime = value
		}
		else if let value = value as? UInt {
			self.valueUnsignedInt = value
		}
		else if let value = value as? URL {
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
		if let exist = json["label"] {
			presentKeys.insert("label")
			if let val = exist as? String {
				self.label = val
			}
			else {
				errors.append(FHIRValidationError(key: "label", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "label"))
		}
		if let exist = json["valueAddress"] {
			presentKeys.insert("valueAddress")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAddress = try Address(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAddress"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAddress", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAge"] {
			presentKeys.insert("valueAge")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAge = try Age(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAge"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAge", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAnnotation"] {
			presentKeys.insert("valueAnnotation")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAnnotation = try Annotation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAnnotation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAnnotation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueAttachment"] {
			presentKeys.insert("valueAttachment")
			if let val = exist as? FHIRJSON {
				do {
					self.valueAttachment = try Attachment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueAttachment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueAttachment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBase64Binary"] {
			presentKeys.insert("valueBase64Binary")
			if let val = exist as? String {
				self.valueBase64Binary = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueBase64Binary", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueBoolean"] {
			presentKeys.insert("valueBoolean")
			if let val = exist as? Bool {
				self.valueBoolean = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueBoolean", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCode"] {
			presentKeys.insert("valueCode")
			if let val = exist as? String {
				self.valueCode = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueCode", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCodeableConcept"] {
			presentKeys.insert("valueCodeableConcept")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCodeableConcept = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCodeableConcept"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCodeableConcept", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCoding"] {
			presentKeys.insert("valueCoding")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCoding = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCoding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCoding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueContactPoint"] {
			presentKeys.insert("valueContactPoint")
			if let val = exist as? FHIRJSON {
				do {
					self.valueContactPoint = try ContactPoint(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueContactPoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueContactPoint", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueCount"] {
			presentKeys.insert("valueCount")
			if let val = exist as? FHIRJSON {
				do {
					self.valueCount = try Count(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueCount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueCount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDate"] {
			presentKeys.insert("valueDate")
			if let val = exist as? String {
				self.valueDate = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDateTime"] {
			presentKeys.insert("valueDateTime")
			if let val = exist as? String {
				self.valueDateTime = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDecimal"] {
			presentKeys.insert("valueDecimal")
			if let val = exist as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueDecimal", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDistance"] {
			presentKeys.insert("valueDistance")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDistance = try Distance(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDistance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDistance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueDuration"] {
			presentKeys.insert("valueDuration")
			if let val = exist as? FHIRJSON {
				do {
					self.valueDuration = try Duration(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueDuration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueDuration", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueHumanName"] {
			presentKeys.insert("valueHumanName")
			if let val = exist as? FHIRJSON {
				do {
					self.valueHumanName = try HumanName(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueHumanName"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueHumanName", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueId"] {
			presentKeys.insert("valueId")
			if let val = exist as? String {
				self.valueId = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueId", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueIdentifier"] {
			presentKeys.insert("valueIdentifier")
			if let val = exist as? FHIRJSON {
				do {
					self.valueIdentifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueIdentifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInstant"] {
			presentKeys.insert("valueInstant")
			if let val = exist as? String {
				self.valueInstant = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueInstant", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueInteger"] {
			presentKeys.insert("valueInteger")
			if let val = exist as? Int {
				self.valueInteger = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueInteger", wants: Int.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMarkdown"] {
			presentKeys.insert("valueMarkdown")
			if let val = exist as? String {
				self.valueMarkdown = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueMarkdown", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMeta"] {
			presentKeys.insert("valueMeta")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMeta = try Meta(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMeta"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMeta", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueMoney"] {
			presentKeys.insert("valueMoney")
			if let val = exist as? FHIRJSON {
				do {
					self.valueMoney = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueMoney"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueMoney", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueOid"] {
			presentKeys.insert("valueOid")
			if let val = exist as? String {
				self.valueOid = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueOid", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePeriod"] {
			presentKeys.insert("valuePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.valuePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valuePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valuePositiveInt"] {
			presentKeys.insert("valuePositiveInt")
			if let val = exist as? UInt {
				self.valuePositiveInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valuePositiveInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueQuantity"] {
			presentKeys.insert("valueQuantity")
			if let val = exist as? FHIRJSON {
				do {
					self.valueQuantity = try Quantity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueQuantity"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueQuantity", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRange"] {
			presentKeys.insert("valueRange")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRange = try Range(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRange"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRange", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueRatio"] {
			presentKeys.insert("valueRatio")
			if let val = exist as? FHIRJSON {
				do {
					self.valueRatio = try Ratio(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueRatio"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueRatio", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueReference"] {
			presentKeys.insert("valueReference")
			if let val = exist as? FHIRJSON {
				do {
					self.valueReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSampledData"] {
			presentKeys.insert("valueSampledData")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSampledData = try SampledData(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSampledData"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSampledData", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSignature"] {
			presentKeys.insert("valueSignature")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSignature = try Signature(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSignature"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSignature", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueString"] {
			presentKeys.insert("valueString")
			if let val = exist as? String {
				self.valueString = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueString", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTime"] {
			presentKeys.insert("valueTime")
			if let val = exist as? String {
				self.valueTime = FHIRTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueTime", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueTiming"] {
			presentKeys.insert("valueTiming")
			if let val = exist as? FHIRJSON {
				do {
					self.valueTiming = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueTiming"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueTiming", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUnsignedInt"] {
			presentKeys.insert("valueUnsignedInt")
			if let val = exist as? UInt {
				self.valueUnsignedInt = val
			}
			else {
				errors.append(FHIRValidationError(key: "valueUnsignedInt", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueUri"] {
			presentKeys.insert("valueUri")
			if let val = exist as? String {
				self.valueUri = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueUri", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueBase64Binary && nil == self.valueBoolean && nil == self.valueCode && nil == self.valueDate && nil == self.valueDateTime && nil == self.valueDecimal && nil == self.valueId && nil == self.valueInstant && nil == self.valueInteger && nil == self.valueMarkdown && nil == self.valueOid && nil == self.valuePositiveInt && nil == self.valueString && nil == self.valueTime && nil == self.valueUnsignedInt && nil == self.valueUri && nil == self.valueAddress && nil == self.valueAge && nil == self.valueAnnotation && nil == self.valueAttachment && nil == self.valueCodeableConcept && nil == self.valueCoding && nil == self.valueContactPoint && nil == self.valueCount && nil == self.valueDistance && nil == self.valueDuration && nil == self.valueHumanName && nil == self.valueIdentifier && nil == self.valueMoney && nil == self.valuePeriod && nil == self.valueQuantity && nil == self.valueRange && nil == self.valueRatio && nil == self.valueReference && nil == self.valueSampledData && nil == self.valueSignature && nil == self.valueTiming && nil == self.valueMeta {
			errors.append(FHIRValidationError(missing: "value[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let label = self.label {
			json["label"] = label.asJSON()
		}
		if let valueAddress = self.valueAddress {
			json["valueAddress"] = valueAddress.asJSON(errors: &errors)
		}
		if let valueAge = self.valueAge {
			json["valueAge"] = valueAge.asJSON(errors: &errors)
		}
		if let valueAnnotation = self.valueAnnotation {
			json["valueAnnotation"] = valueAnnotation.asJSON(errors: &errors)
		}
		if let valueAttachment = self.valueAttachment {
			json["valueAttachment"] = valueAttachment.asJSON(errors: &errors)
		}
		if let valueBase64Binary = self.valueBase64Binary {
			json["valueBase64Binary"] = valueBase64Binary.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueCodeableConcept = self.valueCodeableConcept {
			json["valueCodeableConcept"] = valueCodeableConcept.asJSON(errors: &errors)
		}
		if let valueCoding = self.valueCoding {
			json["valueCoding"] = valueCoding.asJSON(errors: &errors)
		}
		if let valueContactPoint = self.valueContactPoint {
			json["valueContactPoint"] = valueContactPoint.asJSON(errors: &errors)
		}
		if let valueCount = self.valueCount {
			json["valueCount"] = valueCount.asJSON(errors: &errors)
		}
		if let valueDate = self.valueDate {
			json["valueDate"] = valueDate.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueDistance = self.valueDistance {
			json["valueDistance"] = valueDistance.asJSON(errors: &errors)
		}
		if let valueDuration = self.valueDuration {
			json["valueDuration"] = valueDuration.asJSON(errors: &errors)
		}
		if let valueHumanName = self.valueHumanName {
			json["valueHumanName"] = valueHumanName.asJSON(errors: &errors)
		}
		if let valueId = self.valueId {
			json["valueId"] = valueId.asJSON()
		}
		if let valueIdentifier = self.valueIdentifier {
			json["valueIdentifier"] = valueIdentifier.asJSON(errors: &errors)
		}
		if let valueInstant = self.valueInstant {
			json["valueInstant"] = valueInstant.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueMarkdown = self.valueMarkdown {
			json["valueMarkdown"] = valueMarkdown.asJSON()
		}
		if let valueMeta = self.valueMeta {
			json["valueMeta"] = valueMeta.asJSON(errors: &errors)
		}
		if let valueMoney = self.valueMoney {
			json["valueMoney"] = valueMoney.asJSON(errors: &errors)
		}
		if let valueOid = self.valueOid {
			json["valueOid"] = valueOid.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON(errors: &errors)
		}
		if let valuePositiveInt = self.valuePositiveInt {
			json["valuePositiveInt"] = valuePositiveInt.asJSON()
		}
		if let valueQuantity = self.valueQuantity {
			json["valueQuantity"] = valueQuantity.asJSON(errors: &errors)
		}
		if let valueRange = self.valueRange {
			json["valueRange"] = valueRange.asJSON(errors: &errors)
		}
		if let valueRatio = self.valueRatio {
			json["valueRatio"] = valueRatio.asJSON(errors: &errors)
		}
		if let valueReference = self.valueReference {
			json["valueReference"] = valueReference.asJSON(errors: &errors)
		}
		if let valueSampledData = self.valueSampledData {
			json["valueSampledData"] = valueSampledData.asJSON(errors: &errors)
		}
		if let valueSignature = self.valueSignature {
			json["valueSignature"] = valueSignature.asJSON(errors: &errors)
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueTime = self.valueTime {
			json["valueTime"] = valueTime.asJSON()
		}
		if let valueTiming = self.valueTiming {
			json["valueTiming"] = valueTiming.asJSON(errors: &errors)
		}
		if let valueUnsignedInt = self.valueUnsignedInt {
			json["valueUnsignedInt"] = valueUnsignedInt.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
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
	public var identity: String?
	
	/// Computable language of mapping.
	public var language: String?
	
	/// Details of the mapping.
	public var map: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identity: String, map: String) {
		self.init()
		self.identity = identity
		self.map = map
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["identity"] {
			presentKeys.insert("identity")
			if let val = exist as? String {
				self.identity = val
			}
			else {
				errors.append(FHIRValidationError(key: "identity", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identity"))
		}
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? String {
				self.language = val
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["map"] {
			presentKeys.insert("map")
			if let val = exist as? String {
				self.map = val
			}
			else {
				errors.append(FHIRValidationError(key: "map", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "map"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let identity = self.identity {
			json["identity"] = identity.asJSON()
		}
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let map = self.map {
			json["map"] = map.asJSON()
		}
		
		return json
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
	public var description_fhir: String?
	
	/// Element values that are used to distinguish the slices.
	public var discriminator: [String]?
	
	/// If elements must be in same order as slices.
	public var ordered: Bool?
	
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
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["discriminator"] {
			presentKeys.insert("discriminator")
			if let val = exist as? [String] {
				self.discriminator = val
			}
			else {
				errors.append(FHIRValidationError(key: "discriminator", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["ordered"] {
			presentKeys.insert("ordered")
			if let val = exist as? Bool {
				self.ordered = val
			}
			else {
				errors.append(FHIRValidationError(key: "ordered", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["rules"] {
			presentKeys.insert("rules")
			if let val = exist as? String {
				if let enumval = SlicingRules(rawValue: val) {
					self.rules = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "rules", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rules", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "rules"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let discriminator = self.discriminator {
			json["discriminator"] = discriminator.map() { $0.asJSON() }
		}
		if let ordered = self.ordered {
			json["ordered"] = ordered.asJSON()
		}
		if let rules = self.rules {
			json["rules"] = rules.rawValue
		}
		
		return json
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
	public var code: URL?
	
	/// Profile (StructureDefinition) to apply (or IG).
	public var profile: URL?
	
	/// Profile (StructureDefinition) to apply to reference target (or IG).
	public var targetProfile: URL?
	
	/// Whether this reference needs to be version specific or version independent, or whetehr either can be used.
	public var versioning: ReferenceVersionRules?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: URL) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["aggregation"] {
			presentKeys.insert("aggregation")
			if let val = exist as? [String] { var i = -1
				self.aggregation = val.map() { i += 1
					if let enumval = AggregationMode(rawValue: $0) { return enumval }
					errors.append(FHIRValidationError(key: "aggregation.\(i)", problem: "the value “\(val)” is not valid"))
					return nil
				}.filter() { nil != $0 }.map() { $0! }
			}
			else {
				errors.append(FHIRValidationError(key: "aggregation", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? String {
				self.profile = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["targetProfile"] {
			presentKeys.insert("targetProfile")
			if let val = exist as? String {
				self.targetProfile = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "targetProfile", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["versioning"] {
			presentKeys.insert("versioning")
			if let val = exist as? String {
				if let enumval = ReferenceVersionRules(rawValue: val) {
					self.versioning = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "versioning", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "versioning", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let aggregation = self.aggregation {
			json["aggregation"] = aggregation.map() { $0.rawValue }
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let targetProfile = self.targetProfile {
			json["targetProfile"] = targetProfile.asJSON()
		}
		if let versioning = self.versioning {
			json["versioning"] = versioning.rawValue
		}
		
		return json
	}
}

