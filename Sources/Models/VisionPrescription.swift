//
//  VisionPrescription.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/VisionPrescription) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Prescription for vision correction products for a patient.

An authorization for the provision of glasses and/or contact lenses to a patient.
*/
open class VisionPrescription: DomainResource {
	override open class var resourceType: String {
		get { return "VisionPrescription" }
	}
	
	/// Response creation date.
	public var created: DateTime?
	
	/// When prescription was authorized.
	public var dateWritten: DateTime?
	
	/// Created during encounter / admission / stay.
	public var encounter: Reference?
	
	/// Business Identifier for vision prescription.
	public var identifier: [Identifier]?
	
	/// Vision lens authorization.
	public var lensSpecification: [VisionPrescriptionLensSpecification]?
	
	/// Who prescription is for.
	public var patient: Reference?
	
	/// Who authorized the vision prescription.
	public var prescriber: Reference?
	
	/// The status of the resource instance.
	public var status: FinancialResourceStatusCodes?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(created: DateTime, dateWritten: DateTime, lensSpecification: [VisionPrescriptionLensSpecification], patient: Reference, prescriber: Reference, status: FinancialResourceStatusCodes) {
		self.init()
		self.created = created
		self.dateWritten = dateWritten
		self.lensSpecification = lensSpecification
		self.patient = patient
		self.prescriber = prescriber
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		if nil == created && !instCtx.containsKey("created") {
			instCtx.addError(FHIRValidationError(missing: "created"))
		}
		dateWritten = createInstance(type: DateTime.self, for: "dateWritten", in: json, context: &instCtx, owner: self) ?? dateWritten
		if nil == dateWritten && !instCtx.containsKey("dateWritten") {
			instCtx.addError(FHIRValidationError(missing: "dateWritten"))
		}
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		lensSpecification = createInstances(of: VisionPrescriptionLensSpecification.self, for: "lensSpecification", in: json, context: &instCtx, owner: self) ?? lensSpecification
		if (nil == lensSpecification || lensSpecification!.isEmpty) && !instCtx.containsKey("lensSpecification") {
			instCtx.addError(FHIRValidationError(missing: "lensSpecification"))
		}
		patient = createInstance(type: Reference.self, for: "patient", in: json, context: &instCtx, owner: self) ?? patient
		if nil == patient && !instCtx.containsKey("patient") {
			instCtx.addError(FHIRValidationError(missing: "patient"))
		}
		prescriber = createInstance(type: Reference.self, for: "prescriber", in: json, context: &instCtx, owner: self) ?? prescriber
		if nil == prescriber && !instCtx.containsKey("prescriber") {
			instCtx.addError(FHIRValidationError(missing: "prescriber"))
		}
		status = createEnum(type: FinancialResourceStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		if nil == self.created {
			errors.append(FHIRValidationError(missing: "created"))
		}
		self.dateWritten?.decorate(json: &json, withKey: "dateWritten", errors: &errors)
		if nil == self.dateWritten {
			errors.append(FHIRValidationError(missing: "dateWritten"))
		}
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "lensSpecification", using: self.lensSpecification, errors: &errors)
		if nil == lensSpecification || self.lensSpecification!.isEmpty {
			errors.append(FHIRValidationError(missing: "lensSpecification"))
		}
		self.patient?.decorate(json: &json, withKey: "patient", errors: &errors)
		if nil == self.patient {
			errors.append(FHIRValidationError(missing: "patient"))
		}
		self.prescriber?.decorate(json: &json, withKey: "prescriber", errors: &errors)
		if nil == self.prescriber {
			errors.append(FHIRValidationError(missing: "prescriber"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
	}
}


/**
Vision lens authorization.

Contain the details of  the individual lens specifications and serves as the authorization for the fullfillment by
certified professionals.
*/
open class VisionPrescriptionLensSpecification: BackboneElement {
	override open class var resourceType: String {
		get { return "VisionPrescriptionLensSpecification" }
	}
	
	/// Added power for multifocal levels.
	public var add: FHIRDecimal?
	
	/// Lens meridian which contain no power for astigmatism.
	public var axis: FHIRInteger?
	
	/// Contact lens back curvature.
	public var backCurve: FHIRDecimal?
	
	/// Brand required.
	public var brand: FHIRString?
	
	/// Color required.
	public var color: FHIRString?
	
	/// Lens power for astigmatism.
	public var cylinder: FHIRDecimal?
	
	/// Contact lens diameter.
	public var diameter: FHIRDecimal?
	
	/// Lens wear duration.
	public var duration: Quantity?
	
	/// The eye for which the lens specification applies.
	public var eye: VisionEyes?
	
	/// Notes for coatings.
	public var note: [Annotation]?
	
	/// Contact lens power.
	public var power: FHIRDecimal?
	
	/// Eye alignment compensation.
	public var prism: [VisionPrescriptionLensSpecificationPrism]?
	
	/// Product to be supplied.
	public var product: CodeableConcept?
	
	/// Power of the lens.
	public var sphere: FHIRDecimal?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(eye: VisionEyes, product: CodeableConcept) {
		self.init()
		self.eye = eye
		self.product = product
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		add = createInstance(type: FHIRDecimal.self, for: "add", in: json, context: &instCtx, owner: self) ?? add
		axis = createInstance(type: FHIRInteger.self, for: "axis", in: json, context: &instCtx, owner: self) ?? axis
		backCurve = createInstance(type: FHIRDecimal.self, for: "backCurve", in: json, context: &instCtx, owner: self) ?? backCurve
		brand = createInstance(type: FHIRString.self, for: "brand", in: json, context: &instCtx, owner: self) ?? brand
		color = createInstance(type: FHIRString.self, for: "color", in: json, context: &instCtx, owner: self) ?? color
		cylinder = createInstance(type: FHIRDecimal.self, for: "cylinder", in: json, context: &instCtx, owner: self) ?? cylinder
		diameter = createInstance(type: FHIRDecimal.self, for: "diameter", in: json, context: &instCtx, owner: self) ?? diameter
		duration = createInstance(type: Quantity.self, for: "duration", in: json, context: &instCtx, owner: self) ?? duration
		eye = createEnum(type: VisionEyes.self, for: "eye", in: json, context: &instCtx) ?? eye
		if nil == eye && !instCtx.containsKey("eye") {
			instCtx.addError(FHIRValidationError(missing: "eye"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		power = createInstance(type: FHIRDecimal.self, for: "power", in: json, context: &instCtx, owner: self) ?? power
		prism = createInstances(of: VisionPrescriptionLensSpecificationPrism.self, for: "prism", in: json, context: &instCtx, owner: self) ?? prism
		product = createInstance(type: CodeableConcept.self, for: "product", in: json, context: &instCtx, owner: self) ?? product
		if nil == product && !instCtx.containsKey("product") {
			instCtx.addError(FHIRValidationError(missing: "product"))
		}
		sphere = createInstance(type: FHIRDecimal.self, for: "sphere", in: json, context: &instCtx, owner: self) ?? sphere
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.add?.decorate(json: &json, withKey: "add", errors: &errors)
		self.axis?.decorate(json: &json, withKey: "axis", errors: &errors)
		self.backCurve?.decorate(json: &json, withKey: "backCurve", errors: &errors)
		self.brand?.decorate(json: &json, withKey: "brand", errors: &errors)
		self.color?.decorate(json: &json, withKey: "color", errors: &errors)
		self.cylinder?.decorate(json: &json, withKey: "cylinder", errors: &errors)
		self.diameter?.decorate(json: &json, withKey: "diameter", errors: &errors)
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.eye?.decorate(json: &json, withKey: "eye", errors: &errors)
		if nil == self.eye {
			errors.append(FHIRValidationError(missing: "eye"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.power?.decorate(json: &json, withKey: "power", errors: &errors)
		arrayDecorate(json: &json, withKey: "prism", using: self.prism, errors: &errors)
		self.product?.decorate(json: &json, withKey: "product", errors: &errors)
		if nil == self.product {
			errors.append(FHIRValidationError(missing: "product"))
		}
		self.sphere?.decorate(json: &json, withKey: "sphere", errors: &errors)
	}
}


/**
Eye alignment compensation.

Allows for adjustment on two axis.
*/
open class VisionPrescriptionLensSpecificationPrism: BackboneElement {
	override open class var resourceType: String {
		get { return "VisionPrescriptionLensSpecificationPrism" }
	}
	
	/// Amount of adjustment.
	public var amount: FHIRDecimal?
	
	/// The relative base, or reference lens edge, for the prism.
	public var base: VisionBase?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(amount: FHIRDecimal, base: VisionBase) {
		self.init()
		self.amount = amount
		self.base = base
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: FHIRDecimal.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		if nil == amount && !instCtx.containsKey("amount") {
			instCtx.addError(FHIRValidationError(missing: "amount"))
		}
		base = createEnum(type: VisionBase.self, for: "base", in: json, context: &instCtx) ?? base
		if nil == base && !instCtx.containsKey("base") {
			instCtx.addError(FHIRValidationError(missing: "base"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		if nil == self.amount {
			errors.append(FHIRValidationError(missing: "amount"))
		}
		self.base?.decorate(json: &json, withKey: "base", errors: &errors)
		if nil == self.base {
			errors.append(FHIRValidationError(missing: "base"))
		}
	}
}

