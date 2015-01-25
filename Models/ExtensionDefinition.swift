//
//  ExtensionDefinition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3969 (extensiondefinition.profile.json) on 2015-01-25.
//  2015, SMART Platforms.
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
	public var date: DateTime?
	
	/// Natural language description of the extension
	public var description_fhir: String?
	
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
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? [JSONDictionary] {
				self.code = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["context"] as? [String] {
				self.context = val
			}
			if let val = js["contextType"] as? String {
				self.contextType = val
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["element"] as? [JSONDictionary] {
				self.element = ElementDefinition.from(val, owner: self) as? [ElementDefinition]
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["mapping"] as? [JSONDictionary] {
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
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = Coding.asJSONArray(code)
		}
		if let context = self.context {
			var arr = [AnyObject]()
			for val in context {
				arr.append(val.asJSON())
			}
			json["context"] = arr
		}
		if let contextType = self.contextType {
			json["contextType"] = contextType.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let element = self.element {
			json["element"] = ElementDefinition.asJSONArray(element)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let mapping = self.mapping {
			json["mapping"] = ExtensionDefinitionMapping.asJSONArray(mapping)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
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
	
	public required init(json: JSONDictionary?) {
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
				self.uri = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let comments = self.comments {
			json["comments"] = comments.asJSON()
		}
		if let identity = self.identity {
			json["identity"] = identity.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let uri = self.uri {
			json["uri"] = uri.asJSON()
		}
		
		return json
	}
}

