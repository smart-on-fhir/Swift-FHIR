//
//  ElementDefinition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (ElementDefinition.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
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
	
	/// ValueSet details if this is coded
	public var binding: ElementDefinitionBinding?
	
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
	public var defaultValueDate: NSDate?
	
	/// Specified value it missing from instance
	public var defaultValueDateTime: NSDate?
	
	/// Specified value it missing from instance
	public var defaultValueDecimal: NSDecimalNumber?
	
	/// Specified value it missing from instance
	public var defaultValueHumanName: HumanName?
	
	/// Specified value it missing from instance
	public var defaultValueIdentifier: Identifier?
	
	/// Specified value it missing from instance
	public var defaultValueInstant: NSDate?
	
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
	public var defaultValueString: String?
	
	/// Specified value it missing from instance
	public var defaultValueTime: NSDate?
	
	/// Specified value it missing from instance
	public var defaultValueTiming: Timing?
	
	/// Specified value it missing from instance
	public var defaultValueUri: NSURL?
	
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
	public var exampleDate: NSDate?
	
	/// Example value: [as defined for type]
	public var exampleDateTime: NSDate?
	
	/// Example value: [as defined for type]
	public var exampleDecimal: NSDecimalNumber?
	
	/// Example value: [as defined for type]
	public var exampleHumanName: HumanName?
	
	/// Example value: [as defined for type]
	public var exampleIdentifier: Identifier?
	
	/// Example value: [as defined for type]
	public var exampleInstant: NSDate?
	
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
	public var exampleString: String?
	
	/// Example value: [as defined for type]
	public var exampleTime: NSDate?
	
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
	public var fixedDate: NSDate?
	
	/// Value must be exactly this
	public var fixedDateTime: NSDate?
	
	/// Value must be exactly this
	public var fixedDecimal: NSDecimalNumber?
	
	/// Value must be exactly this
	public var fixedHumanName: HumanName?
	
	/// Value must be exactly this
	public var fixedIdentifier: Identifier?
	
	/// Value must be exactly this
	public var fixedInstant: NSDate?
	
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
	public var fixedString: String?
	
	/// Value must be exactly this
	public var fixedTime: NSDate?
	
	/// Value must be exactly this
	public var fixedTiming: Timing?
	
	/// Value must be exactly this
	public var fixedUri: NSURL?
	
	/// Full formal definition in human language
	public var formal: String?
	
	/// If this modifies the meaning of other elements
	public var isModifier: Bool?
	
	/// Include when _summary = true?
	public var isSummary: Bool?
	
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
	public var patternDate: NSDate?
	
	/// Value must have at least these property values
	public var patternDateTime: NSDate?
	
	/// Value must have at least these property values
	public var patternDecimal: NSDecimalNumber?
	
	/// Value must have at least these property values
	public var patternHumanName: HumanName?
	
	/// Value must have at least these property values
	public var patternIdentifier: Identifier?
	
	/// Value must have at least these property values
	public var patternInstant: NSDate?
	
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
	public var patternString: String?
	
	/// Value must have at least these property values
	public var patternTime: NSDate?
	
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
	
	/// Other names
	public var synonym: [String]?
	
	/// Data type and Profile for this element
	public var type: [ElementDefinitionType]?
	
	public convenience init(path: String?) {
		self.init(json: nil)
		if nil != path {
			self.path = path
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["binding"] as? JSONDictionary {
				self.binding = ElementDefinitionBinding(json: val, owner: self)
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["condition"] as? [String] {
				self.condition = val
			}
			if let val = js["constraint"] as? [JSONDictionary] {
				self.constraint = ElementDefinitionConstraint.from(val, owner: self) as? [ElementDefinitionConstraint]
			}
			if let val = js["defaultValueAddress"] as? JSONDictionary {
				self.defaultValueAddress = Address(json: val, owner: self)
			}
			if let val = js["defaultValueAttachment"] as? JSONDictionary {
				self.defaultValueAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["defaultValueBase64Binary"] as? String {
				self.defaultValueBase64Binary = Base64Binary(json: val)
			}
			if let val = js["defaultValueBoolean"] as? Bool {
				self.defaultValueBoolean = val
			}
			if let val = js["defaultValueCode"] as? String {
				self.defaultValueCode = val
			}
			if let val = js["defaultValueCodeableConcept"] as? JSONDictionary {
				self.defaultValueCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["defaultValueCoding"] as? JSONDictionary {
				self.defaultValueCoding = Coding(json: val, owner: self)
			}
			if let val = js["defaultValueContactPoint"] as? JSONDictionary {
				self.defaultValueContactPoint = ContactPoint(json: val, owner: self)
			}
			if let val = js["defaultValueDate"] as? String {
				self.defaultValueDate = NSDate(json: val)
			}
			if let val = js["defaultValueDateTime"] as? String {
				self.defaultValueDateTime = NSDate(json: val)
			}
			if let val = js["defaultValueDecimal"] as? NSNumber {
				self.defaultValueDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["defaultValueHumanName"] as? JSONDictionary {
				self.defaultValueHumanName = HumanName(json: val, owner: self)
			}
			if let val = js["defaultValueIdentifier"] as? JSONDictionary {
				self.defaultValueIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["defaultValueInstant"] as? String {
				self.defaultValueInstant = NSDate(json: val)
			}
			if let val = js["defaultValueInteger"] as? Int {
				self.defaultValueInteger = val
			}
			if let val = js["defaultValuePeriod"] as? JSONDictionary {
				self.defaultValuePeriod = Period(json: val, owner: self)
			}
			if let val = js["defaultValueQuantity"] as? JSONDictionary {
				self.defaultValueQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["defaultValueRange"] as? JSONDictionary {
				self.defaultValueRange = Range(json: val, owner: self)
			}
			if let val = js["defaultValueRatio"] as? JSONDictionary {
				self.defaultValueRatio = Ratio(json: val, owner: self)
			}
			if let val = js["defaultValueReference"] as? JSONDictionary {
				self.defaultValueReference = Reference(json: val, owner: self)
			}
			if let val = js["defaultValueString"] as? String {
				self.defaultValueString = val
			}
			if let val = js["defaultValueTime"] as? String {
				self.defaultValueTime = NSDate(json: val)
			}
			if let val = js["defaultValueTiming"] as? JSONDictionary {
				self.defaultValueTiming = Timing(json: val, owner: self)
			}
			if let val = js["defaultValueUri"] as? String {
				self.defaultValueUri = NSURL(json: val)
			}
			if let val = js["exampleAddress"] as? JSONDictionary {
				self.exampleAddress = Address(json: val, owner: self)
			}
			if let val = js["exampleAttachment"] as? JSONDictionary {
				self.exampleAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["exampleBase64Binary"] as? String {
				self.exampleBase64Binary = Base64Binary(json: val)
			}
			if let val = js["exampleBoolean"] as? Bool {
				self.exampleBoolean = val
			}
			if let val = js["exampleCode"] as? String {
				self.exampleCode = val
			}
			if let val = js["exampleCodeableConcept"] as? JSONDictionary {
				self.exampleCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["exampleCoding"] as? JSONDictionary {
				self.exampleCoding = Coding(json: val, owner: self)
			}
			if let val = js["exampleContactPoint"] as? JSONDictionary {
				self.exampleContactPoint = ContactPoint(json: val, owner: self)
			}
			if let val = js["exampleDate"] as? String {
				self.exampleDate = NSDate(json: val)
			}
			if let val = js["exampleDateTime"] as? String {
				self.exampleDateTime = NSDate(json: val)
			}
			if let val = js["exampleDecimal"] as? NSNumber {
				self.exampleDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["exampleHumanName"] as? JSONDictionary {
				self.exampleHumanName = HumanName(json: val, owner: self)
			}
			if let val = js["exampleIdentifier"] as? JSONDictionary {
				self.exampleIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["exampleInstant"] as? String {
				self.exampleInstant = NSDate(json: val)
			}
			if let val = js["exampleInteger"] as? Int {
				self.exampleInteger = val
			}
			if let val = js["examplePeriod"] as? JSONDictionary {
				self.examplePeriod = Period(json: val, owner: self)
			}
			if let val = js["exampleQuantity"] as? JSONDictionary {
				self.exampleQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["exampleRange"] as? JSONDictionary {
				self.exampleRange = Range(json: val, owner: self)
			}
			if let val = js["exampleRatio"] as? JSONDictionary {
				self.exampleRatio = Ratio(json: val, owner: self)
			}
			if let val = js["exampleReference"] as? JSONDictionary {
				self.exampleReference = Reference(json: val, owner: self)
			}
			if let val = js["exampleString"] as? String {
				self.exampleString = val
			}
			if let val = js["exampleTime"] as? String {
				self.exampleTime = NSDate(json: val)
			}
			if let val = js["exampleTiming"] as? JSONDictionary {
				self.exampleTiming = Timing(json: val, owner: self)
			}
			if let val = js["exampleUri"] as? String {
				self.exampleUri = NSURL(json: val)
			}
			if let val = js["fixedAddress"] as? JSONDictionary {
				self.fixedAddress = Address(json: val, owner: self)
			}
			if let val = js["fixedAttachment"] as? JSONDictionary {
				self.fixedAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["fixedBase64Binary"] as? String {
				self.fixedBase64Binary = Base64Binary(json: val)
			}
			if let val = js["fixedBoolean"] as? Bool {
				self.fixedBoolean = val
			}
			if let val = js["fixedCode"] as? String {
				self.fixedCode = val
			}
			if let val = js["fixedCodeableConcept"] as? JSONDictionary {
				self.fixedCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["fixedCoding"] as? JSONDictionary {
				self.fixedCoding = Coding(json: val, owner: self)
			}
			if let val = js["fixedContactPoint"] as? JSONDictionary {
				self.fixedContactPoint = ContactPoint(json: val, owner: self)
			}
			if let val = js["fixedDate"] as? String {
				self.fixedDate = NSDate(json: val)
			}
			if let val = js["fixedDateTime"] as? String {
				self.fixedDateTime = NSDate(json: val)
			}
			if let val = js["fixedDecimal"] as? NSNumber {
				self.fixedDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["fixedHumanName"] as? JSONDictionary {
				self.fixedHumanName = HumanName(json: val, owner: self)
			}
			if let val = js["fixedIdentifier"] as? JSONDictionary {
				self.fixedIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["fixedInstant"] as? String {
				self.fixedInstant = NSDate(json: val)
			}
			if let val = js["fixedInteger"] as? Int {
				self.fixedInteger = val
			}
			if let val = js["fixedPeriod"] as? JSONDictionary {
				self.fixedPeriod = Period(json: val, owner: self)
			}
			if let val = js["fixedQuantity"] as? JSONDictionary {
				self.fixedQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["fixedRange"] as? JSONDictionary {
				self.fixedRange = Range(json: val, owner: self)
			}
			if let val = js["fixedRatio"] as? JSONDictionary {
				self.fixedRatio = Ratio(json: val, owner: self)
			}
			if let val = js["fixedReference"] as? JSONDictionary {
				self.fixedReference = Reference(json: val, owner: self)
			}
			if let val = js["fixedString"] as? String {
				self.fixedString = val
			}
			if let val = js["fixedTime"] as? String {
				self.fixedTime = NSDate(json: val)
			}
			if let val = js["fixedTiming"] as? JSONDictionary {
				self.fixedTiming = Timing(json: val, owner: self)
			}
			if let val = js["fixedUri"] as? String {
				self.fixedUri = NSURL(json: val)
			}
			if let val = js["formal"] as? String {
				self.formal = val
			}
			if let val = js["isModifier"] as? Bool {
				self.isModifier = val
			}
			if let val = js["isSummary"] as? Bool {
				self.isSummary = val
			}
			if let val = js["mapping"] as? [JSONDictionary] {
				self.mapping = ElementDefinitionMapping.from(val, owner: self) as? [ElementDefinitionMapping]
			}
			if let val = js["max"] as? String {
				self.max = val
			}
			if let val = js["maxLength"] as? Int {
				self.maxLength = val
			}
			if let val = js["meaningWhenMissing"] as? String {
				self.meaningWhenMissing = val
			}
			if let val = js["min"] as? Int {
				self.min = val
			}
			if let val = js["mustSupport"] as? Bool {
				self.mustSupport = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["nameReference"] as? String {
				self.nameReference = val
			}
			if let val = js["path"] as? String {
				self.path = val
			}
			if let val = js["patternAddress"] as? JSONDictionary {
				self.patternAddress = Address(json: val, owner: self)
			}
			if let val = js["patternAttachment"] as? JSONDictionary {
				self.patternAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["patternBase64Binary"] as? String {
				self.patternBase64Binary = Base64Binary(json: val)
			}
			if let val = js["patternBoolean"] as? Bool {
				self.patternBoolean = val
			}
			if let val = js["patternCode"] as? String {
				self.patternCode = val
			}
			if let val = js["patternCodeableConcept"] as? JSONDictionary {
				self.patternCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["patternCoding"] as? JSONDictionary {
				self.patternCoding = Coding(json: val, owner: self)
			}
			if let val = js["patternContactPoint"] as? JSONDictionary {
				self.patternContactPoint = ContactPoint(json: val, owner: self)
			}
			if let val = js["patternDate"] as? String {
				self.patternDate = NSDate(json: val)
			}
			if let val = js["patternDateTime"] as? String {
				self.patternDateTime = NSDate(json: val)
			}
			if let val = js["patternDecimal"] as? NSNumber {
				self.patternDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["patternHumanName"] as? JSONDictionary {
				self.patternHumanName = HumanName(json: val, owner: self)
			}
			if let val = js["patternIdentifier"] as? JSONDictionary {
				self.patternIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["patternInstant"] as? String {
				self.patternInstant = NSDate(json: val)
			}
			if let val = js["patternInteger"] as? Int {
				self.patternInteger = val
			}
			if let val = js["patternPeriod"] as? JSONDictionary {
				self.patternPeriod = Period(json: val, owner: self)
			}
			if let val = js["patternQuantity"] as? JSONDictionary {
				self.patternQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["patternRange"] as? JSONDictionary {
				self.patternRange = Range(json: val, owner: self)
			}
			if let val = js["patternRatio"] as? JSONDictionary {
				self.patternRatio = Ratio(json: val, owner: self)
			}
			if let val = js["patternReference"] as? JSONDictionary {
				self.patternReference = Reference(json: val, owner: self)
			}
			if let val = js["patternString"] as? String {
				self.patternString = val
			}
			if let val = js["patternTime"] as? String {
				self.patternTime = NSDate(json: val)
			}
			if let val = js["patternTiming"] as? JSONDictionary {
				self.patternTiming = Timing(json: val, owner: self)
			}
			if let val = js["patternUri"] as? String {
				self.patternUri = NSURL(json: val)
			}
			if let val = js["representation"] as? [String] {
				self.representation = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["short"] as? String {
				self.short = val
			}
			if let val = js["slicing"] as? JSONDictionary {
				self.slicing = ElementDefinitionSlicing(json: val, owner: self)
			}
			if let val = js["synonym"] as? [String] {
				self.synonym = val
			}
			if let val = js["type"] as? [JSONDictionary] {
				self.type = ElementDefinitionType.from(val, owner: self) as? [ElementDefinitionType]
			}
		}
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
	
	/// required | preferred | example
	public var conformance: String?
	
	/// Human explanation of the value set
	public var description: String?
	
	/// Can additional codes be used?
	public var isExtensible: Bool?
	
	/// Descriptive Name
	public var name: String?
	
	/// Source of value set
	public var referenceReference: Reference?
	
	/// Source of value set
	public var referenceUri: NSURL?
	
	public convenience init(isExtensible: Bool?, name: String?) {
		self.init(json: nil)
		if nil != isExtensible {
			self.isExtensible = isExtensible
		}
		if nil != name {
			self.name = name
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["conformance"] as? String {
				self.conformance = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["isExtensible"] as? Bool {
				self.isExtensible = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["referenceReference"] as? JSONDictionary {
				self.referenceReference = Reference(json: val, owner: self)
			}
			if let val = js["referenceUri"] as? String {
				self.referenceUri = NSURL(json: val)
			}
		}
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["human"] as? String {
				self.human = val
			}
			if let val = js["key"] as? String {
				self.key = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["severity"] as? String {
				self.severity = val
			}
			if let val = js["xpath"] as? String {
				self.xpath = val
			}
		}
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
	
	/// Details of the mapping
	public var map: String?
	
	public convenience init(identity: String?, map: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
		if nil != map {
			self.map = map
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identity"] as? String {
				self.identity = val
			}
			if let val = js["map"] as? String {
				self.map = val
			}
		}
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
	public var description: String?
	
	/// Element values that used to distinguish the slices
	public var discriminator: [String]?
	
	/// If elements must be in same order as slices
	public var ordered: Bool?
	
	/// closed | open | openAtEnd
	public var rules: String?
	
	public convenience init(rules: String?) {
		self.init(json: nil)
		if nil != rules {
			self.rules = rules
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["discriminator"] as? [String] {
				self.discriminator = val
			}
			if let val = js["ordered"] as? Bool {
				self.ordered = val
			}
			if let val = js["rules"] as? String {
				self.rules = val
			}
		}
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
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["aggregation"] as? [String] {
				self.aggregation = val
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["profile"] as? String {
				self.profile = NSURL(json: val)
			}
		}
	}
}

