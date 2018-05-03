//
//  UserSession.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/UserSession) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Information about a user's current session.
*/
open class UserSession: DomainResource {
	override open class var resourceType: String {
		get { return "UserSession" }
	}
	
	/// Additional information about the session.
	public var context: [UserSessionContext]?
	
	/// When was the session created.
	public var created: Instant?
	
	/// When does the session expire.
	public var expires: Instant?
	
	/// What is the user's current focus.
	public var focus: [Reference]?
	
	/// Business identifier.
	public var identifier: Identifier?
	
	/// Status of the session.
	public var status: UserSessionStatus?
	
	/// User engaged in the session.
	public var user: Reference?
	
	/// Where is the session.
	public var workstation: Identifier?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(user: Reference) {
		self.init()
		self.user = user
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		context = createInstances(of: UserSessionContext.self, for: "context", in: json, context: &instCtx, owner: self) ?? context
		created = createInstance(type: Instant.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		expires = createInstance(type: Instant.self, for: "expires", in: json, context: &instCtx, owner: self) ?? expires
		focus = createInstances(of: Reference.self, for: "focus", in: json, context: &instCtx, owner: self) ?? focus
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		status = createInstance(type: UserSessionStatus.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		user = createInstance(type: Reference.self, for: "user", in: json, context: &instCtx, owner: self) ?? user
		if nil == user && !instCtx.containsKey("user") {
			instCtx.addError(FHIRValidationError(missing: "user"))
		}
		workstation = createInstance(type: Identifier.self, for: "workstation", in: json, context: &instCtx, owner: self) ?? workstation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "context", using: self.context, errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.expires?.decorate(json: &json, withKey: "expires", errors: &errors)
		arrayDecorate(json: &json, withKey: "focus", using: self.focus, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.user?.decorate(json: &json, withKey: "user", errors: &errors)
		if nil == self.user {
			errors.append(FHIRValidationError(missing: "user"))
		}
		self.workstation?.decorate(json: &json, withKey: "workstation", errors: &errors)
	}
}


/**
Additional information about the session.

Provides additional information associated with the context.
*/
open class UserSessionContext: BackboneElement {
	override open class var resourceType: String {
		get { return "UserSessionContext" }
	}
	
	/// What type of context value.
	public var type: FHIRString?
	
	/// Value of the context.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value of the context.
	public var valueQuantity: Quantity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: FHIRString) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
	}
}


/**
Status of the session.
*/
open class UserSessionStatus: BackboneElement {
	override open class var resourceType: String {
		get { return "UserSessionStatus" }
	}
	
	/// The current status of the user session.
	public var code: UserSessionStatusEnum?
	
	/// The source of the status code.
	public var source: UserSessionStatusSource?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: UserSessionStatusEnum, source: UserSessionStatusSource) {
		self.init()
		self.code = code
		self.source = source
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createEnum(type: UserSessionStatusEnum.self, for: "code", in: json, context: &instCtx) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		source = createEnum(type: UserSessionStatusSource.self, for: "source", in: json, context: &instCtx) ?? source
		if nil == source && !instCtx.containsKey("source") {
			instCtx.addError(FHIRValidationError(missing: "source"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		if nil == self.source {
			errors.append(FHIRValidationError(missing: "source"))
		}
	}
}

