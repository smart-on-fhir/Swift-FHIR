//
//  DeviceComponent.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DeviceComponent) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  An instance of a medical-related component of a medical device.
 *
 *  Describes the characteristics, operational status and capabilities of a medical-related component of a medical
 *  device.
 */
public class DeviceComponent: DomainResource {
	override public class var resourceName: String {
		get { return "DeviceComponent" }
	}
	
	/// Instance id assigned by the software stack.
	public var identifier: Identifier?
	
	/// Language code for the human-readable text strings produced by the device.
	public var languageCode: CodeableConcept?
	
	/// Recent system change timestamp.
	public var lastSystemChange: Instant?
	
	/// other | chemical | electrical | impedance | nuclear | optical | thermal | biological | mechanical | acoustical | manual+.
	public var measurementPrinciple: String?
	
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier, lastSystemChange: Instant, type: CodeableConcept) {
		self.init(json: nil)
		self.identifier = identifier
		self.lastSystemChange = lastSystemChange
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist: AnyObject = js["languageCode"] {
				presentKeys.insert("languageCode")
				if let val = exist as? FHIRJSON {
					self.languageCode = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "languageCode", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["lastSystemChange"] {
				presentKeys.insert("lastSystemChange")
				if let val = exist as? String {
					self.lastSystemChange = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "lastSystemChange", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "lastSystemChange"))
			}
			if let exist: AnyObject = js["measurementPrinciple"] {
				presentKeys.insert("measurementPrinciple")
				if let val = exist as? String {
					self.measurementPrinciple = val
				}
				else {
					errors.append(FHIRJSONError(key: "measurementPrinciple", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["operationalStatus"] {
				presentKeys.insert("operationalStatus")
				if let val = exist as? [FHIRJSON] {
					self.operationalStatus = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "operationalStatus", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parameterGroup"] {
				presentKeys.insert("parameterGroup")
				if let val = exist as? FHIRJSON {
					self.parameterGroup = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "parameterGroup", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["parent"] {
				presentKeys.insert("parent")
				if let val = exist as? FHIRJSON {
					self.parent = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "parent", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["productionSpecification"] {
				presentKeys.insert("productionSpecification")
				if let val = exist as? [FHIRJSON] {
					self.productionSpecification = DeviceComponentProductionSpecification.from(val, owner: self) as? [DeviceComponentProductionSpecification]
				}
				else {
					errors.append(FHIRJSONError(key: "productionSpecification", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.insert("source")
				if let val = exist as? FHIRJSON {
					self.source = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "source", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let languageCode = self.languageCode {
			json["languageCode"] = languageCode.asJSON()
		}
		if let lastSystemChange = self.lastSystemChange {
			json["lastSystemChange"] = lastSystemChange.asJSON()
		}
		if let measurementPrinciple = self.measurementPrinciple {
			json["measurementPrinciple"] = measurementPrinciple.asJSON()
		}
		if let operationalStatus = self.operationalStatus {
			json["operationalStatus"] = CodeableConcept.asJSONArray(operationalStatus)
		}
		if let parameterGroup = self.parameterGroup {
			json["parameterGroup"] = parameterGroup.asJSON()
		}
		if let parent = self.parent {
			json["parent"] = parent.asJSON()
		}
		if let productionSpecification = self.productionSpecification {
			json["productionSpecification"] = DeviceComponentProductionSpecification.asJSONArray(productionSpecification)
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Production specification of the component.
 *
 *  Describes the production specification such as component revision, serial number, etc.
 */
public class DeviceComponentProductionSpecification: BackboneElement {
	override public class var resourceName: String {
		get { return "DeviceComponentProductionSpecification" }
	}
	
	/// Internal component unique identification.
	public var componentId: Identifier?
	
	/// A printable string defining the component.
	public var productionSpec: String?
	
	/// Specification type.
	public var specType: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["componentId"] {
				presentKeys.insert("componentId")
				if let val = exist as? FHIRJSON {
					self.componentId = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "componentId", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["productionSpec"] {
				presentKeys.insert("productionSpec")
				if let val = exist as? String {
					self.productionSpec = val
				}
				else {
					errors.append(FHIRJSONError(key: "productionSpec", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["specType"] {
				presentKeys.insert("specType")
				if let val = exist as? FHIRJSON {
					self.specType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "specType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let componentId = self.componentId {
			json["componentId"] = componentId.asJSON()
		}
		if let productionSpec = self.productionSpec {
			json["productionSpec"] = productionSpec.asJSON()
		}
		if let specType = self.specType {
			json["specType"] = specType.asJSON()
		}
		
		return json
	}
}

