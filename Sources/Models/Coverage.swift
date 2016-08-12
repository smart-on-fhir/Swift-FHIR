//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Insurance or medical plan or a payment agreement.
 *
 *  Financial instrument which may be used to pay for or reimburse health care products and services.
 */
public class Coverage: DomainResource {
	override public class var resourceName: String {
		get { return "Coverage" }
	}
	
	/// Plan Beneficiary.
	public var beneficiaryIdentifier: Identifier?
	
	/// Plan Beneficiary.
	public var beneficiaryReference: Reference?
	
	/// BIN Number.
	public var bin: String?
	
	/// An identifier for the class.
	public var class_fhir: String?
	
	/// Contract details.
	public var contract: [Reference]?
	
	/// Dependent number.
	public var dependent: UInt?
	
	/// An identifier for the group.
	public var group: String?
	
	/// The primary coverage ID.
	public var identifier: [Identifier]?
	
	/// Is a Payment Agreement.
	public var isAgreement: Bool?
	
	/// Identifier for the plan or agreement issuer.
	public var issuerIdentifier: Identifier?
	
	/// Identifier for the plan or agreement issuer.
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
	
	/// Beneficiary relationship to Planholder.
	public var relationship: Coding?
	
	/// The plan instance or sequence counter.
	public var sequence: UInt?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	/// An identifier for the subsection of the group.
	public var subGroup: String?
	
	/// An identifier for the subsection of the plan.
	public var subPlan: String?
	
	/// Type of coverage.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(beneficiaryIdentifier: Identifier, beneficiaryReference: Reference, issuerIdentifier: Identifier, issuerReference: Reference, planholderIdentifier: Identifier, planholderReference: Reference, relationship: Coding, status: String) {
		self.init(json: nil)
		self.beneficiaryIdentifier = beneficiaryIdentifier
		self.beneficiaryReference = beneficiaryReference
		self.issuerIdentifier = issuerIdentifier
		self.issuerReference = issuerReference
		self.planholderIdentifier = planholderIdentifier
		self.planholderReference = planholderReference
		self.relationship = relationship
		self.status = status
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["beneficiaryIdentifier"] {
				presentKeys.insert("beneficiaryIdentifier")
				if let val = exist as? FHIRJSON {
					self.beneficiaryIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "beneficiaryIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["beneficiaryReference"] {
				presentKeys.insert("beneficiaryReference")
				if let val = exist as? FHIRJSON {
					self.beneficiaryReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "beneficiaryReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["bin"] {
				presentKeys.insert("bin")
				if let val = exist as? String {
					self.bin = val
				}
				else {
					errors.append(FHIRJSONError(key: "bin", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["class"] {
				presentKeys.insert("class")
				if let val = exist as? String {
					self.class_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "class", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["contract"] {
				presentKeys.insert("contract")
				if let val = exist as? [FHIRJSON] {
					self.contract = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "contract", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dependent"] {
				presentKeys.insert("dependent")
				if let val = exist as? UInt {
					self.dependent = val
				}
				else {
					errors.append(FHIRJSONError(key: "dependent", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? String {
					self.group = val
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["isAgreement"] {
				presentKeys.insert("isAgreement")
				if let val = exist as? Bool {
					self.isAgreement = val
				}
				else {
					errors.append(FHIRJSONError(key: "isAgreement", wants: Bool.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["issuerIdentifier"] {
				presentKeys.insert("issuerIdentifier")
				if let val = exist as? FHIRJSON {
					self.issuerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "issuerIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["issuerReference"] {
				presentKeys.insert("issuerReference")
				if let val = exist as? FHIRJSON {
					self.issuerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "issuerReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["network"] {
				presentKeys.insert("network")
				if let val = exist as? String {
					self.network = val
				}
				else {
					errors.append(FHIRJSONError(key: "network", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.insert("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "period", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["plan"] {
				presentKeys.insert("plan")
				if let val = exist as? String {
					self.plan = val
				}
				else {
					errors.append(FHIRJSONError(key: "plan", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["planholderIdentifier"] {
				presentKeys.insert("planholderIdentifier")
				if let val = exist as? FHIRJSON {
					self.planholderIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "planholderIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["planholderReference"] {
				presentKeys.insert("planholderReference")
				if let val = exist as? FHIRJSON {
					self.planholderReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "planholderReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["relationship"] {
				presentKeys.insert("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "relationship", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "relationship"))
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["subGroup"] {
				presentKeys.insert("subGroup")
				if let val = exist as? String {
					self.subGroup = val
				}
				else {
					errors.append(FHIRJSONError(key: "subGroup", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subPlan"] {
				presentKeys.insert("subPlan")
				if let val = exist as? String {
					self.subPlan = val
				}
				else {
					errors.append(FHIRJSONError(key: "subPlan", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
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
	
	override public func asJSON() -> FHIRJSON {
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
		if let class_fhir = self.class_fhir {
			json["class"] = class_fhir.asJSON()
		}
		if let contract = self.contract {
			json["contract"] = Reference.asJSONArray(contract)
		}
		if let dependent = self.dependent {
			json["dependent"] = dependent.asJSON()
		}
		if let group = self.group {
			json["group"] = group.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let isAgreement = self.isAgreement {
			json["isAgreement"] = isAgreement.asJSON()
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
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subGroup = self.subGroup {
			json["subGroup"] = subGroup.asJSON()
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

