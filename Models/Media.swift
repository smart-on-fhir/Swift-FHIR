//
//  Media.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-23.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
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
public class Media: FHIRResource
{
	override public class var resourceName: String {
		get { return "Media" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** photo | video | audio */
	public var type: String?
	
	/** The type of acquisition equipment/process */
	public var subtype: CodeableConcept?
	
	/** Identifier(s) for the image */
	public var identifier: [Identifier]?
	
	/** When the media was taken/recorded (end) */
	public var dateTime: NSDate?
	
	/** Who/What this Media is a record of */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** The person who generated the image */
	public var operator: FHIRElement? {
		get { return resolveReference("operator") }
		set {
			if newValue {
				didSetReference(newValue!, name: "operator")
			}
		}
	}
	
	/** Imaging view e.g Lateral or Antero-posterior */
	public var view: CodeableConcept?
	
	/** Name of the device/manufacturer */
	public var deviceName: String?
	
	/** Height of the image in pixels(photo/video) */
	public var height: Int?
	
	/** Width of the image in pixels (photo/video) */
	public var width: Int?
	
	/** Number of frames if > 1 (photo) */
	public var frames: Int?
	
	/** Length in seconds (audio / video) */
	public var length: Int?
	
	/** Actual Media - reference or data */
	public var content: Attachment?
	
	public convenience init(type: String?, content: Attachment?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
		if content {
			self.content = content
		}
	}	
	
	public init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["subtype"] as? NSDictionary {
				self.subtype = CodeableConcept(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["dateTime"] as? String {
				self.dateTime = NSDate(json: val)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["operator"] as? NSDictionary {
				self.operator = ResourceReference(json: val)
			}
			if let val = js["view"] as? NSDictionary {
				self.view = CodeableConcept(json: val)
			}
			if let val = js["deviceName"] as? String {
				self.deviceName = val
			}
			if let val = js["height"] as? Int {
				self.height = val
			}
			if let val = js["width"] as? Int {
				self.width = val
			}
			if let val = js["frames"] as? Int {
				self.frames = val
			}
			if let val = js["length"] as? Int {
				self.length = val
			}
			if let val = js["content"] as? NSDictionary {
				self.content = Attachment(json: val)
			}
		}
	}
}

