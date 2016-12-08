//
//  OperationDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/OperationDefinition) on 2016-12-08.
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
	public var experimental: FHIRBool?
	
	/// Whether content is unchanged by the operation.
	public var idempotent: FHIRBool?
	
	/// Invoke on an instance?.
	public var instance: FHIRBool?
	
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
	public var system: FHIRBool?
	
	/// Invole at the type level?.
	public var type: FHIRBool?
	
	/// Logical uri to reference this operation definition (globally unique).
	public var url: FHIRURL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the operation definition.
	public var version: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: FHIRString, instance: FHIRBool, kind: OperationKind, name: FHIRString, status: PublicationStatus, system: FHIRBool, type: FHIRBool) {
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
		
		base = try createInstance(type: Reference.self, for: "base", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? base
		code = try createInstance(type: FHIRString.self, for: "code", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? code
		if nil == code && !presentKeys.contains("code") {
			errors.append(FHIRValidationError(missing: "code"))
		}
		comment = try createInstance(type: FHIRString.self, for: "comment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comment
		contact = try createInstances(of: ContactDetail.self, for: "contact", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contact
		date = try createInstance(type: DateTime.self, for: "date", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? date
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		experimental = try createInstance(type: FHIRBool.self, for: "experimental", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? experimental
		idempotent = try createInstance(type: FHIRBool.self, for: "idempotent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? idempotent
		instance = try createInstance(type: FHIRBool.self, for: "instance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? instance
		if nil == instance && !presentKeys.contains("instance") {
			errors.append(FHIRValidationError(missing: "instance"))
		}
		jurisdiction = try createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? jurisdiction
		kind = createEnum(type: OperationKind.self, for: "kind", in: json, presentKeys: &presentKeys, errors: &errors) ?? kind
		if nil == kind && !presentKeys.contains("kind") {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		overload = try createInstances(of: OperationDefinitionOverload.self, for: "overload", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? overload
		parameter = try createInstances(of: OperationDefinitionParameter.self, for: "parameter", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parameter
		publisher = try createInstance(type: FHIRString.self, for: "publisher", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? publisher
		purpose = try createInstance(type: FHIRString.self, for: "purpose", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? purpose
		resource = try createInstances(of: FHIRString.self, for: "resource", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? resource
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		if nil == status && !presentKeys.contains("status") {
			errors.append(FHIRValidationError(missing: "status"))
		}
		system = try createInstance(type: FHIRBool.self, for: "system", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? system
		if nil == system && !presentKeys.contains("system") {
			errors.append(FHIRValidationError(missing: "system"))
		}
		type = try createInstance(type: FHIRBool.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		url = try createInstance(type: FHIRURL.self, for: "url", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? url
		useContext = try createInstances(of: UsageContext.self, for: "useContext", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? useContext
		version = try createInstance(type: FHIRString.self, for: "version", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? version
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.base?.decorate(json: &json, withKey: "base", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		self.idempotent?.decorate(json: &json, withKey: "idempotent", errors: &errors)
		self.instance?.decorate(json: &json, withKey: "instance", errors: &errors)
		if nil == self.instance {
			errors.append(FHIRValidationError(missing: "instance"))
		}
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.kind?.decorate(json: &json, withKey: "kind", errors: &errors)
		if nil == self.kind {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "overload", using: self.overload, errors: &errors)
		arrayDecorate(json: &json, withKey: "parameter", using: self.parameter, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		arrayDecorate(json: &json, withKey: "resource", using: self.resource, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.system?.decorate(json: &json, withKey: "system", errors: &errors)
		if nil == self.system {
			errors.append(FHIRValidationError(missing: "system"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
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
		
		comment = try createInstance(type: FHIRString.self, for: "comment", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? comment
		parameterName = try createInstances(of: FHIRString.self, for: "parameterName", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parameterName
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.comment?.decorate(json: &json, withKey: "comment", errors: &errors)
		arrayDecorate(json: &json, withKey: "parameterName", using: self.parameterName, errors: &errors)
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
	public var min: FHIRInteger?
	
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
	public convenience init(max: FHIRString, min: FHIRInteger, name: FHIRString, use: OperationParameterUse) {
		self.init()
		self.max = max
		self.min = min
		self.name = name
		self.use = use
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		binding = try createInstance(type: OperationDefinitionParameterBinding.self, for: "binding", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? binding
		documentation = try createInstance(type: FHIRString.self, for: "documentation", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? documentation
		max = try createInstance(type: FHIRString.self, for: "max", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? max
		if nil == max && !presentKeys.contains("max") {
			errors.append(FHIRValidationError(missing: "max"))
		}
		min = try createInstance(type: FHIRInteger.self, for: "min", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? min
		if nil == min && !presentKeys.contains("min") {
			errors.append(FHIRValidationError(missing: "min"))
		}
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		if nil == name && !presentKeys.contains("name") {
			errors.append(FHIRValidationError(missing: "name"))
		}
		part = try createInstances(of: OperationDefinitionParameter.self, for: "part", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? part
		profile = try createInstance(type: Reference.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		searchType = createEnum(type: SearchParamType.self, for: "searchType", in: json, presentKeys: &presentKeys, errors: &errors) ?? searchType
		type = try createInstance(type: FHIRString.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		use = createEnum(type: OperationParameterUse.self, for: "use", in: json, presentKeys: &presentKeys, errors: &errors) ?? use
		if nil == use && !presentKeys.contains("use") {
			errors.append(FHIRValidationError(missing: "use"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.binding?.decorate(json: &json, withKey: "binding", errors: &errors)
		self.documentation?.decorate(json: &json, withKey: "documentation", errors: &errors)
		self.max?.decorate(json: &json, withKey: "max", errors: &errors)
		if nil == self.max {
			errors.append(FHIRValidationError(missing: "max"))
		}
		self.min?.decorate(json: &json, withKey: "min", errors: &errors)
		if nil == self.min {
			errors.append(FHIRValidationError(missing: "min"))
		}
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		if nil == self.name {
			errors.append(FHIRValidationError(missing: "name"))
		}
		arrayDecorate(json: &json, withKey: "part", using: self.part, errors: &errors)
		self.profile?.decorate(json: &json, withKey: "profile", errors: &errors)
		self.searchType?.decorate(json: &json, withKey: "searchType", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		self.use?.decorate(json: &json, withKey: "use", errors: &errors)
		if nil == self.use {
			errors.append(FHIRValidationError(missing: "use"))
		}
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
	public var valueSetUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(strength: BindingStrength, valueSet: Any) {
		self.init()
		self.strength = strength
		if let value = valueSet as? FHIRURL {
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
		
		strength = createEnum(type: BindingStrength.self, for: "strength", in: json, presentKeys: &presentKeys, errors: &errors) ?? strength
		if nil == strength && !presentKeys.contains("strength") {
			errors.append(FHIRValidationError(missing: "strength"))
		}
		valueSetReference = try createInstance(type: Reference.self, for: "valueSetReference", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSetReference
		valueSetUri = try createInstance(type: FHIRURL.self, for: "valueSetUri", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? valueSetUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.valueSetUri && nil == self.valueSetReference {
			errors.append(FHIRValidationError(missing: "valueSet[x]"))
		}
		
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.strength?.decorate(json: &json, withKey: "strength", errors: &errors)
		if nil == self.strength {
			errors.append(FHIRValidationError(missing: "strength"))
		}
		self.valueSetReference?.decorate(json: &json, withKey: "valueSetReference", errors: &errors)
		self.valueSetUri?.decorate(json: &json, withKey: "valueSetUri", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.valueSetUri && nil == self.valueSetReference {
			errors.append(FHIRValidationError(missing: "valueSet[x]"))
		}
	}
}

