//
//  OrderResponse.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4394 (http://hl7.org/fhir/StructureDefinition/OrderResponse) on 2015-03-11.
//  2015, SMART Platforms.
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
	
	public convenience init(orderStatus: String?, request: Reference?) {
		self.init(json: nil)
		if nil != orderStatus {
			self.orderStatus = orderStatus
		}
		if nil != request {
			self.request = request
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authorityCodeableConcept"] as? JSONDictionary {
				self.authorityCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["authorityReference"] as? JSONDictionary {
				self.authorityReference = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["fulfillment"] as? [JSONDictionary] {
				self.fulfillment = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["orderStatus"] as? String {
				self.orderStatus = val
			}
			if let val = js["request"] as? JSONDictionary {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["who"] as? JSONDictionary {
				self.who = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
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

