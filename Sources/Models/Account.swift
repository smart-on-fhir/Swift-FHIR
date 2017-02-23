//
//  Account.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/Account) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
Tracks balance, charges, for patient or cost center.

A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges
for a patient, cost centers, etc.
*/
open class Account: DomainResource {
	override open class var resourceType: String {
		get { return "Account" }
	}
	
	/// Time window that transactions may be posted to this account.
	public var active: Period?
	
	/// How much is in account?.
	public var balance: Money?
	
	/// The party(s) that are responsible for covering the payment of this account, and what order should they be
	/// applied to the account.
	public var coverage: [AccountCoverage]?
	
	/// Explanation of purpose/use.
	public var description_fhir: FHIRString?
	
	/// Responsible for the account.
	public var guarantor: [AccountGuarantor]?
	
	/// Account number.
	public var identifier: [Identifier]?
	
	/// Human-readable label.
	public var name: FHIRString?
	
	/// Who is responsible?.
	public var owner: Reference?
	
	/// Transaction window.
	public var period: Period?
	
	/// Indicates whether the account is presently used/useable or not.
	public var status: AccountStatus?
	
	/// What is account tied to?.
	public var subject: Reference?
	
	/// E.g. patient, expense, depreciation.
	public var type: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		active = try createInstance(type: Period.self, for: "active", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? active
		balance = try createInstance(type: Money.self, for: "balance", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? balance
		coverage = try createInstances(of: AccountCoverage.self, for: "coverage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? coverage
		description_fhir = try createInstance(type: FHIRString.self, for: "description", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? description_fhir
		guarantor = try createInstances(of: AccountGuarantor.self, for: "guarantor", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? guarantor
		identifier = try createInstances(of: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		name = try createInstance(type: FHIRString.self, for: "name", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? name
		owner = try createInstance(type: Reference.self, for: "owner", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? owner
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		status = createEnum(type: AccountStatus.self, for: "status", in: json, presentKeys: &presentKeys, errors: &errors) ?? status
		subject = try createInstance(type: Reference.self, for: "subject", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? subject
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.active?.decorate(json: &json, withKey: "active", errors: &errors)
		self.balance?.decorate(json: &json, withKey: "balance", errors: &errors)
		arrayDecorate(json: &json, withKey: "coverage", using: self.coverage, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "guarantor", using: self.guarantor, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.owner?.decorate(json: &json, withKey: "owner", errors: &errors)
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
The party(s) that are responsible for covering the payment of this account, and what order should they be applied to the
account.
*/
open class AccountCoverage: BackboneElement {
	override open class var resourceType: String {
		get { return "AccountCoverage" }
	}
	
	/// The party(s) that are responsible for covering the payment of this account.
	public var coverage: Reference?
	
	/// The priority of the coverage in the context of this account.
	public var priority: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference) {
		self.init()
		self.coverage = coverage
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		coverage = try createInstance(type: Reference.self, for: "coverage", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? coverage
		if nil == coverage && !presentKeys.contains("coverage") {
			errors.append(FHIRValidationError(missing: "coverage"))
		}
		priority = try createInstance(type: FHIRInteger.self, for: "priority", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? priority
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		if nil == self.coverage {
			errors.append(FHIRValidationError(missing: "coverage"))
		}
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
	}
}


/**
Responsible for the account.

Parties financially responsible for the account.
*/
open class AccountGuarantor: BackboneElement {
	override open class var resourceType: String {
		get { return "AccountGuarantor" }
	}
	
	/// Credit or other hold applied.
	public var onHold: FHIRBool?
	
	/// Responsible entity.
	public var party: Reference?
	
	/// Guarrantee account during.
	public var period: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(party: Reference) {
		self.init()
		self.party = party
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		onHold = try createInstance(type: FHIRBool.self, for: "onHold", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? onHold
		party = try createInstance(type: Reference.self, for: "party", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? party
		if nil == party && !presentKeys.contains("party") && !_isSummaryResource {
			errors.append(FHIRValidationError(missing: "party"))
		}
		period = try createInstance(type: Period.self, for: "period", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? period
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.onHold?.decorate(json: &json, withKey: "onHold", errors: &errors)
		self.party?.decorate(json: &json, withKey: "party", errors: &errors)
		if nil == self.party {
			errors.append(FHIRValidationError(missing: "party"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
	}
}

