//
//  SupplyRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/SupplyRequest) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Request for a medication, substance or device.
 *
 *  A record of a request for a medication, substance or device used in the healthcare setting.
 */
public class SupplyRequest: DomainResource {
	override public class var resourceName: String {
		get { return "SupplyRequest" }
	}
	
	/// When the request was made.
	public var date: DateTime?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// The kind of supply (central, non-stock, etc.).
	public var kind: CodeableConcept?
	
	/// Medication, Substance, or Device requested to be supplied.
	public var orderedItemCodeableConcept: CodeableConcept?
	
	/// Medication, Substance, or Device requested to be supplied.
	public var orderedItemReference: Reference?
	
	/// Patient for whom the item is supplied.
	public var patient: Reference?
	
	/// Why the supply item was requested.
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Why the supply item was requested.
	public var reasonReference: Reference?
	
	/// Who initiated this order.
	public var source: Reference?
	
	/// requested | completed | failed | cancelled.
	public var status: String?
	
	/// Who is intended to fulfill the request.
	public var supplier: [Reference]?
	
	/// When the request should be fulfilled.
	public var when: SupplyRequestWhen?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["date"] {
				presentKeys.insert("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "date", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["kind"] {
				presentKeys.insert("kind")
				if let val = exist as? FHIRJSON {
					self.kind = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "kind", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["orderedItemCodeableConcept"] {
				presentKeys.insert("orderedItemCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.orderedItemCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "orderedItemCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["orderedItemReference"] {
				presentKeys.insert("orderedItemReference")
				if let val = exist as? FHIRJSON {
					self.orderedItemReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "orderedItemReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonCodeableConcept"] {
				presentKeys.insert("reasonCodeableConcept")
				if let val = exist as? FHIRJSON {
					self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonCodeableConcept", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonReference"] {
				presentKeys.insert("reasonReference")
				if let val = exist as? FHIRJSON {
					self.reasonReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reasonReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? FHIRJSON {
					self.source = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: FHIRJSON.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["supplier"] {
				presentKeys.insert("supplier")
				if let val = exist as? [FHIRJSON] {
					self.supplier = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "supplier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["when"] {
				presentKeys.insert("when")
				if let val = exist as? FHIRJSON {
					self.when = SupplyRequestWhen(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "when", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
		}
		if let orderedItemCodeableConcept = self.orderedItemCodeableConcept {
			json["orderedItemCodeableConcept"] = orderedItemCodeableConcept.asJSON()
		}
		if let orderedItemReference = self.orderedItemReference {
			json["orderedItemReference"] = orderedItemReference.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
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
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let supplier = self.supplier {
			json["supplier"] = Reference.asJSONArray(supplier)
		}
		if let when = self.when {
			json["when"] = when.asJSON()
		}
		
		return json
	}
}


/**
 *  When the request should be fulfilled.
 */
public class SupplyRequestWhen: BackboneElement {
	override public class var resourceName: String {
		get { return "SupplyRequestWhen" }
	}
	
	/// Fulfilment code.
	public var code: CodeableConcept?
	
	/// Formal fulfillment schedule.
	public var schedule: Timing?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["schedule"] {
				presentKeys.insert("schedule")
				if let val = exist as? FHIRJSON {
					self.schedule = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "schedule", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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

