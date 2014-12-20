//
//  ExtensionDefinition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (extensiondefinition.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Extension Definition.
 *
 *  Defines an extension that can be used in resources.
 */
public class ExtensionDefinition: FHIRResource
{
	override public class var resourceName: String {
		get { return "ExtensionDefinition" }
	}
	
	/// Assist with indexing and finding
	public var code: [Coding]?
	
	/// Where the extension can be used in instances
	public var context: [String]?
	
	/// resource | datatype | mapping | extension
	public var contextType: String?
	
	/// Date for this version of the extension
	public var date: NSDate?
	
	/// Natural language description of the extension
	public var description: String?
	
	/// Use this name when displaying the value
	public var display: String?
	
	/// Definition of the elements in the extension
	public var element: [ElementDefinition]?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Other identifiers for the extension
	public var identifier: [Identifier]?
	
	/// External specification that the content is mapped to
	public var mapping: [ExtensionDefinitionMapping]?
	
	/// Descriptional name for this profile
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Scope and Usage this extesion is for
	public var requirements: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// Contact information of the publisher
	public var telecom: [ContactPoint]?
	
	/// Literal URL used to reference this extension
	public var url: NSURL?
	
	public convenience init(context: [String]?, contextType: String?, element: [ElementDefinition]?, name: String?, status: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != context {
			self.context = context
		}
		if nil != contextType {
			self.contextType = contextType
		}
		if nil != element {
			self.element = element
		}
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
		if nil != url {
			self.url = url
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? [NSDictionary] {
				self.code = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["context"] as? [String] {
				self.context = val
			}
			if let val = js["contextType"] as? String {
				self.contextType = val
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["element"] as? [NSDictionary] {
				self.element = ElementDefinition.from(val, owner: self) as? [ElementDefinition]
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["mapping"] as? [NSDictionary] {
				self.mapping = ExtensionDefinitionMapping.from(val, owner: self) as? [ExtensionDefinitionMapping]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["telecom"] as? [NSDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["url"] as? String {
				self.url = NSURL(json: val)
			}
		}
	}
}


/**
 *  External specification that the content is mapped to.
 *
 *  An external specification that the content is mapped to.
 */
public class ExtensionDefinitionMapping: FHIRElement
{
	override public class var resourceName: String {
		get { return "ExtensionDefinitionMapping" }
	}
	
	/// Versions, Issues, Scope limitations etc
	public var comments: String?
	
	/// Internal id when this mapping is used
	public var identity: String?
	
	/// Names what this mapping refers to
	public var name: String?
	
	/// Identifies what this mapping refers to
	public var uri: NSURL?
	
	public convenience init(identity: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comments"] as? String {
				self.comments = val
			}
			if let val = js["identity"] as? String {
				self.identity = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["uri"] as? String {
				self.uri = NSURL(json: val)
			}
		}
	}
}

