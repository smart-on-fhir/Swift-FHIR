//
//  EnrollmentRequest.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/EnrollmentRequest) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Enrollment request.
 *
 *  This resource provides the insurance Enrollment details to the insurer regarding a specified coverage.
 */
public class EnrollmentRequest: DomainResource
{
	override public class var resourceName: String {
		get { return "EnrollmentRequest" }
	}
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Creation date
	public var created: DateTime?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Patient relationship to subscriber
	public var relationship: Coding?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// The subject of the Products and Services
	public var subject: Reference?
	
	/// Insurer
	public var target: Reference?
	
	public convenience init(coverage: Reference?, relationship: Coding?, subject: Reference?) {
		self.init(json: nil)
		if nil != coverage {
			self.coverage = coverage
		}
		if nil != relationship {
			self.relationship = relationship
		}
		if nil != subject {
			self.subject = subject
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["coverage"] as? FHIRJSON {
				self.coverage = Reference(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["organization"] as? FHIRJSON {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? FHIRJSON {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["provider"] as? FHIRJSON {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["relationship"] as? FHIRJSON {
				self.relationship = Coding(json: val, owner: self)
			}
			if let val = js["ruleset"] as? FHIRJSON {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["subject"] as? FHIRJSON {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["target"] as? FHIRJSON {
				self.target = Reference(json: val, owner: self)
			}
		}
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
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}

