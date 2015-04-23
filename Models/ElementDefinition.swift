//
//  ElementDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ElementDefinition) on 2015-04-23.
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(path: String?) {
		self.init(json: nil)
		if nil != path {
			self.path = path
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["alias"] {
				presentKeys.addObject("alias")
				if let val = exist as? [String] {
					self.alias = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"alias\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["binding"] {
				presentKeys.addObject("binding")
				if let val = exist as? FHIRJSON {
					self.binding = ElementDefinitionBinding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"binding\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? [FHIRJSON] {
					self.code = Coding.from(val, owner: self) as? [Coding]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["comments"] {
				presentKeys.addObject("comments")
				if let val = exist as? String {
					self.comments = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comments\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["condition"] {
				presentKeys.addObject("condition")
				if let val = exist as? [String] {
					self.condition = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"condition\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["constraint"] {
				presentKeys.addObject("constraint")
				if let val = exist as? [FHIRJSON] {
					self.constraint = ElementDefinitionConstraint.from(val, owner: self) as? [ElementDefinitionConstraint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"constraint\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueAddress"] {
				presentKeys.addObject("defaultValueAddress")
				if let val = exist as? FHIRJSON {
					self.defaultValueAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueAddress\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueAttachment"] {
				presentKeys.addObject("defaultValueAttachment")
				if let val = exist as? FHIRJSON {
					self.defaultValueAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueBase64Binary"] {
				presentKeys.addObject("defaultValueBase64Binary")
				if let val = exist as? String {
					self.defaultValueBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueBase64Binary\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueBoolean"] {
				presentKeys.addObject("defaultValueBoolean")
				if let val = exist as? Bool {
					self.defaultValueBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueCode"] {
				presentKeys.addObject("defaultValueCode")
				if let val = exist as? String {
					self.defaultValueCode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueCode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueCodeableConcept"] {
				presentKeys.addObject("defaultValueCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.defaultValueCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueCoding"] {
				presentKeys.addObject("defaultValueCoding")
				if let val = exist as? FHIRJSON {
					self.defaultValueCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueCoding\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueContactPoint"] {
				presentKeys.addObject("defaultValueContactPoint")
				if let val = exist as? FHIRJSON {
					self.defaultValueContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueContactPoint\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueDate"] {
				presentKeys.addObject("defaultValueDate")
				if let val = exist as? String {
					self.defaultValueDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueDateTime"] {
				presentKeys.addObject("defaultValueDateTime")
				if let val = exist as? String {
					self.defaultValueDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueDecimal"] {
				presentKeys.addObject("defaultValueDecimal")
				if let val = exist as? NSNumber {
					self.defaultValueDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueDecimal\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueHumanName"] {
				presentKeys.addObject("defaultValueHumanName")
				if let val = exist as? FHIRJSON {
					self.defaultValueHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueHumanName\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueIdentifier"] {
				presentKeys.addObject("defaultValueIdentifier")
				if let val = exist as? FHIRJSON {
					self.defaultValueIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueIdentifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueInstant"] {
				presentKeys.addObject("defaultValueInstant")
				if let val = exist as? String {
					self.defaultValueInstant = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueInstant\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueInteger"] {
				presentKeys.addObject("defaultValueInteger")
				if let val = exist as? Int {
					self.defaultValueInteger = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueInteger\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValuePeriod"] {
				presentKeys.addObject("defaultValuePeriod")
				if let val = exist as? FHIRJSON {
					self.defaultValuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValuePeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueQuantity"] {
				presentKeys.addObject("defaultValueQuantity")
				if let val = exist as? FHIRJSON {
					self.defaultValueQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueQuantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueRange"] {
				presentKeys.addObject("defaultValueRange")
				if let val = exist as? FHIRJSON {
					self.defaultValueRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueRatio"] {
				presentKeys.addObject("defaultValueRatio")
				if let val = exist as? FHIRJSON {
					self.defaultValueRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueRatio\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueReference"] {
				presentKeys.addObject("defaultValueReference")
				if let val = exist as? FHIRJSON {
					self.defaultValueReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueSignature"] {
				presentKeys.addObject("defaultValueSignature")
				if let val = exist as? FHIRJSON {
					self.defaultValueSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueSignature\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueString"] {
				presentKeys.addObject("defaultValueString")
				if let val = exist as? String {
					self.defaultValueString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueTime"] {
				presentKeys.addObject("defaultValueTime")
				if let val = exist as? String {
					self.defaultValueTime = Time(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueTiming"] {
				presentKeys.addObject("defaultValueTiming")
				if let val = exist as? FHIRJSON {
					self.defaultValueTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueTiming\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["defaultValueUri"] {
				presentKeys.addObject("defaultValueUri")
				if let val = exist as? String {
					self.defaultValueUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"defaultValueUri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["definition"] {
				presentKeys.addObject("definition")
				if let val = exist as? String {
					self.definition = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"definition\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleAddress"] {
				presentKeys.addObject("exampleAddress")
				if let val = exist as? FHIRJSON {
					self.exampleAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleAddress\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleAttachment"] {
				presentKeys.addObject("exampleAttachment")
				if let val = exist as? FHIRJSON {
					self.exampleAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleBase64Binary"] {
				presentKeys.addObject("exampleBase64Binary")
				if let val = exist as? String {
					self.exampleBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleBase64Binary\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleBoolean"] {
				presentKeys.addObject("exampleBoolean")
				if let val = exist as? Bool {
					self.exampleBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleCode"] {
				presentKeys.addObject("exampleCode")
				if let val = exist as? String {
					self.exampleCode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleCode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleCodeableConcept"] {
				presentKeys.addObject("exampleCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.exampleCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleCoding"] {
				presentKeys.addObject("exampleCoding")
				if let val = exist as? FHIRJSON {
					self.exampleCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleCoding\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleContactPoint"] {
				presentKeys.addObject("exampleContactPoint")
				if let val = exist as? FHIRJSON {
					self.exampleContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleContactPoint\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleDate"] {
				presentKeys.addObject("exampleDate")
				if let val = exist as? String {
					self.exampleDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleDateTime"] {
				presentKeys.addObject("exampleDateTime")
				if let val = exist as? String {
					self.exampleDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleDecimal"] {
				presentKeys.addObject("exampleDecimal")
				if let val = exist as? NSNumber {
					self.exampleDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleDecimal\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleHumanName"] {
				presentKeys.addObject("exampleHumanName")
				if let val = exist as? FHIRJSON {
					self.exampleHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleHumanName\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleIdentifier"] {
				presentKeys.addObject("exampleIdentifier")
				if let val = exist as? FHIRJSON {
					self.exampleIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleIdentifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleInstant"] {
				presentKeys.addObject("exampleInstant")
				if let val = exist as? String {
					self.exampleInstant = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleInstant\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleInteger"] {
				presentKeys.addObject("exampleInteger")
				if let val = exist as? Int {
					self.exampleInteger = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleInteger\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["examplePeriod"] {
				presentKeys.addObject("examplePeriod")
				if let val = exist as? FHIRJSON {
					self.examplePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"examplePeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleQuantity"] {
				presentKeys.addObject("exampleQuantity")
				if let val = exist as? FHIRJSON {
					self.exampleQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleQuantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleRange"] {
				presentKeys.addObject("exampleRange")
				if let val = exist as? FHIRJSON {
					self.exampleRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleRatio"] {
				presentKeys.addObject("exampleRatio")
				if let val = exist as? FHIRJSON {
					self.exampleRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleRatio\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleReference"] {
				presentKeys.addObject("exampleReference")
				if let val = exist as? FHIRJSON {
					self.exampleReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleSignature"] {
				presentKeys.addObject("exampleSignature")
				if let val = exist as? FHIRJSON {
					self.exampleSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleSignature\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleString"] {
				presentKeys.addObject("exampleString")
				if let val = exist as? String {
					self.exampleString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleTime"] {
				presentKeys.addObject("exampleTime")
				if let val = exist as? String {
					self.exampleTime = Time(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleTiming"] {
				presentKeys.addObject("exampleTiming")
				if let val = exist as? FHIRJSON {
					self.exampleTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleTiming\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["exampleUri"] {
				presentKeys.addObject("exampleUri")
				if let val = exist as? String {
					self.exampleUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"exampleUri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedAddress"] {
				presentKeys.addObject("fixedAddress")
				if let val = exist as? FHIRJSON {
					self.fixedAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedAddress\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedAttachment"] {
				presentKeys.addObject("fixedAttachment")
				if let val = exist as? FHIRJSON {
					self.fixedAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedBase64Binary"] {
				presentKeys.addObject("fixedBase64Binary")
				if let val = exist as? String {
					self.fixedBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedBase64Binary\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedBoolean"] {
				presentKeys.addObject("fixedBoolean")
				if let val = exist as? Bool {
					self.fixedBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedCode"] {
				presentKeys.addObject("fixedCode")
				if let val = exist as? String {
					self.fixedCode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedCode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedCodeableConcept"] {
				presentKeys.addObject("fixedCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.fixedCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedCoding"] {
				presentKeys.addObject("fixedCoding")
				if let val = exist as? FHIRJSON {
					self.fixedCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedCoding\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedContactPoint"] {
				presentKeys.addObject("fixedContactPoint")
				if let val = exist as? FHIRJSON {
					self.fixedContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedContactPoint\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedDate"] {
				presentKeys.addObject("fixedDate")
				if let val = exist as? String {
					self.fixedDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedDateTime"] {
				presentKeys.addObject("fixedDateTime")
				if let val = exist as? String {
					self.fixedDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedDecimal"] {
				presentKeys.addObject("fixedDecimal")
				if let val = exist as? NSNumber {
					self.fixedDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedDecimal\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedHumanName"] {
				presentKeys.addObject("fixedHumanName")
				if let val = exist as? FHIRJSON {
					self.fixedHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedHumanName\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedIdentifier"] {
				presentKeys.addObject("fixedIdentifier")
				if let val = exist as? FHIRJSON {
					self.fixedIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedIdentifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedInstant"] {
				presentKeys.addObject("fixedInstant")
				if let val = exist as? String {
					self.fixedInstant = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedInstant\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedInteger"] {
				presentKeys.addObject("fixedInteger")
				if let val = exist as? Int {
					self.fixedInteger = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedInteger\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedPeriod"] {
				presentKeys.addObject("fixedPeriod")
				if let val = exist as? FHIRJSON {
					self.fixedPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedQuantity"] {
				presentKeys.addObject("fixedQuantity")
				if let val = exist as? FHIRJSON {
					self.fixedQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedQuantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedRange"] {
				presentKeys.addObject("fixedRange")
				if let val = exist as? FHIRJSON {
					self.fixedRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedRatio"] {
				presentKeys.addObject("fixedRatio")
				if let val = exist as? FHIRJSON {
					self.fixedRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedRatio\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedReference"] {
				presentKeys.addObject("fixedReference")
				if let val = exist as? FHIRJSON {
					self.fixedReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedSignature"] {
				presentKeys.addObject("fixedSignature")
				if let val = exist as? FHIRJSON {
					self.fixedSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedSignature\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedString"] {
				presentKeys.addObject("fixedString")
				if let val = exist as? String {
					self.fixedString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedTime"] {
				presentKeys.addObject("fixedTime")
				if let val = exist as? String {
					self.fixedTime = Time(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedTiming"] {
				presentKeys.addObject("fixedTiming")
				if let val = exist as? FHIRJSON {
					self.fixedTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedTiming\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fixedUri"] {
				presentKeys.addObject("fixedUri")
				if let val = exist as? String {
					self.fixedUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fixedUri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["isModifier"] {
				presentKeys.addObject("isModifier")
				if let val = exist as? Bool {
					self.isModifier = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"isModifier\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["isSummary"] {
				presentKeys.addObject("isSummary")
				if let val = exist as? Bool {
					self.isSummary = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"isSummary\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["label"] {
				presentKeys.addObject("label")
				if let val = exist as? String {
					self.label = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"label\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mapping"] {
				presentKeys.addObject("mapping")
				if let val = exist as? [FHIRJSON] {
					self.mapping = ElementDefinitionMapping.from(val, owner: self) as? [ElementDefinitionMapping]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mapping\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["max"] {
				presentKeys.addObject("max")
				if let val = exist as? String {
					self.max = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"max\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["maxLength"] {
				presentKeys.addObject("maxLength")
				if let val = exist as? Int {
					self.maxLength = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"maxLength\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["meaningWhenMissing"] {
				presentKeys.addObject("meaningWhenMissing")
				if let val = exist as? String {
					self.meaningWhenMissing = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"meaningWhenMissing\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["min"] {
				presentKeys.addObject("min")
				if let val = exist as? Int {
					self.min = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"min\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mustSupport"] {
				presentKeys.addObject("mustSupport")
				if let val = exist as? Bool {
					self.mustSupport = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mustSupport\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["nameReference"] {
				presentKeys.addObject("nameReference")
				if let val = exist as? String {
					self.nameReference = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"nameReference\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["path"] {
				presentKeys.addObject("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"path\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"path\" but it is missing"))
			}
			if let exist: AnyObject = js["patternAddress"] {
				presentKeys.addObject("patternAddress")
				if let val = exist as? FHIRJSON {
					self.patternAddress = Address(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternAddress\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternAttachment"] {
				presentKeys.addObject("patternAttachment")
				if let val = exist as? FHIRJSON {
					self.patternAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternAttachment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternBase64Binary"] {
				presentKeys.addObject("patternBase64Binary")
				if let val = exist as? String {
					self.patternBase64Binary = Base64Binary(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternBase64Binary\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternBoolean"] {
				presentKeys.addObject("patternBoolean")
				if let val = exist as? Bool {
					self.patternBoolean = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternBoolean\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternCode"] {
				presentKeys.addObject("patternCode")
				if let val = exist as? String {
					self.patternCode = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternCode\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternCodeableConcept"] {
				presentKeys.addObject("patternCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.patternCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternCoding"] {
				presentKeys.addObject("patternCoding")
				if let val = exist as? FHIRJSON {
					self.patternCoding = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternCoding\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternContactPoint"] {
				presentKeys.addObject("patternContactPoint")
				if let val = exist as? FHIRJSON {
					self.patternContactPoint = ContactPoint(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternContactPoint\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternDate"] {
				presentKeys.addObject("patternDate")
				if let val = exist as? String {
					self.patternDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternDateTime"] {
				presentKeys.addObject("patternDateTime")
				if let val = exist as? String {
					self.patternDateTime = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternDateTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternDecimal"] {
				presentKeys.addObject("patternDecimal")
				if let val = exist as? NSNumber {
					self.patternDecimal = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternDecimal\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternHumanName"] {
				presentKeys.addObject("patternHumanName")
				if let val = exist as? FHIRJSON {
					self.patternHumanName = HumanName(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternHumanName\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternIdentifier"] {
				presentKeys.addObject("patternIdentifier")
				if let val = exist as? FHIRJSON {
					self.patternIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternIdentifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternInstant"] {
				presentKeys.addObject("patternInstant")
				if let val = exist as? String {
					self.patternInstant = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternInstant\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternInteger"] {
				presentKeys.addObject("patternInteger")
				if let val = exist as? Int {
					self.patternInteger = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternInteger\" to be `Int`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternPeriod"] {
				presentKeys.addObject("patternPeriod")
				if let val = exist as? FHIRJSON {
					self.patternPeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternQuantity"] {
				presentKeys.addObject("patternQuantity")
				if let val = exist as? FHIRJSON {
					self.patternQuantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternQuantity\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternRange"] {
				presentKeys.addObject("patternRange")
				if let val = exist as? FHIRJSON {
					self.patternRange = Range(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternRange\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternRatio"] {
				presentKeys.addObject("patternRatio")
				if let val = exist as? FHIRJSON {
					self.patternRatio = Ratio(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternRatio\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternReference"] {
				presentKeys.addObject("patternReference")
				if let val = exist as? FHIRJSON {
					self.patternReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternSignature"] {
				presentKeys.addObject("patternSignature")
				if let val = exist as? FHIRJSON {
					self.patternSignature = Signature(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternSignature\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternString"] {
				presentKeys.addObject("patternString")
				if let val = exist as? String {
					self.patternString = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternString\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternTime"] {
				presentKeys.addObject("patternTime")
				if let val = exist as? String {
					self.patternTime = Time(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternTime\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternTiming"] {
				presentKeys.addObject("patternTiming")
				if let val = exist as? FHIRJSON {
					self.patternTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternTiming\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["patternUri"] {
				presentKeys.addObject("patternUri")
				if let val = exist as? String {
					self.patternUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"patternUri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["representation"] {
				presentKeys.addObject("representation")
				if let val = exist as? [String] {
					self.representation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"representation\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requirements"] {
				presentKeys.addObject("requirements")
				if let val = exist as? String {
					self.requirements = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requirements\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["short"] {
				presentKeys.addObject("short")
				if let val = exist as? String {
					self.short = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"short\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["slicing"] {
				presentKeys.addObject("slicing")
				if let val = exist as? FHIRJSON {
					self.slicing = ElementDefinitionSlicing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"slicing\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? [FHIRJSON] {
					self.type = ElementDefinitionType.from(val, owner: self) as? [ElementDefinitionType]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(name: String?, strength: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != strength {
			self.strength = strength
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"name\" but it is missing"))
			}
			if let exist: AnyObject = js["strength"] {
				presentKeys.addObject("strength")
				if let val = exist as? String {
					self.strength = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"strength\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"strength\" but it is missing"))
			}
			if let exist: AnyObject = js["valueSetReference"] {
				presentKeys.addObject("valueSetReference")
				if let val = exist as? FHIRJSON {
					self.valueSetReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueSetReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["valueSetUri"] {
				presentKeys.addObject("valueSetUri")
				if let val = exist as? String {
					self.valueSetUri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"valueSetUri\" to be `String`, but is \(exist.dynamicType)"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["human"] {
				presentKeys.addObject("human")
				if let val = exist as? String {
					self.human = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"human\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"human\" but it is missing"))
			}
			if let exist: AnyObject = js["key"] {
				presentKeys.addObject("key")
				if let val = exist as? String {
					self.key = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"key\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"key\" but it is missing"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["severity"] {
				presentKeys.addObject("severity")
				if let val = exist as? String {
					self.severity = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"severity\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"severity\" but it is missing"))
			}
			if let exist: AnyObject = js["xpath"] {
				presentKeys.addObject("xpath")
				if let val = exist as? String {
					self.xpath = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"xpath\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"xpath\" but it is missing"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(identity: String?, map: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
		if nil != map {
			self.map = map
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["identity"] {
				presentKeys.addObject("identity")
				if let val = exist as? String {
					self.identity = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identity\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"identity\" but it is missing"))
			}
			if let exist: AnyObject = js["language"] {
				presentKeys.addObject("language")
				if let val = exist as? String {
					self.language = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"language\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["map"] {
				presentKeys.addObject("map")
				if let val = exist as? String {
					self.map = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"map\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"map\" but it is missing"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(rules: String?) {
		self.init(json: nil)
		if nil != rules {
			self.rules = rules
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["discriminator"] {
				presentKeys.addObject("discriminator")
				if let val = exist as? [String] {
					self.discriminator = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"discriminator\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ordered"] {
				presentKeys.addObject("ordered")
				if let val = exist as? Bool {
					self.ordered = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ordered\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["rules"] {
				presentKeys.addObject("rules")
				if let val = exist as? String {
					self.rules = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"rules\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"rules\" but it is missing"))
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
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["aggregation"] {
				presentKeys.addObject("aggregation")
				if let val = exist as? [String] {
					self.aggregation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"aggregation\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? String {
					self.code = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.addObject("profile")
				if let val = exist as? String {
					self.profile = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"profile\" to be `String`, but is \(exist.dynamicType)"))
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

