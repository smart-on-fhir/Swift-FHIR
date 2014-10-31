//
//  DeviceObservationReport.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (deviceobservationreport.profile.json) on 2014-10-30.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Describes the data produced by a device at a point in time.
 *
 *  Scope and Usage This resource carries a set of data from a device that is observing a subject. Most commonly, the
 *  subject is a patient, and the device is something like a vital signs monitor, or a glucose measurement device, but
 *  other kinds of subjects and devices are expected as well.
 *  
 *  This resource does not cater for:
 *  
 *  * Supporting real-time analytics and in particular, alarms that might be raised as a result of such analysis
 *  * Sending commands to a device
 *  This capability is expected to be subject of additional resources that are yet to be developed, and implmenter input
 *  on this is welcome.
 */
public class DeviceObservationReport: FHIRResource
{
	override public class var resourceName: String {
		get { return "DeviceObservationReport" }
	}
	
	/// As assigned by the source device
	public var identifier: Identifier?
	
	/// When the data values are reported
	public var instant: NSDate?
	
	/// Identifies/describes where the data came from
	public var source: FHIRReference<Device>?
	
	/// Subject of the measurement
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// A medical-related subsystem of a medical device
	public var virtualDevice: [DeviceObservationReportVirtualDevice]?
	
	public convenience init(instant: NSDate?, source: FHIRReference<Device>?) {
		self.init(json: nil)
		if nil != instant {
			self.instant = instant
		}
		if nil != source {
			self.source = source
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["instant"] as? String {
				self.instant = NSDate(json: val)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = FHIRReference(json: val, owner: self)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["virtualDevice"] as? [NSDictionary] {
				self.virtualDevice = DeviceObservationReportVirtualDevice.from(val) as? [DeviceObservationReportVirtualDevice]
			}
		}
	}
}


/**
 *  A medical-related subsystem of a medical device.
 */
public class DeviceObservationReportVirtualDevice: FHIRElement
{	
	/// Groups related data items
	public var channel: [DeviceObservationReportVirtualDeviceChannel]?
	
	/// Describes the compartment
	public var code: CodeableConcept?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["channel"] as? [NSDictionary] {
				self.channel = DeviceObservationReportVirtualDeviceChannel.from(val) as? [DeviceObservationReportVirtualDeviceChannel]
			}
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
		}
	}
}


/**
 *  Groups related data items.
 *
 *  Groups together physiological measurement data and derived data.
 */
public class DeviceObservationReportVirtualDeviceChannel: FHIRElement
{	
	/// Describes the channel
	public var code: CodeableConcept?
	
	/// Piece of data reported by device
	public var metric: [DeviceObservationReportVirtualDeviceChannelMetric]?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["metric"] as? [NSDictionary] {
				self.metric = DeviceObservationReportVirtualDeviceChannelMetric.from(val) as? [DeviceObservationReportVirtualDeviceChannelMetric]
			}
		}
	}
}


/**
 *  Piece of data reported by device.
 *
 *  A piece of measured or derived data that is reported by the machine.
 */
public class DeviceObservationReportVirtualDeviceChannelMetric: FHIRElement
{	
	/// The data for the metric
	public var observation: FHIRReference<Observation>?
	
	public convenience init(observation: FHIRReference<Observation>?) {
		self.init(json: nil)
		if nil != observation {
			self.observation = observation
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["observation"] as? NSDictionary {
				self.observation = FHIRReference(json: val, owner: self)
			}
		}
	}
}

