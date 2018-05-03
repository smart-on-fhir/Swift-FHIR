//
//  MedicinalProductAuthorization.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/MedicinalProductAuthorization) on 2018-05-03.
//  2018, SMART Health IT.
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
	public var identifier: Identifier?
	
	/// Date of first marketing authorization for a company's new medicinal product in any country in the World.
	public var internationalBirthDate: DateTime?
	
	/// Authorization in areas within a country.
	public var jurisdictionalAuthorization: [MedicinalProductAuthorizationJurisdictionalAuthorization]?
	
	/// The legal status of supply of the medicinal product as classified by the regulator.
	public var legalStatusOfSupply: CodeableConcept?
	
	/// Marketing status of the medicinal product, in contrast to marketing authorizaton.
	public var marketingStatus: [MarketingStatus]?
	
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
	
	/// The beginning of the time period in which the marketing authorization is in the specific status shall be
	/// specified A complete date consisting of day, month and year shall be specified using the ISO 8601 date format.
	public var validityPeriod: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(country: [CodeableConcept], holder: Reference, internationalBirthDate: DateTime, legalStatusOfSupply: CodeableConcept, procedure: MedicinalProductAuthorizationProcedure, regulator: Reference, status: CodeableConcept, statusDate: DateTime, validityPeriod: Period) {
		self.init()
		self.country = country
		self.holder = holder
		self.internationalBirthDate = internationalBirthDate
		self.legalStatusOfSupply = legalStatusOfSupply
		self.procedure = procedure
		self.regulator = regulator
		self.status = status
		self.statusDate = statusDate
		self.validityPeriod = validityPeriod
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		country = createInstances(of: CodeableConcept.self, for: "country", in: json, context: &instCtx, owner: self) ?? country
		if (nil == country || country!.isEmpty) && !instCtx.containsKey("country") {
			instCtx.addError(FHIRValidationError(missing: "country"))
		}
		dataExclusivityPeriod = createInstance(type: Period.self, for: "dataExclusivityPeriod", in: json, context: &instCtx, owner: self) ?? dataExclusivityPeriod
		dateOfFirstAuthorization = createInstance(type: DateTime.self, for: "dateOfFirstAuthorization", in: json, context: &instCtx, owner: self) ?? dateOfFirstAuthorization
		holder = createInstance(type: Reference.self, for: "holder", in: json, context: &instCtx, owner: self) ?? holder
		if nil == holder && !instCtx.containsKey("holder") {
			instCtx.addError(FHIRValidationError(missing: "holder"))
		}
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		internationalBirthDate = createInstance(type: DateTime.self, for: "internationalBirthDate", in: json, context: &instCtx, owner: self) ?? internationalBirthDate
		if nil == internationalBirthDate && !instCtx.containsKey("internationalBirthDate") {
			instCtx.addError(FHIRValidationError(missing: "internationalBirthDate"))
		}
		jurisdictionalAuthorization = createInstances(of: MedicinalProductAuthorizationJurisdictionalAuthorization.self, for: "jurisdictionalAuthorization", in: json, context: &instCtx, owner: self) ?? jurisdictionalAuthorization
		legalStatusOfSupply = createInstance(type: CodeableConcept.self, for: "legalStatusOfSupply", in: json, context: &instCtx, owner: self) ?? legalStatusOfSupply
		if nil == legalStatusOfSupply && !instCtx.containsKey("legalStatusOfSupply") {
			instCtx.addError(FHIRValidationError(missing: "legalStatusOfSupply"))
		}
		marketingStatus = createInstances(of: MarketingStatus.self, for: "marketingStatus", in: json, context: &instCtx, owner: self) ?? marketingStatus
		procedure = createInstance(type: MedicinalProductAuthorizationProcedure.self, for: "procedure", in: json, context: &instCtx, owner: self) ?? procedure
		if nil == procedure && !instCtx.containsKey("procedure") {
			instCtx.addError(FHIRValidationError(missing: "procedure"))
		}
		regulator = createInstance(type: Reference.self, for: "regulator", in: json, context: &instCtx, owner: self) ?? regulator
		if nil == regulator && !instCtx.containsKey("regulator") {
			instCtx.addError(FHIRValidationError(missing: "regulator"))
		}
		restoreDate = createInstance(type: DateTime.self, for: "restoreDate", in: json, context: &instCtx, owner: self) ?? restoreDate
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		statusDate = createInstance(type: DateTime.self, for: "statusDate", in: json, context: &instCtx, owner: self) ?? statusDate
		if nil == statusDate && !instCtx.containsKey("statusDate") {
			instCtx.addError(FHIRValidationError(missing: "statusDate"))
		}
		validityPeriod = createInstance(type: Period.self, for: "validityPeriod", in: json, context: &instCtx, owner: self) ?? validityPeriod
		if nil == validityPeriod && !instCtx.containsKey("validityPeriod") {
			instCtx.addError(FHIRValidationError(missing: "validityPeriod"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "country", using: self.country, errors: &errors)
		if nil == country || self.country!.isEmpty {
			errors.append(FHIRValidationError(missing: "country"))
		}
		self.dataExclusivityPeriod?.decorate(json: &json, withKey: "dataExclusivityPeriod", errors: &errors)
		self.dateOfFirstAuthorization?.decorate(json: &json, withKey: "dateOfFirstAuthorization", errors: &errors)
		self.holder?.decorate(json: &json, withKey: "holder", errors: &errors)
		if nil == self.holder {
			errors.append(FHIRValidationError(missing: "holder"))
		}
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.internationalBirthDate?.decorate(json: &json, withKey: "internationalBirthDate", errors: &errors)
		if nil == self.internationalBirthDate {
			errors.append(FHIRValidationError(missing: "internationalBirthDate"))
		}
		arrayDecorate(json: &json, withKey: "jurisdictionalAuthorization", using: self.jurisdictionalAuthorization, errors: &errors)
		self.legalStatusOfSupply?.decorate(json: &json, withKey: "legalStatusOfSupply", errors: &errors)
		if nil == self.legalStatusOfSupply {
			errors.append(FHIRValidationError(missing: "legalStatusOfSupply"))
		}
		arrayDecorate(json: &json, withKey: "marketingStatus", using: self.marketingStatus, errors: &errors)
		self.procedure?.decorate(json: &json, withKey: "procedure", errors: &errors)
		if nil == self.procedure {
			errors.append(FHIRValidationError(missing: "procedure"))
		}
		self.regulator?.decorate(json: &json, withKey: "regulator", errors: &errors)
		if nil == self.regulator {
			errors.append(FHIRValidationError(missing: "regulator"))
		}
		self.restoreDate?.decorate(json: &json, withKey: "restoreDate", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.statusDate?.decorate(json: &json, withKey: "statusDate", errors: &errors)
		if nil == self.statusDate {
			errors.append(FHIRValidationError(missing: "statusDate"))
		}
		self.validityPeriod?.decorate(json: &json, withKey: "validityPeriod", errors: &errors)
		if nil == self.validityPeriod {
			errors.append(FHIRValidationError(missing: "validityPeriod"))
		}
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
	
	/// Jurisdiction within a country.
	public var jurisdiction: CodeableConcept?
	
	/// The legal status of supply in a jurisdiction or region.
	public var legalStatusOfSupply: CodeableConcept?
	
	/// The assigned number for the marketing authorization.
	public var number: Identifier?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(country: CodeableConcept) {
		self.init()
		self.country = country
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		country = createInstance(type: CodeableConcept.self, for: "country", in: json, context: &instCtx, owner: self) ?? country
		if nil == country && !instCtx.containsKey("country") {
			instCtx.addError(FHIRValidationError(missing: "country"))
		}
		jurisdiction = createInstance(type: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		legalStatusOfSupply = createInstance(type: CodeableConcept.self, for: "legalStatusOfSupply", in: json, context: &instCtx, owner: self) ?? legalStatusOfSupply
		number = createInstance(type: Identifier.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.country?.decorate(json: &json, withKey: "country", errors: &errors)
		if nil == self.country {
			errors.append(FHIRValidationError(missing: "country"))
		}
		self.jurisdiction?.decorate(json: &json, withKey: "jurisdiction", errors: &errors)
		self.legalStatusOfSupply?.decorate(json: &json, withKey: "legalStatusOfSupply", errors: &errors)
		self.number?.decorate(json: &json, withKey: "number", errors: &errors)
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
	public var application: [MedicinalProductAuthorizationProcedureApplication]?
	
	/// Date of procedure.
	public var date: Period?
	
	/// Identifier for this procedure.
	public var number: Identifier?
	
	/// Type of procedure.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		application = createInstances(of: MedicinalProductAuthorizationProcedureApplication.self, for: "application", in: json, context: &instCtx, owner: self) ?? application
		date = createInstance(type: Period.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		number = createInstance(type: Identifier.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "application", using: self.application, errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.number?.decorate(json: &json, withKey: "number", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Applcations submitted to obtain a marketing authorization.
*/
open class MedicinalProductAuthorizationProcedureApplication: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductAuthorizationProcedureApplication" }
	}
	
	/// Date that the application was made.
	public var date: DateTime?
	
	/// A unique identifier for the specific instance of an application shall be provided in text. The application
	/// identifier/number is usually assigned by a Medicines Regulatory Agency.
	public var number: Identifier?
	
	/// The type of the application.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(date: DateTime, number: Identifier, type: CodeableConcept) {
		self.init()
		self.date = date
		self.number = number
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		if nil == date && !instCtx.containsKey("date") {
			instCtx.addError(FHIRValidationError(missing: "date"))
		}
		number = createInstance(type: Identifier.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
		if nil == number && !instCtx.containsKey("number") {
			instCtx.addError(FHIRValidationError(missing: "number"))
		}
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		if nil == self.date {
			errors.append(FHIRValidationError(missing: "date"))
		}
		self.number?.decorate(json: &json, withKey: "number", errors: &errors)
		if nil == self.number {
			errors.append(FHIRValidationError(missing: "number"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

