//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2016-09-16.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument which may be used to pay for or reimburse health care products and services.
 */
public class Coverage: DomainResource {
	override public class var resourceType: String {
		get { return "Coverage" }
	}
	
	/// BIN Number.
	public var bin: Identifier?
	
	/// Contract details.
	public var contract: [Reference]?
	
	/// The dependent number.
	public var dependent: UInt?
	
	/// An identifier for the group.
	public var group: String?
	
	/// The primary coverage ID.
	public var identifier: [Identifier]?
	
	/// An identifier for the plan issuer.
	public var issuer: Reference?
	
	/// Insurer network.
	public var network: Identifier?
	
	/// Coverage start and end dates.
	public var period: Period?
	
	/// An identifier for the plan.
	public var plan: String?
	
	/// The plan instance or sequence counter.
	public var sequence: UInt?
	
	/// An identifier for the subsection of the plan.
	public var subPlan: String?
	
	/// Plan holder information.
	public var subscriber: Reference?
	
	/// Subscriber ID.
	public var subscriberId: Identifier?
	
	/// Type of coverage.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(from json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["bin"] {
				presentKeys.insert("bin")
				if let val = exist as? FHIRJSON {
					self.bin = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "bin", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["issuer"] {
				presentKeys.insert("issuer")
				if let val = exist as? FHIRJSON {
					self.issuer = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "issuer", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["network"] {
				presentKeys.insert("network")
				if let val = exist as? FHIRJSON {
					self.network = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "network", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["subscriber"] {
				presentKeys.insert("subscriber")
				if let val = exist as? FHIRJSON {
					self.subscriber = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subscriber", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["subscriberId"] {
				presentKeys.insert("subscriberId")
				if let val = exist as? FHIRJSON {
					self.subscriberId = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "subscriberId", wants: FHIRJSON.self, has: type(of: exist)))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let bin = self.bin {
			json["bin"] = bin.asJSON()
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
		if let issuer = self.issuer {
			json["issuer"] = issuer.asJSON()
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
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		if let subPlan = self.subPlan {
			json["subPlan"] = subPlan.asJSON()
		}
		if let subscriber = self.subscriber {
			json["subscriber"] = subscriber.asJSON()
		}
		if let subscriberId = self.subscriberId {
			json["subscriberId"] = subscriberId.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

