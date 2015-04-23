//
//  DeviceMetric.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DeviceMetric) on 2015-04-23.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Measurement, calculation or setting capability of a medical device.
 *
 *  Describes a measurement, calculation or setting capability of a medical device.
 */
public class DeviceMetric: DomainResource
{
	override public class var resourceName: String {
		get { return "DeviceMetric" }
	}
	
	/// Describes the calibrations that have been performed or that are required to be performed
	public var calibration: [DeviceMetricCalibration]?
	
	/// measurement | setting | calculation | unspecified
	public var category: String?
	
	/// black | red | green | yellow | blue | magenta | cyan | white
	public var color: String?
	
	/// Unique identifier of this DeviceMetric
	public var identifier: Identifier?
	
	/// Describes the measurement repetition time
	public var measurementPeriod: Timing?
	
	/// on | off | standby
	public var operationalStatus: String?
	
	/// Describes the link to the parent DeviceComponent
	public var parent: Reference?
	
	/// Describes the link to the source Device
	public var source: Reference?
	
	/// Type of metric
	public var type: CodeableConcept?
	
	/// Unit of metric
	public var unit: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(category: String?, identifier: Identifier?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != category {
			self.category = category
		}
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != type {
			self.type = type
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["calibration"] {
				presentKeys.addObject("calibration")
				if let val = exist as? [FHIRJSON] {
					self.calibration = DeviceMetricCalibration.from(val, owner: self) as? [DeviceMetricCalibration]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"calibration\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.addObject("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"category\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"category\" but it is missing"))
			}
			if let exist: AnyObject = js["color"] {
				presentKeys.addObject("color")
				if let val = exist as? String {
					self.color = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"color\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
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
			if let exist: AnyObject = js["measurementPeriod"] {
				presentKeys.addObject("measurementPeriod")
				if let val = exist as? FHIRJSON {
					self.measurementPeriod = Timing(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"measurementPeriod\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["operationalStatus"] {
				presentKeys.addObject("operationalStatus")
				if let val = exist as? String {
					self.operationalStatus = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"operationalStatus\" to be `String`, but is \(exist.dynamicType)"))
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
			if let exist: AnyObject = js["unit"] {
				presentKeys.addObject("unit")
				if let val = exist as? FHIRJSON {
					self.unit = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"unit\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let calibration = self.calibration {
			json["calibration"] = DeviceMetricCalibration.asJSONArray(calibration)
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let color = self.color {
			json["color"] = color.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let measurementPeriod = self.measurementPeriod {
			json["measurementPeriod"] = measurementPeriod.asJSON()
		}
		if let operationalStatus = self.operationalStatus {
			json["operationalStatus"] = operationalStatus.asJSON()
		}
		if let parent = self.parent {
			json["parent"] = parent.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let unit = self.unit {
			json["unit"] = unit.asJSON()
		}
		
		return json
	}
}


/**
 *  Describes the calibrations that have been performed or that are required to be performed.
 */
public class DeviceMetricCalibration: FHIRElement
{
	override public class var resourceName: String {
		get { return "DeviceMetricCalibration" }
	}
	
	/// not-calibrated | calibration-required | calibrated | unspecified
	public var state: String?
	
	/// Describes the time last calibration has been performed
	public var time: Instant?
	
	/// unspecified | offset | gain | two-point
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["state"] {
				presentKeys.addObject("state")
				if let val = exist as? String {
					self.state = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"state\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["time"] {
				presentKeys.addObject("time")
				if let val = exist as? String {
					self.time = Instant(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"time\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.addObject("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"type\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let state = self.state {
			json["state"] = state.asJSON()
		}
		if let time = self.time {
			json["time"] = time.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

