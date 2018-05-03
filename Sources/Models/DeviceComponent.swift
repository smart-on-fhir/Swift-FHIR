//
//  DeviceComponent.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 (http://hl7.org/fhir/StructureDefinition/DeviceComponent) on 2018-05-03.
//  2018, SMART Health IT.
//

import Foundation


/**
An instance of a medical-related component of a medical device.

The characteristics, operational status and capabilities of a medical-related component of a medical device.
*/
open class DeviceComponent: DomainResource {
	override open class var resourceType: String {
		get { return "DeviceComponent" }
	}
	
	/// Instance identifier.
	public var identifier: [Identifier]?
	
	/// Language code for the human-readable text strings produced by the device.
	public var languageCode: CodeableConcept?
	
	/// Recent system change timestamp.
	public var lastSystemChange: Instant?
	
	/// The physical principle of the measurement. For example: thermal, chemical, acoustical, etc.
	public var measurementPrinciple: MeasmntPrinciple?
	
	/// Current operational status of the component, for example On, Off or Standby.
	public var operationalStatus: [CodeableConcept]?
	
	/// Current supported parameter group.
	public var parameterGroup: CodeableConcept?
	
	/// Parent resource link.
	public var parent: Reference?
	
	/// Specification details such as Component Revisions, or Serial Numbers.
	public var productionSpecification: [DeviceComponentProductionSpecification]?
	
	/// Other Attributes.
	public var property: [DeviceComponentProperty]?
	
	/// Top-level device resource link.
	public var source: Reference?
	
	/// What kind of component it is.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		languageCode = createInstance(type: CodeableConcept.self, for: "languageCode", in: json, context: &instCtx, owner: self) ?? languageCode
		lastSystemChange = createInstance(type: Instant.self, for: "lastSystemChange", in: json, context: &instCtx, owner: self) ?? lastSystemChange
		measurementPrinciple = createEnum(type: MeasmntPrinciple.self, for: "measurementPrinciple", in: json, context: &instCtx) ?? measurementPrinciple
		operationalStatus = createInstances(of: CodeableConcept.self, for: "operationalStatus", in: json, context: &instCtx, owner: self) ?? operationalStatus
		parameterGroup = createInstance(type: CodeableConcept.self, for: "parameterGroup", in: json, context: &instCtx, owner: self) ?? parameterGroup
		parent = createInstance(type: Reference.self, for: "parent", in: json, context: &instCtx, owner: self) ?? parent
		productionSpecification = createInstances(of: DeviceComponentProductionSpecification.self, for: "productionSpecification", in: json, context: &instCtx, owner: self) ?? productionSpecification
		property = createInstances(of: DeviceComponentProperty.self, for: "property", in: json, context: &instCtx, owner: self) ?? property
		source = createInstance(type: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.languageCode?.decorate(json: &json, withKey: "languageCode", errors: &errors)
		self.lastSystemChange?.decorate(json: &json, withKey: "lastSystemChange", errors: &errors)
		self.measurementPrinciple?.decorate(json: &json, withKey: "measurementPrinciple", errors: &errors)
		arrayDecorate(json: &json, withKey: "operationalStatus", using: self.operationalStatus, errors: &errors)
		self.parameterGroup?.decorate(json: &json, withKey: "parameterGroup", errors: &errors)
		self.parent?.decorate(json: &json, withKey: "parent", errors: &errors)
		arrayDecorate(json: &json, withKey: "productionSpecification", using: self.productionSpecification, errors: &errors)
		arrayDecorate(json: &json, withKey: "property", using: self.property, errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Specification details such as Component Revisions, or Serial Numbers.

The production specification such as component revision, serial number, etc.
*/
open class DeviceComponentProductionSpecification: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceComponentProductionSpecification" }
	}
	
	/// Internal component unique identification.
	public var componentId: Identifier?
	
	/// A printable string defining the component.
	public var productionSpec: FHIRString?
	
	/// Type or kind of production specification, for example serial number or software revision.
	public var specType: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		componentId = createInstance(type: Identifier.self, for: "componentId", in: json, context: &instCtx, owner: self) ?? componentId
		productionSpec = createInstance(type: FHIRString.self, for: "productionSpec", in: json, context: &instCtx, owner: self) ?? productionSpec
		specType = createInstance(type: CodeableConcept.self, for: "specType", in: json, context: &instCtx, owner: self) ?? specType
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.componentId?.decorate(json: &json, withKey: "componentId", errors: &errors)
		self.productionSpec?.decorate(json: &json, withKey: "productionSpec", errors: &errors)
		self.specType?.decorate(json: &json, withKey: "specType", errors: &errors)
	}
}


/**
Other Attributes.

Other device properties expressed as a `type` which identifies the property and a value(s) either as a quantity or a
code.
*/
open class DeviceComponentProperty: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceComponentProperty" }
	}
	
	/// Code that specifies the property.
	public var type: CodeableConcept?
	
	/// Property value as a code.
	public var valueCode: [CodeableConcept]?
	
	/// Property value as a quantity.
	public var valueQuantity: [Quantity]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init()
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
		valueCode = createInstances(of: CodeableConcept.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueQuantity = createInstances(of: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
		arrayDecorate(json: &json, withKey: "valueCode", using: self.valueCode, errors: &errors)
		arrayDecorate(json: &json, withKey: "valueQuantity", using: self.valueQuantity, errors: &errors)
	}
}

