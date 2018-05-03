//
//  MedicinalProduct.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/MedicinalProduct) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use).
*/
open class MedicinalProduct: DomainResource {
	override open class var resourceType: String {
		get { return "MedicinalProduct" }
	}
	
	/// Whether the Medicinal Product is subject to additional monitoring for regulatory reasons.
	public var additionalMonitoringIndicator: CodeableConcept?
	
	/// Supporting documentation, typically for regulatory submission.
	public var attachedDocument: [Reference]?
	
	/// Clinical particulars, indications etc..
	public var clinicalParticulars: [Reference]?
	
	/// The dose form for a single part product, or combined form of a multiple part product.
	public var combinedPharmaceuticalDoseForm: CodeableConcept?
	
	/// Reference to another product, e.g. for linking authorised to investigational product.
	public var crossReference: [Identifier]?
	
	/// Business idenfifier for this product. Could be an MPID.
	public var identifier: Identifier?
	
	/// An operation applied to the product, for manufacturing or adminsitrative purpose.
	public var manufacturingBusinessOperation: [MedicinalProductManufacturingBusinessOperation]?
	
	/// Product regulatory authorization.
	public var marketingAuthorization: Reference?
	
	/// A master file for to the medicinal product (e.g. Pharmacovigilance System Master File).
	public var masterFile: [Reference]?
	
	/// The product's name, including full name and possibly coded parts.
	public var name: [MedicinalProductName]?
	
	/// Indicates if the medicinal product has an orphan designation for the treatment of a rare disease.
	public var orphanDesignationStatus: CodeableConcept?
	
	/// Package representation for the product.
	public var packagedMedicinalProduct: [Reference]?
	
	/// If authorised for use in children.
	public var paediatricUseIndicator: CodeableConcept?
	
	/// Pharmaceutical aspects of product.
	public var pharmaceuticalProduct: [Reference]?
	
	/// Allows the product to be classified by various systems.
	public var productClassification: [CodeableConcept]?
	
	/// Whether the Medicinal Product is subject to special measures for regulatory reasons.
	public var specialMeasures: [FHIRString]?
	
	/// Regulatory type, e.g. Investigational or Authorized.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier, name: [MedicinalProductName]) {
		self.init()
		self.identifier = identifier
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additionalMonitoringIndicator = createInstance(type: CodeableConcept.self, for: "additionalMonitoringIndicator", in: json, context: &instCtx, owner: self) ?? additionalMonitoringIndicator
		attachedDocument = createInstances(of: Reference.self, for: "attachedDocument", in: json, context: &instCtx, owner: self) ?? attachedDocument
		clinicalParticulars = createInstances(of: Reference.self, for: "clinicalParticulars", in: json, context: &instCtx, owner: self) ?? clinicalParticulars
		combinedPharmaceuticalDoseForm = createInstance(type: CodeableConcept.self, for: "combinedPharmaceuticalDoseForm", in: json, context: &instCtx, owner: self) ?? combinedPharmaceuticalDoseForm
		crossReference = createInstances(of: Identifier.self, for: "crossReference", in: json, context: &instCtx, owner: self) ?? crossReference
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		if nil == identifier && !instCtx.containsKey("identifier") {
			instCtx.addError(FHIRValidationError(missing: "identifier"))
		}
		manufacturingBusinessOperation = createInstances(of: MedicinalProductManufacturingBusinessOperation.self, for: "manufacturingBusinessOperation", in: json, context: &instCtx, owner: self) ?? manufacturingBusinessOperation
		marketingAuthorization = createInstance(type: Reference.self, for: "marketingAuthorization", in: json, context: &instCtx, owner: self) ?? marketingAuthorization
		masterFile = createInstances(of: Reference.self, for: "masterFile", in: json, context: &instCtx, owner: self) ?? masterFile
		name = createInstances(of: MedicinalProductName.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		if (nil == name || name!.isEmpty) && !instCtx.containsKey("name") {
			instCtx.addError(FHIRValidationError(missing: "name"))
		}
		orphanDesignationStatus = createInstance(type: CodeableConcept.self, for: "orphanDesignationStatus", in: json, context: &instCtx, owner: self) ?? orphanDesignationStatus
		packagedMedicinalProduct = createInstances(of: Reference.self, for: "packagedMedicinalProduct", in: json, context: &instCtx, owner: self) ?? packagedMedicinalProduct
		paediatricUseIndicator = createInstance(type: CodeableConcept.self, for: "paediatricUseIndicator", in: json, context: &instCtx, owner: self) ?? paediatricUseIndicator
		pharmaceuticalProduct = createInstances(of: Reference.self, for: "pharmaceuticalProduct", in: json, context: &instCtx, owner: self) ?? pharmaceuticalProduct
		productClassification = createInstances(of: CodeableConcept.self, for: "productClassification", in: json, context: &instCtx, owner: self) ?? productClassification
		specialMeasures = createInstances(of: FHIRString.self, for: "specialMeasures", in: json, context: &instCtx, owner: self) ?? specialMeasures
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.additionalMonitoringIndicator?.decorate(json: &json, withKey: "additionalMonitoringIndicator", errors: &errors)
		arrayDecorate(json: &json, withKey: "attachedDocument", using: self.attachedDocument, errors: &errors)
		arrayDecorate(json: &json, withKey: "clinicalParticulars", using: self.clinicalParticulars, errors: &errors)
		self.combinedPharmaceuticalDoseForm?.decorate(json: &json, withKey: "combinedPharmaceuticalDoseForm", errors: &errors)
		arrayDecorate(json: &json, withKey: "crossReference", using: self.crossReference, errors: &errors)
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		arrayDecorate(json: &json, withKey: "manufacturingBusinessOperation", using: self.manufacturingBusinessOperation, errors: &errors)
		self.marketingAuthorization?.decorate(json: &json, withKey: "marketingAuthorization", errors: &errors)
		arrayDecorate(json: &json, withKey: "masterFile", using: self.masterFile, errors: &errors)
		arrayDecorate(json: &json, withKey: "name", using: self.name, errors: &errors)
		if nil == name || self.name!.isEmpty {
			errors.append(FHIRValidationError(missing: "name"))
		}
		self.orphanDesignationStatus?.decorate(json: &json, withKey: "orphanDesignationStatus", errors: &errors)
		arrayDecorate(json: &json, withKey: "packagedMedicinalProduct", using: self.packagedMedicinalProduct, errors: &errors)
		self.paediatricUseIndicator?.decorate(json: &json, withKey: "paediatricUseIndicator", errors: &errors)
		arrayDecorate(json: &json, withKey: "pharmaceuticalProduct", using: self.pharmaceuticalProduct, errors: &errors)
		arrayDecorate(json: &json, withKey: "productClassification", using: self.productClassification, errors: &errors)
		arrayDecorate(json: &json, withKey: "specialMeasures", using: self.specialMeasures, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
An operation applied to the product, for manufacturing or adminsitrative purpose.
*/
open class MedicinalProductManufacturingBusinessOperation: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductManufacturingBusinessOperation" }
	}
	
	/// Regulatory authorization reference number.
	public var authorisationReferenceNumber: Identifier?
	
	/// To indicate if this proces is commercially confidential.
	public var confidentialityIndicator: CodeableConcept?
	
	/// Regulatory authorization date.
	public var effectiveDate: DateTime?
	
	/// The manufacturer or establishment associated with the process.
	public var manufacturer: [Reference]?
	
	/// The type of manufacturing operation.
	public var operationType: CodeableConcept?
	
	/// A regulator which oversees the operation.
	public var regulator: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		authorisationReferenceNumber = createInstance(type: Identifier.self, for: "authorisationReferenceNumber", in: json, context: &instCtx, owner: self) ?? authorisationReferenceNumber
		confidentialityIndicator = createInstance(type: CodeableConcept.self, for: "confidentialityIndicator", in: json, context: &instCtx, owner: self) ?? confidentialityIndicator
		effectiveDate = createInstance(type: DateTime.self, for: "effectiveDate", in: json, context: &instCtx, owner: self) ?? effectiveDate
		manufacturer = createInstances(of: Reference.self, for: "manufacturer", in: json, context: &instCtx, owner: self) ?? manufacturer
		operationType = createInstance(type: CodeableConcept.self, for: "operationType", in: json, context: &instCtx, owner: self) ?? operationType
		regulator = createInstance(type: Reference.self, for: "regulator", in: json, context: &instCtx, owner: self) ?? regulator
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.authorisationReferenceNumber?.decorate(json: &json, withKey: "authorisationReferenceNumber", errors: &errors)
		self.confidentialityIndicator?.decorate(json: &json, withKey: "confidentialityIndicator", errors: &errors)
		self.effectiveDate?.decorate(json: &json, withKey: "effectiveDate", errors: &errors)
		arrayDecorate(json: &json, withKey: "manufacturer", using: self.manufacturer, errors: &errors)
		self.operationType?.decorate(json: &json, withKey: "operationType", errors: &errors)
		self.regulator?.decorate(json: &json, withKey: "regulator", errors: &errors)
	}
}


/**
The product's name, including full name and possibly coded parts.
*/
open class MedicinalProductName: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductName" }
	}
	
	/// Country where the name applies.
	public var countryLanguage: [MedicinalProductNameCountryLanguage]?
	
	/// The full product name.
	public var fullName: FHIRString?
	
	/// Coding words or phrases of the name.
	public var namePart: [MedicinalProductNameNamePart]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(fullName: FHIRString) {
		self.init()
		self.fullName = fullName
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		countryLanguage = createInstances(of: MedicinalProductNameCountryLanguage.self, for: "countryLanguage", in: json, context: &instCtx, owner: self) ?? countryLanguage
		fullName = createInstance(type: FHIRString.self, for: "fullName", in: json, context: &instCtx, owner: self) ?? fullName
		if nil == fullName && !instCtx.containsKey("fullName") {
			instCtx.addError(FHIRValidationError(missing: "fullName"))
		}
		namePart = createInstances(of: MedicinalProductNameNamePart.self, for: "namePart", in: json, context: &instCtx, owner: self) ?? namePart
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "countryLanguage", using: self.countryLanguage, errors: &errors)
		self.fullName?.decorate(json: &json, withKey: "fullName", errors: &errors)
		if nil == self.fullName {
			errors.append(FHIRValidationError(missing: "fullName"))
		}
		arrayDecorate(json: &json, withKey: "namePart", using: self.namePart, errors: &errors)
	}
}


/**
Country where the name applies.
*/
open class MedicinalProductNameCountryLanguage: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductNameCountryLanguage" }
	}
	
	/// Country code for where this name applies.
	public var country: CodeableConcept?
	
	/// Jurisdiction code for where this name applies.
	public var jurisdiction: CodeableConcept?
	
	/// Language code for this name.
	public var language: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(country: CodeableConcept, language: CodeableConcept) {
		self.init()
		self.country = country
		self.language = language
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		country = createInstance(type: CodeableConcept.self, for: "country", in: json, context: &instCtx, owner: self) ?? country
		if nil == country && !instCtx.containsKey("country") {
			instCtx.addError(FHIRValidationError(missing: "country"))
		}
		jurisdiction = createInstance(type: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		language = createInstance(type: CodeableConcept.self, for: "language", in: json, context: &instCtx, owner: self) ?? language
		if nil == language && !instCtx.containsKey("language") {
			instCtx.addError(FHIRValidationError(missing: "language"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.country?.decorate(json: &json, withKey: "country", errors: &errors)
		if nil == self.country {
			errors.append(FHIRValidationError(missing: "country"))
		}
		self.jurisdiction?.decorate(json: &json, withKey: "jurisdiction", errors: &errors)
		self.language?.decorate(json: &json, withKey: "language", errors: &errors)
		if nil == self.language {
			errors.append(FHIRValidationError(missing: "language"))
		}
	}
}


/**
Coding words or phrases of the name.
*/
open class MedicinalProductNameNamePart: BackboneElement {
	override open class var resourceType: String {
		get { return "MedicinalProductNameNamePart" }
	}
	
	/// A fragment of a product name.
	public var part: FHIRString?
	
	/// Idenifying type for this part of the name (e.g. strength part).
	public var type: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(part: FHIRString, type: Coding) {
		self.init()
		self.part = part
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		part = createInstance(type: FHIRString.self, for: "part", in: json, context: &instCtx, owner: self) ?? part
		if nil == part && !instCtx.containsKey("part") {
			instCtx.addError(FHIRValidationError(missing: "part"))
		}
		type = createInstance(type: Coding.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.part?.decorate(json: &json, withKey: "part", errors: &errors)
		if nil == self.part {
			errors.append(FHIRValidationError(missing: "part"))
		}
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}

