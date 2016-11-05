//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Insurance or medical plan or a payment agreement.

Financial instrument which may be used to pay for or reimburse health care products and services.
*/
open class Coverage: DomainResource {
	override open class var resourceType: String {
		get { return "Coverage" }
	}
	
	/// Plan Beneficiary.
	public var beneficiary: Reference?
	
	/// Contract details.
	public var contract: [Reference]?
	
	/// Dependent number.
	public var dependent: UInt?
	
	/// The primary coverage ID.
	public var identifier: [Identifier]?
	
	/// Is a Payment Agreement.
	public var isAgreement: Bool?
	
	/// Identifier for the plan or agreement issuer.
	public var issuer: Reference?
	
	/// Additional coverage classifications.
	public var level: [Coding]?
	
	/// Insurer network.
	public var network: String?
	
	/// Coverage start and end dates.
	public var period: Period?
	
	/// Plan holder.
	public var planholder: Reference?
	
	/// Beneficiary relationship to Planholder.
	public var relationship: Coding?
	
	/// The plan instance or sequence counter.
	public var sequence: UInt?
	
	/// The status of the resource instance.
	public var status: CoverageStatus?
	
	/// Type of coverage.
	public var type: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(beneficiary: Reference, issuer: Reference, planholder: Reference, relationship: Coding, status: CoverageStatus) {
		self.init()
		self.beneficiary = beneficiary
		self.issuer = issuer
		self.planholder = planholder
		self.relationship = relationship
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["beneficiary"] {
			presentKeys.insert("beneficiary")
			if let val = exist as? FHIRJSON {
				do {
					self.beneficiary = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "beneficiary"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "beneficiary", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "beneficiary"))
		}
		if let exist = json["contract"] {
			presentKeys.insert("contract")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contract = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contract"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contract", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["dependent"] {
			presentKeys.insert("dependent")
			if let val = exist as? UInt {
				self.dependent = val
			}
			else {
				errors.append(FHIRValidationError(key: "dependent", wants: UInt.self, has: type(of: exist)))
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
		if let exist = json["isAgreement"] {
			presentKeys.insert("isAgreement")
			if let val = exist as? Bool {
				self.isAgreement = val
			}
			else {
				errors.append(FHIRValidationError(key: "isAgreement", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["issuer"] {
			presentKeys.insert("issuer")
			if let val = exist as? FHIRJSON {
				do {
					self.issuer = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "issuer"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "issuer", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "issuer"))
		}
		if let exist = json["level"] {
			presentKeys.insert("level")
			if let val = exist as? [FHIRJSON] {
				do {
					self.level = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "level"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "level", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["network"] {
			presentKeys.insert("network")
			if let val = exist as? String {
				self.network = val
			}
			else {
				errors.append(FHIRValidationError(key: "network", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["period"] {
			presentKeys.insert("period")
			if let val = exist as? FHIRJSON {
				do {
					self.period = try Period(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "period"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["planholder"] {
			presentKeys.insert("planholder")
			if let val = exist as? FHIRJSON {
				do {
					self.planholder = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "planholder"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "planholder", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "planholder"))
		}
		if let exist = json["relationship"] {
			presentKeys.insert("relationship")
			if let val = exist as? FHIRJSON {
				do {
					self.relationship = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relationship"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relationship", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "relationship"))
		}
		if let exist = json["sequence"] {
			presentKeys.insert("sequence")
			if let val = exist as? UInt {
				self.sequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequence", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				if let enumval = CoverageStatus(rawValue: val) {
					self.status = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "status", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
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
		
		if let beneficiary = self.beneficiary {
			json["beneficiary"] = beneficiary.asJSON(errors: &errors)
		}
		if let contract = self.contract {
			json["contract"] = contract.map() { $0.asJSON(errors: &errors) }
		}
		if let dependent = self.dependent {
			json["dependent"] = dependent.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let isAgreement = self.isAgreement {
			json["isAgreement"] = isAgreement.asJSON()
		}
		if let issuer = self.issuer {
			json["issuer"] = issuer.asJSON(errors: &errors)
		}
		if let level = self.level {
			json["level"] = level.map() { $0.asJSON(errors: &errors) }
		}
		if let network = self.network {
			json["network"] = network.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let planholder = self.planholder {
			json["planholder"] = planholder.asJSON(errors: &errors)
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON(errors: &errors)
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let status = self.status {
			json["status"] = status.rawValue
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}

