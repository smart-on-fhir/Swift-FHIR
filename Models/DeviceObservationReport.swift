//
//  DeviceObservationReport.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
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
class DeviceObservationReport: FHIRResource
{
	override class var resourceName: String {
		get { return "DeviceObservationReport" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Contained, inline Resources */
	var contained: FHIRResource[]?
	
	/*! When the data values are reported */
	var instant: Int?
	
	/*! As assigned by the source device */
	var identifier: Identifier?
	
	/*! Identifies/describes where the data came from */
	var source: ResourceReference?
	
	/*! Subject of the measurement */
	var subject: ResourceReference?
	
	/*! A medical-related subsystem of a medical device */
	var virtualDevice: DeviceObservationReportVirtualDevice[]?
	
	convenience init(instant: Int?, source: ResourceReference?) {
		self.init(json: nil)
		if instant {
			self.instant = instant
		}
		if source {
			self.source = source
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["contained"] as? Array<NSDictionary> {
				self.contained = FHIRResource.from(val) as? FHIRResource[]
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
			if let val = js["virtualDevice"] as? Array<NSDictionary> {
				self.virtualDevice = DeviceObservationReportVirtualDevice.from(val) as? DeviceObservationReportVirtualDevice[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  A medical-related subsystem of a medical device.
 */
class DeviceObservationReportVirtualDevice: FHIRElement
{	
	/*! Describes the compartment */
	var code: CodeableConcept?
	
	/*! Groups related data items */
	var channel: DeviceObservationReportVirtualDeviceChannel[]?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["channel"] as? Array<NSDictionary> {
				self.channel = DeviceObservationReportVirtualDeviceChannel.from(val) as? DeviceObservationReportVirtualDeviceChannel[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Groups related data items.
 *
 *  Groups together physiological measurement data and derived data.
 */
class DeviceObservationReportVirtualDeviceChannel: FHIRElement
{	
	/*! Describes the channel */
	var code: CodeableConcept?
	
	/*! Piece of data reported by device */
	var metric: DeviceObservationReportVirtualDeviceChannelMetric[]?
	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["metric"] as? Array<NSDictionary> {
				self.metric = DeviceObservationReportVirtualDeviceChannelMetric.from(val) as? DeviceObservationReportVirtualDeviceChannelMetric[]
			}
		}
		super.init(json: json)
	}
}


/*!
 *  Piece of data reported by device.
 *
 *  A piece of measured or derived data that is reported by the machine.
 */
class DeviceObservationReportVirtualDeviceChannelMetric: FHIRElement
{	
	/*! The data for the metric */
	var observation: ResourceReference?
	
	convenience init(observation: ResourceReference?) {
		self.init(json: nil)
		if observation {
			self.observation = observation
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["observation"] as? NSDictionary {
				self.observation = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}
