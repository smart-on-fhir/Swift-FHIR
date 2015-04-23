//
//  ClaimResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ClaimResponse) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Remittance resource.
 *
 *  This resource provides the adjudication details from the processing of a Claim resource.
 */
public class ClaimResponse: DomainResource
{
	override public class var resourceName: String {
		get { return "ClaimResponse" }
	}
	
	/// Insurer added line items
	public var addItem: [ClaimResponseAddItem]?
	
	/// Insurance or medical plan
	public var coverage: [ClaimResponseCoverage]?
	
	/// Creation date
	public var created: DateTime?
	
	/// Disposition Message
	public var disposition: String?
	
	/// Processing errors
	public var error: [ClaimResponseError]?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Response  number
	public var identifier: [Identifier]?
	
	/// Line items
	public var item: [ClaimResponseItem]?
	
	/// Processing notes
	public var note: [ClaimResponseNote]?
	
	/// Insurer
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// complete | error
	public var outcome: String?
	
	/// Party to be paid any benefits payable
	public var payeeType: Coding?
	
	/// Payment adjustment for non-Claim issues
	public var paymentAdjustment: Money?
	
	/// Reason for Payment adjustment
	public var paymentAdjustmentReason: Coding?
	
	/// Payment amount
	public var paymentAmount: Money?
	
	/// Expected data of Payment
	public var paymentDate: Date?
	
	/// Payment identifier
	public var paymentRef: Identifier?
	
	/// Id of resource triggering adjudication
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Funds reserved status
	public var reserved: Coding?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Total benefit payable for the Claim
	public var totalBenefit: Money?
	
	/// Total Cost of service from the Claim
	public var totalCost: Money?
	
	/// Unallocated deductable
	public var unallocDeductable: Money?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["addItem"] {
				presentKeys.addObject("addItem")
				if let val = exist as? [FHIRJSON] {
					self.addItem = ClaimResponseAddItem.from(val, owner: self) as? [ClaimResponseAddItem]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"addItem\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["coverage"] {
				presentKeys.addObject("coverage")
				if let val = exist as? [FHIRJSON] {
					self.coverage = ClaimResponseCoverage.from(val, owner: self) as? [ClaimResponseCoverage]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"coverage\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.addObject("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"created\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["error"] {
				presentKeys.addObject("error")
				if let val = exist as? [FHIRJSON] {
					self.error = ClaimResponseError.from(val, owner: self) as? [ClaimResponseError]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"error\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["item"] {
				presentKeys.addObject("item")
				if let val = exist as? [FHIRJSON] {
					self.item = ClaimResponseItem.from(val, owner: self) as? [ClaimResponseItem]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"item\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.addObject("note")
				if let val = exist as? [FHIRJSON] {
					self.note = ClaimResponseNote.from(val, owner: self) as? [ClaimResponseNote]
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
			if let exist: AnyObject = js["payeeType"] {
				presentKeys.addObject("payeeType")
				if let val = exist as? FHIRJSON {
					self.payeeType = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"payeeType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["paymentAdjustment"] {
				presentKeys.addObject("paymentAdjustment")
				if let val = exist as? FHIRJSON {
					self.paymentAdjustment = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"paymentAdjustment\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["paymentAdjustmentReason"] {
				presentKeys.addObject("paymentAdjustmentReason")
				if let val = exist as? FHIRJSON {
					self.paymentAdjustmentReason = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"paymentAdjustmentReason\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["paymentAmount"] {
				presentKeys.addObject("paymentAmount")
				if let val = exist as? FHIRJSON {
					self.paymentAmount = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"paymentAmount\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["paymentDate"] {
				presentKeys.addObject("paymentDate")
				if let val = exist as? String {
					self.paymentDate = Date(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"paymentDate\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["paymentRef"] {
				presentKeys.addObject("paymentRef")
				if let val = exist as? FHIRJSON {
					self.paymentRef = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"paymentRef\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["reserved"] {
				presentKeys.addObject("reserved")
				if let val = exist as? FHIRJSON {
					self.reserved = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"reserved\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["totalBenefit"] {
				presentKeys.addObject("totalBenefit")
				if let val = exist as? FHIRJSON {
					self.totalBenefit = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"totalBenefit\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["totalCost"] {
				presentKeys.addObject("totalCost")
				if let val = exist as? FHIRJSON {
					self.totalCost = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"totalCost\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["unallocDeductable"] {
				presentKeys.addObject("unallocDeductable")
				if let val = exist as? FHIRJSON {
					self.unallocDeductable = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"unallocDeductable\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let addItem = self.addItem {
			json["addItem"] = ClaimResponseAddItem.asJSONArray(addItem)
		}
		if let coverage = self.coverage {
			json["coverage"] = ClaimResponseCoverage.asJSONArray(coverage)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let error = self.error {
			json["error"] = ClaimResponseError.asJSONArray(error)
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let item = self.item {
			json["item"] = ClaimResponseItem.asJSONArray(item)
		}
		if let note = self.note {
			json["note"] = ClaimResponseNote.asJSONArray(note)
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
		if let payeeType = self.payeeType {
			json["payeeType"] = payeeType.asJSON()
		}
		if let paymentAdjustment = self.paymentAdjustment {
			json["paymentAdjustment"] = paymentAdjustment.asJSON()
		}
		if let paymentAdjustmentReason = self.paymentAdjustmentReason {
			json["paymentAdjustmentReason"] = paymentAdjustmentReason.asJSON()
		}
		if let paymentAmount = self.paymentAmount {
			json["paymentAmount"] = paymentAmount.asJSON()
		}
		if let paymentDate = self.paymentDate {
			json["paymentDate"] = paymentDate.asJSON()
		}
		if let paymentRef = self.paymentRef {
			json["paymentRef"] = paymentRef.asJSON()
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
		if let reserved = self.reserved {
			json["reserved"] = reserved.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let totalBenefit = self.totalBenefit {
			json["totalBenefit"] = totalBenefit.asJSON()
		}
		if let totalCost = self.totalCost {
			json["totalCost"] = totalCost.asJSON()
		}
		if let unallocDeductable = self.unallocDeductable {
			json["unallocDeductable"] = unallocDeductable.asJSON()
		}
		
		return json
	}
}


/**
 *  Insurer added line items.
 *
 *  The first tier service adjudications for payor added services.
 */
public class ClaimResponseAddItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAddItem" }
	}
	
	/// Added items adjudication
	public var adjudication: [ClaimResponseAddItemAdjudication]?
	
	/// Added items details
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// List of note numbers which apply
	public var noteNumberLinkId: [UInt]?
	
	/// Service instances
	public var sequenceLinkId: [UInt]?
	
	/// Group, Service or Product
	public var service: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(service: Coding?) {
		self.init(json: nil)
		if nil != service {
			self.service = service
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.addObject("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseAddItemAdjudication.from(val, owner: self) as? [ClaimResponseAddItemAdjudication]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"adjudication\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.addObject("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ClaimResponseAddItemDetail.from(val, owner: self) as? [ClaimResponseAddItemDetail]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"detail\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fee"] {
				presentKeys.addObject("fee")
				if let val = exist as? FHIRJSON {
					self.fee = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fee\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["noteNumberLinkId"] {
				presentKeys.addObject("noteNumberLinkId")
				if let val = exist as? [UInt] {
					self.noteNumberLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"noteNumberLinkId\" to be an array of `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.addObject("sequenceLinkId")
				if let val = exist as? [UInt] {
					self.sequenceLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequenceLinkId\" to be an array of `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.addObject("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"service\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"service\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseAddItemAdjudication.asJSONArray(adjudication)
		}
		if let detail = self.detail {
			json["detail"] = ClaimResponseAddItemDetail.asJSONArray(detail)
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON()
		}
		if let noteNumberLinkId = self.noteNumberLinkId {
			var arr = [AnyObject]()
			for val in noteNumberLinkId {
				arr.append(val.asJSON())
			}
			json["noteNumberLinkId"] = arr
		}
		if let sequenceLinkId = self.sequenceLinkId {
			var arr = [AnyObject]()
			for val in sequenceLinkId {
				arr.append(val.asJSON())
			}
			json["sequenceLinkId"] = arr
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		
		return json
	}
}


/**
 *  Added items adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseAddItemAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAddItemAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
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
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Added items details.
 *
 *  The second tier service adjudications for payor added services.
 */
public class ClaimResponseAddItemDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAddItemDetail" }
	}
	
	/// Added items detail adjudication
	public var adjudication: [ClaimResponseAddItemDetailAdjudication]?
	
	/// Professional fee or Product charge
	public var fee: Money?
	
	/// Service or Product
	public var service: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(service: Coding?) {
		self.init(json: nil)
		if nil != service {
			self.service = service
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.addObject("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseAddItemDetailAdjudication.from(val, owner: self) as? [ClaimResponseAddItemDetailAdjudication]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"adjudication\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["fee"] {
				presentKeys.addObject("fee")
				if let val = exist as? FHIRJSON {
					self.fee = Money(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"fee\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.addObject("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"service\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"service\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseAddItemDetailAdjudication.asJSONArray(adjudication)
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		
		return json
	}
}


/**
 *  Added items detail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseAddItemDetailAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseAddItemDetailAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
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
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
public class ClaimResponseCoverage: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseCoverage" }
	}
	
	/// Business agreement
	public var businessArrangement: String?
	
	/// Adjudication results
	public var claimResponse: Reference?
	
	/// Insurance information
	public var coverage: Reference?
	
	/// Is the focal Coverage
	public var focal: Bool?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Pre-Authorization/Determination Reference
	public var preAuthRef: [String]?
	
	/// Patient relationship to subscriber
	public var relationship: Coding?
	
	/// Service instance identifier
	public var sequence: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(coverage: Reference?, focal: Bool?, relationship: Coding?, sequence: UInt?) {
		self.init(json: nil)
		if nil != coverage {
			self.coverage = coverage
		}
		if nil != focal {
			self.focal = focal
		}
		if nil != relationship {
			self.relationship = relationship
		}
		if nil != sequence {
			self.sequence = sequence
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["businessArrangement"] {
				presentKeys.addObject("businessArrangement")
				if let val = exist as? String {
					self.businessArrangement = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"businessArrangement\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["claimResponse"] {
				presentKeys.addObject("claimResponse")
				if let val = exist as? FHIRJSON {
					self.claimResponse = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"claimResponse\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["coverage"] {
				presentKeys.addObject("coverage")
				if let val = exist as? FHIRJSON {
					self.coverage = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"coverage\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"coverage\" but it is missing"))
			}
			if let exist: AnyObject = js["focal"] {
				presentKeys.addObject("focal")
				if let val = exist as? Bool {
					self.focal = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"focal\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"focal\" but it is missing"))
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
			if let exist: AnyObject = js["preAuthRef"] {
				presentKeys.addObject("preAuthRef")
				if let val = exist as? [String] {
					self.preAuthRef = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"preAuthRef\" to be an array of `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["relationship"] {
				presentKeys.addObject("relationship")
				if let val = exist as? FHIRJSON {
					self.relationship = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"relationship\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"relationship\" but it is missing"))
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
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequence\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let businessArrangement = self.businessArrangement {
			json["businessArrangement"] = businessArrangement.asJSON()
		}
		if let claimResponse = self.claimResponse {
			json["claimResponse"] = claimResponse.asJSON()
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON()
		}
		if let focal = self.focal {
			json["focal"] = focal.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let preAuthRef = self.preAuthRef {
			var arr = [AnyObject]()
			for val in preAuthRef {
				arr.append(val.asJSON())
			}
			json["preAuthRef"] = arr
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		
		return json
	}
}


/**
 *  Processing errors.
 *
 *  Mutually exclusive with Services Provided (Item).
 */
public class ClaimResponseError: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseError" }
	}
	
	/// Error code detailing processing issues
	public var code: Coding?
	
	/// Detail sequence number
	public var detailSequenceLinkId: UInt?
	
	/// Item sequence number
	public var sequenceLinkId: UInt?
	
	/// Subdetail sequence number
	public var subdetailSequenceLinkId: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["detailSequenceLinkId"] {
				presentKeys.addObject("detailSequenceLinkId")
				if let val = exist as? UInt {
					self.detailSequenceLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"detailSequenceLinkId\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.addObject("sequenceLinkId")
				if let val = exist as? UInt {
					self.sequenceLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequenceLinkId\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["subdetailSequenceLinkId"] {
				presentKeys.addObject("subdetailSequenceLinkId")
				if let val = exist as? UInt {
					self.subdetailSequenceLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subdetailSequenceLinkId\" to be `UInt`, but is \(exist.dynamicType)"))
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
		if let detailSequenceLinkId = self.detailSequenceLinkId {
			json["detailSequenceLinkId"] = detailSequenceLinkId.asJSON()
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		if let subdetailSequenceLinkId = self.subdetailSequenceLinkId {
			json["subdetailSequenceLinkId"] = subdetailSequenceLinkId.asJSON()
		}
		
		return json
	}
}


/**
 *  Line items.
 *
 *  The first tier service adjudications for submitted services.
 */
public class ClaimResponseItem: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItem" }
	}
	
	/// Adjudication details
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Detail line items
	public var detail: [ClaimResponseItemDetail]?
	
	/// List of note numbers which apply
	public var noteNumber: [UInt]?
	
	/// Service instance
	public var sequenceLinkId: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(sequenceLinkId: UInt?) {
		self.init(json: nil)
		if nil != sequenceLinkId {
			self.sequenceLinkId = sequenceLinkId
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.addObject("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseItemAdjudication.from(val, owner: self) as? [ClaimResponseItemAdjudication]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"adjudication\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.addObject("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ClaimResponseItemDetail.from(val, owner: self) as? [ClaimResponseItemDetail]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"detail\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["noteNumber"] {
				presentKeys.addObject("noteNumber")
				if let val = exist as? [UInt] {
					self.noteNumber = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"noteNumber\" to be an array of `UInt`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.addObject("sequenceLinkId")
				if let val = exist as? UInt {
					self.sequenceLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequenceLinkId\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequenceLinkId\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseItemAdjudication.asJSONArray(adjudication)
		}
		if let detail = self.detail {
			json["detail"] = ClaimResponseItemDetail.asJSONArray(detail)
		}
		if let noteNumber = self.noteNumber {
			var arr = [AnyObject]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}


/**
 *  Adjudication details.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
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
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Detail line items.
 *
 *  The second tier service adjudications for submitted services.
 */
public class ClaimResponseItemDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetail" }
	}
	
	/// Detail adjudication
	public var adjudication: [ClaimResponseItemDetailAdjudication]?
	
	/// Service instance
	public var sequenceLinkId: UInt?
	
	/// Subdetail line items
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(sequenceLinkId: UInt?) {
		self.init(json: nil)
		if nil != sequenceLinkId {
			self.sequenceLinkId = sequenceLinkId
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.addObject("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseItemDetailAdjudication.from(val, owner: self) as? [ClaimResponseItemDetailAdjudication]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"adjudication\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.addObject("sequenceLinkId")
				if let val = exist as? UInt {
					self.sequenceLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequenceLinkId\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequenceLinkId\" but it is missing"))
			}
			if let exist: AnyObject = js["subDetail"] {
				presentKeys.addObject("subDetail")
				if let val = exist as? [FHIRJSON] {
					self.subDetail = ClaimResponseItemDetailSubDetail.from(val, owner: self) as? [ClaimResponseItemDetailSubDetail]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"subDetail\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseItemDetailAdjudication.asJSONArray(adjudication)
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		if let subDetail = self.subDetail {
			json["subDetail"] = ClaimResponseItemDetailSubDetail.asJSONArray(subDetail)
		}
		
		return json
	}
}


/**
 *  Detail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemDetailAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
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
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Subdetail line items.
 *
 *  The third tier service adjudications for submitted services.
 */
public class ClaimResponseItemDetailSubDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailSubDetail" }
	}
	
	/// Subdetail adjudication
	public var adjudication: [ClaimResponseItemDetailSubDetailAdjudication]?
	
	/// Service instance
	public var sequenceLinkId: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(sequenceLinkId: UInt?) {
		self.init(json: nil)
		if nil != sequenceLinkId {
			self.sequenceLinkId = sequenceLinkId
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.addObject("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseItemDetailSubDetailAdjudication.from(val, owner: self) as? [ClaimResponseItemDetailSubDetailAdjudication]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"adjudication\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.addObject("sequenceLinkId")
				if let val = exist as? UInt {
					self.sequenceLinkId = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"sequenceLinkId\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"sequenceLinkId\" but it is missing"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseItemDetailSubDetailAdjudication.asJSONArray(adjudication)
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}


/**
 *  Subdetail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemDetailSubDetailAdjudication: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailSubDetailAdjudication" }
	}
	
	/// Monitary amount
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc.
	public var code: Coding?
	
	/// Non-monitory value
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(code: Coding?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
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
			if let exist: AnyObject = js["code"] {
				presentKeys.addObject("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"code\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"code\" but it is missing"))
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.addObject("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"value\" to be `NSNumber`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Processing notes.
 *
 *  Note text.
 */
public class ClaimResponseNote: FHIRElement
{
	override public class var resourceName: String {
		get { return "ClaimResponseNote" }
	}
	
	/// Note Number for this note
	public var number: UInt?
	
	/// Note explanitory text
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
			if let exist: AnyObject = js["number"] {
				presentKeys.addObject("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"number\" to be `UInt`, but is \(exist.dynamicType)"))
				}
			}
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
		
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

