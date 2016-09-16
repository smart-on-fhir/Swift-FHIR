//
//  Account.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Account) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  None.
 *
 *  A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track
 *  charges for a patient, cost centres, etc.
 */
public class Account: DomainResource {
	override public class var resourceType: String {
		get { return "Account" }
	}
	
	/// Valid from..to.
	public var activePeriod: Period?
	
	/// How much is in account?.
	public var balance: Quantity?
	
	/// Transaction window.
	public var coveragePeriod: Period?
	
	/// Base currency in which balance is tracked.
	public var currency: Coding?
	
	/// Explanation of purpose/use.
	public var description_fhir: String?
	
	/// Account number.
	public var identifier: [Identifier]?
	
	/// Human-readable label.
	public var name: String?
	
	/// Who is responsible?.
	public var owner: Reference?
	
	/// active | inactive.
	public var status: String?
	
	/// What is account tied to?.
	public var subject: Reference?
	
	/// E.g. patient, expense, depreciation.
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["activePeriod"] {
				presentKeys.insert("activePeriod")
				if let val = exist as? FHIRJSON {
					self.activePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "activePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["balance"] {
				presentKeys.insert("balance")
				if let val = exist as? FHIRJSON {
					self.balance = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "balance", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["coveragePeriod"] {
				presentKeys.insert("coveragePeriod")
				if let val = exist as? FHIRJSON {
					self.coveragePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coveragePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["currency"] {
				presentKeys.insert("currency")
				if let val = exist as? FHIRJSON {
					self.currency = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "currency", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
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
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["owner"] {
				presentKeys.insert("owner")
				if let val = exist as? FHIRJSON {
					self.owner = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "owner", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["subject"] {
				presentKeys.insert("subject")
				if let val = exist as? FHIRJSON {
					self.subject = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let activePeriod = self.activePeriod {
			json["activePeriod"] = activePeriod.asJSON()
		}
		if let balance = self.balance {
			json["balance"] = balance.asJSON()
		}
		if let coveragePeriod = self.coveragePeriod {
			json["coveragePeriod"] = coveragePeriod.asJSON()
		}
		if let currency = self.currency {
			json["currency"] = currency.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let owner = self.owner {
			json["owner"] = owner.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

