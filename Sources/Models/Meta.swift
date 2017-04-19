//
//  Meta.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/Meta) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Metadata about a resource.

The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the
content may not always be associated with version changes to the resource.
*/
open class Meta: Element {
	override open class var resourceType: String {
		get { return "Meta" }
	}
	
	/// When the resource version last changed.
	public var lastUpdated: Instant?
	
	/// Profiles this resource claims to conform to.
	public var profile: [FHIRURL]?
	
	/// Security Labels applied to this resource.
	public var security: [Coding]?
	
	/// Tags applied to this resource.
	public var tag: [Coding]?
	
	/// Version specific identifier.
	public var versionId: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		lastUpdated = createInstance(type: Instant.self, for: "lastUpdated", in: json, context: &instCtx, owner: self) ?? lastUpdated
		profile = createInstances(of: FHIRURL.self, for: "profile", in: json, context: &instCtx, owner: self) ?? profile
		security = createInstances(of: Coding.self, for: "security", in: json, context: &instCtx, owner: self) ?? security
		tag = createInstances(of: Coding.self, for: "tag", in: json, context: &instCtx, owner: self) ?? tag
		versionId = createInstance(type: FHIRString.self, for: "versionId", in: json, context: &instCtx, owner: self) ?? versionId
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.lastUpdated?.decorate(json: &json, withKey: "lastUpdated", errors: &errors)
		arrayDecorate(json: &json, withKey: "profile", using: self.profile, errors: &errors)
		arrayDecorate(json: &json, withKey: "security", using: self.security, errors: &errors)
		arrayDecorate(json: &json, withKey: "tag", using: self.tag, errors: &errors)
		self.versionId?.decorate(json: &json, withKey: "versionId", errors: &errors)
	}
}

