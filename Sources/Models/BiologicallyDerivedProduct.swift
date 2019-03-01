//
//  BiologicallyDerivedProduct.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A material substance originating from a biological entity.

A material substance originating from a biological entity intended to be transplanted or infused
into another (possibly the same) biological entity.
*/
open class BiologicallyDerivedProduct: DomainResource {
	override open class var resourceType: String {
		get { return "BiologicallyDerivedProduct" }
	}
	
	/// How this product was collected.
	public var collection: BiologicallyDerivedProductCollection?
	
	/// External ids for this item.
	public var identifier: [Identifier]?
	
	/// Any manipulation of product post-collection.
	public var manipulation: BiologicallyDerivedProductManipulation?
	
	/// BiologicallyDerivedProduct parent.
	public var parent: [Reference]?
	
	/// Any processing of the product during collection.
	public var processing: [BiologicallyDerivedProductProcessing]?
	
	/// Broad category of this product.
	public var productCategory: BiologicallyDerivedProductCategory?
	
	/// What this biologically derived product is.
	public var productCode: CodeableConcept?
	
	/// The amount of this biologically derived product.
	public var quantity: FHIRInteger?
	
	/// Procedure request.
	public var request: [Reference]?
	
	/// Whether the product is currently available.
	public var status: BiologicallyDerivedProductStatus?
	
	/// Product storage.
	public var storage: [BiologicallyDerivedProductStorage]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		collection = createInstance(type: BiologicallyDerivedProductCollection.self, for: "collection", in: json, context: &instCtx, owner: self) ?? collection
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		manipulation = createInstance(type: BiologicallyDerivedProductManipulation.self, for: "manipulation", in: json, context: &instCtx, owner: self) ?? manipulation
		parent = createInstances(of: Reference.self, for: "parent", in: json, context: &instCtx, owner: self) ?? parent
		processing = createInstances(of: BiologicallyDerivedProductProcessing.self, for: "processing", in: json, context: &instCtx, owner: self) ?? processing
		productCategory = createEnum(type: BiologicallyDerivedProductCategory.self, for: "productCategory", in: json, context: &instCtx) ?? productCategory
		productCode = createInstance(type: CodeableConcept.self, for: "productCode", in: json, context: &instCtx, owner: self) ?? productCode
		quantity = createInstance(type: FHIRInteger.self, for: "quantity", in: json, context: &instCtx, owner: self) ?? quantity
		request = createInstances(of: Reference.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		status = createEnum(type: BiologicallyDerivedProductStatus.self, for: "status", in: json, context: &instCtx) ?? status
		storage = createInstances(of: BiologicallyDerivedProductStorage.self, for: "storage", in: json, context: &instCtx, owner: self) ?? storage
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.collection?.decorate(json: &json, withKey: "collection", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.manipulation?.decorate(json: &json, withKey: "manipulation", errors: &errors)
		arrayDecorate(json: &json, withKey: "parent", using: self.parent, errors: &errors)
		arrayDecorate(json: &json, withKey: "processing", using: self.processing, errors: &errors)
		self.productCategory?.decorate(json: &json, withKey: "productCategory", errors: &errors)
		self.productCode?.decorate(json: &json, withKey: "productCode", errors: &errors)
		self.quantity?.decorate(json: &json, withKey: "quantity", errors: &errors)
		arrayDecorate(json: &json, withKey: "request", using: self.request, errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		arrayDecorate(json: &json, withKey: "storage", using: self.storage, errors: &errors)
	}
}


/**
How this product was collected.
*/
open class BiologicallyDerivedProductCollection: BackboneElement {
	override open class var resourceType: String {
		get { return "BiologicallyDerivedProductCollection" }
	}
	
	/// Time of product collection.
	public var collectedDateTime: DateTime?
	
	/// Time of product collection.
	public var collectedPeriod: Period?
	
	/// Individual performing collection.
	public var collector: Reference?
	
	/// Who is product from.
	public var source: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		collectedDateTime = createInstance(type: DateTime.self, for: "collectedDateTime", in: json, context: &instCtx, owner: self) ?? collectedDateTime
		collectedPeriod = createInstance(type: Period.self, for: "collectedPeriod", in: json, context: &instCtx, owner: self) ?? collectedPeriod
		collector = createInstance(type: Reference.self, for: "collector", in: json, context: &instCtx, owner: self) ?? collector
		source = createInstance(type: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.collectedDateTime?.decorate(json: &json, withKey: "collectedDateTime", errors: &errors)
		self.collectedPeriod?.decorate(json: &json, withKey: "collectedPeriod", errors: &errors)
		self.collector?.decorate(json: &json, withKey: "collector", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
	}
}


/**
Any manipulation of product post-collection.

Any manipulation of product post-collection that is intended to alter the product.  For example a buffy-coat enrichment
or CD8 reduction of Peripheral Blood Stem Cells to make it more suitable for infusion.
*/
open class BiologicallyDerivedProductManipulation: BackboneElement {
	override open class var resourceType: String {
		get { return "BiologicallyDerivedProductManipulation" }
	}
	
	/// Description of manipulation.
	public var description_fhir: FHIRString?
	
	/// Time of manipulation.
	public var timeDateTime: DateTime?
	
	/// Time of manipulation.
	public var timePeriod: Period?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		timeDateTime = createInstance(type: DateTime.self, for: "timeDateTime", in: json, context: &instCtx, owner: self) ?? timeDateTime
		timePeriod = createInstance(type: Period.self, for: "timePeriod", in: json, context: &instCtx, owner: self) ?? timePeriod
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.timeDateTime?.decorate(json: &json, withKey: "timeDateTime", errors: &errors)
		self.timePeriod?.decorate(json: &json, withKey: "timePeriod", errors: &errors)
	}
}


/**
Any processing of the product during collection.

Any processing of the product during collection that does not change the fundamental nature of the product. For example
adding anti-coagulants during the collection of Peripheral Blood Stem Cells.
*/
open class BiologicallyDerivedProductProcessing: BackboneElement {
	override open class var resourceType: String {
		get { return "BiologicallyDerivedProductProcessing" }
	}
	
	/// Substance added during processing.
	public var additive: Reference?
	
	/// Description of of processing.
	public var description_fhir: FHIRString?
	
	/// Procesing code.
	public var procedure: CodeableConcept?
	
	/// Time of processing.
	public var timeDateTime: DateTime?
	
	/// Time of processing.
	public var timePeriod: Period?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		additive = createInstance(type: Reference.self, for: "additive", in: json, context: &instCtx, owner: self) ?? additive
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		procedure = createInstance(type: CodeableConcept.self, for: "procedure", in: json, context: &instCtx, owner: self) ?? procedure
		timeDateTime = createInstance(type: DateTime.self, for: "timeDateTime", in: json, context: &instCtx, owner: self) ?? timeDateTime
		timePeriod = createInstance(type: Period.self, for: "timePeriod", in: json, context: &instCtx, owner: self) ?? timePeriod
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.additive?.decorate(json: &json, withKey: "additive", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.procedure?.decorate(json: &json, withKey: "procedure", errors: &errors)
		self.timeDateTime?.decorate(json: &json, withKey: "timeDateTime", errors: &errors)
		self.timePeriod?.decorate(json: &json, withKey: "timePeriod", errors: &errors)
	}
}


/**
Product storage.
*/
open class BiologicallyDerivedProductStorage: BackboneElement {
	override open class var resourceType: String {
		get { return "BiologicallyDerivedProductStorage" }
	}
	
	/// Description of storage.
	public var description_fhir: FHIRString?
	
	/// Storage timeperiod.
	public var duration: Period?
	
	/// Temperature scale used.
	public var scale: BiologicallyDerivedProductStorageScale?
	
	/// Storage temperature.
	public var temperature: FHIRDecimal?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		duration = createInstance(type: Period.self, for: "duration", in: json, context: &instCtx, owner: self) ?? duration
		scale = createEnum(type: BiologicallyDerivedProductStorageScale.self, for: "scale", in: json, context: &instCtx) ?? scale
		temperature = createInstance(type: FHIRDecimal.self, for: "temperature", in: json, context: &instCtx, owner: self) ?? temperature
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.duration?.decorate(json: &json, withKey: "duration", errors: &errors)
		self.scale?.decorate(json: &json, withKey: "scale", errors: &errors)
		self.temperature?.decorate(json: &json, withKey: "temperature", errors: &errors)
	}
}

