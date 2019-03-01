//
//  Invoice.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Invoice) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Invoice containing ChargeItems from an Account.

Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose.
*/
open class Invoice: DomainResource {
	override open class var resourceType: String {
		get { return "Invoice" }
	}
	
	/// Account that is being balanced.
	public var account: Reference?
	
	/// Reason for cancellation of this Invoice.
	public var cancelledReason: FHIRString?
	
	/// Invoice date / posting date.
	public var date: DateTime?
	
	/// Business Identifier for item.
	public var identifier: [Identifier]?
	
	/// Issuing Organization of Invoice.
	public var issuer: Reference?
	
	/// Line items of this Invoice.
	public var lineItem: [InvoiceLineItem]?
	
	/// Comments made about the invoice.
	public var note: [Annotation]?
	
	/// Participant in creation of this Invoice.
	public var participant: [InvoiceParticipant]?
	
	/// Payment details.
	public var paymentTerms: FHIRString?
	
	/// Recipient of this invoice.
	public var recipient: Reference?
	
	/// The current state of the Invoice.
	public var status: InvoiceStatus?
	
	/// Recipient(s) of goods and services.
	public var subject: Reference?
	
	/// Gross total of this Invoice.
	public var totalGross: Money?
	
	/// Net total of this Invoice.
	public var totalNet: Money?
	
	/// Components of Invoice total.
	public var totalPriceComponent: [InvoiceLineItemPriceComponent]?
	
	/// Type of Invoice.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: InvoiceStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		account = createInstance(type: Reference.self, for: "account", in: json, context: &instCtx, owner: self) ?? account
		cancelledReason = createInstance(type: FHIRString.self, for: "cancelledReason", in: json, context: &instCtx, owner: self) ?? cancelledReason
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		issuer = createInstance(type: Reference.self, for: "issuer", in: json, context: &instCtx, owner: self) ?? issuer
		lineItem = createInstances(of: InvoiceLineItem.self, for: "lineItem", in: json, context: &instCtx, owner: self) ?? lineItem
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		participant = createInstances(of: InvoiceParticipant.self, for: "participant", in: json, context: &instCtx, owner: self) ?? participant
		paymentTerms = createInstance(type: FHIRString.self, for: "paymentTerms", in: json, context: &instCtx, owner: self) ?? paymentTerms
		recipient = createInstance(type: Reference.self, for: "recipient", in: json, context: &instCtx, owner: self) ?? recipient
		status = createEnum(type: InvoiceStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		totalGross = createInstance(type: Money.self, for: "totalGross", in: json, context: &instCtx, owner: self) ?? totalGross
		totalNet = createInstance(type: Money.self, for: "totalNet", in: json, context: &instCtx, owner: self) ?? totalNet
		totalPriceComponent = createInstances(of: InvoiceLineItemPriceComponent.self, for: "totalPriceComponent", in: json, context: &instCtx, owner: self) ?? totalPriceComponent
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.account?.decorate(json: &json, withKey: "account", errors: &errors)
		self.cancelledReason?.decorate(json: &json, withKey: "cancelledReason", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.issuer?.decorate(json: &json, withKey: "issuer", errors: &errors)
		arrayDecorate(json: &json, withKey: "lineItem", using: self.lineItem, errors: &errors)
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		arrayDecorate(json: &json, withKey: "participant", using: self.participant, errors: &errors)
		self.paymentTerms?.decorate(json: &json, withKey: "paymentTerms", errors: &errors)
		self.recipient?.decorate(json: &json, withKey: "recipient", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.totalGross?.decorate(json: &json, withKey: "totalGross", errors: &errors)
		self.totalNet?.decorate(json: &json, withKey: "totalNet", errors: &errors)
		arrayDecorate(json: &json, withKey: "totalPriceComponent", using: self.totalPriceComponent, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Line items of this Invoice.

Each line item represents one charge for goods and services rendered. Details such as date, code and amount are found in
the referenced ChargeItem resource.
*/
open class InvoiceLineItem: BackboneElement {
	override open class var resourceType: String {
		get { return "InvoiceLineItem" }
	}
	
	/// Reference to ChargeItem containing details of this line item or an inline billing code.
	public var chargeItemCodeableConcept: CodeableConcept?
	
	/// Reference to ChargeItem containing details of this line item or an inline billing code.
	public var chargeItemReference: Reference?
	
	/// Components of total line item price.
	public var priceComponent: [InvoiceLineItemPriceComponent]?
	
	/// Sequence number of line item.
	public var sequence: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(chargeItem: Any) {
		self.init()
		if let value = chargeItem as? Reference {
			self.chargeItemReference = value
		}
		else if let value = chargeItem as? CodeableConcept {
			self.chargeItemCodeableConcept = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: chargeItem))” for property “\(chargeItem)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		chargeItemCodeableConcept = createInstance(type: CodeableConcept.self, for: "chargeItemCodeableConcept", in: json, context: &instCtx, owner: self) ?? chargeItemCodeableConcept
		chargeItemReference = createInstance(type: Reference.self, for: "chargeItemReference", in: json, context: &instCtx, owner: self) ?? chargeItemReference
		priceComponent = createInstances(of: InvoiceLineItemPriceComponent.self, for: "priceComponent", in: json, context: &instCtx, owner: self) ?? priceComponent
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.chargeItemReference && nil == self.chargeItemCodeableConcept {
			instCtx.addError(FHIRValidationError(missing: "chargeItem[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.chargeItemCodeableConcept?.decorate(json: &json, withKey: "chargeItemCodeableConcept", errors: &errors)
		self.chargeItemReference?.decorate(json: &json, withKey: "chargeItemReference", errors: &errors)
		arrayDecorate(json: &json, withKey: "priceComponent", using: self.priceComponent, errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.chargeItemReference && nil == self.chargeItemCodeableConcept {
			errors.append(FHIRValidationError(missing: "chargeItem[x]"))
		}
	}
}


/**
Components of total line item price.

The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain
conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing code
is currently under development. The priceComponent element can be used to offer transparency to the recipient of the
Invoice as to how the prices have been calculated.
*/
open class InvoiceLineItemPriceComponent: BackboneElement {
	override open class var resourceType: String {
		get { return "InvoiceLineItemPriceComponent" }
	}
	
	/// Monetary amount associated with this component.
	public var amount: Money?
	
	/// Code identifying the specific component.
	public var code: CodeableConcept?
	
	/// Factor used for calculating this component.
	public var factor: FHIRDecimal?
	
	/// This code identifies the type of the component.
	public var type: InvoicePriceComponentType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: InvoicePriceComponentType) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Money.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		factor = createInstance(type: FHIRDecimal.self, for: "factor", in: json, context: &instCtx, owner: self) ?? factor
		type = createEnum(type: InvoicePriceComponentType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.factor?.decorate(json: &json, withKey: "factor", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Participant in creation of this Invoice.

Indicates who or what performed or participated in the charged service.
*/
open class InvoiceParticipant: BackboneElement {
	override open class var resourceType: String {
		get { return "InvoiceParticipant" }
	}
	
	/// Individual who was involved.
	public var actor: Reference?
	
	/// Type of involvement in creation of this Invoice.
	public var role: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actor: Reference) {
		self.init()
		self.actor = actor
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstance(type: Reference.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		if nil == actor && !instCtx.containsKey("actor") {
			instCtx.addError(FHIRValidationError(missing: "actor"))
		}
		role = createInstance(type: CodeableConcept.self, for: "role", in: json, context: &instCtx, owner: self) ?? role
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actor?.decorate(json: &json, withKey: "actor", errors: &errors)
		if nil == self.actor {
			errors.append(FHIRValidationError(missing: "actor"))
		}
		self.role?.decorate(json: &json, withKey: "role", errors: &errors)
	}
}

