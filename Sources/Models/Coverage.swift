//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument which may be used to pay for or reimburse health care products and services.
 */
open class Coverage: DomainResource {
	override open class var resourceType: String {
		get { return "Coverage" }
	}
	
	/// Plan Beneficiary.
	public var beneficiaryIdentifier: Identifier?
	
	/// Plan Beneficiary.
	public var beneficiaryReference: Reference?
	
	/// BIN Number.
	public var bin: String?
	
	/// Contract details.
	public var contract: [Reference]?
	
	/// Dependent number.
	public var dependent: UInt?
	
	/// Eligibility exceptions.
	public var exception: [Coding]?
	
	/// An identifier for the group.
	public var group: String?
	
	/// The primary coverage ID.
	public var identifier: [Identifier]?
	
	/// Identifier for the plan issuer.
	public var issuerIdentifier: Identifier?
	
	/// Identifier for the plan issuer.
	public var issuerReference: Reference?
	
	/// Insurer network.
	public var network: String?
	
	/// Coverage start and end dates.
	public var period: Period?
	
	/// An identifier for the plan.
	public var plan: String?
	
	/// Plan holder.
	public var planholderIdentifier: Identifier?
	
	/// Plan holder.
	public var planholderReference: Reference?
	
	/// Patient relationship to planholder.
	public var relationship: Coding?
	
	/// Name of School.
	public var school: String?
	
	/// The plan instance or sequence counter.
	public var sequence: UInt?
	
	/// An identifier for the subsection of the plan.
	public var subPlan: String?
	
	/// Type of coverage.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(beneficiaryIdentifier: Identifier, beneficiaryReference: Reference, issuerIdentifier: Identifier, issuerReference: Reference, planholderIdentifier: Identifier, planholderReference: Reference, relationship: Coding) {
		self.init(json: nil)
		self.beneficiaryIdentifier = beneficiaryIdentifier
		self.beneficiaryReference = beneficiaryReference
		self.issuerIdentifier = issuerIdentifier
		self.issuerReference = issuerReference
		self.planholderIdentifier = planholderIdentifier
		self.planholderReference = planholderReference
		self.relationship = relationship
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["beneficiaryIdentifier"] {
				presentKeys.insert("beneficiaryIdentifier")
				if let val = exist as? FHIRJSON {
					self.beneficiaryIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "beneficiaryIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["beneficiaryReference"] {
				presentKeys.insert("beneficiaryReference")
				if let val = exist as? FHIRJSON {
					self.beneficiaryReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "beneficiaryReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["bin"] {
				presentKeys.insert("bin")
				if let val = exist as? String {
					self.bin = val
				}
				else {
					errors.append(FHIRJSONError(key: "bin", wants: String.self, has: type(of: exist)))
				}
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
			if let exist = js["exception"] {
				presentKeys.insert("exception")
				if let val = exist as? [FHIRJSON] {
					self.exception = Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				else {
					errors.append(FHIRJSONError(key: "exception", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? String {
					self.group = val
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: String.self, has: type(of: exist)))
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
			if let exist = js["issuerIdentifier"] {
				presentKeys.insert("issuerIdentifier")
				if let val = exist as? FHIRJSON {
					self.issuerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "issuerIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["issuerReference"] {
				presentKeys.insert("issuerReference")
				if let val = exist as? FHIRJSON {
					self.issuerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "issuerReference", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["plan"] {
				presentKeys.insert("plan")
				if let val = exist as? String {
					self.plan = val
				}
				else {
					errors.append(FHIRJSONError(key: "plan", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["planholderIdentifier"] {
				presentKeys.insert("planholderIdentifier")
				if let val = exist as? FHIRJSON {
					self.planholderIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "planholderIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["planholderReference"] {
				presentKeys.insert("planholderReference")
				if let val = exist as? FHIRJSON {
					self.planholderReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "planholderReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
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
			if let exist = js["school"] {
				presentKeys.insert("school")
				if let val = exist as? String {
					self.school = val
				}
				else {
					errors.append(FHIRJSONError(key: "school", wants: String.self, has: type(of: exist)))
				}
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
			if let exist = js["subPlan"] {
				presentKeys.insert("subPlan")
				if let val = exist as? String {
					self.subPlan = val
				}
				else {
					errors.append(FHIRJSONError(key: "subPlan", wants: String.self, has: type(of: exist)))
				}
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
			
			// check if nonoptional expanded properties are present
			if nil == self.beneficiaryIdentifier && nil == self.beneficiaryReference {
				errors.append(FHIRJSONError(key: "beneficiary*"))
			}
			if nil == self.issuerIdentifier && nil == self.issuerReference {
				errors.append(FHIRJSONError(key: "issuer*"))
			}
			if nil == self.planholderIdentifier && nil == self.planholderReference {
				errors.append(FHIRJSONError(key: "planholder*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let beneficiaryIdentifier = self.beneficiaryIdentifier {
			json["beneficiaryIdentifier"] = beneficiaryIdentifier.asJSON()
		}
		if let beneficiaryReference = self.beneficiaryReference {
			json["beneficiaryReference"] = beneficiaryReference.asJSON()
		}
		if let bin = self.bin {
			json["bin"] = bin.asJSON()
		}
		if let contract = self.contract {
			json["contract"] = contract.map() { $0.asJSON() }
		}
		if let dependent = self.dependent {
			json["dependent"] = dependent.asJSON()
		}
		if let exception = self.exception {
			json["exception"] = exception.map() { $0.asJSON() }
		}
		if let group = self.group {
			json["group"] = group.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let issuerIdentifier = self.issuerIdentifier {
			json["issuerIdentifier"] = issuerIdentifier.asJSON()
		}
		if let issuerReference = self.issuerReference {
			json["issuerReference"] = issuerReference.asJSON()
		}
		if let network = self.network {
			json["network"] = network.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let plan = self.plan {
			json["plan"] = plan.asJSON()
		}
		if let planholderIdentifier = self.planholderIdentifier {
			json["planholderIdentifier"] = planholderIdentifier.asJSON()
		}
		if let planholderReference = self.planholderReference {
			json["planholderReference"] = planholderReference.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		if let school = self.school {
			json["school"] = school.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let subPlan = self.subPlan {
			json["subPlan"] = subPlan.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

