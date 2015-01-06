//
//  DeviceComponent.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (devicecomponent.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  An instance of a medical-related component of a medical device.
 *
 *  Describes the characteristics, operational status and capabilities of a medical-related component of a medical
 *  device.
 */
public class DeviceComponent: FHIRResource
{
	override public class var resourceName: String {
		get { return "DeviceComponent" }
	}
	
	/// Instance id assigned by the software stack
	public var identifier: Identifier?
	
	/// Language code for the human-readable text strings produced by the device
	public var languageCode: CodeableConcept?
	
	/// Recent system change timestamp
	public var lastSystemChange: NSDate?
	
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
	
	public convenience init(identifier: Identifier?, lastSystemChange: NSDate?, type: CodeableConcept?) {
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["languageCode"] as? JSONDictionary {
				self.languageCode = CodeableConcept(json: val, owner: self)
			}
			if let val = js["lastSystemChange"] as? String {
				self.lastSystemChange = NSDate(json: val)
			}
			if let val = js["measurementPrinciple"] as? String {
				self.measurementPrinciple = val
			}
			if let val = js["operationalStatus"] as? [JSONDictionary] {
				self.operationalStatus = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["parameterGroup"] as? JSONDictionary {
				self.parameterGroup = CodeableConcept(json: val, owner: self)
			}
			if let val = js["parent"] as? JSONDictionary {
				self.parent = Reference(json: val, owner: self)
			}
			if let val = js["productionSpecification"] as? [JSONDictionary] {
				self.productionSpecification = DeviceComponentProductionSpecification.from(val, owner: self) as? [DeviceComponentProductionSpecification]
			}
			if let val = js["source"] as? JSONDictionary {
				self.source = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["componentId"] as? JSONDictionary {
				self.componentId = Identifier(json: val, owner: self)
			}
			if let val = js["productionSpec"] as? String {
				self.productionSpec = val
			}
			if let val = js["specType"] as? JSONDictionary {
				self.specType = CodeableConcept(json: val, owner: self)
			}
		}
	}
}

