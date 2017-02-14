//
//  Meta.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 (http://hl7.org/fhir/StructureDefinition/Meta) on 2017-02-14.
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
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		lastUpdated = try createInstance(type: Instant.self, for: "lastUpdated", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lastUpdated
		profile = try createInstances(of: FHIRURL.self, for: "profile", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? profile
		security = try createInstances(of: Coding.self, for: "security", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? security
		tag = try createInstances(of: Coding.self, for: "tag", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? tag
		versionId = try createInstance(type: FHIRString.self, for: "versionId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? versionId
		
		return errors.isEmpty ? nil : errors
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

