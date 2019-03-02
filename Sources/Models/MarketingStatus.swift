//
//  MarketingStatus.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MarketingStatus) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
The marketing status describes the date when a medicinal product is actually put on the market or the date as of which
it is no longer available.
*/
open class MarketingStatus: BackboneElement {
	override open class var resourceType: String {
		get { return "MarketingStatus" }
	}
	
	/// The country in which the marketing authorisation has been granted shall be specified It should be specified
	/// using the ISO 3166 ‑ 1 alpha-2 code elements.
	public var country: CodeableConcept?
	
	/// The date when the Medicinal Product is placed on the market by the Marketing Authorisation Holder (or where
	/// applicable, the manufacturer/distributor) in a country and/or jurisdiction shall be provided A complete date
	/// consisting of day, month and year shall be specified using the ISO 8601 date format NOTE “Placed on the market”
	/// refers to the release of the Medicinal Product into the distribution chain.
	public var dateRange: Period?
	
	/// Where a Medicines Regulatory Agency has granted a marketing authorisation for which specific provisions within a
	/// jurisdiction apply, the jurisdiction can be specified using an appropriate controlled terminology The controlled
	/// term and the controlled term identifier shall be specified.
	public var jurisdiction: CodeableConcept?
	
	/// The date when the Medicinal Product is placed on the market by the Marketing Authorisation Holder (or where
	/// applicable, the manufacturer/distributor) in a country and/or jurisdiction shall be provided A complete date
	/// consisting of day, month and year shall be specified using the ISO 8601 date format NOTE “Placed on the market”
	/// refers to the release of the Medicinal Product into the distribution chain.
	public var restoreDate: DateTime?
	
	/// This attribute provides information on the status of the marketing of the medicinal product See ISO/TS 20443 for
	/// more information and examples.
	public var status: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(country: CodeableConcept, dateRange: Period, status: CodeableConcept) {
		self.init()
		self.country = country
		self.dateRange = dateRange
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		country = createInstance(type: CodeableConcept.self, for: "country", in: json, context: &instCtx, owner: self) ?? country
		if nil == country && !instCtx.containsKey("country") {
			instCtx.addError(FHIRValidationError(missing: "country"))
		}
		dateRange = createInstance(type: Period.self, for: "dateRange", in: json, context: &instCtx, owner: self) ?? dateRange
		if nil == dateRange && !instCtx.containsKey("dateRange") {
			instCtx.addError(FHIRValidationError(missing: "dateRange"))
		}
		jurisdiction = createInstance(type: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		restoreDate = createInstance(type: DateTime.self, for: "restoreDate", in: json, context: &instCtx, owner: self) ?? restoreDate
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.country?.decorate(json: &json, withKey: "country", errors: &errors)
		if nil == self.country {
			errors.append(FHIRValidationError(missing: "country"))
		}
		self.dateRange?.decorate(json: &json, withKey: "dateRange", errors: &errors)
		if nil == self.dateRange {
			errors.append(FHIRValidationError(missing: "dateRange"))
		}
		self.jurisdiction?.decorate(json: &json, withKey: "jurisdiction", errors: &errors)
		self.restoreDate?.decorate(json: &json, withKey: "restoreDate", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}

