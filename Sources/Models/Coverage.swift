//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2016-10-26.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Insurance or medical plan or a payment agreement.
 *
 *  Financial instrument which may be used to pay for or reimburse health care products and services.
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
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	/// Type of coverage.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(beneficiary: Reference, issuer: Reference, planholder: Reference, relationship: Coding, status: String) {
		self.init(json: nil)
		self.beneficiary = beneficiary
		self.issuer = issuer
		self.planholder = planholder
		self.relationship = relationship
		self.status = status
	}
	
	override open func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["beneficiary"] {
				presentKeys.insert("beneficiary")
				if let val = exist as? FHIRJSON {
					self.beneficiary = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "beneficiary", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "beneficiary"))
			}
			if let exist = js["contract"] {
				presentKeys.insert("contract")
				if let val = exist as? [FHIRJSON] {
					self.contract = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "contract", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["dependent"] {
				presentKeys.insert("dependent")
				if let val = exist as? UInt {
					self.dependent = val
				}
				else {
					errors.append(FHIRJSONError(key: "dependent", wants: UInt.self, has: type(of: exist)))
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
			if let exist = js["isAgreement"] {
				presentKeys.insert("isAgreement")
				if let val = exist as? Bool {
					self.isAgreement = val
				}
				else {
					errors.append(FHIRJSONError(key: "isAgreement", wants: Bool.self, has: type(of: exist)))
				}
			}
			if let exist = js["issuer"] {
				presentKeys.insert("issuer")
				if let val = exist as? FHIRJSON {
					self.issuer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "issuer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "issuer"))
			}
			if let exist = js["level"] {
				presentKeys.insert("level")
				if let val = exist as? [FHIRJSON] {
					self.level = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "level", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["network"] {
				presentKeys.insert("network")
				if let val = exist as? String {
					self.network = val
				}
				else {
					errors.append(FHIRJSONError(key: "network", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["planholder"] {
				presentKeys.insert("planholder")
				if let val = exist as? FHIRJSON {
					self.planholder = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "planholder", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "planholder"))
			}
			if let exist = js["relationship"] {
				presentKeys.insert("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "relationship", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "relationship"))
			}
			if let exist = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: type(of: exist)))
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
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let beneficiary = self.beneficiary {
			json["beneficiary"] = beneficiary.asJSON()
		}
		if let contract = self.contract {
			json["contract"] = contract.map() { $0.asJSON() }
		}
		if let dependent = self.dependent {
			json["dependent"] = dependent.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let isAgreement = self.isAgreement {
			json["isAgreement"] = isAgreement.asJSON()
		}
		if let issuer = self.issuer {
			json["issuer"] = issuer.asJSON()
		}
		if let level = self.level {
			json["level"] = level.map() { $0.asJSON() }
		}
		if let network = self.network {
			json["network"] = network.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let planholder = self.planholder {
			json["planholder"] = planholder.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

