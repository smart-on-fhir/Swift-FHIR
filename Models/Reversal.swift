//
//  Reversal.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Reversal) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Reversal request.
 *
 *  This resource provides the request and response details for the request for which all actions are to be reversed or
 *  terminated.
 */
public class Reversal: DomainResource
{
	override public class var resourceName: String {
		get { return "Reversal" }
	}
	
	/// Insurance or medical plan
	public var coverage: ReversalCoverage?
	
	/// Creation date
	public var created: DateTime?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Nullify
	public var nullify: Bool?
	
	/// Responsible organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Payee
	public var payee: ReversalPayee?
	
	/// Responsible practitioner
	public var provider: Reference?
	
	/// Request reference
	public var request: Reference?
	
	/// Response reference
	public var response: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Insurer
	public var target: Reference?
	
	public convenience init(coverage: ReversalCoverage?, nullify: Bool?) {
		self.init(json: nil)
		if nil != coverage {
			self.coverage = coverage
		}
		if nil != nullify {
			self.nullify = nullify
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["coverage"] as? JSONDictionary {
				self.coverage = ReversalCoverage(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["nullify"] as? Bool {
				self.nullify = val
			}
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? JSONDictionary {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["payee"] as? JSONDictionary {
				self.payee = ReversalPayee(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["response"] as? JSONDictionary {
				self.response = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? JSONDictionary {
				self.ruleset = Coding(json: val, owner: self)
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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
		if let nullify = self.nullify {
			json["nullify"] = nullify.asJSON()
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let payee = self.payee {
			json["payee"] = payee.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let response = self.response {
			json["response"] = response.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
public class ReversalCoverage: FHIRElement
{
	override public class var resourceName: String {
		get { return "ReversalCoverage" }
	}
	
	/// Business agreement
	public var businessArrangement: String?
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Is the focal Coverage
	public var focal: Bool?
	
	/// Patient relationship to subscriber
	public var relationship: Coding?
	
	/// Service instance
	public var sequence: Int?
	
	public convenience init(coverage: Reference?, focal: Bool?, relationship: Coding?, sequence: Int?) {
		self.init(json: nil)
		if nil != coverage {
			self.coverage = coverage
		}
		if nil != focal {
			self.focal = focal
		}
		if nil != relationship {
			self.relationship = relationship
		}
		if nil != sequence {
			self.sequence = sequence
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["businessArrangement"] as? String {
				self.businessArrangement = val
			}
			if let val = js["coverage"] as? JSONDictionary {
				self.coverage = Reference(json: val, owner: self)
			}
			if let val = js["focal"] as? Bool {
				self.focal = val
			}
			if let val = js["relationship"] as? JSONDictionary {
				self.relationship = Coding(json: val, owner: self)
			}
			if let val = js["sequence"] as? Int {
				self.sequence = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let businessArrangement = self.businessArrangement {
			json["businessArrangement"] = businessArrangement.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON()
		}
		if let focal = self.focal {
			json["focal"] = focal.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		
		return json
	}
}


/**
 *  Payee.
 *
 *  Payee information supplied for matching purposes.
 */
public class ReversalPayee: FHIRElement
{
	override public class var resourceName: String {
		get { return "ReversalPayee" }
	}
	
	/// Organization who is the payee
	public var organization: Reference?
	
	/// Other person who is the payee
	public var person: Reference?
	
	/// Provider who is the payee
	public var provider: Reference?
	
	/// Payee Type
	public var type: Coding?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["organization"] as? JSONDictionary {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["person"] as? JSONDictionary {
				self.person = Reference(json: val, owner: self)
			}
			if let val = js["provider"] as? JSONDictionary {
				self.provider = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let person = self.person {
			json["person"] = person.asJSON()
		}
		if let provider = self.provider {
			json["provider"] = provider.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

