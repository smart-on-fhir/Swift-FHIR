//
//  MedicinalProductPharmaceutical.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/MedicinalProductPharmaceutical) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A pharmaceutical product described in terms of its composition and dose form.
*/
open class MedicinalProductPharmaceutical: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProductPharmaceutical" }
	}
	
	/// The administrable dose form, after necessary reconstitution.
	public var administrableDoseForm: CodeableConcept?
	
	/// Characteristics e.g. a products onset of action.
	public var characteristics: [MedicinalProductPharmaceuticalCharacteristics]?
	
	/// Accompanying device.
	public var device: [Reference]?
	
	/// An identifier for the pharmaceutical medicinal product.
	public var identifier: [Identifier]?
	
	/// Ingredient.
	public var ingredient: [Reference]?
	
	/// The path by which the pharmaceutical product is taken into or makes contact with the body.
	public var routeOfAdministration: [MedicinalProductPharmaceuticalRouteOfAdministration]?
	
	/// Todo.
	public var unitOfPresentation: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(administrableDoseForm: CodeableConcept, routeOfAdministration: [MedicinalProductPharmaceuticalRouteOfAdministration]) {
		self.init()
		self.administrableDoseForm = administrableDoseForm
		self.routeOfAdministration = routeOfAdministration
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		administrableDoseForm = createInstance(type: CodeableConcept.self, for: "administrableDoseForm", in: json, context: &instCtx, owner: self) ?? administrableDoseForm
		if nil == administrableDoseForm && !instCtx.containsKey("administrableDoseForm") {
			instCtx.addError(FHIRValidationError(missing: "administrableDoseForm"))
		}
		characteristics = createInstances(of: MedicinalProductPharmaceuticalCharacteristics.self, for: "characteristics", in: json, context: &instCtx, owner: self) ?? characteristics
		device = createInstances(of: Reference.self, for: "device", in: json, context: &instCtx, owner: self) ?? device
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		ingredient = createInstances(of: Reference.self, for: "ingredient", in: json, context: &instCtx, owner: self) ?? ingredient
		routeOfAdministration = createInstances(of: MedicinalProductPharmaceuticalRouteOfAdministration.self, for: "routeOfAdministration", in: json, context: &instCtx, owner: self) ?? routeOfAdministration
		if (nil == routeOfAdministration || routeOfAdministration!.isEmpty) && !instCtx.containsKey("routeOfAdministration") {
			instCtx.addError(FHIRValidationError(missing: "routeOfAdministration"))
		}
		unitOfPresentation = createInstance(type: CodeableConcept.self, for: "unitOfPresentation", in: json, context: &instCtx, owner: self) ?? unitOfPresentation
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.administrableDoseForm?.decorate(json: &json, withKey: "administrableDoseForm", errors: &errors)
		if nil == self.administrableDoseForm {
			errors.append(FHIRValidationError(missing: "administrableDoseForm"))
		}
		arrayDecorate(json: &json, withKey: "characteristics", using: self.characteristics, errors: &errors)
		arrayDecorate(json: &json, withKey: "device", using: self.device, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "ingredient", using: self.ingredient, errors: &errors)
		arrayDecorate(json: &json, withKey: "routeOfAdministration", using: self.routeOfAdministration, errors: &errors)
		if nil == routeOfAdministration || self.routeOfAdministration!.isEmpty {
			errors.append(FHIRValidationError(missing: "routeOfAdministration"))
		}
		self.unitOfPresentation?.decorate(json: &json, withKey: "unitOfPresentation", errors: &errors)
	}
}


/**
Characteristics e.g. a products onset of action.
*/
open class MedicinalProductPharmaceuticalCharacteristics: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductPharmaceuticalCharacteristics" }
	}
	
	/// A coded characteristic.
	public var code: CodeableConcept?
	
	/// The status of characteristic e.g. assigned or pending.
	public var status: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		status = createInstance(type: CodeableConcept.self, for: "status", in: json, context: &instCtx, owner: self) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}


/**
The path by which the pharmaceutical product is taken into or makes contact with the body.
*/
open class MedicinalProductPharmaceuticalRouteOfAdministration: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductPharmaceuticalRouteOfAdministration" }
	}
	
	/// Coded expression for the route.
	public var code: CodeableConcept?
	
	/// The first dose (dose quantity) administered in humans can be specified, for a product under investigation, using
	/// a numerical value and its unit of measurement.
	public var firstDose: Quantity?
	
	/// The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be
	/// administered as per the protocol referenced in the clinical trial authorisation.
	public var maxDosePerDay: Quantity?
	
	/// The maximum dose per treatment period that can be administered as per the protocol referenced in the clinical
	/// trial authorisation.
	public var maxDosePerTreatmentPeriod: Ratio?
	
	/// The maximum single dose that can be administered as per the protocol of a clinical trial can be specified using
	/// a numerical value and its unit of measurement.
	public var maxSingleDose: Quantity?
	
	/// The maximum treatment period during which an Investigational Medicinal Product can be administered as per the
	/// protocol referenced in the clinical trial authorisation.
	public var maxTreatmentPeriod: Duration?
	
	/// A species for which this route applies.
	public var targetSpecies: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		firstDose = createInstance(type: Quantity.self, for: "firstDose", in: json, context: &instCtx, owner: self) ?? firstDose
		maxDosePerDay = createInstance(type: Quantity.self, for: "maxDosePerDay", in: json, context: &instCtx, owner: self) ?? maxDosePerDay
		maxDosePerTreatmentPeriod = createInstance(type: Ratio.self, for: "maxDosePerTreatmentPeriod", in: json, context: &instCtx, owner: self) ?? maxDosePerTreatmentPeriod
		maxSingleDose = createInstance(type: Quantity.self, for: "maxSingleDose", in: json, context: &instCtx, owner: self) ?? maxSingleDose
		maxTreatmentPeriod = createInstance(type: Duration.self, for: "maxTreatmentPeriod", in: json, context: &instCtx, owner: self) ?? maxTreatmentPeriod
		targetSpecies = createInstances(of: MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies.self, for: "targetSpecies", in: json, context: &instCtx, owner: self) ?? targetSpecies
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		self.firstDose?.decorate(json: &json, withKey: "firstDose", errors: &errors)
		self.maxDosePerDay?.decorate(json: &json, withKey: "maxDosePerDay", errors: &errors)
		self.maxDosePerTreatmentPeriod?.decorate(json: &json, withKey: "maxDosePerTreatmentPeriod", errors: &errors)
		self.maxSingleDose?.decorate(json: &json, withKey: "maxSingleDose", errors: &errors)
		self.maxTreatmentPeriod?.decorate(json: &json, withKey: "maxTreatmentPeriod", errors: &errors)
		arrayDecorate(json: &json, withKey: "targetSpecies", using: self.targetSpecies, errors: &errors)
	}
}


/**
A species for which this route applies.
*/
open class MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies" }
	}
	
	/// Coded expression for the species.
	public var code: CodeableConcept?
	
	/// A species specific time during which consumption of animal product is not appropriate.
	public var withdrawalPeriod: [MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: CodeableConcept) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		if nil == code && !instCtx.containsKey("code") {
			instCtx.addError(FHIRValidationError(missing: "code"))
		}
		withdrawalPeriod = createInstances(of: MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod.self, for: "withdrawalPeriod", in: json, context: &instCtx, owner: self) ?? withdrawalPeriod
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		if nil == self.code {
			errors.append(FHIRValidationError(missing: "code"))
		}
		arrayDecorate(json: &json, withKey: "withdrawalPeriod", using: self.withdrawalPeriod, errors: &errors)
	}
}


/**
A species specific time during which consumption of animal product is not appropriate.
*/
open class MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod" }
	}
	
	/// Extra information about the withdrawal period.
	public var supportingInformation: FHIRString?
	
	/// Coded expression for the type of tissue for which the withdrawal period applues, e.g. meat, milk.
	public var tissue: CodeableConcept?
	
	/// A value for the time.
	public var value: Quantity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(tissue: CodeableConcept, value: Quantity) {
		self.init()
		self.tissue = tissue
		self.value = value
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		supportingInformation = createInstance(type: FHIRString.self, for: "supportingInformation", in: json, context: &instCtx, owner: self) ?? supportingInformation
		tissue = createInstance(type: CodeableConcept.self, for: "tissue", in: json, context: &instCtx, owner: self) ?? tissue
		if nil == tissue && !instCtx.containsKey("tissue") {
			instCtx.addError(FHIRValidationError(missing: "tissue"))
		}
		value = createInstance(type: Quantity.self, for: "value", in: json, context: &instCtx, owner: self) ?? value
		if nil == value && !instCtx.containsKey("value") {
			instCtx.addError(FHIRValidationError(missing: "value"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.supportingInformation?.decorate(json: &json, withKey: "supportingInformation", errors: &errors)
		self.tissue?.decorate(json: &json, withKey: "tissue", errors: &errors)
		if nil == self.tissue {
			errors.append(FHIRValidationError(missing: "tissue"))
		}
		self.value?.decorate(json: &json, withKey: "value", errors: &errors)
		if nil == self.value {
			errors.append(FHIRValidationError(missing: "value"))
		}
	}
}

