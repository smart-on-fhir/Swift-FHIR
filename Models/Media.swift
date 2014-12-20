//
//  Media.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (media.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by
 *  direct reference.
 */
public class Media: FHIRResource
{
	override public class var resourceName: String {
		get { return "Media" }
	}
	
	/// Actual Media - reference or data
	public var content: Attachment?
	
	/// When the media was taken/recorded (start)
	public var created: NSDate?
	
	/// Name of the device/manufacturer
	public var deviceName: String?
	
	/// Length in seconds (audio / video)
	public var duration: Int?
	
	/// Number of frames if > 1 (photo)
	public var frames: Int?
	
	/// Height of the image in pixels(photo/video)
	public var height: Int?
	
	/// Identifier(s) for the image
	public var identifier: [Identifier]?
	
	/// The person who generated the image
	public var operatr: Reference?
	
	/// Who/What this Media is a record of
	public var subject: Reference?
	
	/// The type of acquisition equipment/process
	public var subtype: CodeableConcept?
	
	/// photo | video | audio
	public var type: String?
	
	/// Imaging view e.g Lateral or Antero-posterior
	public var view: CodeableConcept?
	
	/// Width of the image in pixels (photo/video)
	public var width: Int?
	
	public convenience init(content: Attachment?, type: String?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["content"] as? NSDictionary {
				self.content = Attachment(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["deviceName"] as? String {
				self.deviceName = val
			}
			if let val = js["duration"] as? Int {
				self.duration = val
			}
			if let val = js["frames"] as? Int {
				self.frames = val
			}
			if let val = js["height"] as? Int {
				self.height = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["operator"] as? NSDictionary {
				self.operatr = Reference(json: val, owner: self)
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["subtype"] as? NSDictionary {
				self.subtype = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["view"] as? NSDictionary {
				self.view = CodeableConcept(json: val, owner: self)
			}
			if let val = js["width"] as? Int {
				self.width = val
			}
		}
	}
}

