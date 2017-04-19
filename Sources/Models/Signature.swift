//
//  Signature.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Signature) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
A digital Signature - XML DigSig, JWT, Graphical image of signature, etc..

A digital signature along with supporting context. The signature may be electronic/cryptographic in nature, or a
graphical image representing a hand-written signature, or a signature process. Different signature approaches have
different utilities.
*/
open class Signature: Element {
	override open class var resourceType: String {
		get { return "Signature" }
	}
	
	/// The actual signature content (XML DigSig. JWT, picture, etc.).
	public var blob: Base64Binary?
	
	/// The technical format of the signature.
	public var contentType: FHIRString?
	
	/// The party represented.
	public var onBehalfOfReference: Reference?
	
	/// The party represented.
	public var onBehalfOfUri: FHIRURL?
	
	/// Indication of the reason the entity signed the object(s).
	public var type: [Coding]?
	
	/// When the signature was created.
	public var when: Instant?
	
	/// Who signed.
	public var whoReference: Reference?
	
	/// Who signed.
	public var whoUri: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: [Coding], when: Instant, who: Any) {
		self.init()
		self.type = type
		self.when = when
		if let value = who as? FHIRURL {
			self.whoUri = value
		}
		else if let value = who as? Reference {
			self.whoReference = value
		}
		else {
			fhir_warn("Type “\(type(of: who))” for property “\(who)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		blob = createInstance(type: Base64Binary.self, for: "blob", in: json, context: &instCtx, owner: self) ?? blob
		contentType = createInstance(type: FHIRString.self, for: "contentType", in: json, context: &instCtx, owner: self) ?? contentType
		onBehalfOfReference = createInstance(type: Reference.self, for: "onBehalfOfReference", in: json, context: &instCtx, owner: self) ?? onBehalfOfReference
		onBehalfOfUri = createInstance(type: FHIRURL.self, for: "onBehalfOfUri", in: json, context: &instCtx, owner: self) ?? onBehalfOfUri
		type = createInstances(of: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if (nil == type || type!.isEmpty) && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		when = createInstance(type: Instant.self, for: "when", in: json, context: &instCtx, owner: self) ?? when
		if nil == when && !instCtx.containsKey("when") {
			instCtx.addError(FHIRValidationError(missing: "when"))
		}
		whoReference = createInstance(type: Reference.self, for: "whoReference", in: json, context: &instCtx, owner: self) ?? whoReference
		whoUri = createInstance(type: FHIRURL.self, for: "whoUri", in: json, context: &instCtx, owner: self) ?? whoUri
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.whoUri && nil == self.whoReference {
			instCtx.addError(FHIRValidationError(missing: "who[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.blob?.decorate(json: &json, withKey: "blob", errors: &errors)
		self.contentType?.decorate(json: &json, withKey: "contentType", errors: &errors)
		self.onBehalfOfReference?.decorate(json: &json, withKey: "onBehalfOfReference", errors: &errors)
		self.onBehalfOfUri?.decorate(json: &json, withKey: "onBehalfOfUri", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
		if nil == type || self.type!.isEmpty {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.when?.decorate(json: &json, withKey: "when", errors: &errors)
		if nil == self.when {
			errors.append(FHIRValidationError(missing: "when"))
		}
		self.whoReference?.decorate(json: &json, withKey: "whoReference", errors: &errors)
		self.whoUri?.decorate(json: &json, withKey: "whoUri", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.whoUri && nil == self.whoReference {
			errors.append(FHIRValidationError(missing: "who[x]"))
		}
	}
}

