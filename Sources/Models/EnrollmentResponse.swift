//
//  EnrollmentResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/EnrollmentResponse) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  EnrollmentResponse resource.
 *
 *  This resource provides enrollment and plan details from the processing of an Enrollment resource.
 */
open class EnrollmentResponse: DomainResource {
	override open class var resourceType: String {
		get { return "EnrollmentResponse" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: String?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Insurer.
	public var organizationIdentifier: Identifier?
	
	/// Insurer.
	public var organizationReference: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// complete | error | partial.
	public var outcome: String?
	
	/// Claim reference.
	public var requestIdentifier: Identifier?
	
	/// Responsible organization.
	public var requestOrganizationIdentifier: Identifier?
	
	/// Responsible organization.
	public var requestOrganizationReference: Reference?
	
	/// Responsible practitioner.
	public var requestProviderIdentifier: Identifier?
	
	/// Responsible practitioner.
	public var requestProviderReference: Reference?
	
	/// Claim reference.
	public var requestReference: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init(json: nil)
		self.status = status
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["disposition"] {
				presentKeys.insert("disposition")
				if let val = exist as? String {
					self.disposition = val
				}
				else {
					errors.append(FHIRJSONError(key: "disposition", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["organizationIdentifier"] {
				presentKeys.insert("organizationIdentifier")
				if let val = exist as? FHIRJSON {
					self.organizationIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["organizationReference"] {
				presentKeys.insert("organizationReference")
				if let val = exist as? FHIRJSON {
					self.organizationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["originalRuleset"] {
				presentKeys.insert("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalRuleset", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? String {
					self.outcome = val
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestIdentifier"] {
				presentKeys.insert("requestIdentifier")
				if let val = exist as? FHIRJSON {
					self.requestIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestOrganizationIdentifier"] {
				presentKeys.insert("requestOrganizationIdentifier")
				if let val = exist as? FHIRJSON {
					self.requestOrganizationIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestOrganizationIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestOrganizationReference"] {
				presentKeys.insert("requestOrganizationReference")
				if let val = exist as? FHIRJSON {
					self.requestOrganizationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestOrganizationReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestProviderIdentifier"] {
				presentKeys.insert("requestProviderIdentifier")
				if let val = exist as? FHIRJSON {
					self.requestProviderIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestProviderIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestProviderReference"] {
				presentKeys.insert("requestProviderReference")
				if let val = exist as? FHIRJSON {
					self.requestProviderReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestProviderReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestReference"] {
				presentKeys.insert("requestReference")
				if let val = exist as? FHIRJSON {
					self.requestReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let organizationIdentifier = self.organizationIdentifier {
			json["organizationIdentifier"] = organizationIdentifier.asJSON()
		}
		if let organizationReference = self.organizationReference {
			json["organizationReference"] = organizationReference.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let requestIdentifier = self.requestIdentifier {
			json["requestIdentifier"] = requestIdentifier.asJSON()
		}
		if let requestOrganizationIdentifier = self.requestOrganizationIdentifier {
			json["requestOrganizationIdentifier"] = requestOrganizationIdentifier.asJSON()
		}
		if let requestOrganizationReference = self.requestOrganizationReference {
			json["requestOrganizationReference"] = requestOrganizationReference.asJSON()
		}
		if let requestProviderIdentifier = self.requestProviderIdentifier {
			json["requestProviderIdentifier"] = requestProviderIdentifier.asJSON()
		}
		if let requestProviderReference = self.requestProviderReference {
			json["requestProviderReference"] = requestProviderReference.asJSON()
		}
		if let requestReference = self.requestReference {
			json["requestReference"] = requestReference.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

