//
//  ElementDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/ElementDefinition) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Definition of an element in a resource or extension.
 *
 *  Captures constraints on each element within the resource, profile, or extension.
 */
public class ElementDefinition: Element {
	override public class var resourceName: String {
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
	public var contentReference: NSURL?
	
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
	public var defaultValueDate: Date?
	
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
	public var defaultValueTime: Time?
	
	/// Specified value if missing from instance.
	public var defaultValueTiming: Timing?
	
	/// Specified value if missing from instance.
	public var defaultValueUnsignedInt: UInt?
	
	/// Specified value if missing from instance.
	public var defaultValueUri: NSURL?
	
	/// Full formal definition as narrative text.
	public var definition: String?
	
	/// Example value (as defined for type).
	public var exampleAddress: Address?
	
	/// Example value (as defined for type).
	public var exampleAge: Age?
	
	/// Example value (as defined for type).
	public var exampleAnnotation: Annotation?
	
	/// Example value (as defined for type).
	public var exampleAttachment: Attachment?
	
	/// Example value (as defined for type).
	public var exampleBase64Binary: Base64Binary?
	
	/// Example value (as defined for type).
	public var exampleBoolean: Bool?
	
	/// Example value (as defined for type).
	public var exampleCode: String?
	
	/// Example value (as defined for type).
	public var exampleCodeableConcept: CodeableConcept?
	
	/// Example value (as defined for type).
	public var exampleCoding: Coding?
	
	/// Example value (as defined for type).
	public var exampleContactPoint: ContactPoint?
	
	/// Example value (as defined for type).
	public var exampleCount: Count?
	
	/// Example value (as defined for type).
	public var exampleDate: Date?
	
	/// Example value (as defined for type).
	public var exampleDateTime: DateTime?
	
	/// Example value (as defined for type).
	public var exampleDecimal: NSDecimalNumber?
	
	/// Example value (as defined for type).
	public var exampleDistance: Distance?
	
	/// Example value (as defined for type).
	public var exampleDuration: Duration?
	
	/// Example value (as defined for type).
	public var exampleHumanName: HumanName?
	
	/// Example value (as defined for type).
	public var exampleId: String?
	
	/// Example value (as defined for type).
	public var exampleIdentifier: Identifier?
	
	/// Example value (as defined for type).
	public var exampleInstant: Instant?
	
	/// Example value (as defined for type).
	public var exampleInteger: Int?
	
	/// Example value (as defined for type).
	public var exampleMarkdown: String?
	
	/// Example value (as defined for type).
	public var exampleMeta: Meta?
	
	/// Example value (as defined for type).
	public var exampleMoney: Money?
	
	/// Example value (as defined for type).
	public var exampleOid: String?
	
	/// Example value (as defined for type).
	public var examplePeriod: Period?
	
	/// Example value (as defined for type).
	public var examplePositiveInt: UInt?
	
	/// Example value (as defined for type).
	public var exampleQuantity: Quantity?
	
	/// Example value (as defined for type).
	public var exampleRange: Range?
	
	/// Example value (as defined for type).
	public var exampleRatio: Ratio?
	
	/// Example value (as defined for type).
	public var exampleReference: Reference?
	
	/// Example value (as defined for type).
	public var exampleSampledData: SampledData?
	
	/// Example value (as defined for type).
	public var exampleSignature: Signature?
	
	/// Example value (as defined for type).
	public var exampleString: String?
	
	/// Example value (as defined for type).
	public var exampleTime: Time?
	
	/// Example value (as defined for type).
	public var exampleTiming: Timing?
	
	/// Example value (as defined for type).
	public var exampleUnsignedInt: UInt?
	
	/// Example value (as defined for type).
	public var exampleUri: NSURL?
	
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
	public var fixedDate: Date?
	
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
	public var fixedTime: Time?
	
	/// Value must be exactly this.
	public var fixedTiming: Timing?
	
	/// Value must be exactly this.
	public var fixedUnsignedInt: UInt?
	
	/// Value must be exactly this.
	public var fixedUri: NSURL?
	
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
	public var maxValueDate: Date?
	
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
	public var maxValueTime: Time?
	
	/// Maximum Allowed Value (for some types).
	public var maxValueUnsignedInt: UInt?
	
	/// Implicit meaning when this element is missing.
	public var meaningWhenMissing: String?
	
	/// Minimum Cardinality.
	public var min: Int?
	
	/// Minimum Allowed Value (for some types).
	public var minValueDate: Date?
	
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
	public var minValueTime: Time?
	
	/// Minimum Allowed Value (for some types).
	public var minValueUnsignedInt: UInt?
	
	/// If the element must supported.
	public var mustSupport: Bool?
	
	/// Name for this particular element definition (reference target).
	public var name: String?
	
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
	public var patternDate: Date?
	
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
	public var patternTime: Time?
	
	/// Value must have at least these property values.
	public var patternTiming: Timing?
	
	/// Value must have at least these property values.
	public var patternUnsignedInt: UInt?
	
	/// Value must have at least these property values.
	public var patternUri: NSURL?
	
	/// xmlAttr | xmlText | typeAttr | cdaText | xhtml.
	public var representation: [String]?
	
	/// Why this resource has been created.
	public var requirements: String?
	
	/// Concise definition for xml presentation.
	public var short: String?
	
	/// This element is sliced - slices follow.
	public var slicing: ElementDefinitionSlicing?
	
	/// Data type and Profile for this element.
	public var type: [ElementDefinitionType]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: String) {
		self.init(json: nil)
		self.path = path
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["alias"] {
				presentKeys.insert("alias")
				if let val = exist as? [String] {
					self.alias = val
				}
				else {
					errors.append(FHIRJSONError(key: "alias", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["base"] {
				presentKeys.insert("base")
				if let val = exist as? FHIRJSON {
					self.base = ElementDefinitionBase(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "base", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["binding"] {
				presentKeys.insert("binding")
				if let val = exist as? FHIRJSON {
					self.binding = ElementDefinitionBinding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "binding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? [FHIRJSON] {
					self.code = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["comments"] {
				presentKeys.insert("comments")
				if let val = exist as? String {
					self.comments = val
				}
				else {
					errors.append(FHIRJSONError(key: "comments", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.insert("condition")
				if let val = exist as? [String] {
					self.condition = val
				}
				else {
					errors.append(FHIRJSONError(key: "condition", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["constraint"] {
				presentKeys.insert("constraint")
				if let val = exist as? [FHIRJSON] {
					self.constraint = ElementDefinitionConstraint.from(val, owner: self) as? [ElementDefinitionConstraint]
				}
				else {
					errors.append(FHIRJSONError(key: "constraint", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contentReference"] {
				presentKeys.insert("contentReference")
				if let val = exist as? String {
					self.contentReference = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "contentReference", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueAddress"] {
				presentKeys.insert("defaultValueAddress")
				if let val = exist as? FHIRJSON {
					self.defaultValueAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueAge"] {
				presentKeys.insert("defaultValueAge")
				if let val = exist as? FHIRJSON {
					self.defaultValueAge = Age(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueAge", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueAnnotation"] {
				presentKeys.insert("defaultValueAnnotation")
				if let val = exist as? FHIRJSON {
					self.defaultValueAnnotation = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueAnnotation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueAttachment"] {
				presentKeys.insert("defaultValueAttachment")
				if let val = exist as? FHIRJSON {
					self.defaultValueAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueBase64Binary"] {
				presentKeys.insert("defaultValueBase64Binary")
				if let val = exist as? String {
					self.defaultValueBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueBase64Binary", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueBoolean"] {
				presentKeys.insert("defaultValueBoolean")
				if let val = exist as? Bool {
					self.defaultValueBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueCode"] {
				presentKeys.insert("defaultValueCode")
				if let val = exist as? String {
					self.defaultValueCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueCode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueCodeableConcept"] {
				presentKeys.insert("defaultValueCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.defaultValueCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueCoding"] {
				presentKeys.insert("defaultValueCoding")
				if let val = exist as? FHIRJSON {
					self.defaultValueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueContactPoint"] {
				presentKeys.insert("defaultValueContactPoint")
				if let val = exist as? FHIRJSON {
					self.defaultValueContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueContactPoint", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueCount"] {
				presentKeys.insert("defaultValueCount")
				if let val = exist as? FHIRJSON {
					self.defaultValueCount = Count(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueCount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueDate"] {
				presentKeys.insert("defaultValueDate")
				if let val = exist as? String {
					self.defaultValueDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueDateTime"] {
				presentKeys.insert("defaultValueDateTime")
				if let val = exist as? String {
					self.defaultValueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueDecimal"] {
				presentKeys.insert("defaultValueDecimal")
				if let val = exist as? NSNumber {
					self.defaultValueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueDistance"] {
				presentKeys.insert("defaultValueDistance")
				if let val = exist as? FHIRJSON {
					self.defaultValueDistance = Distance(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueDistance", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueDuration"] {
				presentKeys.insert("defaultValueDuration")
				if let val = exist as? FHIRJSON {
					self.defaultValueDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueHumanName"] {
				presentKeys.insert("defaultValueHumanName")
				if let val = exist as? FHIRJSON {
					self.defaultValueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueId"] {
				presentKeys.insert("defaultValueId")
				if let val = exist as? String {
					self.defaultValueId = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueIdentifier"] {
				presentKeys.insert("defaultValueIdentifier")
				if let val = exist as? FHIRJSON {
					self.defaultValueIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueInstant"] {
				presentKeys.insert("defaultValueInstant")
				if let val = exist as? String {
					self.defaultValueInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueInteger"] {
				presentKeys.insert("defaultValueInteger")
				if let val = exist as? Int {
					self.defaultValueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueMarkdown"] {
				presentKeys.insert("defaultValueMarkdown")
				if let val = exist as? String {
					self.defaultValueMarkdown = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueMarkdown", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueMeta"] {
				presentKeys.insert("defaultValueMeta")
				if let val = exist as? FHIRJSON {
					self.defaultValueMeta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueMeta", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueMoney"] {
				presentKeys.insert("defaultValueMoney")
				if let val = exist as? FHIRJSON {
					self.defaultValueMoney = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueMoney", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueOid"] {
				presentKeys.insert("defaultValueOid")
				if let val = exist as? String {
					self.defaultValueOid = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueOid", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValuePeriod"] {
				presentKeys.insert("defaultValuePeriod")
				if let val = exist as? FHIRJSON {
					self.defaultValuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValuePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValuePositiveInt"] {
				presentKeys.insert("defaultValuePositiveInt")
				if let val = exist as? UInt {
					self.defaultValuePositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValuePositiveInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueQuantity"] {
				presentKeys.insert("defaultValueQuantity")
				if let val = exist as? FHIRJSON {
					self.defaultValueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueRange"] {
				presentKeys.insert("defaultValueRange")
				if let val = exist as? FHIRJSON {
					self.defaultValueRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueRatio"] {
				presentKeys.insert("defaultValueRatio")
				if let val = exist as? FHIRJSON {
					self.defaultValueRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueRatio", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueReference"] {
				presentKeys.insert("defaultValueReference")
				if let val = exist as? FHIRJSON {
					self.defaultValueReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueSampledData"] {
				presentKeys.insert("defaultValueSampledData")
				if let val = exist as? FHIRJSON {
					self.defaultValueSampledData = SampledData(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueSampledData", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueSignature"] {
				presentKeys.insert("defaultValueSignature")
				if let val = exist as? FHIRJSON {
					self.defaultValueSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueSignature", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueString"] {
				presentKeys.insert("defaultValueString")
				if let val = exist as? String {
					self.defaultValueString = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueTime"] {
				presentKeys.insert("defaultValueTime")
				if let val = exist as? String {
					self.defaultValueTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueTiming"] {
				presentKeys.insert("defaultValueTiming")
				if let val = exist as? FHIRJSON {
					self.defaultValueTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueUnsignedInt"] {
				presentKeys.insert("defaultValueUnsignedInt")
				if let val = exist as? UInt {
					self.defaultValueUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["defaultValueUri"] {
				presentKeys.insert("defaultValueUri")
				if let val = exist as? String {
					self.defaultValueUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueUri", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? String {
					self.definition = val
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleAddress"] {
				presentKeys.insert("exampleAddress")
				if let val = exist as? FHIRJSON {
					self.exampleAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleAge"] {
				presentKeys.insert("exampleAge")
				if let val = exist as? FHIRJSON {
					self.exampleAge = Age(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleAge", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleAnnotation"] {
				presentKeys.insert("exampleAnnotation")
				if let val = exist as? FHIRJSON {
					self.exampleAnnotation = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleAnnotation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleAttachment"] {
				presentKeys.insert("exampleAttachment")
				if let val = exist as? FHIRJSON {
					self.exampleAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleBase64Binary"] {
				presentKeys.insert("exampleBase64Binary")
				if let val = exist as? String {
					self.exampleBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleBase64Binary", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleBoolean"] {
				presentKeys.insert("exampleBoolean")
				if let val = exist as? Bool {
					self.exampleBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "exampleBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleCode"] {
				presentKeys.insert("exampleCode")
				if let val = exist as? String {
					self.exampleCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "exampleCode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleCodeableConcept"] {
				presentKeys.insert("exampleCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.exampleCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleCoding"] {
				presentKeys.insert("exampleCoding")
				if let val = exist as? FHIRJSON {
					self.exampleCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleContactPoint"] {
				presentKeys.insert("exampleContactPoint")
				if let val = exist as? FHIRJSON {
					self.exampleContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleContactPoint", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleCount"] {
				presentKeys.insert("exampleCount")
				if let val = exist as? FHIRJSON {
					self.exampleCount = Count(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleCount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleDate"] {
				presentKeys.insert("exampleDate")
				if let val = exist as? String {
					self.exampleDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleDateTime"] {
				presentKeys.insert("exampleDateTime")
				if let val = exist as? String {
					self.exampleDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleDecimal"] {
				presentKeys.insert("exampleDecimal")
				if let val = exist as? NSNumber {
					self.exampleDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleDistance"] {
				presentKeys.insert("exampleDistance")
				if let val = exist as? FHIRJSON {
					self.exampleDistance = Distance(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleDistance", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleDuration"] {
				presentKeys.insert("exampleDuration")
				if let val = exist as? FHIRJSON {
					self.exampleDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleHumanName"] {
				presentKeys.insert("exampleHumanName")
				if let val = exist as? FHIRJSON {
					self.exampleHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleId"] {
				presentKeys.insert("exampleId")
				if let val = exist as? String {
					self.exampleId = val
				}
				else {
					errors.append(FHIRJSONError(key: "exampleId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleIdentifier"] {
				presentKeys.insert("exampleIdentifier")
				if let val = exist as? FHIRJSON {
					self.exampleIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleInstant"] {
				presentKeys.insert("exampleInstant")
				if let val = exist as? String {
					self.exampleInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleInteger"] {
				presentKeys.insert("exampleInteger")
				if let val = exist as? Int {
					self.exampleInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "exampleInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleMarkdown"] {
				presentKeys.insert("exampleMarkdown")
				if let val = exist as? String {
					self.exampleMarkdown = val
				}
				else {
					errors.append(FHIRJSONError(key: "exampleMarkdown", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleMeta"] {
				presentKeys.insert("exampleMeta")
				if let val = exist as? FHIRJSON {
					self.exampleMeta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleMeta", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleMoney"] {
				presentKeys.insert("exampleMoney")
				if let val = exist as? FHIRJSON {
					self.exampleMoney = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleMoney", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleOid"] {
				presentKeys.insert("exampleOid")
				if let val = exist as? String {
					self.exampleOid = val
				}
				else {
					errors.append(FHIRJSONError(key: "exampleOid", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["examplePeriod"] {
				presentKeys.insert("examplePeriod")
				if let val = exist as? FHIRJSON {
					self.examplePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "examplePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["examplePositiveInt"] {
				presentKeys.insert("examplePositiveInt")
				if let val = exist as? UInt {
					self.examplePositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "examplePositiveInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleQuantity"] {
				presentKeys.insert("exampleQuantity")
				if let val = exist as? FHIRJSON {
					self.exampleQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleRange"] {
				presentKeys.insert("exampleRange")
				if let val = exist as? FHIRJSON {
					self.exampleRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleRatio"] {
				presentKeys.insert("exampleRatio")
				if let val = exist as? FHIRJSON {
					self.exampleRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleRatio", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleReference"] {
				presentKeys.insert("exampleReference")
				if let val = exist as? FHIRJSON {
					self.exampleReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleSampledData"] {
				presentKeys.insert("exampleSampledData")
				if let val = exist as? FHIRJSON {
					self.exampleSampledData = SampledData(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleSampledData", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleSignature"] {
				presentKeys.insert("exampleSignature")
				if let val = exist as? FHIRJSON {
					self.exampleSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleSignature", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleString"] {
				presentKeys.insert("exampleString")
				if let val = exist as? String {
					self.exampleString = val
				}
				else {
					errors.append(FHIRJSONError(key: "exampleString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleTime"] {
				presentKeys.insert("exampleTime")
				if let val = exist as? String {
					self.exampleTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleTiming"] {
				presentKeys.insert("exampleTiming")
				if let val = exist as? FHIRJSON {
					self.exampleTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleUnsignedInt"] {
				presentKeys.insert("exampleUnsignedInt")
				if let val = exist as? UInt {
					self.exampleUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "exampleUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["exampleUri"] {
				presentKeys.insert("exampleUri")
				if let val = exist as? String {
					self.exampleUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleUri", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedAddress"] {
				presentKeys.insert("fixedAddress")
				if let val = exist as? FHIRJSON {
					self.fixedAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedAge"] {
				presentKeys.insert("fixedAge")
				if let val = exist as? FHIRJSON {
					self.fixedAge = Age(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedAge", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedAnnotation"] {
				presentKeys.insert("fixedAnnotation")
				if let val = exist as? FHIRJSON {
					self.fixedAnnotation = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedAnnotation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedAttachment"] {
				presentKeys.insert("fixedAttachment")
				if let val = exist as? FHIRJSON {
					self.fixedAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedBase64Binary"] {
				presentKeys.insert("fixedBase64Binary")
				if let val = exist as? String {
					self.fixedBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedBase64Binary", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedBoolean"] {
				presentKeys.insert("fixedBoolean")
				if let val = exist as? Bool {
					self.fixedBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "fixedBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedCode"] {
				presentKeys.insert("fixedCode")
				if let val = exist as? String {
					self.fixedCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "fixedCode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedCodeableConcept"] {
				presentKeys.insert("fixedCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.fixedCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedCoding"] {
				presentKeys.insert("fixedCoding")
				if let val = exist as? FHIRJSON {
					self.fixedCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedContactPoint"] {
				presentKeys.insert("fixedContactPoint")
				if let val = exist as? FHIRJSON {
					self.fixedContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedContactPoint", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedCount"] {
				presentKeys.insert("fixedCount")
				if let val = exist as? FHIRJSON {
					self.fixedCount = Count(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedCount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedDate"] {
				presentKeys.insert("fixedDate")
				if let val = exist as? String {
					self.fixedDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedDateTime"] {
				presentKeys.insert("fixedDateTime")
				if let val = exist as? String {
					self.fixedDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedDecimal"] {
				presentKeys.insert("fixedDecimal")
				if let val = exist as? NSNumber {
					self.fixedDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedDistance"] {
				presentKeys.insert("fixedDistance")
				if let val = exist as? FHIRJSON {
					self.fixedDistance = Distance(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedDistance", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedDuration"] {
				presentKeys.insert("fixedDuration")
				if let val = exist as? FHIRJSON {
					self.fixedDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedHumanName"] {
				presentKeys.insert("fixedHumanName")
				if let val = exist as? FHIRJSON {
					self.fixedHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedId"] {
				presentKeys.insert("fixedId")
				if let val = exist as? String {
					self.fixedId = val
				}
				else {
					errors.append(FHIRJSONError(key: "fixedId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedIdentifier"] {
				presentKeys.insert("fixedIdentifier")
				if let val = exist as? FHIRJSON {
					self.fixedIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedInstant"] {
				presentKeys.insert("fixedInstant")
				if let val = exist as? String {
					self.fixedInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedInteger"] {
				presentKeys.insert("fixedInteger")
				if let val = exist as? Int {
					self.fixedInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "fixedInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedMarkdown"] {
				presentKeys.insert("fixedMarkdown")
				if let val = exist as? String {
					self.fixedMarkdown = val
				}
				else {
					errors.append(FHIRJSONError(key: "fixedMarkdown", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedMeta"] {
				presentKeys.insert("fixedMeta")
				if let val = exist as? FHIRJSON {
					self.fixedMeta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedMeta", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedMoney"] {
				presentKeys.insert("fixedMoney")
				if let val = exist as? FHIRJSON {
					self.fixedMoney = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedMoney", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedOid"] {
				presentKeys.insert("fixedOid")
				if let val = exist as? String {
					self.fixedOid = val
				}
				else {
					errors.append(FHIRJSONError(key: "fixedOid", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedPeriod"] {
				presentKeys.insert("fixedPeriod")
				if let val = exist as? FHIRJSON {
					self.fixedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedPositiveInt"] {
				presentKeys.insert("fixedPositiveInt")
				if let val = exist as? UInt {
					self.fixedPositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "fixedPositiveInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedQuantity"] {
				presentKeys.insert("fixedQuantity")
				if let val = exist as? FHIRJSON {
					self.fixedQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedRange"] {
				presentKeys.insert("fixedRange")
				if let val = exist as? FHIRJSON {
					self.fixedRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedRatio"] {
				presentKeys.insert("fixedRatio")
				if let val = exist as? FHIRJSON {
					self.fixedRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedRatio", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedReference"] {
				presentKeys.insert("fixedReference")
				if let val = exist as? FHIRJSON {
					self.fixedReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedSampledData"] {
				presentKeys.insert("fixedSampledData")
				if let val = exist as? FHIRJSON {
					self.fixedSampledData = SampledData(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedSampledData", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedSignature"] {
				presentKeys.insert("fixedSignature")
				if let val = exist as? FHIRJSON {
					self.fixedSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedSignature", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedString"] {
				presentKeys.insert("fixedString")
				if let val = exist as? String {
					self.fixedString = val
				}
				else {
					errors.append(FHIRJSONError(key: "fixedString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedTime"] {
				presentKeys.insert("fixedTime")
				if let val = exist as? String {
					self.fixedTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedTiming"] {
				presentKeys.insert("fixedTiming")
				if let val = exist as? FHIRJSON {
					self.fixedTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedUnsignedInt"] {
				presentKeys.insert("fixedUnsignedInt")
				if let val = exist as? UInt {
					self.fixedUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "fixedUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fixedUri"] {
				presentKeys.insert("fixedUri")
				if let val = exist as? String {
					self.fixedUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedUri", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["isModifier"] {
				presentKeys.insert("isModifier")
				if let val = exist as? Bool {
					self.isModifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "isModifier", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["isSummary"] {
				presentKeys.insert("isSummary")
				if let val = exist as? Bool {
					self.isSummary = val
				}
				else {
					errors.append(FHIRJSONError(key: "isSummary", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["label"] {
				presentKeys.insert("label")
				if let val = exist as? String {
					self.label = val
				}
				else {
					errors.append(FHIRJSONError(key: "label", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mapping"] {
				presentKeys.insert("mapping")
				if let val = exist as? [FHIRJSON] {
					self.mapping = ElementDefinitionMapping.from(val, owner: self) as? [ElementDefinitionMapping]
				}
				else {
					errors.append(FHIRJSONError(key: "mapping", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["max"] {
				presentKeys.insert("max")
				if let val = exist as? String {
					self.max = val
				}
				else {
					errors.append(FHIRJSONError(key: "max", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxLength"] {
				presentKeys.insert("maxLength")
				if let val = exist as? Int {
					self.maxLength = val
				}
				else {
					errors.append(FHIRJSONError(key: "maxLength", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxValueDate"] {
				presentKeys.insert("maxValueDate")
				if let val = exist as? String {
					self.maxValueDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "maxValueDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxValueDateTime"] {
				presentKeys.insert("maxValueDateTime")
				if let val = exist as? String {
					self.maxValueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "maxValueDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxValueDecimal"] {
				presentKeys.insert("maxValueDecimal")
				if let val = exist as? NSNumber {
					self.maxValueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "maxValueDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxValueInstant"] {
				presentKeys.insert("maxValueInstant")
				if let val = exist as? String {
					self.maxValueInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "maxValueInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxValueInteger"] {
				presentKeys.insert("maxValueInteger")
				if let val = exist as? Int {
					self.maxValueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "maxValueInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxValuePositiveInt"] {
				presentKeys.insert("maxValuePositiveInt")
				if let val = exist as? UInt {
					self.maxValuePositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "maxValuePositiveInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxValueQuantity"] {
				presentKeys.insert("maxValueQuantity")
				if let val = exist as? FHIRJSON {
					self.maxValueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "maxValueQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxValueTime"] {
				presentKeys.insert("maxValueTime")
				if let val = exist as? String {
					self.maxValueTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "maxValueTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["maxValueUnsignedInt"] {
				presentKeys.insert("maxValueUnsignedInt")
				if let val = exist as? UInt {
					self.maxValueUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "maxValueUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["meaningWhenMissing"] {
				presentKeys.insert("meaningWhenMissing")
				if let val = exist as? String {
					self.meaningWhenMissing = val
				}
				else {
					errors.append(FHIRJSONError(key: "meaningWhenMissing", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["min"] {
				presentKeys.insert("min")
				if let val = exist as? Int {
					self.min = val
				}
				else {
					errors.append(FHIRJSONError(key: "min", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minValueDate"] {
				presentKeys.insert("minValueDate")
				if let val = exist as? String {
					self.minValueDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "minValueDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minValueDateTime"] {
				presentKeys.insert("minValueDateTime")
				if let val = exist as? String {
					self.minValueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "minValueDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minValueDecimal"] {
				presentKeys.insert("minValueDecimal")
				if let val = exist as? NSNumber {
					self.minValueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "minValueDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minValueInstant"] {
				presentKeys.insert("minValueInstant")
				if let val = exist as? String {
					self.minValueInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "minValueInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minValueInteger"] {
				presentKeys.insert("minValueInteger")
				if let val = exist as? Int {
					self.minValueInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "minValueInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minValuePositiveInt"] {
				presentKeys.insert("minValuePositiveInt")
				if let val = exist as? UInt {
					self.minValuePositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "minValuePositiveInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minValueQuantity"] {
				presentKeys.insert("minValueQuantity")
				if let val = exist as? FHIRJSON {
					self.minValueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "minValueQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minValueTime"] {
				presentKeys.insert("minValueTime")
				if let val = exist as? String {
					self.minValueTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "minValueTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["minValueUnsignedInt"] {
				presentKeys.insert("minValueUnsignedInt")
				if let val = exist as? UInt {
					self.minValueUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "minValueUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["mustSupport"] {
				presentKeys.insert("mustSupport")
				if let val = exist as? Bool {
					self.mustSupport = val
				}
				else {
					errors.append(FHIRJSONError(key: "mustSupport", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "path"))
			}
			if let exist: AnyObject = js["patternAddress"] {
				presentKeys.insert("patternAddress")
				if let val = exist as? FHIRJSON {
					self.patternAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternAddress", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternAge"] {
				presentKeys.insert("patternAge")
				if let val = exist as? FHIRJSON {
					self.patternAge = Age(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternAge", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternAnnotation"] {
				presentKeys.insert("patternAnnotation")
				if let val = exist as? FHIRJSON {
					self.patternAnnotation = Annotation(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternAnnotation", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternAttachment"] {
				presentKeys.insert("patternAttachment")
				if let val = exist as? FHIRJSON {
					self.patternAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternAttachment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternBase64Binary"] {
				presentKeys.insert("patternBase64Binary")
				if let val = exist as? String {
					self.patternBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "patternBase64Binary", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternBoolean"] {
				presentKeys.insert("patternBoolean")
				if let val = exist as? Bool {
					self.patternBoolean = val
				}
				else {
					errors.append(FHIRJSONError(key: "patternBoolean", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternCode"] {
				presentKeys.insert("patternCode")
				if let val = exist as? String {
					self.patternCode = val
				}
				else {
					errors.append(FHIRJSONError(key: "patternCode", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternCodeableConcept"] {
				presentKeys.insert("patternCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.patternCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternCoding"] {
				presentKeys.insert("patternCoding")
				if let val = exist as? FHIRJSON {
					self.patternCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternCoding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternContactPoint"] {
				presentKeys.insert("patternContactPoint")
				if let val = exist as? FHIRJSON {
					self.patternContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternContactPoint", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternCount"] {
				presentKeys.insert("patternCount")
				if let val = exist as? FHIRJSON {
					self.patternCount = Count(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternCount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternDate"] {
				presentKeys.insert("patternDate")
				if let val = exist as? String {
					self.patternDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "patternDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternDateTime"] {
				presentKeys.insert("patternDateTime")
				if let val = exist as? String {
					self.patternDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "patternDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternDecimal"] {
				presentKeys.insert("patternDecimal")
				if let val = exist as? NSNumber {
					self.patternDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "patternDecimal", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternDistance"] {
				presentKeys.insert("patternDistance")
				if let val = exist as? FHIRJSON {
					self.patternDistance = Distance(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternDistance", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternDuration"] {
				presentKeys.insert("patternDuration")
				if let val = exist as? FHIRJSON {
					self.patternDuration = Duration(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternDuration", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternHumanName"] {
				presentKeys.insert("patternHumanName")
				if let val = exist as? FHIRJSON {
					self.patternHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternId"] {
				presentKeys.insert("patternId")
				if let val = exist as? String {
					self.patternId = val
				}
				else {
					errors.append(FHIRJSONError(key: "patternId", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternIdentifier"] {
				presentKeys.insert("patternIdentifier")
				if let val = exist as? FHIRJSON {
					self.patternIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternInstant"] {
				presentKeys.insert("patternInstant")
				if let val = exist as? String {
					self.patternInstant = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "patternInstant", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternInteger"] {
				presentKeys.insert("patternInteger")
				if let val = exist as? Int {
					self.patternInteger = val
				}
				else {
					errors.append(FHIRJSONError(key: "patternInteger", wants: Int.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternMarkdown"] {
				presentKeys.insert("patternMarkdown")
				if let val = exist as? String {
					self.patternMarkdown = val
				}
				else {
					errors.append(FHIRJSONError(key: "patternMarkdown", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternMeta"] {
				presentKeys.insert("patternMeta")
				if let val = exist as? FHIRJSON {
					self.patternMeta = Meta(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternMeta", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternMoney"] {
				presentKeys.insert("patternMoney")
				if let val = exist as? FHIRJSON {
					self.patternMoney = Money(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternMoney", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternOid"] {
				presentKeys.insert("patternOid")
				if let val = exist as? String {
					self.patternOid = val
				}
				else {
					errors.append(FHIRJSONError(key: "patternOid", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternPeriod"] {
				presentKeys.insert("patternPeriod")
				if let val = exist as? FHIRJSON {
					self.patternPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternPositiveInt"] {
				presentKeys.insert("patternPositiveInt")
				if let val = exist as? UInt {
					self.patternPositiveInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "patternPositiveInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternQuantity"] {
				presentKeys.insert("patternQuantity")
				if let val = exist as? FHIRJSON {
					self.patternQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternQuantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternRange"] {
				presentKeys.insert("patternRange")
				if let val = exist as? FHIRJSON {
					self.patternRange = Range(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternRange", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternRatio"] {
				presentKeys.insert("patternRatio")
				if let val = exist as? FHIRJSON {
					self.patternRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternRatio", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternReference"] {
				presentKeys.insert("patternReference")
				if let val = exist as? FHIRJSON {
					self.patternReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternSampledData"] {
				presentKeys.insert("patternSampledData")
				if let val = exist as? FHIRJSON {
					self.patternSampledData = SampledData(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternSampledData", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternSignature"] {
				presentKeys.insert("patternSignature")
				if let val = exist as? FHIRJSON {
					self.patternSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternSignature", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternString"] {
				presentKeys.insert("patternString")
				if let val = exist as? String {
					self.patternString = val
				}
				else {
					errors.append(FHIRJSONError(key: "patternString", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternTime"] {
				presentKeys.insert("patternTime")
				if let val = exist as? String {
					self.patternTime = Time(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "patternTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternTiming"] {
				presentKeys.insert("patternTiming")
				if let val = exist as? FHIRJSON {
					self.patternTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternTiming", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternUnsignedInt"] {
				presentKeys.insert("patternUnsignedInt")
				if let val = exist as? UInt {
					self.patternUnsignedInt = val
				}
				else {
					errors.append(FHIRJSONError(key: "patternUnsignedInt", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patternUri"] {
				presentKeys.insert("patternUri")
				if let val = exist as? String {
					self.patternUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "patternUri", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["representation"] {
				presentKeys.insert("representation")
				if let val = exist as? [String] {
					self.representation = val
				}
				else {
					errors.append(FHIRJSONError(key: "representation", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.insert("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(FHIRJSONError(key: "requirements", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["short"] {
				presentKeys.insert("short")
				if let val = exist as? String {
					self.short = val
				}
				else {
					errors.append(FHIRJSONError(key: "short", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["slicing"] {
				presentKeys.insert("slicing")
				if let val = exist as? FHIRJSON {
					self.slicing = ElementDefinitionSlicing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "slicing", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [FHIRJSON] {
					self.type = ElementDefinitionType.from(val, owner: self) as? [ElementDefinitionType]
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let alias = self.alias {
			var arr = [AnyObject]()
			for val in alias {
				arr.append(val.asJSON())
			}
			json["alias"] = arr
		}
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let binding = self.binding {
			json["binding"] = binding.asJSON()
		}
		if let code = self.code {
			json["code"] = Coding.asJSONArray(code)
		}
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let condition = self.condition {
			var arr = [AnyObject]()
			for val in condition {
				arr.append(val.asJSON())
			}
			json["condition"] = arr
		}
		if let constraint = self.constraint {
			json["constraint"] = ElementDefinitionConstraint.asJSONArray(constraint)
		}
		if let contentReference = self.contentReference {
			json["contentReference"] = contentReference.asJSON()
		}
		if let defaultValueAddress = self.defaultValueAddress {
			json["defaultValueAddress"] = defaultValueAddress.asJSON()
		}
		if let defaultValueAge = self.defaultValueAge {
			json["defaultValueAge"] = defaultValueAge.asJSON()
		}
		if let defaultValueAnnotation = self.defaultValueAnnotation {
			json["defaultValueAnnotation"] = defaultValueAnnotation.asJSON()
		}
		if let defaultValueAttachment = self.defaultValueAttachment {
			json["defaultValueAttachment"] = defaultValueAttachment.asJSON()
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
			json["defaultValueCodeableConcept"] = defaultValueCodeableConcept.asJSON()
		}
		if let defaultValueCoding = self.defaultValueCoding {
			json["defaultValueCoding"] = defaultValueCoding.asJSON()
		}
		if let defaultValueContactPoint = self.defaultValueContactPoint {
			json["defaultValueContactPoint"] = defaultValueContactPoint.asJSON()
		}
		if let defaultValueCount = self.defaultValueCount {
			json["defaultValueCount"] = defaultValueCount.asJSON()
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
			json["defaultValueDistance"] = defaultValueDistance.asJSON()
		}
		if let defaultValueDuration = self.defaultValueDuration {
			json["defaultValueDuration"] = defaultValueDuration.asJSON()
		}
		if let defaultValueHumanName = self.defaultValueHumanName {
			json["defaultValueHumanName"] = defaultValueHumanName.asJSON()
		}
		if let defaultValueId = self.defaultValueId {
			json["defaultValueId"] = defaultValueId.asJSON()
		}
		if let defaultValueIdentifier = self.defaultValueIdentifier {
			json["defaultValueIdentifier"] = defaultValueIdentifier.asJSON()
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
			json["defaultValueMeta"] = defaultValueMeta.asJSON()
		}
		if let defaultValueMoney = self.defaultValueMoney {
			json["defaultValueMoney"] = defaultValueMoney.asJSON()
		}
		if let defaultValueOid = self.defaultValueOid {
			json["defaultValueOid"] = defaultValueOid.asJSON()
		}
		if let defaultValuePeriod = self.defaultValuePeriod {
			json["defaultValuePeriod"] = defaultValuePeriod.asJSON()
		}
		if let defaultValuePositiveInt = self.defaultValuePositiveInt {
			json["defaultValuePositiveInt"] = defaultValuePositiveInt.asJSON()
		}
		if let defaultValueQuantity = self.defaultValueQuantity {
			json["defaultValueQuantity"] = defaultValueQuantity.asJSON()
		}
		if let defaultValueRange = self.defaultValueRange {
			json["defaultValueRange"] = defaultValueRange.asJSON()
		}
		if let defaultValueRatio = self.defaultValueRatio {
			json["defaultValueRatio"] = defaultValueRatio.asJSON()
		}
		if let defaultValueReference = self.defaultValueReference {
			json["defaultValueReference"] = defaultValueReference.asJSON()
		}
		if let defaultValueSampledData = self.defaultValueSampledData {
			json["defaultValueSampledData"] = defaultValueSampledData.asJSON()
		}
		if let defaultValueSignature = self.defaultValueSignature {
			json["defaultValueSignature"] = defaultValueSignature.asJSON()
		}
		if let defaultValueString = self.defaultValueString {
			json["defaultValueString"] = defaultValueString.asJSON()
		}
		if let defaultValueTime = self.defaultValueTime {
			json["defaultValueTime"] = defaultValueTime.asJSON()
		}
		if let defaultValueTiming = self.defaultValueTiming {
			json["defaultValueTiming"] = defaultValueTiming.asJSON()
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
		if let exampleAddress = self.exampleAddress {
			json["exampleAddress"] = exampleAddress.asJSON()
		}
		if let exampleAge = self.exampleAge {
			json["exampleAge"] = exampleAge.asJSON()
		}
		if let exampleAnnotation = self.exampleAnnotation {
			json["exampleAnnotation"] = exampleAnnotation.asJSON()
		}
		if let exampleAttachment = self.exampleAttachment {
			json["exampleAttachment"] = exampleAttachment.asJSON()
		}
		if let exampleBase64Binary = self.exampleBase64Binary {
			json["exampleBase64Binary"] = exampleBase64Binary.asJSON()
		}
		if let exampleBoolean = self.exampleBoolean {
			json["exampleBoolean"] = exampleBoolean.asJSON()
		}
		if let exampleCode = self.exampleCode {
			json["exampleCode"] = exampleCode.asJSON()
		}
		if let exampleCodeableConcept = self.exampleCodeableConcept {
			json["exampleCodeableConcept"] = exampleCodeableConcept.asJSON()
		}
		if let exampleCoding = self.exampleCoding {
			json["exampleCoding"] = exampleCoding.asJSON()
		}
		if let exampleContactPoint = self.exampleContactPoint {
			json["exampleContactPoint"] = exampleContactPoint.asJSON()
		}
		if let exampleCount = self.exampleCount {
			json["exampleCount"] = exampleCount.asJSON()
		}
		if let exampleDate = self.exampleDate {
			json["exampleDate"] = exampleDate.asJSON()
		}
		if let exampleDateTime = self.exampleDateTime {
			json["exampleDateTime"] = exampleDateTime.asJSON()
		}
		if let exampleDecimal = self.exampleDecimal {
			json["exampleDecimal"] = exampleDecimal.asJSON()
		}
		if let exampleDistance = self.exampleDistance {
			json["exampleDistance"] = exampleDistance.asJSON()
		}
		if let exampleDuration = self.exampleDuration {
			json["exampleDuration"] = exampleDuration.asJSON()
		}
		if let exampleHumanName = self.exampleHumanName {
			json["exampleHumanName"] = exampleHumanName.asJSON()
		}
		if let exampleId = self.exampleId {
			json["exampleId"] = exampleId.asJSON()
		}
		if let exampleIdentifier = self.exampleIdentifier {
			json["exampleIdentifier"] = exampleIdentifier.asJSON()
		}
		if let exampleInstant = self.exampleInstant {
			json["exampleInstant"] = exampleInstant.asJSON()
		}
		if let exampleInteger = self.exampleInteger {
			json["exampleInteger"] = exampleInteger.asJSON()
		}
		if let exampleMarkdown = self.exampleMarkdown {
			json["exampleMarkdown"] = exampleMarkdown.asJSON()
		}
		if let exampleMeta = self.exampleMeta {
			json["exampleMeta"] = exampleMeta.asJSON()
		}
		if let exampleMoney = self.exampleMoney {
			json["exampleMoney"] = exampleMoney.asJSON()
		}
		if let exampleOid = self.exampleOid {
			json["exampleOid"] = exampleOid.asJSON()
		}
		if let examplePeriod = self.examplePeriod {
			json["examplePeriod"] = examplePeriod.asJSON()
		}
		if let examplePositiveInt = self.examplePositiveInt {
			json["examplePositiveInt"] = examplePositiveInt.asJSON()
		}
		if let exampleQuantity = self.exampleQuantity {
			json["exampleQuantity"] = exampleQuantity.asJSON()
		}
		if let exampleRange = self.exampleRange {
			json["exampleRange"] = exampleRange.asJSON()
		}
		if let exampleRatio = self.exampleRatio {
			json["exampleRatio"] = exampleRatio.asJSON()
		}
		if let exampleReference = self.exampleReference {
			json["exampleReference"] = exampleReference.asJSON()
		}
		if let exampleSampledData = self.exampleSampledData {
			json["exampleSampledData"] = exampleSampledData.asJSON()
		}
		if let exampleSignature = self.exampleSignature {
			json["exampleSignature"] = exampleSignature.asJSON()
		}
		if let exampleString = self.exampleString {
			json["exampleString"] = exampleString.asJSON()
		}
		if let exampleTime = self.exampleTime {
			json["exampleTime"] = exampleTime.asJSON()
		}
		if let exampleTiming = self.exampleTiming {
			json["exampleTiming"] = exampleTiming.asJSON()
		}
		if let exampleUnsignedInt = self.exampleUnsignedInt {
			json["exampleUnsignedInt"] = exampleUnsignedInt.asJSON()
		}
		if let exampleUri = self.exampleUri {
			json["exampleUri"] = exampleUri.asJSON()
		}
		if let fixedAddress = self.fixedAddress {
			json["fixedAddress"] = fixedAddress.asJSON()
		}
		if let fixedAge = self.fixedAge {
			json["fixedAge"] = fixedAge.asJSON()
		}
		if let fixedAnnotation = self.fixedAnnotation {
			json["fixedAnnotation"] = fixedAnnotation.asJSON()
		}
		if let fixedAttachment = self.fixedAttachment {
			json["fixedAttachment"] = fixedAttachment.asJSON()
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
			json["fixedCodeableConcept"] = fixedCodeableConcept.asJSON()
		}
		if let fixedCoding = self.fixedCoding {
			json["fixedCoding"] = fixedCoding.asJSON()
		}
		if let fixedContactPoint = self.fixedContactPoint {
			json["fixedContactPoint"] = fixedContactPoint.asJSON()
		}
		if let fixedCount = self.fixedCount {
			json["fixedCount"] = fixedCount.asJSON()
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
			json["fixedDistance"] = fixedDistance.asJSON()
		}
		if let fixedDuration = self.fixedDuration {
			json["fixedDuration"] = fixedDuration.asJSON()
		}
		if let fixedHumanName = self.fixedHumanName {
			json["fixedHumanName"] = fixedHumanName.asJSON()
		}
		if let fixedId = self.fixedId {
			json["fixedId"] = fixedId.asJSON()
		}
		if let fixedIdentifier = self.fixedIdentifier {
			json["fixedIdentifier"] = fixedIdentifier.asJSON()
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
			json["fixedMeta"] = fixedMeta.asJSON()
		}
		if let fixedMoney = self.fixedMoney {
			json["fixedMoney"] = fixedMoney.asJSON()
		}
		if let fixedOid = self.fixedOid {
			json["fixedOid"] = fixedOid.asJSON()
		}
		if let fixedPeriod = self.fixedPeriod {
			json["fixedPeriod"] = fixedPeriod.asJSON()
		}
		if let fixedPositiveInt = self.fixedPositiveInt {
			json["fixedPositiveInt"] = fixedPositiveInt.asJSON()
		}
		if let fixedQuantity = self.fixedQuantity {
			json["fixedQuantity"] = fixedQuantity.asJSON()
		}
		if let fixedRange = self.fixedRange {
			json["fixedRange"] = fixedRange.asJSON()
		}
		if let fixedRatio = self.fixedRatio {
			json["fixedRatio"] = fixedRatio.asJSON()
		}
		if let fixedReference = self.fixedReference {
			json["fixedReference"] = fixedReference.asJSON()
		}
		if let fixedSampledData = self.fixedSampledData {
			json["fixedSampledData"] = fixedSampledData.asJSON()
		}
		if let fixedSignature = self.fixedSignature {
			json["fixedSignature"] = fixedSignature.asJSON()
		}
		if let fixedString = self.fixedString {
			json["fixedString"] = fixedString.asJSON()
		}
		if let fixedTime = self.fixedTime {
			json["fixedTime"] = fixedTime.asJSON()
		}
		if let fixedTiming = self.fixedTiming {
			json["fixedTiming"] = fixedTiming.asJSON()
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
			json["mapping"] = ElementDefinitionMapping.asJSONArray(mapping)
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
			json["maxValueQuantity"] = maxValueQuantity.asJSON()
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
			json["minValueQuantity"] = minValueQuantity.asJSON()
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
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let patternAddress = self.patternAddress {
			json["patternAddress"] = patternAddress.asJSON()
		}
		if let patternAge = self.patternAge {
			json["patternAge"] = patternAge.asJSON()
		}
		if let patternAnnotation = self.patternAnnotation {
			json["patternAnnotation"] = patternAnnotation.asJSON()
		}
		if let patternAttachment = self.patternAttachment {
			json["patternAttachment"] = patternAttachment.asJSON()
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
			json["patternCodeableConcept"] = patternCodeableConcept.asJSON()
		}
		if let patternCoding = self.patternCoding {
			json["patternCoding"] = patternCoding.asJSON()
		}
		if let patternContactPoint = self.patternContactPoint {
			json["patternContactPoint"] = patternContactPoint.asJSON()
		}
		if let patternCount = self.patternCount {
			json["patternCount"] = patternCount.asJSON()
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
			json["patternDistance"] = patternDistance.asJSON()
		}
		if let patternDuration = self.patternDuration {
			json["patternDuration"] = patternDuration.asJSON()
		}
		if let patternHumanName = self.patternHumanName {
			json["patternHumanName"] = patternHumanName.asJSON()
		}
		if let patternId = self.patternId {
			json["patternId"] = patternId.asJSON()
		}
		if let patternIdentifier = self.patternIdentifier {
			json["patternIdentifier"] = patternIdentifier.asJSON()
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
			json["patternMeta"] = patternMeta.asJSON()
		}
		if let patternMoney = self.patternMoney {
			json["patternMoney"] = patternMoney.asJSON()
		}
		if let patternOid = self.patternOid {
			json["patternOid"] = patternOid.asJSON()
		}
		if let patternPeriod = self.patternPeriod {
			json["patternPeriod"] = patternPeriod.asJSON()
		}
		if let patternPositiveInt = self.patternPositiveInt {
			json["patternPositiveInt"] = patternPositiveInt.asJSON()
		}
		if let patternQuantity = self.patternQuantity {
			json["patternQuantity"] = patternQuantity.asJSON()
		}
		if let patternRange = self.patternRange {
			json["patternRange"] = patternRange.asJSON()
		}
		if let patternRatio = self.patternRatio {
			json["patternRatio"] = patternRatio.asJSON()
		}
		if let patternReference = self.patternReference {
			json["patternReference"] = patternReference.asJSON()
		}
		if let patternSampledData = self.patternSampledData {
			json["patternSampledData"] = patternSampledData.asJSON()
		}
		if let patternSignature = self.patternSignature {
			json["patternSignature"] = patternSignature.asJSON()
		}
		if let patternString = self.patternString {
			json["patternString"] = patternString.asJSON()
		}
		if let patternTime = self.patternTime {
			json["patternTime"] = patternTime.asJSON()
		}
		if let patternTiming = self.patternTiming {
			json["patternTiming"] = patternTiming.asJSON()
		}
		if let patternUnsignedInt = self.patternUnsignedInt {
			json["patternUnsignedInt"] = patternUnsignedInt.asJSON()
		}
		if let patternUri = self.patternUri {
			json["patternUri"] = patternUri.asJSON()
		}
		if let representation = self.representation {
			var arr = [AnyObject]()
			for val in representation {
				arr.append(val.asJSON())
			}
			json["representation"] = arr
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let short = self.short {
			json["short"] = short.asJSON()
		}
		if let slicing = self.slicing {
			json["slicing"] = slicing.asJSON()
		}
		if let type = self.type {
			json["type"] = ElementDefinitionType.asJSONArray(type)
		}
		
		return json
	}
}


/**
 *  Base definition information for tools.
 *
 *  Information about the base definition of the element, provided to make it unnecessary for tools to trace the
 *  deviation of the element through the derived and related profiles. This information is provided when the element
 *  definition is not the original definition of an element - i.g. either in a constraint on another type, or for
 *  elements from a super type in a snap shot.
 */
public class ElementDefinitionBase: Element {
	override public class var resourceName: String {
		get { return "ElementDefinitionBase" }
	}
	
	/// Max cardinality of the base element.
	public var max: String?
	
	/// Min cardinality of the base element.
	public var min: Int?
	
	/// Path that identifies the base element.
	public var path: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(max: String, min: Int, path: String) {
		self.init(json: nil)
		self.max = max
		self.min = min
		self.path = path
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["max"] {
				presentKeys.insert("max")
				if let val = exist as? String {
					self.max = val
				}
				else {
					errors.append(FHIRJSONError(key: "max", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "max"))
			}
			if let exist: AnyObject = js["min"] {
				presentKeys.insert("min")
				if let val = exist as? Int {
					self.min = val
				}
				else {
					errors.append(FHIRJSONError(key: "min", wants: Int.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "min"))
			}
			if let exist: AnyObject = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "path"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  ValueSet details if this is coded.
 *
 *  Binds to a value set if this element is coded (code, Coding, CodeableConcept).
 */
public class ElementDefinitionBinding: Element {
	override public class var resourceName: String {
		get { return "ElementDefinitionBinding" }
	}
	
	/// Human explanation of the value set.
	public var description_fhir: String?
	
	/// required | extensible | preferred | example.
	public var strength: String?
	
	/// Source of value set.
	public var valueSetReference: Reference?
	
	/// Source of value set.
	public var valueSetUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(strength: String) {
		self.init(json: nil)
		self.strength = strength
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["strength"] {
				presentKeys.insert("strength")
				if let val = exist as? String {
					self.strength = val
				}
				else {
					errors.append(FHIRJSONError(key: "strength", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "strength"))
			}
			if let exist: AnyObject = js["valueSetReference"] {
				presentKeys.insert("valueSetReference")
				if let val = exist as? FHIRJSON {
					self.valueSetReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSetReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["valueSetUri"] {
				presentKeys.insert("valueSetUri")
				if let val = exist as? String {
					self.valueSetUri = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSetUri", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let strength = self.strength {
			json["strength"] = strength.asJSON()
		}
		if let valueSetReference = self.valueSetReference {
			json["valueSetReference"] = valueSetReference.asJSON()
		}
		if let valueSetUri = self.valueSetUri {
			json["valueSetUri"] = valueSetUri.asJSON()
		}
		
		return json
	}
}


/**
 *  Condition that must evaluate to true.
 *
 *  Formal constraints such as co-occurrence and other constraints that can be computationally evaluated within the
 *  context of the instance.
 */
public class ElementDefinitionConstraint: Element {
	override public class var resourceName: String {
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
	
	/// error | warning.
	public var severity: String?
	
	/// XPath expression of constraint.
	public var xpath: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(human: String, key: String, severity: String, xpath: String) {
		self.init(json: nil)
		self.human = human
		self.key = key
		self.severity = severity
		self.xpath = xpath
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["expression"] {
				presentKeys.insert("expression")
				if let val = exist as? String {
					self.expression = val
				}
				else {
					errors.append(FHIRJSONError(key: "expression", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["human"] {
				presentKeys.insert("human")
				if let val = exist as? String {
					self.human = val
				}
				else {
					errors.append(FHIRJSONError(key: "human", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "human"))
			}
			if let exist: AnyObject = js["key"] {
				presentKeys.insert("key")
				if let val = exist as? String {
					self.key = val
				}
				else {
					errors.append(FHIRJSONError(key: "key", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "key"))
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.insert("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(FHIRJSONError(key: "requirements", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["severity"] {
				presentKeys.insert("severity")
				if let val = exist as? String {
					self.severity = val
				}
				else {
					errors.append(FHIRJSONError(key: "severity", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "severity"))
			}
			if let exist: AnyObject = js["xpath"] {
				presentKeys.insert("xpath")
				if let val = exist as? String {
					self.xpath = val
				}
				else {
					errors.append(FHIRJSONError(key: "xpath", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "xpath"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
			json["severity"] = severity.asJSON()
		}
		if let xpath = self.xpath {
			json["xpath"] = xpath.asJSON()
		}
		
		return json
	}
}


/**
 *  Map element to another set of definitions.
 *
 *  Identifies a concept from an external specification that roughly corresponds to this element.
 */
public class ElementDefinitionMapping: Element {
	override public class var resourceName: String {
		get { return "ElementDefinitionMapping" }
	}
	
	/// Reference to mapping declaration.
	public var identity: String?
	
	/// Computable language of mapping.
	public var language: String?
	
	/// Details of the mapping.
	public var map: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identity: String, map: String) {
		self.init(json: nil)
		self.identity = identity
		self.map = map
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["identity"] {
				presentKeys.insert("identity")
				if let val = exist as? String {
					self.identity = val
				}
				else {
					errors.append(FHIRJSONError(key: "identity", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identity"))
			}
			if let exist: AnyObject = js["language"] {
				presentKeys.insert("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(FHIRJSONError(key: "language", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["map"] {
				presentKeys.insert("map")
				if let val = exist as? String {
					self.map = val
				}
				else {
					errors.append(FHIRJSONError(key: "map", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "map"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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
 *  This element is sliced - slices follow.
 *
 *  Indicates that the element is sliced into a set of alternative definitions (i.e. in a structure definition, there
 *  are multiple different constraints on a single element in the base resource). Slicing can be used in any resource
 *  that has cardinality ..* on the base resource, or any resource with a choice of types. The set of slices is any
 *  elements that come after this in the element sequence that have the same path, until a shorter path occurs (the
 *  shorter path terminates the set).
 */
public class ElementDefinitionSlicing: Element {
	override public class var resourceName: String {
		get { return "ElementDefinitionSlicing" }
	}
	
	/// Text description of how slicing works (or not).
	public var description_fhir: String?
	
	/// Element values that are used to distinguish the slices.
	public var discriminator: [String]?
	
	/// If elements must be in same order as slices.
	public var ordered: Bool?
	
	/// closed | open | openAtEnd.
	public var rules: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(rules: String) {
		self.init(json: nil)
		self.rules = rules
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["discriminator"] {
				presentKeys.insert("discriminator")
				if let val = exist as? [String] {
					self.discriminator = val
				}
				else {
					errors.append(FHIRJSONError(key: "discriminator", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ordered"] {
				presentKeys.insert("ordered")
				if let val = exist as? Bool {
					self.ordered = val
				}
				else {
					errors.append(FHIRJSONError(key: "ordered", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rules"] {
				presentKeys.insert("rules")
				if let val = exist as? String {
					self.rules = val
				}
				else {
					errors.append(FHIRJSONError(key: "rules", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "rules"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let discriminator = self.discriminator {
			var arr = [AnyObject]()
			for val in discriminator {
				arr.append(val.asJSON())
			}
			json["discriminator"] = arr
		}
		if let ordered = self.ordered {
			json["ordered"] = ordered.asJSON()
		}
		if let rules = self.rules {
			json["rules"] = rules.asJSON()
		}
		
		return json
	}
}


/**
 *  Data type and Profile for this element.
 *
 *  The data type or resource that the value of this element is permitted to be.
 */
public class ElementDefinitionType: Element {
	override public class var resourceName: String {
		get { return "ElementDefinitionType" }
	}
	
	/// contained | referenced | bundled - how aggregated.
	public var aggregation: [String]?
	
	/// Name of Data type or Resource.
	public var code: String?
	
	/// Profile (StructureDefinition) to apply (or IG).
	public var profile: NSURL?
	
	/// Profile (StructureDefinition) to apply to reference target (or IG).
	public var targetProfile: NSURL?
	
	/// either | independent | specific.
	public var versioning: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["aggregation"] {
				presentKeys.insert("aggregation")
				if let val = exist as? [String] {
					self.aggregation = val
				}
				else {
					errors.append(FHIRJSONError(key: "aggregation", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? String {
					self.profile = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["targetProfile"] {
				presentKeys.insert("targetProfile")
				if let val = exist as? String {
					self.targetProfile = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "targetProfile", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["versioning"] {
				presentKeys.insert("versioning")
				if let val = exist as? String {
					self.versioning = val
				}
				else {
					errors.append(FHIRJSONError(key: "versioning", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let aggregation = self.aggregation {
			var arr = [AnyObject]()
			for val in aggregation {
				arr.append(val.asJSON())
			}
			json["aggregation"] = arr
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
			json["versioning"] = versioning.asJSON()
		}
		
		return json
	}
}

