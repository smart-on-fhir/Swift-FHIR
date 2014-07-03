//
//  Media.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or
 *  provided by direct reference.
 *
 *  Scope and Usage The Media resource contains photos, videos, and audio recordings. It is used with media
 *  acquired or used as part of the healthcare process. Here are some typical usages:
 *  
 *  * Photos of patients and staff for identification purposes
 *  * Photos and videos of diagnostic or care provision procedures for recording purposes
 *  * Storing scans and faxes of paper documents where not enough metadata exists to create a DocumentReference
 *  * Images on diagnostic reports
 *  The Media resource may contain medical images in a DICOM format. While such images may also be accessible
 *  through an ImagingStudy resource, the Media resource enables "ready for presentation" access to a specific
 *  image. Such images would preferentially be made available in a FHIR ecosystem by the Media.content.url
 *  providing a reference to a WADO-RS service to access the image. That WADO-RS service may include rendering the
 *  image with annotations and display parameters from an associated DICOM presentation state. Although the Media
 *  resource is allowed to contain images collected by a DICOM based system, DICOM images would preferentially be
 *  made available in a FHIR ecosystem by provision of a resource with references to a WADO-RS server.
 */
class Media: FHIRResource
{
	override var resourceName: String {
		get { return "Media" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! photo | video | audio */
	var type: String

	/*! The type of acquisition equipment/process */
	var subtype: CodeableConcept?

	/*! Identifier(s) for the image */
	var identifier: Identifier[]?

	/*! When the media was taken/recorded (end) */
	var dateTime: NSDate?

	/*! Who/What this Media is a record of */
	var subject: ResourceReference?

	/*! The person who generated the image */
	var operator: ResourceReference?

	/*! Imaging view e.g Lateral or Antero-posterior */
	var view: CodeableConcept?

	/*! Name of the device/manufacturer */
	var deviceName: String?

	/*! Height of the image in pixels(photo/video) */
	var height: Int?

	/*! Width of the image in pixels (photo/video) */
	var width: Int?

	/*! Number of frames if > 1 (photo) */
	var frames: Int?

	/*! Length in seconds (audio / video) */
	var length: Int?

	/*! Actual Media - reference or data */
	var content: Attachment

	init(type: String, content: Attachment) {
		self.type = type
		self.content = content
	}
}
