//
//  OrderResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/OrderResponse) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A response to an order.
 */
public class OrderResponse: DomainResource
{
	override public class var resourceName: String {
		get { return "OrderResponse" }
	}
	
	/// If required by policy
	public var authorityCodeableConcept: CodeableConcept?
	
	/// If required by policy
	public var authorityReference: Reference?
	
	/// When the response was made
	public var date: DateTime?
	
	/// Additional description of the response
	public var description_fhir: String?
	
	/// Details of the outcome of performing the order
	public var fulfillment: [Reference]?
	
	/// Identifiers assigned to this order by the orderer or by the receiver
	public var identifier: [Identifier]?
	
	/// pending | review | rejected | error | accepted | cancelled | replaced | aborted | completed
	public var orderStatus: String?
	
	/// The order that this is a response to
	public var request: Reference?
	
	/// Who made the response
	public var who: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(orderStatus: String?, request: Reference?) {
		self.init(json: nil)
		if nil != orderStatus {
			self.orderStatus = orderStatus
		}
		if nil != request {
			self.request = request
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["authorityCodeableConcept"] {
				presentKeys.addObject("authorityCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.authorityCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"authorityCodeableConcept\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["authorityReference"] {
				presentKeys.addObject("authorityReference")
				if let val = exist as? FHIRJSON {
					self.authorityReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"authorityReference\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["description"] {
				presentKeys.addObject("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"description\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fulfillment"] {
				presentKeys.addObject("fulfillment")
				if let val = exist as? [FHIRJSON] {
					self.fulfillment = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fulfillment\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["orderStatus"] {
				presentKeys.addObject("orderStatus")
				if let val = exist as? String {
					self.orderStatus = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"orderStatus\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"orderStatus\" but it is missing"))
			}
			if let exist: AnyObject = js["request"] {
				presentKeys.addObject("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"request\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"request\" but it is missing"))
			}
			if let exist: AnyObject = js["who"] {
				presentKeys.addObject("who")
				if let val = exist as? FHIRJSON {
					self.who = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"who\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authorityCodeableConcept = self.authorityCodeableConcept {
			json["authorityCodeableConcept"] = authorityCodeableConcept.asJSON()
		}
		if let authorityReference = self.authorityReference {
			json["authorityReference"] = authorityReference.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let fulfillment = self.fulfillment {
			json["fulfillment"] = Reference.asJSONArray(fulfillment)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let orderStatus = self.orderStatus {
			json["orderStatus"] = orderStatus.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let who = self.who {
			json["who"] = who.asJSON()
		}
		
		return json
	}
}

