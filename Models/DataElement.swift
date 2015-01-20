//
//  DataElement.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (dataelement.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Resource data element.
 *
 *  The formal description of a single piece of information that can be gathered and reported.
 */
public class DataElement: FHIRResource
{
	override public class var resourceName: String {
		get { return "DataElement" }
	}
	
	/// ValueSet details if this is coded
	public var binding: DataElementBinding?
	
	/// Assist with indexing and finding
	public var category: [CodeableConcept]?
	
	/// Identifying concept
	public var code: [Coding]?
	
	/// Comments about the use of this element
	public var comments: String?
	
	/// Date for this version of the data element
	public var date: DateTime?
	
	/// Definition/description as narrative text
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
	
	/// comparable | fully specified | equivalent | convertable | scaleable | flexible
	public var granularity: String?
	
	/// Logical id to reference this data element
	public var identifier: Identifier?
	
	/// Name for element to display with or prompt for element
	public var label: String?
	
	/// Map element to another set of definitions
	public var mapping: [DataElementMapping]?
	
	/// Length for strings
	public var maxLength: Int?
	
	/// Descriptive label for this element definition
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Prompt for element phrased as question
	public var question: String?
	
	/// Why is this needed?
	public var requirements: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// Other names
	public var synonym: [String]?
	
	/// Contact information of the publisher
	public var telecom: [ContactPoint]?
	
	/// Name of Data type
	public var type: String?
	
	/// Units to use for measured value
	public var unitsCodeableConcept: CodeableConcept?
	
	/// Units to use for measured value
	public var unitsReference: Reference?
	
	/// Logical id for this version of the data element
	public var version: String?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["binding"] as? JSONDictionary {
				self.binding = DataElementBinding(json: val, owner: self)
			}
			if let val = js["category"] as? [JSONDictionary] {
				self.category = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["code"] as? [JSONDictionary] {
				self.code = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
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
			if let val = js["granularity"] as? String {
				self.granularity = val
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["label"] as? String {
				self.label = val
			}
			if let val = js["mapping"] as? [JSONDictionary] {
				self.mapping = DataElementMapping.from(val, owner: self) as? [DataElementMapping]
			}
			if let val = js["maxLength"] as? Int {
				self.maxLength = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["question"] as? String {
				self.question = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["synonym"] as? [String] {
				self.synonym = val
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["unitsCodeableConcept"] as? JSONDictionary {
				self.unitsCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["unitsReference"] as? JSONDictionary {
				self.unitsReference = Reference(json: val, owner: self)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}


/**
 *  ValueSet details if this is coded.
 *
 *  Binds to a value set if this element is coded (code, Coding, CodeableConcept).
 */
public class DataElementBinding: FHIRElement
{
	override public class var resourceName: String {
		get { return "DataElementBinding" }
	}
	
	/// required | preferred | example
	public var conformance: String?
	
	/// Human explanation of the value set
	public var description: String?
	
	/// Can additional codes be used?
	public var isExtensible: Bool?
	
	/// Source of value set
	public var valueSet: Reference?
	
	public convenience init(isExtensible: Bool?) {
		self.init(json: nil)
		if nil != isExtensible {
			self.isExtensible = isExtensible
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
			if let val = js["valueSet"] as? JSONDictionary {
				self.valueSet = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  Map element to another set of definitions.
 *
 *  Identifies a concept from an external specification that roughly corresponds to this element.
 */
public class DataElementMapping: FHIRElement
{
	override public class var resourceName: String {
		get { return "DataElementMapping" }
	}
	
	/// Versions, Issues, Scope limitations etc
	public var comments: String?
	
	/// True if mapping defines element
	public var definitional: Bool?
	
	/// Details of the mapping
	public var map: String?
	
	/// Names what this mapping refers to
	public var name: String?
	
	/// Identifies what this mapping refers to
	public var uri: NSURL?
	
	public convenience init(map: String?) {
		self.init(json: nil)
		if nil != map {
			self.map = map
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["definitional"] as? Bool {
				self.definitional = val
			}
			if let val = js["map"] as? String {
				self.map = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["uri"] as? String {
				self.uri = NSURL(string: val)
			}
		}
	}
}

