//
//  DeviceObservationReport.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Describes the data produced by a device at a point in time.
 *
 *  Scope and Usage This resource carries a set of data from a device that is observing a subject. Most commonly,
 *  the subject is a patient, and the device is something like a vital signs monitor, or a glucose measurement
 *  device, but other kinds of subjects and devices are expected as well.
 *  
 *  This resource does not cater for:
 *  
 *  * Supporting real-time analytics and in particular, alarms that might be raised as a result of such analysis
 *  * Sending commands to a device
 *  This capability is expected to be subject of additional resources that are yet to be developed, and implmenter
 *  input on this is welcome.
 */
public class DeviceObservationReport: FHIRResource
{
	override public class var resourceName: String {
		get { return "DeviceObservationReport" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** When the data values are reported */
	public var instant: Int?
	
	/** As assigned by the source device */
	public var identifier: Identifier?
	
	/** Identifies/describes where the data came from */
	public var source: FHIRElement? {
		get { return resolveReference("source") }
		set {
			if newValue {
				didSetReference(newValue!, name: "source")
			}
		}
	}
	
	/** Subject of the measurement */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** A medical-related subsystem of a medical device */
	public var virtualDevice: [DeviceObservationReportVirtualDevice]?
	
	public convenience init(instant: Int?, source: ResourceReference?) {
		self.init(json: nil)
		if instant {
			self.instant = instant
		}
		if source {
			self.source = source
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["instant"] as? Int {
				self.instant = val
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = ResourceReference(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
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
	/** Describes the compartment */
	public var code: CodeableConcept?
	
	/** Groups related data items */
	public var channel: [DeviceObservationReportVirtualDeviceChannel]?
	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["channel"] as? [NSDictionary] {
				self.channel = DeviceObservationReportVirtualDeviceChannel.from(val) as? [DeviceObservationReportVirtualDeviceChannel]
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
	/** Describes the channel */
	public var code: CodeableConcept?
	
	/** Piece of data reported by device */
	public var metric: [DeviceObservationReportVirtualDeviceChannelMetric]?
	
	
	public init(json: NSDictionary?) {
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
	/** The data for the metric */
	public var observation: FHIRElement? {
		get { return resolveReference("observation") }
		set {
			if newValue {
				didSetReference(newValue!, name: "observation")
			}
		}
	}
	
	public convenience init(observation: ResourceReference?) {
		self.init(json: nil)
		if observation {
			self.observation = observation
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["observation"] as? NSDictionary {
				self.observation = ResourceReference(json: val)
			}
		}
	}
}

