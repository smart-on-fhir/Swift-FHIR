//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2016-12-06.
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
	public var dependent: FHIRString?
	
	/// Additional coverage classifications.
	public var group: CoverageGroup?
	
	/// The primary coverage ID.
	public var identifier: [Identifier]?
	
	/// Insurer network.
	public var network: FHIRString?
	
	/// Relative order of the coverage.
	public var order: UInt?
	
	/// Identifier for the plan or agreement issuer.
	public var payor: [Reference]?
	
	/// Coverage start and end dates.
	public var period: Period?
	
	/// Owner of the policy.
	public var policyHolder: Reference?
	
	/// Beneficiary relationship to the Subscriber.
	public var relationship: CodeableConcept?
	
	/// The plan instance or sequence counter.
	public var sequence: FHIRString?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	/// Subscriber to the policy.
	public var subscriber: Reference?
	
	/// ID assigned to the Subscriber.
	public var subscriberId: FHIRString?
	
	/// Type of coverage.
	public var type: CodeableConcept?
	
	
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
			if let val = exist as? String {
				self.dependent = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "dependent", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["group"] {
			presentKeys.insert("group")
			if let val = exist as? FHIRJSON {
				do {
					self.group = try CoverageGroup(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "group"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "group", wants: FHIRJSON.self, has: type(of: exist)))
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
		if let exist = json["network"] {
			presentKeys.insert("network")
			if let val = exist as? String {
				self.network = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "network", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["order"] {
			presentKeys.insert("order")
			if let val = exist as? UInt {
				self.order = val
			}
			else {
				errors.append(FHIRValidationError(key: "order", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["payor"] {
			presentKeys.insert("payor")
			if let val = exist as? [FHIRJSON] {
				do {
					self.payor = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "payor"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "payor", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		if let exist = json["policyHolder"] {
			presentKeys.insert("policyHolder")
			if let val = exist as? FHIRJSON {
				do {
					self.policyHolder = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "policyHolder"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "policyHolder", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["relationship"] {
			presentKeys.insert("relationship")
			if let val = exist as? FHIRJSON {
				do {
					self.relationship = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "relationship"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "relationship", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequence"] {
			presentKeys.insert("sequence")
			if let val = exist as? String {
				self.sequence = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "sequence", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subscriber"] {
			presentKeys.insert("subscriber")
			if let val = exist as? FHIRJSON {
				do {
					self.subscriber = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subscriber"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subscriber", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["subscriberId"] {
			presentKeys.insert("subscriberId")
			if let val = exist as? String {
				self.subscriberId = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "subscriberId", wants: String.self, has: type(of: exist)))
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
		
		if let beneficiary = self.beneficiary {
			json["beneficiary"] = beneficiary.asJSON(errors: &errors)
		}
		if let contract = self.contract {
			json["contract"] = contract.map() { $0.asJSON(errors: &errors) }
		}
		if let dependent = self.dependent {
			json["dependent"] = dependent.asJSON()
		}
		if let group = self.group {
			json["group"] = group.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let network = self.network {
			json["network"] = network.asJSON()
		}
		if let order = self.order {
			json["order"] = order.asJSON()
		}
		if let payor = self.payor {
			json["payor"] = payor.map() { $0.asJSON(errors: &errors) }
		}
		if let period = self.period {
			json["period"] = period.asJSON(errors: &errors)
		}
		if let policyHolder = self.policyHolder {
			json["policyHolder"] = policyHolder.asJSON(errors: &errors)
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON(errors: &errors)
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subscriber = self.subscriber {
			json["subscriber"] = subscriber.asJSON(errors: &errors)
		}
		if let subscriberId = self.subscriberId {
			json["subscriberId"] = subscriberId.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Additional coverage classifications.

A suite of underwrite specific classifiers, for example may be used to identify a class of coverage or employer group,
Policy, Plan.
*/
open class CoverageGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "CoverageGroup" }
	}
	
	/// An identifier for the class.
	public var `class`: FHIRString?
	
	/// Display text for the class.
	public var classDisplay: FHIRString?
	
	/// An identifier for the group.
	public var group: FHIRString?
	
	/// Display text for an identifier for the group.
	public var groupDisplay: FHIRString?
	
	/// An identifier for the plan.
	public var plan: FHIRString?
	
	/// Display text for the plan.
	public var planDisplay: FHIRString?
	
	/// An identifier for the subsection of the class.
	public var subClass: FHIRString?
	
	/// Display text for the subsection of the subclass.
	public var subClassDisplay: FHIRString?
	
	/// An identifier for the subsection of the group.
	public var subGroup: FHIRString?
	
	/// Display text for the subsection of the group.
	public var subGroupDisplay: FHIRString?
	
	/// An identifier for the subsection of the plan.
	public var subPlan: FHIRString?
	
	/// Display text for the subsection of the plan.
	public var subPlanDisplay: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["class"] {
			presentKeys.insert("class")
			if let val = exist as? String {
				self.`class` = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "class", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["classDisplay"] {
			presentKeys.insert("classDisplay")
			if let val = exist as? String {
				self.classDisplay = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "classDisplay", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["group"] {
			presentKeys.insert("group")
			if let val = exist as? String {
				self.group = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "group", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["groupDisplay"] {
			presentKeys.insert("groupDisplay")
			if let val = exist as? String {
				self.groupDisplay = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "groupDisplay", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["plan"] {
			presentKeys.insert("plan")
			if let val = exist as? String {
				self.plan = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "plan", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["planDisplay"] {
			presentKeys.insert("planDisplay")
			if let val = exist as? String {
				self.planDisplay = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "planDisplay", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subClass"] {
			presentKeys.insert("subClass")
			if let val = exist as? String {
				self.subClass = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "subClass", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subClassDisplay"] {
			presentKeys.insert("subClassDisplay")
			if let val = exist as? String {
				self.subClassDisplay = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "subClassDisplay", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subGroup"] {
			presentKeys.insert("subGroup")
			if let val = exist as? String {
				self.subGroup = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "subGroup", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subGroupDisplay"] {
			presentKeys.insert("subGroupDisplay")
			if let val = exist as? String {
				self.subGroupDisplay = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "subGroupDisplay", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subPlan"] {
			presentKeys.insert("subPlan")
			if let val = exist as? String {
				self.subPlan = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "subPlan", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["subPlanDisplay"] {
			presentKeys.insert("subPlanDisplay")
			if let val = exist as? String {
				self.subPlanDisplay = FHIRString(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "subPlanDisplay", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let `class` = self.`class` {
			json["class"] = `class`.asJSON()
		}
		if let classDisplay = self.classDisplay {
			json["classDisplay"] = classDisplay.asJSON()
		}
		if let group = self.group {
			json["group"] = group.asJSON()
		}
		if let groupDisplay = self.groupDisplay {
			json["groupDisplay"] = groupDisplay.asJSON()
		}
		if let plan = self.plan {
			json["plan"] = plan.asJSON()
		}
		if let planDisplay = self.planDisplay {
			json["planDisplay"] = planDisplay.asJSON()
		}
		if let subClass = self.subClass {
			json["subClass"] = subClass.asJSON()
		}
		if let subClassDisplay = self.subClassDisplay {
			json["subClassDisplay"] = subClassDisplay.asJSON()
		}
		if let subGroup = self.subGroup {
			json["subGroup"] = subGroup.asJSON()
		}
		if let subGroupDisplay = self.subGroupDisplay {
			json["subGroupDisplay"] = subGroupDisplay.asJSON()
		}
		if let subPlan = self.subPlan {
			json["subPlan"] = subPlan.asJSON()
		}
		if let subPlanDisplay = self.subPlanDisplay {
			json["subPlanDisplay"] = subPlanDisplay.asJSON()
		}
		
		return json
	}
}

