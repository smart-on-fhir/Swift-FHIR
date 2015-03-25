//
//  Order.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/Order) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A request to perform an action.
 */
public class Order: DomainResource
{
	override public class var resourceName: String {
		get { return "Order" }
	}
	
	/// If required by policy
	public var authority: Reference?
	
	/// When the order was made
	public var date: DateTime?
	
	/// What action is being ordered
	public var detail: [Reference]?
	
	/// Identifiers assigned to this order by the orderer or by the receiver
	public var identifier: [Identifier]?
	
	/// Text - why the order was made
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Text - why the order was made
	public var reasonReference: Reference?
	
	/// Who initiated the order
	public var source: Reference?
	
	/// Patient this order is about
	public var subject: Reference?
	
	/// Who is intended to fulfill the order
	public var target: Reference?
	
	/// When order should be fulfilled
	public var when: OrderWhen?
	
	public convenience init(detail: [Reference]?) {
		self.init(json: nil)
		if nil != detail {
			self.detail = detail
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authority"] as? FHIRJSON {
				self.authority = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["detail"] as? [FHIRJSON] {
				self.detail = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["reasonCodeableConcept"] as? FHIRJSON {
				self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reasonReference"] as? FHIRJSON {
				self.reasonReference = Reference(json: val, owner: self)
			}
			if let val = js["source"] as? FHIRJSON {
				self.source = Reference(json: val, owner: self)
			}
			if let val = js["subject"] as? FHIRJSON {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["target"] as? FHIRJSON {
				self.target = Reference(json: val, owner: self)
			}
			if let val = js["when"] as? FHIRJSON {
				self.when = OrderWhen(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authority = self.authority {
			json["authority"] = authority.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = Reference.asJSONArray(detail)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON()
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		if let when = self.when {
			json["when"] = when.asJSON()
		}
		
		return json
	}
}


/**
 *  When order should be fulfilled.
 */
public class OrderWhen: FHIRElement
{
	override public class var resourceName: String {
		get { return "OrderWhen" }
	}
	
	/// Code specifies when request should be done. The code may simply be a priority code
	public var code: CodeableConcept?
	
	/// A formal schedule
	public var schedule: Timing?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["schedule"] as? FHIRJSON {
				self.schedule = Timing(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let schedule = self.schedule {
			json["schedule"] = schedule.asJSON()
		}
		
		return json
	}
}

