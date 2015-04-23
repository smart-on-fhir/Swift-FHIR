//
//  PaymentReconciliation.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  PaymentReconciliation resource.
 *
 *  This resource provides payment details and claim references supporting a bulk payment.
 */
public class PaymentReconciliation: DomainResource
{
	override public class var resourceName: String {
		get { return "PaymentReconciliation" }
	}
	
	/// Creation date
	public var created: DateTime?
	
	/// Details
	public var detail: [PaymentReconciliationDetail]?
	
	/// Disposition Message
	public var disposition: String?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Note text
	public var note: [PaymentReconciliationNote]?
	
	/// Insurer
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// complete | error
	public var outcome: String?
	
	/// Period covered
	public var period: Period?
	
	/// Claim reference
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Total amount of Payment
	public var total: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(total: Money?) {
		self.init(json: nil)
		if nil != total {
			self.total = total
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["created"] {
				presentKeys.addObject("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"created\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.addObject("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = PaymentReconciliationDetail.from(val, owner: self) as? [PaymentReconciliationDetail]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"detail\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["disposition"] {
				presentKeys.addObject("disposition")
				if let val = exist as? String {
					self.disposition = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"disposition\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["form"] {
				presentKeys.addObject("form")
				if let val = exist as? FHIRJSON {
					self.form = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"form\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["note"] {
				presentKeys.addObject("note")
				if let val = exist as? [FHIRJSON] {
					self.note = PaymentReconciliationNote.from(val, owner: self) as? [PaymentReconciliationNote]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"note\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["organization"] {
				presentKeys.addObject("organization")
				if let val = exist as? FHIRJSON {
					self.organization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"organization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["originalRuleset"] {
				presentKeys.addObject("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"originalRuleset\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["outcome"] {
				presentKeys.addObject("outcome")
				if let val = exist as? String {
					self.outcome = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"outcome\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["request"] {
				presentKeys.addObject("request")
				if let val = exist as? FHIRJSON {
					self.request = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"request\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requestOrganization"] {
				presentKeys.addObject("requestOrganization")
				if let val = exist as? FHIRJSON {
					self.requestOrganization = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requestOrganization\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["requestProvider"] {
				presentKeys.addObject("requestProvider")
				if let val = exist as? FHIRJSON {
					self.requestProvider = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"requestProvider\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.addObject("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"ruleset\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["total"] {
				presentKeys.addObject("total")
				if let val = exist as? FHIRJSON {
					self.total = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"total\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"total\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = PaymentReconciliationDetail.asJSONArray(detail)
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let note = self.note {
			json["note"] = PaymentReconciliationNote.asJSONArray(note)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let requestOrganization = self.requestOrganization {
			json["requestOrganization"] = requestOrganization.asJSON()
		}
		if let requestProvider = self.requestProvider {
			json["requestProvider"] = requestProvider.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let total = self.total {
			json["total"] = total.asJSON()
		}
		
		return json
	}
}


/**
 *  Details.
 *
 *  List of individual settlement amounts and the corresponding transaction.
 */
public class PaymentReconciliationDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "PaymentReconciliationDetail" }
	}
	
	/// Detail amount
	public var amount: Money?
	
	/// Invoice date
	public var date: Date?
	
	/// Payee
	public var payee: Reference?
	
	/// Claim
	public var request: Reference?
	
	/// Claim Response
	public var responce: Reference?
	
	/// Submitter
	public var submitter: Reference?
	
	/// Type code
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(type: Coding?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.addObject("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"amount\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["payee"] {
				presentKeys.addObject("payee")
				if let val = exist as? FHIRJSON {
					self.payee = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"payee\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
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
			if let exist: AnyObject = js["responce"] {
				presentKeys.addObject("responce")
				if let val = exist as? FHIRJSON {
					self.responce = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"responce\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["submitter"] {
				presentKeys.addObject("submitter")
				if let val = exist as? FHIRJSON {
					self.submitter = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"submitter\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let payee = self.payee {
			json["payee"] = payee.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let responce = self.responce {
			json["responce"] = responce.asJSON()
		}
		if let submitter = self.submitter {
			json["submitter"] = submitter.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Note text.
 *
 *  Suite of notes.
 */
public class PaymentReconciliationNote: FHIRElement
{
	override public class var resourceName: String {
		get { return "PaymentReconciliationNote" }
	}
	
	/// Notes text
	public var text: String?
	
	/// display | print | printoper
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["text"] {
				presentKeys.addObject("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"text\" to be `String`, but is \(exist.dynamicType)"))
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
		
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

