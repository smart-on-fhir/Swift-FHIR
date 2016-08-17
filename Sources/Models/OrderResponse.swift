//
//  OrderResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/OrderResponse) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A response to an order.
 */
open class OrderResponse: DomainResource {
	override open class var resourceType: String {
		get { return "OrderResponse" }
	}
	
	/// When the response was made.
	public var date: DateTime?
	
	/// Additional description of the response.
	public var description_fhir: String?
	
	/// Details of the outcome of performing the order.
	public var fulfillment: [Reference]?
	
	/// Identifiers assigned to this order by the orderer or by the receiver.
	public var identifier: [Identifier]?
	
	/// pending | review | rejected | error | accepted | cancelled | replaced | aborted | completed.
	public var orderStatus: String?
	
	/// The order that this is a response to.
	public var request: Reference?
	
	/// Who made the response.
	public var who: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(orderStatus: String, request: Reference) {
		self.init(json: nil)
		self.orderStatus = orderStatus
		self.request = request
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: type(of: exist)))
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
			if let exist = js["fulfillment"] {
				presentKeys.insert("fulfillment")
				if let val = exist as? [FHIRJSON] {
					self.fulfillment = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "fulfillment", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["orderStatus"] {
				presentKeys.insert("orderStatus")
				if let val = exist as? String {
					self.orderStatus = val
				}
				else {
					errors.append(FHIRJSONError(key: "orderStatus", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "orderStatus"))
			}
			if let exist = js["request"] {
				presentKeys.insert("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "request", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "request"))
			}
			if let exist = js["who"] {
				presentKeys.insert("who")
				if let val = exist as? FHIRJSON {
					self.who = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "who", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let fulfillment = self.fulfillment {
			json["fulfillment"] = fulfillment.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
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

