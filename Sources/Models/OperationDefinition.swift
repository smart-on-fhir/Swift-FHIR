//
//  OperationDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/OperationDefinition) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Definition of an operation or a named query.
 *
 *  A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
 *  interaction).
 */
public class OperationDefinition: DomainResource {
	override public class var resourceName: String {
		get { return "OperationDefinition" }
	}
	
	/// Marks this as a profile of the base.
	public var base: Reference?
	
	/// Name used to invoke the operation.
	public var code: String?
	
	/// Additional information about use.
	public var comment: String?
	
	/// Contact details of the publisher.
	public var contact: [OperationDefinitionContact]?
	
	/// Date for this version of the operation definition.
	public var date: DateTime?
	
	/// Natural language description of the operation.
	public var description_fhir: String?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Whether content is unchanged by the operation.
	public var idempotent: Bool?
	
	/// Invoke on an instance?.
	public var instance: Bool?
	
	/// operation | query.
	public var kind: String?
	
	/// Informal name for this operation.
	public var name: String?
	
	/// Parameters for the operation/query.
	public var parameter: [OperationDefinitionParameter]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this resource has been created.
	public var requirements: String?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Invoke at the system level?.
	public var system: Bool?
	
	/// Invoke at resource level for these type.
	public var type: [String]?
	
	/// Logical URL to reference this operation definition.
	public var url: NSURL?
	
	/// Content intends to support these contexts.
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the operation definition.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String, instance: Bool, kind: String, name: String, status: String, system: Bool) {
		self.init(json: nil)
		self.code = code
		self.instance = instance
		self.kind = kind
		self.name = name
		self.status = status
		self.system = system
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["base"] {
				presentKeys.insert("base")
				if let val = exist as? FHIRJSON {
					self.base = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "base", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["comment"] {
				presentKeys.insert("comment")
				if let val = exist as? String {
					self.comment = val
				}
				else {
					errors.append(FHIRJSONError(key: "comment", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = OperationDefinitionContact.from(val, owner: self) as? [OperationDefinitionContact]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.insert("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(FHIRJSONError(key: "experimental", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["idempotent"] {
				presentKeys.insert("idempotent")
				if let val = exist as? Bool {
					self.idempotent = val
				}
				else {
					errors.append(FHIRJSONError(key: "idempotent", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["instance"] {
				presentKeys.insert("instance")
				if let val = exist as? Bool {
					self.instance = val
				}
				else {
					errors.append(FHIRJSONError(key: "instance", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "instance"))
			}
			if let exist: AnyObject = js["kind"] {
				presentKeys.insert("kind")
				if let val = exist as? String {
					self.kind = val
				}
				else {
					errors.append(FHIRJSONError(key: "kind", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "kind"))
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
			if let exist: AnyObject = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = OperationDefinitionParameter.from(val, owner: self) as? [OperationDefinitionParameter]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.insert("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(FHIRJSONError(key: "publisher", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["system"] {
				presentKeys.insert("system")
				if let val = exist as? Bool {
					self.system = val
				}
				else {
					errors.append(FHIRJSONError(key: "system", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "system"))
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [String] {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.insert("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "useContext", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: exist.dynamicType))
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
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
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
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
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
public class OperationDefinitionContact: BackboneElement {
	override public class var resourceName: String {
		get { return "OperationDefinitionContact" }
	}
	
	/// Name of an individual to contact.
	public var name: String?
	
	/// Contact details for individual or publisher.
	public var telecom: [ContactPoint]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.insert("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "telecom", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
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
public class OperationDefinitionParameter: BackboneElement {
	override public class var resourceName: String {
		get { return "OperationDefinitionParameter" }
	}
	
	/// ValueSet details if this is coded.
	public var binding: OperationDefinitionParameterBinding?
	
	/// Description of meaning/use.
	public var documentation: String?
	
	/// Maximum Cardinality (a number or *).
	public var max: String?
	
	/// Minimum Cardinality.
	public var min: Int?
	
	/// Name in Parameters.parameter.name or in URL.
	public var name: String?
	
	/// Parts of a nested Parameter.
	public var part: [OperationDefinitionParameter]?
	
	/// Profile on the type.
	public var profile: Reference?
	
	/// number | date | string | token | reference | composite | quantity | uri.
	public var searchType: String?
	
	/// What type this parameter has.
	public var type: String?
	
	/// in | out.
	public var use: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(max: String, min: Int, name: String, use: String) {
		self.init(json: nil)
		self.max = max
		self.min = min
		self.name = name
		self.use = use
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["binding"] {
				presentKeys.insert("binding")
				if let val = exist as? FHIRJSON {
					self.binding = OperationDefinitionParameterBinding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "binding", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["part"] {
				presentKeys.insert("part")
				if let val = exist as? [FHIRJSON] {
					self.part = OperationDefinitionParameter.from(val, owner: self) as? [OperationDefinitionParameter]
				}
				else {
					errors.append(FHIRJSONError(key: "part", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["searchType"] {
				presentKeys.insert("searchType")
				if let val = exist as? String {
					self.searchType = val
				}
				else {
					errors.append(FHIRJSONError(key: "searchType", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "use"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let binding = self.binding {
			json["binding"] = binding.asJSON()
		}
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
			json["part"] = OperationDefinitionParameter.asJSONArray(part)
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let searchType = self.searchType {
			json["searchType"] = searchType.asJSON()
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
 *  ValueSet details if this is coded.
 *
 *  Binds to a value set if this parameter is coded (code, Coding, CodeableConcept).
 */
public class OperationDefinitionParameterBinding: BackboneElement {
	override public class var resourceName: String {
		get { return "OperationDefinitionParameterBinding" }
	}
	
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
	public convenience init(strength: String, valueSetReference: Reference, valueSetUri: NSURL) {
		self.init(json: nil)
		self.strength = strength
		self.valueSetReference = valueSetReference
		self.valueSetUri = valueSetUri
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
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
			
			// check if nonoptional expanded properties are present
			if nil == self.valueSetUri && nil == self.valueSetReference {
				errors.append(FHIRJSONError(key: "valueSet*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
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

