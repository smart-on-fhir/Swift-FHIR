//
//  ElementDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ElementDefinition) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Definition of an elements in a resource or extension.
 *
 *  Captures constraints on each element within the resource, profile, or extension.
 */
public class ElementDefinition: FHIRElement
{
	override public class var resourceName: String {
		get { return "ElementDefinition" }
	}
	
	/// Other names
	public var alias: [String]?
	
	/// ValueSet details if this is coded
	public var binding: ElementDefinitionBinding?
	
	/// Defining code
	public var code: [Coding]?
	
	/// Comments about the use of this element
	public var comments: String?
	
	/// Reference to invariant about presence
	public var condition: [String]?
	
	/// Condition that must evaluate to true
	public var constraint: [ElementDefinitionConstraint]?
	
	/// Specified value it missing from instance
	public var defaultValueAddress: Address?
	
	/// Specified value it missing from instance
	public var defaultValueAttachment: Attachment?
	
	/// Specified value it missing from instance
	public var defaultValueBase64Binary: Base64Binary?
	
	/// Specified value it missing from instance
	public var defaultValueBoolean: Bool?
	
	/// Specified value it missing from instance
	public var defaultValueCode: String?
	
	/// Specified value it missing from instance
	public var defaultValueCodeableConcept: CodeableConcept?
	
	/// Specified value it missing from instance
	public var defaultValueCoding: Coding?
	
	/// Specified value it missing from instance
	public var defaultValueContactPoint: ContactPoint?
	
	/// Specified value it missing from instance
	public var defaultValueDate: Date?
	
	/// Specified value it missing from instance
	public var defaultValueDateTime: DateTime?
	
	/// Specified value it missing from instance
	public var defaultValueDecimal: NSDecimalNumber?
	
	/// Specified value it missing from instance
	public var defaultValueHumanName: HumanName?
	
	/// Specified value it missing from instance
	public var defaultValueIdentifier: Identifier?
	
	/// Specified value it missing from instance
	public var defaultValueInstant: Instant?
	
	/// Specified value it missing from instance
	public var defaultValueInteger: Int?
	
	/// Specified value it missing from instance
	public var defaultValuePeriod: Period?
	
	/// Specified value it missing from instance
	public var defaultValueQuantity: Quantity?
	
	/// Specified value it missing from instance
	public var defaultValueRange: Range?
	
	/// Specified value it missing from instance
	public var defaultValueRatio: Ratio?
	
	/// Specified value it missing from instance
	public var defaultValueReference: Reference?
	
	/// Specified value it missing from instance
	public var defaultValueSignature: Signature?
	
	/// Specified value it missing from instance
	public var defaultValueString: String?
	
	/// Specified value it missing from instance
	public var defaultValueTime: Time?
	
	/// Specified value it missing from instance
	public var defaultValueTiming: Timing?
	
	/// Specified value it missing from instance
	public var defaultValueUri: NSURL?
	
	/// Full formal definition as narrative text
	public var definition: String?
	
	/// Example value: [as defined for type]
	public var exampleAddress: Address?
	
	/// Example value: [as defined for type]
	public var exampleAttachment: Attachment?
	
	/// Example value: [as defined for type]
	public var exampleBase64Binary: Base64Binary?
	
	/// Example value: [as defined for type]
	public var exampleBoolean: Bool?
	
	/// Example value: [as defined for type]
	public var exampleCode: String?
	
	/// Example value: [as defined for type]
	public var exampleCodeableConcept: CodeableConcept?
	
	/// Example value: [as defined for type]
	public var exampleCoding: Coding?
	
	/// Example value: [as defined for type]
	public var exampleContactPoint: ContactPoint?
	
	/// Example value: [as defined for type]
	public var exampleDate: Date?
	
	/// Example value: [as defined for type]
	public var exampleDateTime: DateTime?
	
	/// Example value: [as defined for type]
	public var exampleDecimal: NSDecimalNumber?
	
	/// Example value: [as defined for type]
	public var exampleHumanName: HumanName?
	
	/// Example value: [as defined for type]
	public var exampleIdentifier: Identifier?
	
	/// Example value: [as defined for type]
	public var exampleInstant: Instant?
	
	/// Example value: [as defined for type]
	public var exampleInteger: Int?
	
	/// Example value: [as defined for type]
	public var examplePeriod: Period?
	
	/// Example value: [as defined for type]
	public var exampleQuantity: Quantity?
	
	/// Example value: [as defined for type]
	public var exampleRange: Range?
	
	/// Example value: [as defined for type]
	public var exampleRatio: Ratio?
	
	/// Example value: [as defined for type]
	public var exampleReference: Reference?
	
	/// Example value: [as defined for type]
	public var exampleSignature: Signature?
	
	/// Example value: [as defined for type]
	public var exampleString: String?
	
	/// Example value: [as defined for type]
	public var exampleTime: Time?
	
	/// Example value: [as defined for type]
	public var exampleTiming: Timing?
	
	/// Example value: [as defined for type]
	public var exampleUri: NSURL?
	
	/// Value must be exactly this
	public var fixedAddress: Address?
	
	/// Value must be exactly this
	public var fixedAttachment: Attachment?
	
	/// Value must be exactly this
	public var fixedBase64Binary: Base64Binary?
	
	/// Value must be exactly this
	public var fixedBoolean: Bool?
	
	/// Value must be exactly this
	public var fixedCode: String?
	
	/// Value must be exactly this
	public var fixedCodeableConcept: CodeableConcept?
	
	/// Value must be exactly this
	public var fixedCoding: Coding?
	
	/// Value must be exactly this
	public var fixedContactPoint: ContactPoint?
	
	/// Value must be exactly this
	public var fixedDate: Date?
	
	/// Value must be exactly this
	public var fixedDateTime: DateTime?
	
	/// Value must be exactly this
	public var fixedDecimal: NSDecimalNumber?
	
	/// Value must be exactly this
	public var fixedHumanName: HumanName?
	
	/// Value must be exactly this
	public var fixedIdentifier: Identifier?
	
	/// Value must be exactly this
	public var fixedInstant: Instant?
	
	/// Value must be exactly this
	public var fixedInteger: Int?
	
	/// Value must be exactly this
	public var fixedPeriod: Period?
	
	/// Value must be exactly this
	public var fixedQuantity: Quantity?
	
	/// Value must be exactly this
	public var fixedRange: Range?
	
	/// Value must be exactly this
	public var fixedRatio: Ratio?
	
	/// Value must be exactly this
	public var fixedReference: Reference?
	
	/// Value must be exactly this
	public var fixedSignature: Signature?
	
	/// Value must be exactly this
	public var fixedString: String?
	
	/// Value must be exactly this
	public var fixedTime: Time?
	
	/// Value must be exactly this
	public var fixedTiming: Timing?
	
	/// Value must be exactly this
	public var fixedUri: NSURL?
	
	/// If this modifies the meaning of other elements
	public var isModifier: Bool?
	
	/// Include when _summary = true?
	public var isSummary: Bool?
	
	/// Name for element to display with or prompt for element
	public var label: String?
	
	/// Map element to another set of definitions
	public var mapping: [ElementDefinitionMapping]?
	
	/// Maximum Cardinality (a number or *)
	public var max: String?
	
	/// Max length for strings
	public var maxLength: Int?
	
	/// Implicit meaning when this element is missing
	public var meaningWhenMissing: String?
	
	/// Minimum Cardinality
	public var min: Int?
	
	/// If the element must supported
	public var mustSupport: Bool?
	
	/// Name for this particular element definition (reference target)
	public var name: String?
	
	/// To another element constraint (by element.name)
	public var nameReference: String?
	
	/// The path of the element (see the Detailed Descriptions)
	public var path: String?
	
	/// Value must have at least these property values
	public var patternAddress: Address?
	
	/// Value must have at least these property values
	public var patternAttachment: Attachment?
	
	/// Value must have at least these property values
	public var patternBase64Binary: Base64Binary?
	
	/// Value must have at least these property values
	public var patternBoolean: Bool?
	
	/// Value must have at least these property values
	public var patternCode: String?
	
	/// Value must have at least these property values
	public var patternCodeableConcept: CodeableConcept?
	
	/// Value must have at least these property values
	public var patternCoding: Coding?
	
	/// Value must have at least these property values
	public var patternContactPoint: ContactPoint?
	
	/// Value must have at least these property values
	public var patternDate: Date?
	
	/// Value must have at least these property values
	public var patternDateTime: DateTime?
	
	/// Value must have at least these property values
	public var patternDecimal: NSDecimalNumber?
	
	/// Value must have at least these property values
	public var patternHumanName: HumanName?
	
	/// Value must have at least these property values
	public var patternIdentifier: Identifier?
	
	/// Value must have at least these property values
	public var patternInstant: Instant?
	
	/// Value must have at least these property values
	public var patternInteger: Int?
	
	/// Value must have at least these property values
	public var patternPeriod: Period?
	
	/// Value must have at least these property values
	public var patternQuantity: Quantity?
	
	/// Value must have at least these property values
	public var patternRange: Range?
	
	/// Value must have at least these property values
	public var patternRatio: Ratio?
	
	/// Value must have at least these property values
	public var patternReference: Reference?
	
	/// Value must have at least these property values
	public var patternSignature: Signature?
	
	/// Value must have at least these property values
	public var patternString: String?
	
	/// Value must have at least these property values
	public var patternTime: Time?
	
	/// Value must have at least these property values
	public var patternTiming: Timing?
	
	/// Value must have at least these property values
	public var patternUri: NSURL?
	
	/// How this element is represented in instances
	public var representation: [String]?
	
	/// Why is this needed?
	public var requirements: String?
	
	/// Concise definition for xml presentation
	public var short: String?
	
	/// This element is sliced - slices follow
	public var slicing: ElementDefinitionSlicing?
	
	/// Data type and Profile for this element
	public var type: [ElementDefinitionType]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: String?) {
		self.init(json: nil)
		if nil != path {
			self.path = path
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["defaultValueAddress"] {
				presentKeys.insert("defaultValueAddress")
				if let val = exist as? FHIRJSON {
					self.defaultValueAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueAddress", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["defaultValueHumanName"] {
				presentKeys.insert("defaultValueHumanName")
				if let val = exist as? FHIRJSON {
					self.defaultValueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValueHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["defaultValuePeriod"] {
				presentKeys.insert("defaultValuePeriod")
				if let val = exist as? FHIRJSON {
					self.defaultValuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "defaultValuePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["exampleHumanName"] {
				presentKeys.insert("exampleHumanName")
				if let val = exist as? FHIRJSON {
					self.exampleHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "exampleHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["examplePeriod"] {
				presentKeys.insert("examplePeriod")
				if let val = exist as? FHIRJSON {
					self.examplePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "examplePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["fixedHumanName"] {
				presentKeys.insert("fixedHumanName")
				if let val = exist as? FHIRJSON {
					self.fixedHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["fixedPeriod"] {
				presentKeys.insert("fixedPeriod")
				if let val = exist as? FHIRJSON {
					self.fixedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fixedPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["nameReference"] {
				presentKeys.insert("nameReference")
				if let val = exist as? String {
					self.nameReference = val
				}
				else {
					errors.append(FHIRJSONError(key: "nameReference", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["patternHumanName"] {
				presentKeys.insert("patternHumanName")
				if let val = exist as? FHIRJSON {
					self.patternHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternHumanName", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["patternPeriod"] {
				presentKeys.insert("patternPeriod")
				if let val = exist as? FHIRJSON {
					self.patternPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patternPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
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
		if let defaultValueAddress = self.defaultValueAddress {
			json["defaultValueAddress"] = defaultValueAddress.asJSON()
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
		if let defaultValueDate = self.defaultValueDate {
			json["defaultValueDate"] = defaultValueDate.asJSON()
		}
		if let defaultValueDateTime = self.defaultValueDateTime {
			json["defaultValueDateTime"] = defaultValueDateTime.asJSON()
		}
		if let defaultValueDecimal = self.defaultValueDecimal {
			json["defaultValueDecimal"] = defaultValueDecimal.asJSON()
		}
		if let defaultValueHumanName = self.defaultValueHumanName {
			json["defaultValueHumanName"] = defaultValueHumanName.asJSON()
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
		if let defaultValuePeriod = self.defaultValuePeriod {
			json["defaultValuePeriod"] = defaultValuePeriod.asJSON()
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
		if let defaultValueUri = self.defaultValueUri {
			json["defaultValueUri"] = defaultValueUri.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let exampleAddress = self.exampleAddress {
			json["exampleAddress"] = exampleAddress.asJSON()
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
		if let exampleDate = self.exampleDate {
			json["exampleDate"] = exampleDate.asJSON()
		}
		if let exampleDateTime = self.exampleDateTime {
			json["exampleDateTime"] = exampleDateTime.asJSON()
		}
		if let exampleDecimal = self.exampleDecimal {
			json["exampleDecimal"] = exampleDecimal.asJSON()
		}
		if let exampleHumanName = self.exampleHumanName {
			json["exampleHumanName"] = exampleHumanName.asJSON()
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
		if let examplePeriod = self.examplePeriod {
			json["examplePeriod"] = examplePeriod.asJSON()
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
		if let exampleUri = self.exampleUri {
			json["exampleUri"] = exampleUri.asJSON()
		}
		if let fixedAddress = self.fixedAddress {
			json["fixedAddress"] = fixedAddress.asJSON()
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
		if let fixedDate = self.fixedDate {
			json["fixedDate"] = fixedDate.asJSON()
		}
		if let fixedDateTime = self.fixedDateTime {
			json["fixedDateTime"] = fixedDateTime.asJSON()
		}
		if let fixedDecimal = self.fixedDecimal {
			json["fixedDecimal"] = fixedDecimal.asJSON()
		}
		if let fixedHumanName = self.fixedHumanName {
			json["fixedHumanName"] = fixedHumanName.asJSON()
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
		if let fixedPeriod = self.fixedPeriod {
			json["fixedPeriod"] = fixedPeriod.asJSON()
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
		if let meaningWhenMissing = self.meaningWhenMissing {
			json["meaningWhenMissing"] = meaningWhenMissing.asJSON()
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		if let mustSupport = self.mustSupport {
			json["mustSupport"] = mustSupport.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let nameReference = self.nameReference {
			json["nameReference"] = nameReference.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let patternAddress = self.patternAddress {
			json["patternAddress"] = patternAddress.asJSON()
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
		if let patternDate = self.patternDate {
			json["patternDate"] = patternDate.asJSON()
		}
		if let patternDateTime = self.patternDateTime {
			json["patternDateTime"] = patternDateTime.asJSON()
		}
		if let patternDecimal = self.patternDecimal {
			json["patternDecimal"] = patternDecimal.asJSON()
		}
		if let patternHumanName = self.patternHumanName {
			json["patternHumanName"] = patternHumanName.asJSON()
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
		if let patternPeriod = self.patternPeriod {
			json["patternPeriod"] = patternPeriod.asJSON()
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
 *  ValueSet details if this is coded.
 *
 *  Binds to a value set if this element is coded (code, Coding, CodeableConcept).
 */
public class ElementDefinitionBinding: FHIRElement
{
	override public class var resourceName: String {
		get { return "ElementDefinitionBinding" }
	}
	
	/// Human explanation of the value set
	public var description_fhir: String?
	
	/// Descriptive Name
	public var name: String?
	
	/// required | extensible | preferred | example
	public var strength: String?
	
	/// Source of value set
	public var valueSetReference: Reference?
	
	/// Source of value set
	public var valueSetUri: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String?, strength: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != strength {
			self.strength = strength
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
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
		if let name = self.name {
			json["name"] = name.asJSON()
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
public class ElementDefinitionConstraint: FHIRElement
{
	override public class var resourceName: String {
		get { return "ElementDefinitionConstraint" }
	}
	
	/// Human description of constraint
	public var human: String?
	
	/// Target of 'condition' reference above
	public var key: String?
	
	/// Short human label
	public var name: String?
	
	/// error | warning
	public var severity: String?
	
	/// XPath expression of constraint
	public var xpath: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(human: String?, key: String?, severity: String?, xpath: String?) {
		self.init(json: nil)
		if nil != human {
			self.human = human
		}
		if nil != key {
			self.key = key
		}
		if nil != severity {
			self.severity = severity
		}
		if nil != xpath {
			self.xpath = xpath
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
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
		
		if let human = self.human {
			json["human"] = human.asJSON()
		}
		if let key = self.key {
			json["key"] = key.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
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
public class ElementDefinitionMapping: FHIRElement
{
	override public class var resourceName: String {
		get { return "ElementDefinitionMapping" }
	}
	
	/// Reference to mapping declaration
	public var identity: String?
	
	/// Computable language of mapping
	public var language: String?
	
	/// Details of the mapping
	public var map: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identity: String?, map: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
		if nil != map {
			self.map = map
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
 *  Indicates that the element is sliced into a set of alternative definitions (there are multiple definitions on a
 *  single element in the base resource). The set of slices is any elements that come after this in the element sequence
 *  that have the same path, until a shorter path occurs (the shorter path terminates the set).
 */
public class ElementDefinitionSlicing: FHIRElement
{
	override public class var resourceName: String {
		get { return "ElementDefinitionSlicing" }
	}
	
	/// Text description of how slicing works (or not)
	public var description_fhir: String?
	
	/// Element values that used to distinguish the slices
	public var discriminator: [String]?
	
	/// If elements must be in same order as slices
	public var ordered: Bool?
	
	/// closed | open | openAtEnd
	public var rules: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(rules: String?) {
		self.init(json: nil)
		if nil != rules {
			self.rules = rules
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
public class ElementDefinitionType: FHIRElement
{
	override public class var resourceName: String {
		get { return "ElementDefinitionType" }
	}
	
	/// contained | referenced | bundled - how aggregated
	public var aggregation: [String]?
	
	/// Name of Data type or Resource
	public var code: String?
	
	/// Profile.structure to apply
	public var profile: NSURL?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
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
		
		return json
	}
}

