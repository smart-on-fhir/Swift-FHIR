//
//  EligibilityRequest.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/EligibilityRequest) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Determine insurance validity and scope of coverage.

The EligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the
form of an EligibilityResponse, with information regarding whether the stated coverage is valid and in-force and
optionally to provide the insurance details of the policy.
*/
open class EligibilityRequest: DomainResource {
	override open class var resourceType: String {
		get { return "EligibilityRequest" }
	}
	
	/// Services which may require prior authorization.
	public var authorization: [EligibilityRequestAuthorization]?
	
	/// Type of services covered.
	public var benefitCategory: CodeableConcept?
	
	/// Detailed services covered within the type.
	public var benefitSubCategory: CodeableConcept?
	
	/// Business agreement.
	public var businessArrangement: FHIRString?
	
	/// Insurance or medical plan.
	public var coverage: Reference?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Author.
	public var enterer: Reference?
	
	/// Servicing Facility.
	public var facility: Reference?
	
	/// Business Identifier.
	public var identifier: [Identifier]?
	
	/// Target.
	public var insurer: Reference?
	
	/// The subject of the Products and Services.
	public var patient: Reference?
	
	/// Desired processing priority.
	public var priority: CodeableConcept?
	
	/// Responsible practitioner.
	public var provider: Reference?
	
	/// Estimated date or dates of Service.
	public var servicedDate: FHIRDate?
	
	/// Estimated date or dates of Service.
	public var servicedPeriod: Period?
	
	/// active | cancelled | draft | entered-in-error.
	public var status: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authorization = createInstances(of: EligibilityRequestAuthorization.self, for: "authorization", in: json, context: &instCtx, owner: self) ?? authorization
		benefitCategory = createInstance(type: CodeableConcept.self, for: "benefitCategory", in: json, context: &instCtx, owner: self) ?? benefitCategory
		benefitSubCategory = createInstance(type: CodeableConcept.self, for: "benefitSubCategory", in: json, context: &instCtx, owner: self) ?? benefitSubCategory
		businessArrangement = createInstance(type: FHIRString.self, for: "businessArrangement", in: json, context: &instCtx, owner: self) ?? businessArrangement
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		enterer = createInstance(type: Reference.self, for: "enterer", in: json, context: &instCtx, owner: self) ?? enterer
		facility = createInstance(type: Reference.self, for: "facility", in: json, context: &instCtx, owner: self) ?? facility
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		insurer = createInstance(type: Reference.self, for: "insurer", in: json, context: &instCtx, owner: self) ?? insurer
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		priority = createInstance(type: CodeableConcept.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
		provider = createInstance(type: Reference.self, for: "provider", in: json, context: &instCtx, owner: self) ?? provider
		servicedDate = createInstance(type: FHIRDate.self, for: "servicedDate", in: json, context: &instCtx, owner: self) ?? servicedDate
		servicedPeriod = createInstance(type: Period.self, for: "servicedPeriod", in: json, context: &instCtx, owner: self) ?? servicedPeriod
		status = createInstance(type: FHIRString.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "authorization", using: self.authorization, errors: &errors)
		self.benefitCategory?.decorate(json: &json, withKey: "benefitCategory", errors: &errors)
		self.benefitSubCategory?.decorate(json: &json, withKey: "benefitSubCategory", errors: &errors)
		self.businessArrangement?.decorate(json: &json, withKey: "businessArrangement", errors: &errors)
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.enterer?.decorate(json: &json, withKey: "enterer", errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.insurer?.decorate(json: &json, withKey: "insurer", errors: &errors)
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
		self.provider?.decorate(json: &json, withKey: "provider", errors: &errors)
		self.servicedDate?.decorate(json: &json, withKey: "servicedDate", errors: &errors)
		self.servicedPeriod?.decorate(json: &json, withKey: "servicedPeriod", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}


/**
Services which may require prior authorization.

A list of billable services for which an authorization prior to service delivery may be required by the payor.
*/
open class EligibilityRequestAuthorization: BackboneElement {
	override open class var resourceType: String {
		get { return "EligibilityRequestAuthorization" }
	}
	
	/// List of Diagnosis.
	public var diagnosis: [EligibilityRequestAuthorizationDiagnosis]?
	
	/// Servicing Facility.
	public var facility: Reference?
	
	/// Service/Product billing modifiers.
	public var modifier: [CodeableConcept]?
	
	/// Count of products or services.
	public var quantity: Quantity?
	
	/// Procedure sequence for reference.
	public var sequence: FHIRInteger?
	
	/// Billing Code.
	public var service: CodeableConcept?
	
	/// Fee, charge or cost per point.
	public var unitPrice: Money?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequence: FHIRInteger, service: CodeableConcept) {
		self.init()
		self.sequence = sequence
		self.service = service
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		diagnosis = createInstances(of: EligibilityRequestAuthorizationDiagnosis.self, for: "diagnosis", in: json, context: &instCtx, owner: self) ?? diagnosis
		facility = createInstance(type: Reference.self, for: "facility", in: json, context: &instCtx, owner: self) ?? facility
		modifier = createInstances(of: CodeableConcept.self, for: "modifier", in: json, context: &instCtx, owner: self) ?? modifier
		quantity = createInstance(type: Quantity.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		sequence = createInstance(type: FHIRInteger.self, for: "sequence", in: json, context: &instCtx, owner: self) ?? sequence
		if nil == sequence && !instCtx.containsKey("sequence") {
			instCtx.addError(FHIRValidationError(missing: "sequence"))
		}
		service = createInstance(type: CodeableConcept.self, for: "service", in: json, context: &instCtx, owner: self) ?? service
		if nil == service && !instCtx.containsKey("service") {
			instCtx.addError(FHIRValidationError(missing: "service"))
		}
		unitPrice = createInstance(type: Money.self, for: "unitPrice", in: json, context: &instCtx, owner: self) ?? unitPrice
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "diagnosis", using: self.diagnosis, errors: &errors)
		self.facility?.decorate(json: &json, withKey: "facility", errors: &errors)
		arrayDecorate(json: &json, withKey: "modifier", using: self.modifier, errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		self.sequence?.decorate(json: &json, withKey: "sequence", errors: &errors)
		if nil == self.sequence {
			errors.append(FHIRValidationError(missing: "sequence"))
		}
		self.service?.decorate(json: &json, withKey: "service", errors: &errors)
		if nil == self.service {
			errors.append(FHIRValidationError(missing: "service"))
		}
		self.unitPrice?.decorate(json: &json, withKey: "unitPrice", errors: &errors)
	}
}


/**
List of Diagnosis.

List of patient diagnosis for which care is sought.
*/
open class EligibilityRequestAuthorizationDiagnosis: BackboneElement {
	override open class var resourceType: String {
		get { return "EligibilityRequestAuthorizationDiagnosis" }
	}
	
	/// Patient's diagnosis.
	public var diagnosisCodeableConcept: CodeableConcept?
	
	/// Patient's diagnosis.
	public var diagnosisReference: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		diagnosisCodeableConcept = createInstance(type: CodeableConcept.self, for: "diagnosisCodeableConcept", in: json, context: &instCtx, owner: self) ?? diagnosisCodeableConcept
		diagnosisReference = createInstance(type: Reference.self, for: "diagnosisReference", in: json, context: &instCtx, owner: self) ?? diagnosisReference
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.diagnosisCodeableConcept?.decorate(json: &json, withKey: "diagnosisCodeableConcept", errors: &errors)
		self.diagnosisReference?.decorate(json: &json, withKey: "diagnosisReference", errors: &errors)
	}
}

