//
//  PaymentNotice.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/PaymentNotice) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  PaymentNotice request.
 *
 *  This resource provides the status of the payment for goods and services rendered, and the request and response
 *  resource references.
 */
open class PaymentNotice: DomainResource {
	override open class var resourceType: String {
		get { return "PaymentNotice" }
	}
	
	/// Creation date.
	public var created: DateTime?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Responsible organization.
	public var organizationIdentifier: Identifier?
	
	/// Responsible organization.
	public var organizationReference: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// Status of the payment.
	public var paymentStatus: Coding?
	
	/// Responsible practitioner.
	public var providerIdentifier: Identifier?
	
	/// Responsible practitioner.
	public var providerReference: Reference?
	
	/// Request reference.
	public var requestIdentifier: Identifier?
	
	/// Request reference.
	public var requestReference: Reference?
	
	/// Response reference.
	public var responseIdentifier: Identifier?
	
	/// Response reference.
	public var responseReference: Reference?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	/// Payment or clearing date.
	public var statusDate: FHIRDate?
	
	/// Insurer or Regulatory body.
	public var targetIdentifier: Identifier?
	
	/// Insurer or Regulatory body.
	public var targetReference: Reference?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(paymentStatus: Coding, status: String) {
		self.init(json: nil)
		self.paymentStatus = paymentStatus
		self.status = status
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: type(of: exist)))
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
			if let exist = js["organizationIdentifier"] {
				presentKeys.insert("organizationIdentifier")
				if let val = exist as? FHIRJSON {
					self.organizationIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["organizationReference"] {
				presentKeys.insert("organizationReference")
				if let val = exist as? FHIRJSON {
					self.organizationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["originalRuleset"] {
				presentKeys.insert("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalRuleset", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["paymentStatus"] {
				presentKeys.insert("paymentStatus")
				if let val = exist as? FHIRJSON {
					self.paymentStatus = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentStatus", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "paymentStatus"))
			}
			if let exist = js["providerIdentifier"] {
				presentKeys.insert("providerIdentifier")
				if let val = exist as? FHIRJSON {
					self.providerIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["providerReference"] {
				presentKeys.insert("providerReference")
				if let val = exist as? FHIRJSON {
					self.providerReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "providerReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestIdentifier"] {
				presentKeys.insert("requestIdentifier")
				if let val = exist as? FHIRJSON {
					self.requestIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["requestReference"] {
				presentKeys.insert("requestReference")
				if let val = exist as? FHIRJSON {
					self.requestReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["responseIdentifier"] {
				presentKeys.insert("responseIdentifier")
				if let val = exist as? FHIRJSON {
					self.responseIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "responseIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["responseReference"] {
				presentKeys.insert("responseReference")
				if let val = exist as? FHIRJSON {
					self.responseReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "responseReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist = js["statusDate"] {
				presentKeys.insert("statusDate")
				if let val = exist as? String {
					self.statusDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "statusDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["targetIdentifier"] {
				presentKeys.insert("targetIdentifier")
				if let val = exist as? FHIRJSON {
					self.targetIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "targetIdentifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["targetReference"] {
				presentKeys.insert("targetReference")
				if let val = exist as? FHIRJSON {
					self.targetReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "targetReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let organizationIdentifier = self.organizationIdentifier {
			json["organizationIdentifier"] = organizationIdentifier.asJSON()
		}
		if let organizationReference = self.organizationReference {
			json["organizationReference"] = organizationReference.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let paymentStatus = self.paymentStatus {
			json["paymentStatus"] = paymentStatus.asJSON()
		}
		if let providerIdentifier = self.providerIdentifier {
			json["providerIdentifier"] = providerIdentifier.asJSON()
		}
		if let providerReference = self.providerReference {
			json["providerReference"] = providerReference.asJSON()
		}
		if let requestIdentifier = self.requestIdentifier {
			json["requestIdentifier"] = requestIdentifier.asJSON()
		}
		if let requestReference = self.requestReference {
			json["requestReference"] = requestReference.asJSON()
		}
		if let responseIdentifier = self.responseIdentifier {
			json["responseIdentifier"] = responseIdentifier.asJSON()
		}
		if let responseReference = self.responseReference {
			json["responseReference"] = responseReference.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let statusDate = self.statusDate {
			json["statusDate"] = statusDate.asJSON()
		}
		if let targetIdentifier = self.targetIdentifier {
			json["targetIdentifier"] = targetIdentifier.asJSON()
		}
		if let targetReference = self.targetReference {
			json["targetReference"] = targetReference.asJSON()
		}
		
		return json
	}
}

