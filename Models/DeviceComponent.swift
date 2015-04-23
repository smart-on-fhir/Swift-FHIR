//
//  DeviceComponent.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DeviceComponent) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  An instance of a medical-related component of a medical device.
 *
 *  Describes the characteristics, operational status and capabilities of a medical-related component of a medical
 *  device.
 */
public class DeviceComponent: DomainResource
{
	override public class var resourceName: String {
		get { return "DeviceComponent" }
	}
	
	/// Instance id assigned by the software stack
	public var identifier: Identifier?
	
	/// Language code for the human-readable text strings produced by the device
	public var languageCode: CodeableConcept?
	
	/// Recent system change timestamp
	public var lastSystemChange: Instant?
	
	/// other | chemical | electrical | impedance | nuclear | optical | thermal | biological | mechanical | acoustical | manual+
	public var measurementPrinciple: String?
	
	/// Component operational status
	public var operationalStatus: [CodeableConcept]?
	
	/// Current supported parameter group
	public var parameterGroup: CodeableConcept?
	
	/// Parent resource link
	public var parent: Reference?
	
	/// Production specification of the component
	public var productionSpecification: [DeviceComponentProductionSpecification]?
	
	/// A source device of this component
	public var source: Reference?
	
	/// What kind of component it is
	public var type: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(identifier: Identifier?, lastSystemChange: Instant?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != lastSystemChange {
			self.lastSystemChange = lastSystemChange
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"identifier\" but it is missing"))
			}
			if let exist: AnyObject = js["languageCode"] {
				presentKeys.addObject("languageCode")
				if let val = exist as? FHIRJSON {
					self.languageCode = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"languageCode\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["lastSystemChange"] {
				presentKeys.addObject("lastSystemChange")
				if let val = exist as? String {
					self.lastSystemChange = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"lastSystemChange\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"lastSystemChange\" but it is missing"))
			}
			if let exist: AnyObject = js["measurementPrinciple"] {
				presentKeys.addObject("measurementPrinciple")
				if let val = exist as? String {
					self.measurementPrinciple = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"measurementPrinciple\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["operationalStatus"] {
				presentKeys.addObject("operationalStatus")
				if let val = exist as? [FHIRJSON] {
					self.operationalStatus = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"operationalStatus\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["parameterGroup"] {
				presentKeys.addObject("parameterGroup")
				if let val = exist as? FHIRJSON {
					self.parameterGroup = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"parameterGroup\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["parent"] {
				presentKeys.addObject("parent")
				if let val = exist as? FHIRJSON {
					self.parent = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"parent\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["productionSpecification"] {
				presentKeys.addObject("productionSpecification")
				if let val = exist as? [FHIRJSON] {
					self.productionSpecification = DeviceComponentProductionSpecification.from(val, owner: self) as? [DeviceComponentProductionSpecification]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"productionSpecification\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["source"] {
				presentKeys.addObject("source")
				if let val = exist as? FHIRJSON {
					self.source = Reference(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"source\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"type\" but it is missing"))
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
public class DeviceComponentProductionSpecification: FHIRElement
{
	override public class var resourceName: String {
		get { return "DeviceComponentProductionSpecification" }
	}
	
	/// Internal component unique identification
	public var componentId: Identifier?
	
	/// A printable string defining the component
	public var productionSpec: String?
	
	/// Specification type
	public var specType: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["componentId"] {
				presentKeys.addObject("componentId")
				if let val = exist as? FHIRJSON {
					self.componentId = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"componentId\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["productionSpec"] {
				presentKeys.addObject("productionSpec")
				if let val = exist as? String {
					self.productionSpec = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"productionSpec\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["specType"] {
				presentKeys.addObject("specType")
				if let val = exist as? FHIRJSON {
					self.specType = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"specType\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
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

