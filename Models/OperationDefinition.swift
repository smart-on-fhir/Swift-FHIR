//
//  OperationDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/OperationDefinition) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	/// Whether operation causes changes to content
	public var idempotent: Bool?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["base"] {
				presentKeys.addObject("base")
				if let val = exist as? FHIRJSON {
					self.base = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"base\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = OperationDefinitionContact.from(val, owner: self) as? [OperationDefinitionContact]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.addObject("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"experimental\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["idempotent"] {
				presentKeys.addObject("idempotent")
				if let val = exist as? Bool {
					self.idempotent = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"idempotent\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["instance"] {
				presentKeys.addObject("instance")
				if let val = exist as? Bool {
					self.instance = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"instance\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"instance\" but it is missing"))
			}
			if let exist: AnyObject = js["kind"] {
				presentKeys.addObject("kind")
				if let val = exist as? String {
					self.kind = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"kind\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"kind\" but it is missing"))
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
			if let exist: AnyObject = js["notes"] {
				presentKeys.addObject("notes")
				if let val = exist as? String {
					self.notes = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"notes\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["parameter"] {
				presentKeys.addObject("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = OperationDefinitionParameter.from(val, owner: self) as? [OperationDefinitionParameter]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"parameter\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.addObject("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"publisher\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["system"] {
				presentKeys.addObject("system")
				if let val = exist as? Bool {
					self.system = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"system\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"system\" but it is missing"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? [String] {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
		if let idempotent = self.idempotent {
			json["idempotent"] = idempotent.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.addObject("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentation\" to be `String`, but is \(exist.dynamicType)"))
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
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"max\" but it is missing"))
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
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"min\" but it is missing"))
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
			if let exist: AnyObject = js["part"] {
				presentKeys.addObject("part")
				if let val = exist as? [FHIRJSON] {
					self.part = OperationDefinitionParameterPart.from(val, owner: self) as? [OperationDefinitionParameterPart]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"part\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.addObject("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"profile\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.addObject("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"use\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"use\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
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
	public var min: UInt?
	
	/// Name of the parameter
	public var name: String?
	
	/// Profile on the type
	public var profile: Reference?
	
	/// What type this parameter hs
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(max: String?, min: UInt?, name: String?, type: String?) {
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
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["documentation"] {
				presentKeys.addObject("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"documentation\" to be `String`, but is \(exist.dynamicType)"))
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
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"max\" but it is missing"))
			}
			if let exist: AnyObject = js["min"] {
				presentKeys.addObject("min")
				if let val = exist as? UInt {
					self.min = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"min\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"min\" but it is missing"))
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
			if let exist: AnyObject = js["profile"] {
				presentKeys.addObject("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"profile\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
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

