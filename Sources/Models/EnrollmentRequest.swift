//
//  EnrollmentRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Enrollment request.
 *
 *  This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
 */
public class EnrollmentRequest: DomainResource {
	override public class var resourceName: String {
		get { return "EnrollmentRequest" }
	}
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Target.
	public var insurerIdentifier: Identifier?
	
	/// Target.
	public var insurerReference: Reference?
	
	/// Responsible organization.
	public var organizationIdentifier: Identifier?
	
	/// Responsible organization.
	public var organizationReference: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// Responsible practitioner.
	public var providerIdentifier: Identifier?
	
	/// Responsible practitioner.
	public var providerReference: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	/// The subject of the Products and Services.
	public var subjectIdentifier: Identifier?
	
	/// The subject of the Products and Services.
	public var subjectReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference, status: String, subjectIdentifier: Identifier, subjectReference: Reference) {
		self.init(json: nil)
		self.coverage = coverage
		self.status = status
		self.subjectIdentifier = subjectIdentifier
		self.subjectReference = subjectReference
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? FHIRJSON {
					self.coverage = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "coverage"))
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["insurerIdentifier"] {
				presentKeys.insert("insurerIdentifier")
				if let val = exist as? FHIRJSON {
					self.insurerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "insurerIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["insurerReference"] {
				presentKeys.insert("insurerReference")
				if let val = exist as? FHIRJSON {
					self.insurerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "insurerReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["organizationIdentifier"] {
				presentKeys.insert("organizationIdentifier")
				if let val = exist as? FHIRJSON {
					self.organizationIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["organizationReference"] {
				presentKeys.insert("organizationReference")
				if let val = exist as? FHIRJSON {
					self.organizationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["originalRuleset"] {
				presentKeys.insert("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalRuleset", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["providerIdentifier"] {
				presentKeys.insert("providerIdentifier")
				if let val = exist as? FHIRJSON {
					self.providerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["providerReference"] {
				presentKeys.insert("providerReference")
				if let val = exist as? FHIRJSON {
					self.providerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["subjectIdentifier"] {
				presentKeys.insert("subjectIdentifier")
				if let val = exist as? FHIRJSON {
					self.subjectIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subjectIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subjectReference"] {
				presentKeys.insert("subjectReference")
				if let val = exist as? FHIRJSON {
					self.subjectReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subjectReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.subjectIdentifier && nil == self.subjectReference {
				errors.append(FHIRJSONError(key: "subject*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let insurerIdentifier = self.insurerIdentifier {
			json["insurerIdentifier"] = insurerIdentifier.asJSON()
		}
		if let insurerReference = self.insurerReference {
			json["insurerReference"] = insurerReference.asJSON()
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
		if let providerIdentifier = self.providerIdentifier {
			json["providerIdentifier"] = providerIdentifier.asJSON()
		}
		if let providerReference = self.providerReference {
			json["providerReference"] = providerReference.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subjectIdentifier = self.subjectIdentifier {
			json["subjectIdentifier"] = subjectIdentifier.asJSON()
		}
		if let subjectReference = self.subjectReference {
			json["subjectReference"] = subjectReference.asJSON()
		}
		
		return json
	}
}

