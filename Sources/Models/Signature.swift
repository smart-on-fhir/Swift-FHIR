//
//  Signature.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Signature) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A Signature - XML DigSig, JWS, Graphical image of signature, etc..

A signature along with supporting context. The signature may be a digital signature that is cryptographic in nature, or
some other signature acceptable to the domain. This other signature may be as simple as a graphical image representing a
hand-written signature, or a signature ceremony Different signature approaches have different utilities.
*/
open class Signature: Element {
	override open class var resourceType: String {
		get { return "Signature" }
	}
	
	/// The actual signature content (XML DigSig. JWS, picture, etc.).
	public var data: Base64Binary?
	
	/// The party represented.
	public var onBehalfOf: Reference?
	
	/// The technical format of the signature.
	public var sigFormat: FHIRString?
	
	/// The technical format of the signed resources.
	public var targetFormat: FHIRString?
	
	/// Indication of the reason the entity signed the object(s).
	public var type: [Coding]?
	
	/// When the signature was created.
	public var when: Instant?
	
	/// Who signed.
	public var who: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: [Coding], when: Instant, who: Reference) {
		self.init()
		self.type = type
		self.when = when
		self.who = who
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		data = createInstance(type: Base64Binary.self, for: "data", in: json, context: &instCtx, owner: self) ?? data
		onBehalfOf = createInstance(type: Reference.self, for: "onBehalfOf", in: json, context: &instCtx, owner: self) ?? onBehalfOf
		sigFormat = createInstance(type: FHIRString.self, for: "sigFormat", in: json, context: &instCtx, owner: self) ?? sigFormat
		targetFormat = createInstance(type: FHIRString.self, for: "targetFormat", in: json, context: &instCtx, owner: self) ?? targetFormat
		type = createInstances(of: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if (nil == type || type!.isEmpty) && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		when = createInstance(type: Instant.self, for: "when", in: json, context: &instCtx, owner: self) ?? when
		if nil == when && !instCtx.containsKey("when") {
			instCtx.addError(FHIRValidationError(missing: "when"))
		}
		who = createInstance(type: Reference.self, for: "who", in: json, context: &instCtx, owner: self) ?? who
		if nil == who && !instCtx.containsKey("who") {
			instCtx.addError(FHIRValidationError(missing: "who"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.data?.decorate(json: &json, withKey: "data", errors: &errors)
		self.onBehalfOf?.decorate(json: &json, withKey: "onBehalfOf", errors: &errors)
		self.sigFormat?.decorate(json: &json, withKey: "sigFormat", errors: &errors)
		self.targetFormat?.decorate(json: &json, withKey: "targetFormat", errors: &errors)
		arrayDecorate(json: &json, withKey: "type", using: self.type, errors: &errors)
		if nil == type || self.type!.isEmpty {
			errors.append(FHIRValidationError(missing: "type"))
		}
		self.when?.decorate(json: &json, withKey: "when", errors: &errors)
		if nil == self.when {
			errors.append(FHIRValidationError(missing: "when"))
		}
		self.who?.decorate(json: &json, withKey: "who", errors: &errors)
		if nil == self.who {
			errors.append(FHIRValidationError(missing: "who"))
		}
	}
}

