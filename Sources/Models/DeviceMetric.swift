//
//  DeviceMetric.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 (http://hl7.org/fhir/StructureDefinition/DeviceMetric) on 2016-08-12.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Measurement, calculation or setting capability of a medical device.
 *
 *  Describes a measurement, calculation or setting capability of a medical device.
 */
public class DeviceMetric: DomainResource {
	override public class var resourceName: String {
		get { return "DeviceMetric" }
	}
	
	/// Describes the calibrations that have been performed or that are required to be performed.
	public var calibration: [DeviceMetricCalibration]?
	
	/// measurement | setting | calculation | unspecified.
	public var category: String?
	
	/// black | red | green | yellow | blue | magenta | cyan | white.
	public var color: String?
	
	/// Unique identifier of this DeviceMetric.
	public var identifier: Identifier?
	
	/// Describes the measurement repetition time.
	public var measurementPeriod: Timing?
	
	/// on | off | standby.
	public var operationalStatus: String?
	
	/// Describes the link to the parent DeviceComponent.
	public var parent: Reference?
	
	/// Describes the link to the source Device.
	public var source: Reference?
	
	/// Type of metric.
	public var type: CodeableConcept?
	
	/// Unit of metric.
	public var unit: CodeableConcept?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: String, identifier: Identifier, type: CodeableConcept) {
		self.init(json: nil)
		self.category = category
		self.identifier = identifier
		self.type = type
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["calibration"] {
				presentKeys.insert("calibration")
				if let val = exist as? [FHIRJSON] {
					self.calibration = DeviceMetricCalibration.from(val, owner: self) as? [DeviceMetricCalibration]
				}
				else {
					errors.append(FHIRJSONError(key: "calibration", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? String {
					self.category = val
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
			}
			if let exist: AnyObject = js["color"] {
				presentKeys.insert("color")
				if let val = exist as? String {
					self.color = val
				}
				else {
					errors.append(FHIRJSONError(key: "color", wants: String.self, has: exist.dynamicType))
				}
			}
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
			if let exist: AnyObject = js["measurementPeriod"] {
				presentKeys.insert("measurementPeriod")
				if let val = exist as? FHIRJSON {
					self.measurementPeriod = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "measurementPeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["operationalStatus"] {
				presentKeys.insert("operationalStatus")
				if let val = exist as? String {
					self.operationalStatus = val
				}
				else {
					errors.append(FHIRJSONError(key: "operationalStatus", wants: String.self, has: exist.dynamicType))
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
			if let exist: AnyObject = js["unit"] {
				presentKeys.insert("unit")
				if let val = exist as? FHIRJSON {
					self.unit = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unit", wants: FHIRJSON.self, has: exist.dynamicType))
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
public class DeviceMetricCalibration: BackboneElement {
	override public class var resourceName: String {
		get { return "DeviceMetricCalibration" }
	}
	
	/// not-calibrated | calibration-required | calibrated | unspecified.
	public var state: String?
	
	/// Describes the time last calibration has been performed.
	public var time: Instant?
	
	/// unspecified | offset | gain | two-point.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["state"] {
				presentKeys.insert("state")
				if let val = exist as? String {
					self.state = val
				}
				else {
					errors.append(FHIRJSONError(key: "state", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["time"] {
				presentKeys.insert("time")
				if let val = exist as? String {
					self.time = Instant(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "time", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: exist.dynamicType))
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

