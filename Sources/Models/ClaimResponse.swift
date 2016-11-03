//
//  ClaimResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/ClaimResponse) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Remittance resource.
 *
 *  This resource provides the adjudication details from the processing of a Claim resource.
 */
open class ClaimResponse: DomainResource {
	override open class var resourceType: String {
		get { return "ClaimResponse" }
	}
	
	/// Insurer added line items.
	public var addItem: [ClaimResponseAddItem]?
	
	/// Insurance or medical plan.
	public var coverage: [ClaimResponseCoverage]?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: String?
	
	/// Processing errors.
	public var error: [ClaimResponseError]?
	
	/// Printed Form Identifier.
	public var form: Coding?
	
	/// Response  number.
	public var identifier: [Identifier]?
	
	/// Line items.
	public var item: [ClaimResponseItem]?
	
	/// Processing notes.
	public var note: [ClaimResponseNote]?
	
	/// Insurer.
	public var organization: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// complete | error | partial.
	public var outcome: Coding?
	
	/// Party to be paid any benefits payable.
	public var payeeType: Coding?
	
	/// Payment details, if paid.
	public var payment: ClaimResponsePayment?
	
	/// Id of resource triggering adjudication.
	public var request: Reference?
	
	/// Responsible organization.
	public var requestOrganization: Reference?
	
	/// Responsible practitioner.
	public var requestProvider: Reference?
	
	/// Funds reserved status.
	public var reserved: Coding?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: String?
	
	/// Total benefit payable for the Claim.
	public var totalBenefit: Money?
	
	/// Total Cost of service from the Claim.
	public var totalCost: Money?
	
	/// Unallocated deductible.
	public var unallocDeductable: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: String) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["addItem"] {
			presentKeys.insert("addItem")
			if let val = exist as? [FHIRJSON] {
				do {
					self.addItem = try ClaimResponseAddItem.instantiate(fromArray: val, owner: self) as? [ClaimResponseAddItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "addItem"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "addItem", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["coverage"] {
			presentKeys.insert("coverage")
			if let val = exist as? [FHIRJSON] {
				do {
					self.coverage = try ClaimResponseCoverage.instantiate(fromArray: val, owner: self) as? [ClaimResponseCoverage]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "coverage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "coverage", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["created"] {
			presentKeys.insert("created")
			if let val = exist as? String {
				self.created = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "created", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["disposition"] {
			presentKeys.insert("disposition")
			if let val = exist as? String {
				self.disposition = val
			}
			else {
				errors.append(FHIRValidationError(key: "disposition", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["error"] {
			presentKeys.insert("error")
			if let val = exist as? [FHIRJSON] {
				do {
					self.error = try ClaimResponseError.instantiate(fromArray: val, owner: self) as? [ClaimResponseError]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "error"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "error", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["form"] {
			presentKeys.insert("form")
			if let val = exist as? FHIRJSON {
				do {
					self.form = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "form"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "form", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.identifier = try Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["item"] {
			presentKeys.insert("item")
			if let val = exist as? [FHIRJSON] {
				do {
					self.item = try ClaimResponseItem.instantiate(fromArray: val, owner: self) as? [ClaimResponseItem]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "item"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "item", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["note"] {
			presentKeys.insert("note")
			if let val = exist as? [FHIRJSON] {
				do {
					self.note = try ClaimResponseNote.instantiate(fromArray: val, owner: self) as? [ClaimResponseNote]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "note"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["organization"] {
			presentKeys.insert("organization")
			if let val = exist as? FHIRJSON {
				do {
					self.organization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "organization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "organization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["originalRuleset"] {
			presentKeys.insert("originalRuleset")
			if let val = exist as? FHIRJSON {
				do {
					self.originalRuleset = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "originalRuleset"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "originalRuleset", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["outcome"] {
			presentKeys.insert("outcome")
			if let val = exist as? FHIRJSON {
				do {
					self.outcome = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "outcome"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "outcome", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["payeeType"] {
			presentKeys.insert("payeeType")
			if let val = exist as? FHIRJSON {
				do {
					self.payeeType = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "payeeType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "payeeType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["payment"] {
			presentKeys.insert("payment")
			if let val = exist as? FHIRJSON {
				do {
					self.payment = try ClaimResponsePayment(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "payment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "payment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["request"] {
			presentKeys.insert("request")
			if let val = exist as? FHIRJSON {
				do {
					self.request = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "request"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "request", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestOrganization"] {
			presentKeys.insert("requestOrganization")
			if let val = exist as? FHIRJSON {
				do {
					self.requestOrganization = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestOrganization"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestOrganization", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["requestProvider"] {
			presentKeys.insert("requestProvider")
			if let val = exist as? FHIRJSON {
				do {
					self.requestProvider = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "requestProvider"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "requestProvider", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["reserved"] {
			presentKeys.insert("reserved")
			if let val = exist as? FHIRJSON {
				do {
					self.reserved = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reserved"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reserved", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["ruleset"] {
			presentKeys.insert("ruleset")
			if let val = exist as? FHIRJSON {
				do {
					self.ruleset = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "ruleset"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "ruleset", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["totalBenefit"] {
			presentKeys.insert("totalBenefit")
			if let val = exist as? FHIRJSON {
				do {
					self.totalBenefit = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "totalBenefit"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "totalBenefit", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["totalCost"] {
			presentKeys.insert("totalCost")
			if let val = exist as? FHIRJSON {
				do {
					self.totalCost = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "totalCost"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "totalCost", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["unallocDeductable"] {
			presentKeys.insert("unallocDeductable")
			if let val = exist as? FHIRJSON {
				do {
					self.unallocDeductable = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "unallocDeductable"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "unallocDeductable", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let addItem = self.addItem {
			json["addItem"] = addItem.map() { $0.asJSON(errors: &errors) }
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.map() { $0.asJSON(errors: &errors) }
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let error = self.error {
			json["error"] = error.map() { $0.asJSON(errors: &errors) }
		}
		if let form = self.form {
			json["form"] = form.asJSON(errors: &errors)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON(errors: &errors) }
		}
		if let item = self.item {
			json["item"] = item.map() { $0.asJSON(errors: &errors) }
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON(errors: &errors) }
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON(errors: &errors)
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON(errors: &errors)
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON(errors: &errors)
		}
		if let payeeType = self.payeeType {
			json["payeeType"] = payeeType.asJSON(errors: &errors)
		}
		if let payment = self.payment {
			json["payment"] = payment.asJSON(errors: &errors)
		}
		if let request = self.request {
			json["request"] = request.asJSON(errors: &errors)
		}
		if let requestOrganization = self.requestOrganization {
			json["requestOrganization"] = requestOrganization.asJSON(errors: &errors)
		}
		if let requestProvider = self.requestProvider {
			json["requestProvider"] = requestProvider.asJSON(errors: &errors)
		}
		if let reserved = self.reserved {
			json["reserved"] = reserved.asJSON(errors: &errors)
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let totalBenefit = self.totalBenefit {
			json["totalBenefit"] = totalBenefit.asJSON(errors: &errors)
		}
		if let totalCost = self.totalCost {
			json["totalCost"] = totalCost.asJSON(errors: &errors)
		}
		if let unallocDeductable = self.unallocDeductable {
			json["unallocDeductable"] = unallocDeductable.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Insurer added line items.
 *
 *  The first tier service adjudications for payor added services.
 */
open class ClaimResponseAddItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseAddItem" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Added items details.
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Professional fee or Product charge.
	public var fee: Money?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Revenue or cost center code.
	public var revenue: Coding?
	
	/// Service instances.
	public var sequenceLinkId: [UInt]?
	
	/// Group, Service or Product.
	public var service: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ClaimResponseItemAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? FHIRJSON {
				do {
					self.category = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? [FHIRJSON] {
				do {
					self.detail = try ClaimResponseAddItemDetail.instantiate(fromArray: val, owner: self) as? [ClaimResponseAddItemDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "detail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["fee"] {
			presentKeys.insert("fee")
			if let val = exist as? FHIRJSON {
				do {
					self.fee = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fee"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fee", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modifier = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["revenue"] {
			presentKeys.insert("revenue")
			if let val = exist as? FHIRJSON {
				do {
					self.revenue = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "revenue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequenceLinkId"] {
			presentKeys.insert("sequenceLinkId")
			if let val = exist as? [UInt] {
				self.sequenceLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequenceLinkId", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["service"] {
			presentKeys.insert("service")
			if let val = exist as? FHIRJSON {
				do {
					self.service = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "service"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let detail = self.detail {
			json["detail"] = detail.map() { $0.asJSON(errors: &errors) }
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON(errors: &errors)
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON(errors: &errors) }
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON(errors: &errors)
		}
		if let sequenceLinkId = self.sequenceLinkId {
			var arr = [Any]()
			for val in sequenceLinkId {
				arr.append(val.asJSON())
			}
			json["sequenceLinkId"] = arr
		}
		if let service = self.service {
			json["service"] = service.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Added items details.
 *
 *  The second tier service adjudications for payor added services.
 */
open class ClaimResponseAddItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseAddItemDetail" }
	}
	
	/// Added items detail adjudication.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Type of service or product.
	public var category: Coding?
	
	/// Professional fee or Product charge.
	public var fee: Money?
	
	/// Service/Product billing modifiers.
	public var modifier: [Coding]?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Revenue or cost center code.
	public var revenue: Coding?
	
	/// Service or Product.
	public var service: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ClaimResponseItemAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? FHIRJSON {
				do {
					self.category = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["fee"] {
			presentKeys.insert("fee")
			if let val = exist as? FHIRJSON {
				do {
					self.fee = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "fee"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "fee", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modifier = try Coding.instantiate(fromArray: val, owner: self) as? [Coding]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["revenue"] {
			presentKeys.insert("revenue")
			if let val = exist as? FHIRJSON {
				do {
					self.revenue = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "revenue"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "revenue", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["service"] {
			presentKeys.insert("service")
			if let val = exist as? FHIRJSON {
				do {
					self.service = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "service"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "service", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON(errors: &errors)
		}
		if let modifier = self.modifier {
			json["modifier"] = modifier.map() { $0.asJSON(errors: &errors) }
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let revenue = self.revenue {
			json["revenue"] = revenue.asJSON(errors: &errors)
		}
		if let service = self.service {
			json["service"] = service.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
open class ClaimResponseCoverage: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseCoverage" }
	}
	
	/// Business agreement.
	public var businessArrangement: String?
	
	/// Adjudication results.
	public var claimResponse: Reference?
	
	/// Insurance information.
	public var coverage: Reference?
	
	/// Is the focal Coverage.
	public var focal: Bool?
	
	/// Pre-Authorization/Determination Reference.
	public var preAuthRef: [String]?
	
	/// Service instance identifier.
	public var sequence: UInt?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference, focal: Bool, sequence: UInt) {
		self.init()
		self.coverage = coverage
		self.focal = focal
		self.sequence = sequence
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["businessArrangement"] {
			presentKeys.insert("businessArrangement")
			if let val = exist as? String {
				self.businessArrangement = val
			}
			else {
				errors.append(FHIRValidationError(key: "businessArrangement", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["claimResponse"] {
			presentKeys.insert("claimResponse")
			if let val = exist as? FHIRJSON {
				do {
					self.claimResponse = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "claimResponse"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "claimResponse", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["coverage"] {
			presentKeys.insert("coverage")
			if let val = exist as? FHIRJSON {
				do {
					self.coverage = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "coverage"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "coverage", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "coverage"))
		}
		if let exist = json["focal"] {
			presentKeys.insert("focal")
			if let val = exist as? Bool {
				self.focal = val
			}
			else {
				errors.append(FHIRValidationError(key: "focal", wants: Bool.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "focal"))
		}
		if let exist = json["preAuthRef"] {
			presentKeys.insert("preAuthRef")
			if let val = exist as? [String] {
				self.preAuthRef = val
			}
			else {
				errors.append(FHIRValidationError(key: "preAuthRef", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequence"] {
			presentKeys.insert("sequence")
			if let val = exist as? UInt {
				self.sequence = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequence", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let businessArrangement = self.businessArrangement {
			json["businessArrangement"] = businessArrangement.asJSON()
		}
		if let claimResponse = self.claimResponse {
			json["claimResponse"] = claimResponse.asJSON(errors: &errors)
		}
		if let coverage = self.coverage {
			json["coverage"] = coverage.asJSON(errors: &errors)
		}
		if let focal = self.focal {
			json["focal"] = focal.asJSON()
		}
		if let preAuthRef = self.preAuthRef {
			var arr = [Any]()
			for val in preAuthRef {
				arr.append(val.asJSON())
			}
			json["preAuthRef"] = arr
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
open class ClaimResponseError: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseError" }
	}
	
	/// Error code detailing processing issues.
	public var code: Coding?
	
	/// Detail sequence number.
	public var detailSequenceLinkId: UInt?
	
	/// Item sequence number.
	public var sequenceLinkId: UInt?
	
	/// Subdetail sequence number.
	public var subdetailSequenceLinkId: UInt?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Coding) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["detailSequenceLinkId"] {
			presentKeys.insert("detailSequenceLinkId")
			if let val = exist as? UInt {
				self.detailSequenceLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "detailSequenceLinkId", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequenceLinkId"] {
			presentKeys.insert("sequenceLinkId")
			if let val = exist as? UInt {
				self.sequenceLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequenceLinkId", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["subdetailSequenceLinkId"] {
			presentKeys.insert("subdetailSequenceLinkId")
			if let val = exist as? UInt {
				self.subdetailSequenceLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "subdetailSequenceLinkId", wants: UInt.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
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
open class ClaimResponseItem: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItem" }
	}
	
	/// Adjudication details.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Detail line items.
	public var detail: [ClaimResponseItemDetail]?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Service instance.
	public var sequenceLinkId: UInt?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequenceLinkId: UInt) {
		self.init()
		self.sequenceLinkId = sequenceLinkId
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ClaimResponseItemAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["detail"] {
			presentKeys.insert("detail")
			if let val = exist as? [FHIRJSON] {
				do {
					self.detail = try ClaimResponseItemDetail.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "detail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "detail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequenceLinkId"] {
			presentKeys.insert("sequenceLinkId")
			if let val = exist as? UInt {
				self.sequenceLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequenceLinkId", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequenceLinkId"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let detail = self.detail {
			json["detail"] = detail.map() { $0.asJSON(errors: &errors) }
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
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
open class ClaimResponseItemAdjudication: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Money?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc..
	public var category: Coding?
	
	/// Adjudication reason.
	public var reason: Coding?
	
	/// Non-monetary value.
	public var value: NSDecimalNumber?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init()
		self.category = category
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["amount"] {
			presentKeys.insert("amount")
			if let val = exist as? FHIRJSON {
				do {
					self.amount = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "amount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "amount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? FHIRJSON {
				do {
					self.category = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "category"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "category"))
		}
		if let exist = json["reason"] {
			presentKeys.insert("reason")
			if let val = exist as? FHIRJSON {
				do {
					self.reason = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "reason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "reason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["value"] {
			presentKeys.insert("value")
			if let val = exist as? NSNumber {
				self.value = NSDecimalNumber(json: val)
			}
			else {
				errors.append(FHIRValidationError(key: "value", wants: NSNumber.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON(errors: &errors)
		}
		if let category = self.category {
			json["category"] = category.asJSON(errors: &errors)
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON(errors: &errors)
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
open class ClaimResponseItemDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItemDetail" }
	}
	
	/// Detail adjudication.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Service instance.
	public var sequenceLinkId: UInt?
	
	/// Subdetail line items.
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequenceLinkId: UInt) {
		self.init()
		self.sequenceLinkId = sequenceLinkId
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ClaimResponseItemAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequenceLinkId"] {
			presentKeys.insert("sequenceLinkId")
			if let val = exist as? UInt {
				self.sequenceLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequenceLinkId", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequenceLinkId"))
		}
		if let exist = json["subDetail"] {
			presentKeys.insert("subDetail")
			if let val = exist as? [FHIRJSON] {
				do {
					self.subDetail = try ClaimResponseItemDetailSubDetail.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemDetailSubDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "subDetail"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "subDetail", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		if let subDetail = self.subDetail {
			json["subDetail"] = subDetail.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
 *  Subdetail line items.
 *
 *  The third tier service adjudications for submitted services.
 */
open class ClaimResponseItemDetailSubDetail: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseItemDetailSubDetail" }
	}
	
	/// Subdetail adjudication.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Service instance.
	public var sequenceLinkId: UInt?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequenceLinkId: UInt) {
		self.init()
		self.sequenceLinkId = sequenceLinkId
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjudication"] {
			presentKeys.insert("adjudication")
			if let val = exist as? [FHIRJSON] {
				do {
					self.adjudication = try ClaimResponseItemAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemAdjudication]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjudication"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjudication", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["noteNumber"] {
			presentKeys.insert("noteNumber")
			if let val = exist as? [UInt] {
				self.noteNumber = val
			}
			else {
				errors.append(FHIRValidationError(key: "noteNumber", wants: Array<UInt>.self, has: type(of: exist)))
			}
		}
		if let exist = json["sequenceLinkId"] {
			presentKeys.insert("sequenceLinkId")
			if let val = exist as? UInt {
				self.sequenceLinkId = val
			}
			else {
				errors.append(FHIRValidationError(key: "sequenceLinkId", wants: UInt.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "sequenceLinkId"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjudication = self.adjudication {
			json["adjudication"] = adjudication.map() { $0.asJSON(errors: &errors) }
		}
		if let noteNumber = self.noteNumber {
			var arr = [Any]()
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
 *  Processing notes.
 *
 *  Note text.
 */
open class ClaimResponseNote: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponseNote" }
	}
	
	/// Language.
	public var language: Coding?
	
	/// Note Number for this note.
	public var number: UInt?
	
	/// Note explanatory text.
	public var text: String?
	
	/// display | print | printoper.
	public var type: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["language"] {
			presentKeys.insert("language")
			if let val = exist as? FHIRJSON {
				do {
					self.language = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "language"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "language", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["number"] {
			presentKeys.insert("number")
			if let val = exist as? UInt {
				self.number = val
			}
			else {
				errors.append(FHIRValidationError(key: "number", wants: UInt.self, has: type(of: exist)))
			}
		}
		if let exist = json["text"] {
			presentKeys.insert("text")
			if let val = exist as? String {
				self.text = val
			}
			else {
				errors.append(FHIRValidationError(key: "text", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let language = self.language {
			json["language"] = language.asJSON(errors: &errors)
		}
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Payment details, if paid.
 *
 *  Payment details for the claim if the claim has been paid.
 */
open class ClaimResponsePayment: BackboneElement {
	override open class var resourceType: String {
		get { return "ClaimResponsePayment" }
	}
	
	/// Payment adjustment for non-Claim issues.
	public var adjustment: Money?
	
	/// Reason for Payment adjustment.
	public var adjustmentReason: Coding?
	
	/// Payment amount.
	public var amount: Money?
	
	/// Expected data of Payment.
	public var date: FHIRDate?
	
	/// Payment identifier.
	public var identifier: Identifier?
	
	/// Partial or Complete.
	public var type: Coding?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["adjustment"] {
			presentKeys.insert("adjustment")
			if let val = exist as? FHIRJSON {
				do {
					self.adjustment = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjustment"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjustment", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["adjustmentReason"] {
			presentKeys.insert("adjustmentReason")
			if let val = exist as? FHIRJSON {
				do {
					self.adjustmentReason = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "adjustmentReason"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "adjustmentReason", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["amount"] {
			presentKeys.insert("amount")
			if let val = exist as? FHIRJSON {
				do {
					self.amount = try Money(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "amount"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "amount", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = FHIRDate(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let adjustment = self.adjustment {
			json["adjustment"] = adjustment.asJSON(errors: &errors)
		}
		if let adjustmentReason = self.adjustmentReason {
			json["adjustmentReason"] = adjustmentReason.asJSON(errors: &errors)
		}
		if let amount = self.amount {
			json["amount"] = amount.asJSON(errors: &errors)
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
	}
}

