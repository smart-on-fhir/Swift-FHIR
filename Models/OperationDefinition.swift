//
//  OperationDefinition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/OperationDefinition) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Definition of an operation or a named query.
 *
 *  A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
 *  interaction).
 */
public class OperationDefinition: DomainResource
{
	override public class var resourceName: String {
		get { return "OperationDefinition" }
	}
	
	/// Marks this as a profile of the base
	public var base: Reference?
	
	/// Name used to invoke the operation
	public var code: String?
	
	/// Contact details of the publisher
	public var contact: [OperationDefinitionContact]?
	
	/// Date for this version of the operation definition
	public var date: DateTime?
	
	/// Natural language description of the operation
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Invoke on an instance?
	public var instance: Bool?
	
	/// operation | query
	public var kind: String?
	
	/// Informal name for this profile
	public var name: String?
	
	/// Additional information about use
	public var notes: String?
	
	/// Parameters for the operation/query
	public var parameter: [OperationDefinitionParameter]?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Why is this needed?
	public var requirements: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// Invoke at the system level?
	public var system: Bool?
	
	/// Invoke at resource level for these type
	public var type: [String]?
	
	/// Logical url to reference this operation definition
	public var url: NSURL?
	
	/// Logical id for this version of the operation definition
	public var version: String?
	
	public convenience init(code: String?, instance: Bool?, kind: String?, name: String?, status: String?, system: Bool?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
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
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["base"] as? FHIRJSON {
				self.base = Reference(json: val, owner: self)
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["contact"] as? [FHIRJSON] {
				self.contact = OperationDefinitionContact.from(val, owner: self) as? [OperationDefinitionContact]
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
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
			if let val = js["parameter"] as? [FHIRJSON] {
				self.parameter = OperationDefinitionParameter.from(val, owner: self) as? [OperationDefinitionParameter]
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["system"] as? Bool {
				self.system = val
			}
			if let val = js["type"] as? [String] {
				self.type = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = OperationDefinitionContact.asJSONArray(contact)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let instance = self.instance {
			json["instance"] = instance.asJSON()
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let notes = self.notes {
			json["notes"] = notes.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = OperationDefinitionParameter.asJSONArray(parameter)
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let type = self.type {
			var arr = [AnyObject]()
			for val in type {
				arr.append(val.asJSON())
			}
			json["type"] = arr
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class OperationDefinitionContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "OperationDefinitionContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["telecom"] as? [FHIRJSON] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
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
	
	public required init(json: FHIRJSON?) {
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
			if let val = js["part"] as? [FHIRJSON] {
				self.part = OperationDefinitionParameterPart.from(val, owner: self) as? [OperationDefinitionParameterPart]
			}
			if let val = js["profile"] as? FHIRJSON {
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
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let max = self.max {
			json["max"] = max.asJSON()
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let part = self.part {
			json["part"] = OperationDefinitionParameterPart.asJSONArray(part)
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
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
	
	public required init(json: FHIRJSON?) {
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
			if let val = js["profile"] as? FHIRJSON {
				self.profile = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let max = self.max {
			json["max"] = max.asJSON()
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

