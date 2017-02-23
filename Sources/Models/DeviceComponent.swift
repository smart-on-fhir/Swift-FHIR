//
//  DeviceComponent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 (http://hl7.org/fhir/StructureDefinition/DeviceComponent) on 2017-02-23.
//  2017, SMART Health IT.
//

import Foundation


/**
An instance of a medical-related component of a medical device.

Describes the characteristics, operational status and capabilities of a medical-related component of a medical device.
*/
open class DeviceComponent: DomainResource {
	override open class var resourceType: String {
		get { return "DeviceComponent" }
	}
	
	/// Instance id assigned by the software stack.
	public var identifier: Identifier?
	
	/// Language code for the human-readable text strings produced by the device.
	public var languageCode: CodeableConcept?
	
	/// Recent system change timestamp.
	public var lastSystemChange: Instant?
	
	/// Describes the physical principle of the measurement. For example: thermal, chemical, acoustical, etc.
	public var measurementPrinciple: MeasmntPrinciple?
	
	/// Component operational status.
	public var operationalStatus: [CodeableConcept]?
	
	/// Current supported parameter group.
	public var parameterGroup: CodeableConcept?
	
	/// Parent resource link.
	public var parent: Reference?
	
	/// Production specification of the component.
	public var productionSpecification: [DeviceComponentProductionSpecification]?
	
	/// A source device of this component.
	public var source: Reference?
	
	/// What kind of component it is.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier, lastSystemChange: Instant, type: CodeableConcept) {
		self.init()
		self.identifier = identifier
		self.lastSystemChange = lastSystemChange
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		identifier = try createInstance(type: Identifier.self, for: "identifier", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? identifier
		if nil == identifier && !presentKeys.contains("identifier") {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		languageCode = try createInstance(type: CodeableConcept.self, for: "languageCode", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? languageCode
		lastSystemChange = try createInstance(type: Instant.self, for: "lastSystemChange", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? lastSystemChange
		if nil == lastSystemChange && !presentKeys.contains("lastSystemChange") {
			errors.append(FHIRValidationError(missing: "lastSystemChange"))
		}
		measurementPrinciple = createEnum(type: MeasmntPrinciple.self, for: "measurementPrinciple", in: json, presentKeys: &presentKeys, errors: &errors) ?? measurementPrinciple
		operationalStatus = try createInstances(of: CodeableConcept.self, for: "operationalStatus", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? operationalStatus
		parameterGroup = try createInstance(type: CodeableConcept.self, for: "parameterGroup", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parameterGroup
		parent = try createInstance(type: Reference.self, for: "parent", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? parent
		productionSpecification = try createInstances(of: DeviceComponentProductionSpecification.self, for: "productionSpecification", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? productionSpecification
		source = try createInstance(type: Reference.self, for: "source", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? source
		type = try createInstance(type: CodeableConcept.self, for: "type", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? type
		if nil == type && !presentKeys.contains("type") {
			errors.append(FHIRValidationError(missing: "type"))
		}
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		if nil == self.identifier {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		self.languageCode?.decorate(json: &json, withKey: "languageCode", errors: &errors)
		self.lastSystemChange?.decorate(json: &json, withKey: "lastSystemChange", errors: &errors)
		if nil == self.lastSystemChange {
			errors.append(FHIRValidationError(missing: "lastSystemChange"))
		}
		self.measurementPrinciple?.decorate(json: &json, withKey: "measurementPrinciple", errors: &errors)
		arrayDecorate(json: &json, withKey: "operationalStatus", using: self.operationalStatus, errors: &errors)
		self.parameterGroup?.decorate(json: &json, withKey: "parameterGroup", errors: &errors)
		self.parent?.decorate(json: &json, withKey: "parent", errors: &errors)
		arrayDecorate(json: &json, withKey: "productionSpecification", using: self.productionSpecification, errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Production specification of the component.

Describes the production specification such as component revision, serial number, etc.
*/
open class DeviceComponentProductionSpecification: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceComponentProductionSpecification" }
	}
	
	/// Internal component unique identification.
	public var componentId: Identifier?
	
	/// A printable string defining the component.
	public var productionSpec: FHIRString?
	
	/// Specification type.
	public var specType: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		componentId = try createInstance(type: Identifier.self, for: "componentId", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? componentId
		productionSpec = try createInstance(type: FHIRString.self, for: "productionSpec", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? productionSpec
		specType = try createInstance(type: CodeableConcept.self, for: "specType", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? specType
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.componentId?.decorate(json: &json, withKey: "componentId", errors: &errors)
		self.productionSpec?.decorate(json: &json, withKey: "productionSpec", errors: &errors)
		self.specType?.decorate(json: &json, withKey: "specType", errors: &errors)
	}
}

