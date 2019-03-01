//
//  Medication.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Medication) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Definition of a Medication.

This resource is primarily used for the identification and definition of a medication for the purposes of prescribing,
dispensing, and administering a medication as well as for making statements about medication use.
*/
open class Medication: DomainResource {
	override open class var resourceType: String {
		get { return "Medication" }
	}
	
	/// Amount of drug in package.
	public var amount: Ratio?
	
	/// Details about packaged medications.
	public var batch: MedicationBatch?
	
	/// Codes that identify this medication.
	public var code: CodeableConcept?
	
	/// powder | tablets | capsule +.
	public var form: CodeableConcept?
	
	/// Business identifier for this medication.
	public var identifier: [Identifier]?
	
	/// Active or inactive ingredient.
	public var ingredient: [MedicationIngredient]?
	
	/// Manufacturer of the item.
	public var manufacturer: Reference?
	
	/// A code to indicate if the medication is in active use.
	public var status: MedicationStatusCodes?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		amount = createInstance(type: Ratio.self, for: "amount", in: json, context: &instCtx, owner: self) ?? amount
		batch = createInstance(type: MedicationBatch.self, for: "batch", in: json, context: &instCtx, owner: self) ?? batch
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		form = createInstance(type: CodeableConcept.self, for: "form", in: json, context: &instCtx, owner: self) ?? form
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		ingredient = createInstances(of: MedicationIngredient.self, for: "ingredient", in: json, context: &instCtx, owner: self) ?? ingredient
		manufacturer = createInstance(type: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		status = createEnum(type: MedicationStatusCodes.self, for: "status", in: json, context: &instCtx) ?? status
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.amount?.decorate(json: &json, withKey: "amount", errors: &errors)
		self.batch?.decorate(json: &json, withKey: "batch", errors: &errors)
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.form?.decorate(json: &json, withKey: "form", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "ingredient", using: self.ingredient, errors: &errors)
		self.manufacturer?.decorate(json: &json, withKey: "manufacturer", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
	}
}


/**
Details about packaged medications.

Information that only applies to packages (not products).
*/
open class MedicationBatch: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationBatch" }
	}
	
	/// When batch will expire.
	public var expirationDate: DateTime?
	
	/// Identifier assigned to batch.
	public var lotNumber: FHIRString?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		expirationDate = createInstance(type: DateTime.self, for: "expirationDate", in: json, context: &instCtx, owner: self) ?? expirationDate
		lotNumber = createInstance(type: FHIRString.self, for: "lotNumber", in: json, context: &instCtx, owner: self) ?? lotNumber
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.expirationDate?.decorate(json: &json, withKey: "expirationDate", errors: &errors)
		self.lotNumber?.decorate(json: &json, withKey: "lotNumber", errors: &errors)
	}
}


/**
Active or inactive ingredient.

Identifies a particular constituent of interest in the product.
*/
open class MedicationIngredient: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicationIngredient" }
	}
	
	/// Active ingredient indicator.
	public var isActive: FHIRBool?
	
	/// The actual ingredient or content.
	public var itemCodeableConcept: CodeableConcept?
	
	/// The actual ingredient or content.
	public var itemReference: Reference?
	
	/// Quantity of ingredient present.
	public var strength: Ratio?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Any) {
		self.init()
		if let value = item as? CodeableConcept {
			self.itemCodeableConcept = value
		}
		else if let value = item as? Reference {
			self.itemReference = value
		}
		else {
			fhir_warn("Type “\(Swift.type(of: item))” for property “\(item)” is invalid, ignoring")
		}
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		isActive = createInstance(type: FHIRBool.self, for: "isActive", in: json, context: &instCtx, owner: self) ?? isActive
		itemCodeableConcept = createInstance(type: CodeableConcept.self, for: "itemCodeableConcept", in: json, context: &instCtx, owner: self) ?? itemCodeableConcept
		itemReference = createInstance(type: Reference.self, for: "itemReference", in: json, context: &instCtx, owner: self) ?? itemReference
		strength = createInstance(type: Ratio.self, for: "strength", in: json, context: &instCtx, owner: self) ?? strength
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			instCtx.addError(FHIRValidationError(missing: "item[x]"))
		}
		
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.isActive?.decorate(json: &json, withKey: "isActive", errors: &errors)
		self.itemCodeableConcept?.decorate(json: &json, withKey: "itemCodeableConcept", errors: &errors)
		self.itemReference?.decorate(json: &json, withKey: "itemReference", errors: &errors)
		self.strength?.decorate(json: &json, withKey: "strength", errors: &errors)
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		if nil == self.itemCodeableConcept && nil == self.itemReference {
			errors.append(FHIRValidationError(missing: "item[x]"))
		}
	}
}

