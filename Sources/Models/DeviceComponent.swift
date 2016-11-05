//
//  DeviceComponent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/DeviceComponent) on 2016-11-04.
//  2016, SMART Health IT.
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
		if let exist = json["identifier"] {
			presentKeys.insert("identifier")
			if let val = exist as? FHIRJSON {
				do {
					self.identifier = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "identifier"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "identifier"))
		}
		if let exist = json["languageCode"] {
			presentKeys.insert("languageCode")
			if let val = exist as? FHIRJSON {
				do {
					self.languageCode = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "languageCode"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "languageCode", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["lastSystemChange"] {
			presentKeys.insert("lastSystemChange")
			if let val = exist as? String {
				self.lastSystemChange = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "lastSystemChange", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "lastSystemChange"))
		}
		if let exist = json["measurementPrinciple"] {
			presentKeys.insert("measurementPrinciple")
			if let val = exist as? String {
				if let enumval = MeasmntPrinciple(rawValue: val) {
					self.measurementPrinciple = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "measurementPrinciple", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "measurementPrinciple", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["operationalStatus"] {
			presentKeys.insert("operationalStatus")
			if let val = exist as? [FHIRJSON] {
				do {
					self.operationalStatus = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operationalStatus"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operationalStatus", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["parameterGroup"] {
			presentKeys.insert("parameterGroup")
			if let val = exist as? FHIRJSON {
				do {
					self.parameterGroup = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parameterGroup"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parameterGroup", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["parent"] {
			presentKeys.insert("parent")
			if let val = exist as? FHIRJSON {
				do {
					self.parent = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "parent"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "parent", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["productionSpecification"] {
			presentKeys.insert("productionSpecification")
			if let val = exist as? [FHIRJSON] {
				do {
					self.productionSpecification = try DeviceComponentProductionSpecification.instantiate(fromArray: val, owner: self) as? [DeviceComponentProductionSpecification]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "productionSpecification"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "productionSpecification", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["source"] {
			presentKeys.insert("source")
			if let val = exist as? FHIRJSON {
				do {
					self.source = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "source"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "source", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? FHIRJSON {
				do {
					self.type = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "type"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let languageCode = self.languageCode {
			json["languageCode"] = languageCode.asJSON(errors: &errors)
		}
		if let lastSystemChange = self.lastSystemChange {
			json["lastSystemChange"] = lastSystemChange.asJSON()
		}
		if let measurementPrinciple = self.measurementPrinciple {
			json["measurementPrinciple"] = measurementPrinciple.rawValue
		}
		if let operationalStatus = self.operationalStatus {
			json["operationalStatus"] = operationalStatus.map() { $0.asJSON(errors: &errors) }
		}
		if let parameterGroup = self.parameterGroup {
			json["parameterGroup"] = parameterGroup.asJSON(errors: &errors)
		}
		if let parent = self.parent {
			json["parent"] = parent.asJSON(errors: &errors)
		}
		if let productionSpecification = self.productionSpecification {
			json["productionSpecification"] = productionSpecification.map() { $0.asJSON(errors: &errors) }
		}
		if let source = self.source {
			json["source"] = source.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		
		return json
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
	public var productionSpec: String?
	
	/// Specification type.
	public var specType: CodeableConcept?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["componentId"] {
			presentKeys.insert("componentId")
			if let val = exist as? FHIRJSON {
				do {
					self.componentId = try Identifier(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "componentId"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "componentId", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["productionSpec"] {
			presentKeys.insert("productionSpec")
			if let val = exist as? String {
				self.productionSpec = val
			}
			else {
				errors.append(FHIRValidationError(key: "productionSpec", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["specType"] {
			presentKeys.insert("specType")
			if let val = exist as? FHIRJSON {
				do {
					self.specType = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "specType"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "specType", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let componentId = self.componentId {
			json["componentId"] = componentId.asJSON(errors: &errors)
		}
		if let productionSpec = self.productionSpec {
			json["productionSpec"] = productionSpec.asJSON()
		}
		if let specType = self.specType {
			json["specType"] = specType.asJSON(errors: &errors)
		}
		
		return json
	}
}

