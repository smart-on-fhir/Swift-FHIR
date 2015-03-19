//
//  ElementDefinition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/ElementDefinition) on 2015-03-19.
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
	
	public convenience init(path: String?) {
		self.init(json: nil)
		if nil != path {
			self.path = path
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["alias"] as? [String] {
				self.alias = val
			}
			if let val = js["binding"] as? JSONDictionary {
				self.binding = ElementDefinitionBinding(json: val, owner: self)
			}
			if let val = js["code"] as? [JSONDictionary] {
				self.code = Coding.from(val, owner: self) as? [Coding]
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
				self.defaultValueBase64Binary = Base64Binary(string: val)
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
				self.defaultValueDate = Date(string: val)
			}
			if let val = js["defaultValueDateTime"] as? String {
				self.defaultValueDateTime = DateTime(string: val)
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
				self.defaultValueInstant = Instant(string: val)
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
				self.defaultValueTime = Time(string: val)
			}
			if let val = js["defaultValueTiming"] as? JSONDictionary {
				self.defaultValueTiming = Timing(json: val, owner: self)
			}
			if let val = js["defaultValueUri"] as? String {
				self.defaultValueUri = NSURL(string: val)
			}
			if let val = js["definition"] as? String {
				self.definition = val
			}
			if let val = js["exampleAddress"] as? JSONDictionary {
				self.exampleAddress = Address(json: val, owner: self)
			}
			if let val = js["exampleAttachment"] as? JSONDictionary {
				self.exampleAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["exampleBase64Binary"] as? String {
				self.exampleBase64Binary = Base64Binary(string: val)
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
				self.exampleDate = Date(string: val)
			}
			if let val = js["exampleDateTime"] as? String {
				self.exampleDateTime = DateTime(string: val)
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
				self.exampleInstant = Instant(string: val)
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
				self.exampleTime = Time(string: val)
			}
			if let val = js["exampleTiming"] as? JSONDictionary {
				self.exampleTiming = Timing(json: val, owner: self)
			}
			if let val = js["exampleUri"] as? String {
				self.exampleUri = NSURL(string: val)
			}
			if let val = js["fixedAddress"] as? JSONDictionary {
				self.fixedAddress = Address(json: val, owner: self)
			}
			if let val = js["fixedAttachment"] as? JSONDictionary {
				self.fixedAttachment = Attachment(json: val, owner: self)
			}
			if let val = js["fixedBase64Binary"] as? String {
				self.fixedBase64Binary = Base64Binary(string: val)
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
				self.fixedDate = Date(string: val)
			}
			if let val = js["fixedDateTime"] as? String {
				self.fixedDateTime = DateTime(string: val)
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
				self.fixedInstant = Instant(string: val)
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
				self.fixedTime = Time(string: val)
			}
			if let val = js["fixedTiming"] as? JSONDictionary {
				self.fixedTiming = Timing(json: val, owner: self)
			}
			if let val = js["fixedUri"] as? String {
				self.fixedUri = NSURL(string: val)
			}
			if let val = js["isModifier"] as? Bool {
				self.isModifier = val
			}
			if let val = js["isSummary"] as? Bool {
				self.isSummary = val
			}
			if let val = js["label"] as? String {
				self.label = val
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
				self.patternBase64Binary = Base64Binary(string: val)
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
				self.patternDate = Date(string: val)
			}
			if let val = js["patternDateTime"] as? String {
				self.patternDateTime = DateTime(string: val)
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
				self.patternInstant = Instant(string: val)
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
				self.patternTime = Time(string: val)
			}
			if let val = js["patternTiming"] as? JSONDictionary {
				self.patternTiming = Timing(json: val, owner: self)
			}
			if let val = js["patternUri"] as? String {
				self.patternUri = NSURL(string: val)
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
			if let val = js["type"] as? [JSONDictionary] {
				self.type = ElementDefinitionType.from(val, owner: self) as? [ElementDefinitionType]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	public convenience init(name: String?, strength: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
		if nil != strength {
			self.strength = strength
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["strength"] as? String {
				self.strength = val
			}
			if let val = js["valueSetReference"] as? JSONDictionary {
				self.valueSetReference = Reference(json: val, owner: self)
			}
			if let val = js["valueSetUri"] as? String {
				self.valueSetUri = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
	
	override public func asJSON() -> JSONDictionary {
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
			if let val = js["language"] as? String {
				self.language = val
			}
			if let val = js["map"] as? String {
				self.map = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
				self.description_fhir = val
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
	
	override public func asJSON() -> JSONDictionary {
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
				self.profile = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

