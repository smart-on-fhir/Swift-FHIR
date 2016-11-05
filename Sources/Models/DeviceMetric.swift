//
//  DeviceMetric.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/DeviceMetric) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Measurement, calculation or setting capability of a medical device.

Describes a measurement, calculation or setting capability of a medical device.
*/
open class DeviceMetric: DomainResource {
	override open class var resourceType: String {
		get { return "DeviceMetric" }
	}
	
	/// Describes the calibrations that have been performed or that are required to be performed.
	public var calibration: [DeviceMetricCalibration]?
	
	/// Indicates the category of the observation generation process. A DeviceMetric can be for example a setting,
	/// measurement, or calculation.
	public var category: DeviceMetricCategory?
	
	/// Describes the color representation for the metric. This is often used to aid clinicians to track and identify
	/// parameter types by color. In practice, consider a Patient Monitor that has ECG/HR and Pleth for example; the
	/// parameters are displayed in different characteristic colors, such as HR-blue, BP-green, and PR and SpO2-
	/// magenta.
	public var color: DeviceMetricColor?
	
	/// Unique identifier of this DeviceMetric.
	public var identifier: Identifier?
	
	/// Describes the measurement repetition time.
	public var measurementPeriod: Timing?
	
	/// Indicates current operational state of the device. For example: On, Off, Standby, etc.
	public var operationalStatus: DeviceMetricOperationalStatus?
	
	/// Describes the link to the parent DeviceComponent.
	public var parent: Reference?
	
	/// Describes the link to the source Device.
	public var source: Reference?
	
	/// Type of metric.
	public var type: CodeableConcept?
	
	/// Unit of metric.
	public var unit: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: DeviceMetricCategory, identifier: Identifier, type: CodeableConcept) {
		self.init()
		self.category = category
		self.identifier = identifier
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["calibration"] {
			presentKeys.insert("calibration")
			if let val = exist as? [FHIRJSON] {
				do {
					self.calibration = try DeviceMetricCalibration.instantiate(fromArray: val, owner: self) as? [DeviceMetricCalibration]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "calibration"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "calibration", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? String {
				if let enumval = DeviceMetricCategory(rawValue: val) {
					self.category = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "category", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "category"))
		}
		if let exist = json["color"] {
			presentKeys.insert("color")
			if let val = exist as? String {
				if let enumval = DeviceMetricColor(rawValue: val) {
					self.color = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "color", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "color", wants: String.self, has: type(of: exist)))
			}
		}
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
		if let exist = json["measurementPeriod"] {
			presentKeys.insert("measurementPeriod")
			if let val = exist as? FHIRJSON {
				do {
					self.measurementPeriod = try Timing(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "measurementPeriod"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "measurementPeriod", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["operationalStatus"] {
			presentKeys.insert("operationalStatus")
			if let val = exist as? String {
				if let enumval = DeviceMetricOperationalStatus(rawValue: val) {
					self.operationalStatus = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "operationalStatus", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operationalStatus", wants: String.self, has: type(of: exist)))
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
		if let exist = json["unit"] {
			presentKeys.insert("unit")
			if let val = exist as? FHIRJSON {
				do {
					self.unit = try CodeableConcept(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "unit"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "unit", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let calibration = self.calibration {
			json["calibration"] = calibration.map() { $0.asJSON(errors: &errors) }
		}
		if let category = self.category {
			json["category"] = category.rawValue
		}
		if let color = self.color {
			json["color"] = color.rawValue
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON(errors: &errors)
		}
		if let measurementPeriod = self.measurementPeriod {
			json["measurementPeriod"] = measurementPeriod.asJSON(errors: &errors)
		}
		if let operationalStatus = self.operationalStatus {
			json["operationalStatus"] = operationalStatus.rawValue
		}
		if let parent = self.parent {
			json["parent"] = parent.asJSON(errors: &errors)
		}
		if let source = self.source {
			json["source"] = source.asJSON(errors: &errors)
		}
		if let type = self.type {
			json["type"] = type.asJSON(errors: &errors)
		}
		if let unit = self.unit {
			json["unit"] = unit.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
Describes the calibrations that have been performed or that are required to be performed.
*/
open class DeviceMetricCalibration: BackboneElement {
	override open class var resourceType: String {
		get { return "DeviceMetricCalibration" }
	}
	
	/// Describes the state of the calibration.
	public var state: DeviceMetricCalibrationState?
	
	/// Describes the time last calibration has been performed.
	public var time: Instant?
	
	/// Describes the type of the calibration method.
	public var type: DeviceMetricCalibrationType?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["state"] {
			presentKeys.insert("state")
			if let val = exist as? String {
				if let enumval = DeviceMetricCalibrationState(rawValue: val) {
					self.state = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "state", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "state", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["time"] {
			presentKeys.insert("time")
			if let val = exist as? String {
				self.time = Instant(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "time", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				if let enumval = DeviceMetricCalibrationType(rawValue: val) {
					self.type = enumval
				}
				else {
					errors.append(FHIRValidationError(key: "type", problem: "the value “\(val)” is not valid"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let state = self.state {
			json["state"] = state.rawValue
		}
		if let time = self.time {
			json["time"] = time.asJSON()
		}
		if let type = self.type {
			json["type"] = type.rawValue
		}
		
		return json
	}
}

