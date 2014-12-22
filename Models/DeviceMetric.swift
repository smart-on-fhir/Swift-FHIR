//
//  DeviceMetric.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (devicemetric.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Measurement, calculation or setting capability of a medical device.
 *
 *  Describes a measurement, calculation or setting capability of a medical device.
 */
public class DeviceMetric: FHIRResource
{
	override public class var resourceName: String {
		get { return "DeviceMetric" }
	}
	
	/// Describes the calibrations that have been performed or that are required to be performed
	public var calibrationInfo: [DeviceMetricCalibrationInfo]?
	
	/// measurement | setting | calculation | unspecified
	public var category: String?
	
	/// Describes the typical color of representation
	public var color: Identifier?
	
	/// Unique identifier of this DeviceMetric
	public var identifier: Identifier?
	
	/// Describes the physical principle of the measurement
	public var measurementMode: Identifier?
	
	/// Describes the measurement repetition time
	public var measurementPeriod: Timing?
	
	/// on | off | standby
	public var operationalState: String?
	
	/// Describes the link to the parent DeviceComponent
	public var parent: Reference?
	
	/// Describes the link to the source Device
	public var source: Reference?
	
	/// Type of metric
	public var type: CodeableConcept?
	
	/// Unit of metric
	public var unit: CodeableConcept?
	
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
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["calibrationInfo"] as? [NSDictionary] {
				self.calibrationInfo = DeviceMetricCalibrationInfo.from(val, owner: self) as? [DeviceMetricCalibrationInfo]
			}
			if let val = js["category"] as? String {
				self.category = val
			}
			if let val = js["color"] as? NSDictionary {
				self.color = Identifier(json: val, owner: self)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["measurementMode"] as? NSDictionary {
				self.measurementMode = Identifier(json: val, owner: self)
			}
			if let val = js["measurementPeriod"] as? NSDictionary {
				self.measurementPeriod = Timing(json: val, owner: self)
			}
			if let val = js["operationalState"] as? String {
				self.operationalState = val
			}
			if let val = js["parent"] as? NSDictionary {
				self.parent = Reference(json: val, owner: self)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
			if let val = js["unit"] as? NSDictionary {
				self.unit = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Describes the calibrations that have been performed or that are required to be performed.
 */
public class DeviceMetricCalibrationInfo: FHIRElement
{
	override public class var resourceName: String {
		get { return "DeviceMetricCalibrationInfo" }
	}
	
	/// not-calibrated | calibration-required | calibrated | unspecified
	public var state: String?
	
	/// Describes the time last calibration has been performed
	public var time: NSDate?
	
	/// unspecified | offset | gain | two-point
	public var type: String?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["state"] as? String {
				self.state = val
			}
			if let val = js["time"] as? String {
				self.time = NSDate(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
		}
	}
}

