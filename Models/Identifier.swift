//
//  Identifier.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  An identifier intended for computation.
 */
public class Identifier: FHIRElement
{
	override public class var resourceName: String {
		get { return "Identifier" }
	}
	
	/** usual | official | temp | secondary (If known) */
	public var use: String?
	
	/** Description of identifier */
	public var label: String?
	
	/** The namespace for the identifier */
	public var system: NSURL?
	
	/** The value that is unique */
	public var value: String?
	
	/** Time period when id is/was valid for use */
	public var period: Period?
	
	/** Organization that issued id (may be just text) */
	public var assigner: FHIRElement? {
		get { return resolveReference("assigner") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "assigner")
			}
		}
	}
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["use"] as? String {
				self.use = val
			}
			if let val = js["label"] as? String {
				self.label = val
			}
			if let val = js["system"] as? String {
				self.system = NSURL(json: val)
			}
			if let val = js["value"] as? String {
				self.value = val
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
			if let val = js["assigner"] as? NSDictionary {
				self.assigner = ResourceReference(json: val)
			}
		}
	}
}

