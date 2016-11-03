//
//  Account.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/Account) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Tracks balance, charges, for patient or cost center.
 *
 *  A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track
 *  charges for a patient, cost centers, etc.
 */
open class Account: DomainResource {
	override open class var resourceType: String {
		get { return "Account" }
	}
	
	/// Time window that transactions may be posted to this account.
	public var active: Period?
	
	/// How much is in account?.
	public var balance: Money?
	
	/// The party(s) that are responsible for covering the payment of this account.
	public var coverage: [Reference]?
	
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
	
	/// active | inactive | entered-in-error.
	public var status: String?
	
	/// What is account tied to?.
	public var subject: Reference?
	
	/// E.g. patient, expense, depreciation.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["active"] {
			presentKeys.insert("active")
			if let val = exist as? FHIRJSON {
				do {
					self.active = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "active"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "active", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["balance"] {
			presentKeys.insert("balance")
			if let val = exist as? FHIRJSON {
				do {
					self.balance = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "balance"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "balance", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["coverage"] {
			presentKeys.insert("coverage")
			if let val = exist as? [FHIRJSON] {
				do {
					self.coverage = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "coverage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "coverage", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["coveragePeriod"] {
			presentKeys.insert("coveragePeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.coveragePeriod = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "coveragePeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "coveragePeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["currency"] {
			presentKeys.insert("currency")
			if let val = exist as? FHIRJSON {
				do {
					self.currency = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "currency"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "currency", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["owner"] {
			presentKeys.insert("owner")
			if let val = exist as? FHIRJSON {
				do {
					self.owner = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "owner"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "owner", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subject"] {
			presentKeys.insert("subject")
			if let val = exist as? FHIRJSON {
				do {
					self.subject = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subject"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subject", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let active = self.active {
			json["active"] = active.asJSON(errors: &errors)
		}
		if let balance = self.balance {
			json["balance"] = balance.asJSON(errors: &errors)
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.map() { $0.asJSON(errors: &errors) }
		}
		if let coveragePeriod = self.coveragePeriod {
			json["coveragePeriod"] = coveragePeriod.asJSON(errors: &errors)
		}
		if let currency = self.currency {
			json["currency"] = currency.asJSON(errors: &errors)
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let owner = self.owner {
			json["owner"] = owner.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}

