//
//  OperationDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/OperationDefinition) on 2016-12-06.
//  2016, SMART Health IT.
//

import Foundation


/**
Definition of an operation or a named query.

A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
interaction).
*/
open class OperationDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "OperationDefinition" }
	}
	
	/// Marks this as a profile of the base.
	public var base: Reference?
	
	/// Name used to invoke the operation.
	public var code: FHIRString?
	
	/// Additional information about use.
	public var comment: FHIRString?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the operation definition.
	public var description_fhir: FHIRString?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// Whether content is unchanged by the operation.
	public var idempotent: Bool?
	
	/// Invoke on an instance?.
	public var instance: Bool?
	
	/// Intended jurisdiction for operation definition (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Whether this is an operation or a named query.
	public var kind: OperationKind?
	
	/// Name for this operation definition (Computer friendly).
	public var name: FHIRString?
	
	/// For generating overloaded methods in code.
	public var overload: [OperationDefinitionOverload]?
	
	/// Parameters for the operation/query.
	public var parameter: [OperationDefinitionParameter]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: FHIRString?
	
	/// Why this operation definition is defined.
	public var purpose: FHIRString?
	
	/// Types this operation applies to.
	public var resource: [FHIRString]?
	
	/// The status of this operation definition. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Invoke at the system level?.
	public var system: Bool?
	
	/// Invole at the type level?.
	public var type: Bool?
	
	/// Logical uri to reference this operation definition (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the operation definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString, instance: Bool, kind: OperationKind, name: FHIRString, status: PublicationStatus, system: Bool, type: Bool) {
		self.init()
		self.code = code
		self.instance = instance
		self.kind = kind
		self.name = name
		self.status = status
		self.system = system
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["base"] {
			presentKeys.insert("base")
			if let val = exist as? FHIRJSON {
				do {
					self.base = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "base"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "base", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["comment"] {
			presentKeys.insert("comment")
			if let val = exist as? String {
				self.comment = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "comment", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["idempotent"] {
			presentKeys.insert("idempotent")
			if let val = exist as? Bool {
				self.idempotent = val
			}
			else {
				errors.append(FHIRValidationError(key: "idempotent", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["instance"] {
			presentKeys.insert("instance")
			if let val = exist as? Bool {
				self.instance = val
			}
			else {
				errors.append(FHIRValidationError(key: "instance", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "instance"))
		}
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["kind"] {
			presentKeys.insert("kind")
			if let val = exist as? String {
				if let enumval = OperationKind(rawValue: val) {
					self.kind = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "kind", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "kind", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["overload"] {
			presentKeys.insert("overload")
			if let val = exist as? [FHIRJSON] {
				do {
					self.overload = try OperationDefinitionOverload.instantiate(fromArray: val, owner: self) as? [OperationDefinitionOverload]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "overload"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "overload", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["parameter"] {
			presentKeys.insert("parameter")
			if let val = exist as? [FHIRJSON] {
				do {
					self.parameter = try OperationDefinitionParameter.instantiate(fromArray: val, owner: self) as? [OperationDefinitionParameter]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parameter"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parameter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? [String] {
				self.resource = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = PublicationStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["system"] {
			presentKeys.insert("system")
			if let val = exist as? Bool {
				self.system = val
			}
			else {
				errors.append(FHIRValidationError(key: "system", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "system"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? Bool {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let base = self.base {
			json["base"] = base.asJSON(errors: &errors)
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
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
		else {
			errors.append(FHIRValidationError(missing: "instance"))
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let kind = self.kind {
			json["kind"] = kind.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let overload = self.overload {
			json["overload"] = overload.map() { $0.asJSON(errors: &errors) }
		}
		if let parameter = self.parameter {
			json["parameter"] = parameter.map() { $0.asJSON(errors: &errors) }
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let resource = self.resource {
			json["resource"] = resource.map() { $0.asJSON() }
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "system"))
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
For generating overloaded methods in code.

Defines an appropriate combination of parameters to use when invoking this operation.
*/
open class OperationDefinitionOverload: BackboneElement {
	override open class var resourceType: String {
		get { return "OperationDefinitionOverload" }
	}
	
	/// Comments to go on overload.
	public var comment: FHIRString?
	
	/// Name of parameter to include in overload.
	public var parameterName: [FHIRString]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["comment"] {
			presentKeys.insert("comment")
			if let val = exist as? String {
				self.comment = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "comment", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["parameterName"] {
			presentKeys.insert("parameterName")
			if let val = exist as? [String] {
				self.parameterName = FHIRString.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "parameterName", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let parameterName = self.parameterName {
			json["parameterName"] = parameterName.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
Parameters for the operation/query.

The parameters for the operation/query.
*/
open class OperationDefinitionParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "OperationDefinitionParameter" }
	}
	
	/// ValueSet details if this is coded.
	public var binding: OperationDefinitionParameterBinding?
	
	/// Description of meaning/use.
	public var documentation: FHIRString?
	
	/// Maximum Cardinality (a number or *).
	public var max: FHIRString?
	
	/// Minimum Cardinality.
	public var min: Int?
	
	/// Name in Parameters.parameter.name or in URL.
	public var name: FHIRString?
	
	/// Parts of a nested Parameter.
	public var part: [OperationDefinitionParameter]?
	
	/// Profile on the type.
	public var profile: Reference?
	
	/// How the parameter is understood as a search parameter. This is only used if the parameter type is 'string'.
	public var searchType: SearchParamType?
	
	/// What type this parameter has.
	public var type: FHIRString?
	
	/// Whether this is an input or an output parameter.
	public var use: OperationParameterUse?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(max: FHIRString, min: Int, name: FHIRString, use: OperationParameterUse) {
		self.init()
		self.max = max
		self.min = min
		self.name = name
		self.use = use
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["binding"] {
			presentKeys.insert("binding")
			if let val = exist as? FHIRJSON {
				do {
					self.binding = try OperationDefinitionParameterBinding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "binding"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "binding", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["max"] {
			presentKeys.insert("max")
			if let val = exist as? String {
				self.max = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "max", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "max"))
		}
		if let exist = json["min"] {
			presentKeys.insert("min")
			if let val = exist as? Int {
				self.min = val
			}
			else {
				errors.append(FHIRValidationError(key: "min", wants: Int.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "min"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["part"] {
			presentKeys.insert("part")
			if let val = exist as? [FHIRJSON] {
				do {
					self.part = try OperationDefinitionParameter.instantiate(fromArray: val, owner: self) as? [OperationDefinitionParameter]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "part"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "part", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["searchType"] {
			presentKeys.insert("searchType")
			if let val = exist as? String {
				if let enumval = SearchParamType(rawValue: val) {
					self.searchType = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "searchType", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "searchType", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["use"] {
			presentKeys.insert("use")
			if let val = exist as? String {
				if let enumval = OperationParameterUse(rawValue: val) {
					self.use = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "use", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "use", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "use"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let binding = self.binding {
			json["binding"] = binding.asJSON(errors: &errors)
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let max = self.max {
			json["max"] = max.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "max"))
		}
		if let min = self.min {
			json["min"] = min.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "min"))
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let part = self.part {
			json["part"] = part.map() { $0.asJSON(errors: &errors) }
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		if let searchType = self.searchType {
			json["searchType"] = searchType.rawValue
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let use = self.use {
			json["use"] = use.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "use"))
		}
		
		return json
	}
}


/**
ValueSet details if this is coded.

Binds to a value set if this parameter is coded (code, Coding, CodeableConcept).
*/
open class OperationDefinitionParameterBinding: BackboneElement {
	override open class var resourceType: String {
		get { return "OperationDefinitionParameterBinding" }
	}
	
	/// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the
	/// provided value set must be adhered to in the instances.
	public var strength: BindingStrength?
	
	/// Source of value set.
	public var valueSetReference: Reference?
	
	/// Source of value set.
	public var valueSetUri: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(strength: BindingStrength, valueSet: Any) {
		self.init()
		self.strength = strength
		if let value = valueSet as? URL {
			self.valueSetUri = value
		}
		else if let value = valueSet as? Reference {
			self.valueSetReference = value
		}
		else {
			fhir_warn("Type “\(type(of: valueSet))” for property “\(valueSet)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["strength"] {
			presentKeys.insert("strength")
			if let val = exist as? String {
				if let enumval = BindingStrength(rawValue: val) {
					self.strength = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "strength", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "strength", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "strength"))
		}
		if let exist = json["valueSetReference"] {
			presentKeys.insert("valueSetReference")
			if let val = exist as? FHIRJSON {
				do {
					self.valueSetReference = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "valueSetReference"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "valueSetReference", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["valueSetUri"] {
			presentKeys.insert("valueSetUri")
			if let val = exist as? String {
				self.valueSetUri = URL(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "valueSetUri", wants: String.self, has: type(of: exist)))
			}
		}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueSetUri && nil == self.valueSetReference {
			errors.append(FHIRValidationError(missing: "valueSet[x]"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let strength = self.strength {
			json["strength"] = strength.rawValue
		}
		else {
			errors.append(FHIRValidationError(missing: "strength"))
		}
		if let valueSetReference = self.valueSetReference {
			json["valueSetReference"] = valueSetReference.asJSON(errors: &errors)
		}
		if let valueSetUri = self.valueSetUri {
			json["valueSetUri"] = valueSetUri.asJSON()
		}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueSetUri && nil == self.valueSetReference {
			errors.append(FHIRValidationError(missing: "valueSet[x]"))
		}
		
		return json
	}
}

