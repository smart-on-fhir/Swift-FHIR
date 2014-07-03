//
//  DeviceObservationReport.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
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
	override var resourceName: String {
		get { return "DeviceObservationReport" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! When the data values are reported */
	var instant: Int

	/*! As assigned by the source device */
	var identifier: Identifier?

	/*! Identifies/describes where the data came from */
	var source: ResourceReference

	/*! Subject of the measurement */
	var subject: ResourceReference?

	/*! A medical-related subsystem of a medical device */
	var virtualDevice: DeviceObservationReportVirtualDevice[]?

	init(instant: Int, source: ResourceReference) {
		self.instant = instant
		self.source = source
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

}


/*!
 *  Piece of data reported by device.
 *
 *  A piece of measured or derived data that is reported by the machine.
 */
class DeviceObservationReportVirtualDeviceChannelMetric: FHIRElement
{
	/*! The data for the metric */
	var observation: ResourceReference

	init(observation: ResourceReference) {
		self.observation = observation
	}
}
