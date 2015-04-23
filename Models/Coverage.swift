//
//  Coverage.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Coverage) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument which may be used to pay for or reimburse for health care products and services.
 */
public class Coverage: DomainResource
{
	override public class var resourceName: String {
		get { return "Coverage" }
	}
	
	/// BIN Number
	public var bin: Identifier?
	
	/// Contract details
	public var contract: [Reference]?
	
	/// The dependent number
	public var dependent: UInt?
	
	/// An identifier for the group
	public var group: String?
	
	/// The primary coverage ID
	public var identifier: [Identifier]?
	
	/// An identifier for the plan issuer
	public var issuer: Reference?
	
	/// Insurer network
	public var network: Identifier?
	
	/// Coverage start and end dates
	public var period: Period?
	
	/// An identifier for the plan
	public var plan: String?
	
	/// The plan instance or sequence counter
	public var sequence: UInt?
	
	/// An identifier for the subsection of the plan
	public var subPlan: String?
	
	/// Plan holder information
	public var subscriber: Reference?
	
	/// Subscriber ID
	public var subscriberId: Identifier?
	
	/// Type of coverage
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["bin"] {
				presentKeys.addObject("bin")
				if let val = exist as? FHIRJSON {
					self.bin = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"bin\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["contract"] {
				presentKeys.addObject("contract")
				if let val = exist as? [FHIRJSON] {
					self.contract = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contract\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["dependent"] {
				presentKeys.addObject("dependent")
				if let val = exist as? UInt {
					self.dependent = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"dependent\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["group"] {
				presentKeys.addObject("group")
				if let val = exist as? String {
					self.group = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"group\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["issuer"] {
				presentKeys.addObject("issuer")
				if let val = exist as? FHIRJSON {
					self.issuer = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"issuer\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["network"] {
				presentKeys.addObject("network")
				if let val = exist as? FHIRJSON {
					self.network = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"network\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["period"] {
				presentKeys.addObject("period")
				if let val = exist as? FHIRJSON {
					self.period = Period(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"period\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["plan"] {
				presentKeys.addObject("plan")
				if let val = exist as? String {
					self.plan = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"plan\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.addObject("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequence\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subPlan"] {
				presentKeys.addObject("subPlan")
				if let val = exist as? String {
					self.subPlan = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subPlan\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subscriber"] {
				presentKeys.addObject("subscriber")
				if let val = exist as? FHIRJSON {
					self.subscriber = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subscriber\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subscriberId"] {
				presentKeys.addObject("subscriberId")
				if let val = exist as? FHIRJSON {
					self.subscriberId = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subscriberId\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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

