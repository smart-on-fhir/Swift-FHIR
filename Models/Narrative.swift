//
//  Narrative.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/Narrative) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A human-readable formatted text, including images.
 */
public class Narrative: FHIRElement
{
	override public class var resourceName: String {
		get { return "Narrative" }
	}
	
	/// Limited xhtml content
	public var div: String?
	
	/// generated | extensions | additional | empty
	public var status: String?
	
	public convenience init(div: String?, status: String?) {
		self.init(json: nil)
		if nil != div {
			self.div = div
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["div"] as? String {
				self.div = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let div = self.div {
			json["div"] = div.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		
		return json
	}
}

