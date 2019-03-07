//
//  MedicinalProductAuthorization.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MedicinalProductAuthorization) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
The regulatory authorization of a medicinal product.
*/
open class MedicinalProductAuthorization: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductAuthorization" }
	}
	
	/// The country in which the marketing authorization has been granted.
	public var country: [CodeableConcept]?
	
	/// A period of time after authorization before generic product applicatiosn can be submitted.
	public var dataExclusivityPeriod: Period?
	
	/// The date when the first authorization was granted by a Medicines Regulatory Agency.
	public var dateOfFirstAuthorization: DateTime?
	
	/// Marketing Authorization Holder.
	public var holder: Reference?
	
	/// Business identifier for the marketing authorization, as assigned by a regulator.
	public var identifier: [Identifier]?
	
	/// Date of first marketing authorization for a company's new medicinal product in any country in the World.
	public var internationalBirthDate: DateTime?
	
	/// Jurisdiction within a country.
	public var jurisdiction: [CodeableConcept]?
	
	/// Authorization in areas within a country.
	public var jurisdictionalAuthorization: [MedicinalProductAuthorizationJurisdictionalAuthorization]?
	
	/// The legal framework against which this authorization is granted.
	public var legalBasis: CodeableConcept?
	
	/// The regulatory procedure for granting or amending a marketing authorization.
	public var procedure: MedicinalProductAuthorizationProcedure?
	
	/// Medicines Regulatory Agency.
	public var regulator: Reference?
	
	/// The date when a suspended the marketing or the marketing authorization of the product is anticipated to be
	/// restored.
	public var restoreDate: DateTime?
	
	/// The status of the marketing authorization.
	public var status: CodeableConcept?
	
	/// The date at which the given status has become applicable.
	public var statusDate: DateTime?
	
	/// The medicinal product that is being authorized.
	public var subject: Reference?
	
	/// The beginning of the time period in which the marketing authorization is in the specific status shall be
	/// specified A complete date consisting of day, month and year shall be specified using the ISO 8601 date format.
	public var validityPeriod: Period?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		country = createInstances(of: CodeableConcept.self, for: "country", in: json, context: &instCtx, owner: self) ?? country
		dataExclusivityPeriod = createInstance(type: Period.self, for: "dataExclusivityPeriod", in: json, context: &instCtx, owner: self) ?? dataExclusivityPeriod
		dateOfFirstAuthorization = createInstance(type: DateTime.self, for: "dateOfFirstAuthorization", in: json, context: &instCtx, owner: self) ?? dateOfFirstAuthorization
		holder = createInstance(type: Reference.self, for: "holder", in: json, context: &instCtx, owner: self) ?? holder
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		internationalBirthDate = createInstance(type: DateTime.self, for: "internationalBirthDate", in: json, context: &instCtx, owner: self) ?? internationalBirthDate
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		jurisdictionalAuthorization = createInstances(of: MedicinalProductAuthorizationJurisdictionalAuthorization.self, for: "jurisdictionalAuthorization", in: json, context: &instCtx, owner: self) ?? jurisdictionalAuthorization
		legalBasis = createInstance(type: CodeableConcept.self, for: "legalBasis", in: json, context: &instCtx, owner: self) ?? legalBasis
		procedure = createInstance(type: MedicinalProductAuthorizationProcedure.self, for: "procedure", in: json, context: &instCtx, owner: self) ?? procedure
		regulator = createInstance(type: Reference.self, for: "regulator", in: json, context: &instCtx, owner: self) ?? regulator
		restoreDate = createInstance(type: DateTime.self, for: "restoreDate", in: json, context: &instCtx, owner: self) ?? restoreDate
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		statusDate = createInstance(type: DateTime.self, for: "statusDate", in: json, context: &instCtx, owner: self) ?? statusDate
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		validityPeriod = createInstance(type: Period.self, for: "validityPeriod", in: json, context: &instCtx, owner: self) ?? validityPeriod
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "country", using: self.country, errors: &errors)
		self.dataExclusivityPeriod?.decorate(json: &json, withKey: "dataExclusivityPeriod", errors: &errors)
		self.dateOfFirstAuthorization?.decorate(json: &json, withKey: "dateOfFirstAuthorization", errors: &errors)
		self.holder?.decorate(json: &json, withKey: "holder", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.internationalBirthDate?.decorate(json: &json, withKey: "internationalBirthDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdictionalAuthorization", using: self.jurisdictionalAuthorization, errors: &errors)
		self.legalBasis?.decorate(json: &json, withKey: "legalBasis", errors: &errors)
		self.procedure?.decorate(json: &json, withKey: "procedure", errors: &errors)
		self.regulator?.decorate(json: &json, withKey: "regulator", errors: &errors)
		self.restoreDate?.decorate(json: &json, withKey: "restoreDate", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.validityPeriod?.decorate(json: &json, withKey: "validityPeriod", errors: &errors)
	}
}


/**
Authorization in areas within a country.
*/
open class MedicinalProductAuthorizationJurisdictionalAuthorization: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductAuthorizationJurisdictionalAuthorization" }
	}
	
	/// Country of authorization.
	public var country: CodeableConcept?
	
	/// The assigned number for the marketing authorization.
	public var identifier: [Identifier]?
	
	/// Jurisdiction within a country.
	public var jurisdiction: [CodeableConcept]?
	
	/// The legal status of supply in a jurisdiction or region.
	public var legalStatusOfSupply: CodeableConcept?
	
	/// The start and expected end date of the authorization.
	public var validityPeriod: Period?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		country = createInstance(type: CodeableConcept.self, for: "country", in: json, context: &instCtx, owner: self) ?? country
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		legalStatusOfSupply = createInstance(type: CodeableConcept.self, for: "legalStatusOfSupply", in: json, context: &instCtx, owner: self) ?? legalStatusOfSupply
		validityPeriod = createInstance(type: Period.self, for: "validityPeriod", in: json, context: &instCtx, owner: self) ?? validityPeriod
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.country?.decorate(json: &json, withKey: "country", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.legalStatusOfSupply?.decorate(json: &json, withKey: "legalStatusOfSupply", errors: &errors)
		self.validityPeriod?.decorate(json: &json, withKey: "validityPeriod", errors: &errors)
	}
}


/**
The regulatory procedure for granting or amending a marketing authorization.
*/
open class MedicinalProductAuthorizationProcedure: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductAuthorizationProcedure" }
	}
	
	/// Applcations submitted to obtain a marketing authorization.
	public var application: [MedicinalProductAuthorizationProcedure]?
	
	/// Date of procedure.
	public var dateDateTime: DateTime?
	
	/// Date of procedure.
	public var datePeriod: Period?
	
	/// Identifier for this procedure.
	public var identifier: Identifier?
	
	/// Type of procedure.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		application = createInstances(of: MedicinalProductAuthorizationProcedure.self, for: "application", in: json, context: &instCtx, owner: self) ?? application
		dateDateTime = createInstance(type: DateTime.self, for: "dateDateTime", in: json, context: &instCtx, owner: self) ?? dateDateTime
		datePeriod = createInstance(type: Period.self, for: "datePeriod", in: json, context: &instCtx, owner: self) ?? datePeriod
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "application", using: self.application, errors: &errors)
		self.dateDateTime?.decorate(json: &json, withKey: "dateDateTime", errors: &errors)
		self.datePeriod?.decorate(json: &json, withKey: "datePeriod", errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

