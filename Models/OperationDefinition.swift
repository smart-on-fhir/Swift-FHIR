//
//  OperationDefinition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (operationdefinition.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Definition of an operation or a named query.
 *
 *  A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
 *  interaction).
 */
public class OperationDefinition: FHIRResource
{
	override public class var resourceName: String {
		get { return "OperationDefinition" }
	}
	
	/// Marks this as a profile of the base
	public var base: Reference?
	
	/// Assist with indexing and finding
	public var code: [Coding]?
	
	/// Date for this version of the operation definition
	public var date: NSDate?
	
	/// Natural language description of the operation
	public var description: String?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Logical id to reference this operation definition
	public var identifier: NSURL?
	
	/// Invoke on an instance?
	public var instance: Bool?
	
	/// operation | query
	public var kind: String?
	
	/// Name used to invoke the operation
	public var name: String?
	
	/// Additional information about use
	public var notes: String?
	
	/// Parameters for the operation/query
	public var parameter: [OperationDefinitionParameter]?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// Invoke at the system level?
	public var system: Bool?
	
	/// Contact information of the publisher
	public var telecom: [ContactPoint]?
	
	/// Informal name for this profile
	public var title: String?
	
	/// Invoke at resource level for these type
	public var type: [String]?
	
	/// Logical id for this version of the operation definition
	public var version: String?
	
	public convenience init(instance: Bool?, kind: String?, name: String?, status: String?, system: Bool?, title: String?) {
		self.init(json: nil)
		if nil != instance {
			self.instance = instance
		}
		if nil != kind {
			self.kind = kind
		}
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
		if nil != system {
			self.system = system
		}
		if nil != title {
			self.title = title
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["base"] as? NSDictionary {
				self.base = Reference(json: val, owner: self)
			}
			if let val = js["code"] as? [NSDictionary] {
				self.code = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["identifier"] as? String {
				self.identifier = NSURL(json: val)
			}
			if let val = js["instance"] as? Bool {
				self.instance = val
			}
			if let val = js["kind"] as? String {
				self.kind = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["parameter"] as? [NSDictionary] {
				self.parameter = OperationDefinitionParameter.from(val, owner: self) as? [OperationDefinitionParameter]
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["system"] as? Bool {
				self.system = val
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["title"] as? String {
				self.title = val
			}
			if let val = js["type"] as? [String] {
				self.type = val
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
}


/**
 *  Parameters for the operation/query.
 *
 *  The parameters for the operation/query.
 */
public class OperationDefinitionParameter: FHIRElement
{
	override public class var resourceName: String {
		get { return "OperationDefinitionParameter" }
	}
	
	/// Description of meaning/use
	public var documentation: String?
	
	/// Maximum Cardinality (a number or *)
	public var max: String?
	
	/// Minimum Cardinality
	public var min: Int?
	
	/// Name of the parameter
	public var name: String?
	
	/// Parts of a Tuple Parameter
	public var part: [OperationDefinitionParameterPart]?
	
	/// Profile on the type
	public var profile: Reference?
	
	/// What type this parameter hs
	public var type: String?
	
	/// in | out
	public var use: String?
	
	public convenience init(max: String?, min: Int?, name: String?, use: String?) {
		self.init(json: nil)
		if nil != max {
			self.max = max
		}
		if nil != min {
			self.min = min
		}
		if nil != name {
			self.name = name
		}
		if nil != use {
			self.use = use
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["max"] as? String {
				self.max = val
			}
			if let val = js["min"] as? Int {
				self.min = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["part"] as? [NSDictionary] {
				self.part = OperationDefinitionParameterPart.from(val, owner: self) as? [OperationDefinitionParameterPart]
			}
			if let val = js["profile"] as? NSDictionary {
				self.profile = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["use"] as? String {
				self.use = val
			}
		}
	}
}


/**
 *  Parts of a Tuple Parameter.
 *
 *  The parts of a Tuple Parameter.
 */
public class OperationDefinitionParameterPart: FHIRElement
{
	override public class var resourceName: String {
		get { return "OperationDefinitionParameterPart" }
	}
	
	/// Description of meaning/use
	public var documentation: String?
	
	/// Maximum Cardinality (a number or *)
	public var max: String?
	
	/// Minimum Cardinality
	public var min: Int?
	
	/// Name of the parameter
	public var name: String?
	
	/// Profile on the type
	public var profile: Reference?
	
	/// What type this parameter hs
	public var type: String?
	
	public convenience init(max: String?, min: Int?, name: String?, type: String?) {
		self.init(json: nil)
		if nil != max {
			self.max = max
		}
		if nil != min {
			self.min = min
		}
		if nil != name {
			self.name = name
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["documentation"] as? String {
				self.documentation = val
			}
			if let val = js["max"] as? String {
				self.max = val
			}
			if let val = js["min"] as? Int {
				self.min = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["profile"] as? NSDictionary {
				self.profile = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}

