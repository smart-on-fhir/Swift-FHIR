//
//  DataElement.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 (http://hl7.org/fhir/StructureDefinition/DataElement) on 2015-03-10.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Resource data element.
 *
 *  The formal description of a single piece of information that can be gathered and reported.
 */
public class DataElement: DomainResource
{
	override public class var resourceName: String {
		get { return "DataElement" }
	}
	
	/// Contact details of the publisher
	public var contact: [DataElementContact]?
	
	/// Use and/or Publishing restrictions
	public var copyright: String?
	
	/// Date for this version of the data element
	public var date: DateTime?
	
	/// Definition of element
	public var element: [ElementDefinition]?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// comparable | fully-specified | equivalent | convertable | scaleable | flexible
	public var granularity: String?
	
	/// Logical id to reference this data element
	public var identifier: Identifier?
	
	/// External specification mapped to
	public var mapping: [DataElementMapping]?
	
	/// Descriptive label for this element definition
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// Globally unique logical id for data element
	public var url: NSURL?
	
	/// Assist with indexing and finding
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the data element
	public var version: String?
	
	public convenience init(element: [ElementDefinition]?, status: String?) {
		self.init(json: nil)
		if nil != element {
			self.element = element
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contact"] as? [JSONDictionary] {
				self.contact = DataElementContact.from(val, owner: self) as? [DataElementContact]
			}
			if let val = js["copyright"] as? String {
				self.copyright = val
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["element"] as? [JSONDictionary] {
				self.element = ElementDefinition.from(val, owner: self) as? [ElementDefinition]
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["granularity"] as? String {
				self.granularity = val
			}
			if let val = js["identifier"] as? JSONDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["mapping"] as? [JSONDictionary] {
				self.mapping = DataElementMapping.from(val, owner: self) as? [DataElementMapping]
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
			if let val = js["useContext"] as? [JSONDictionary] {
				self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = DataElementContact.asJSONArray(contact)
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let element = self.element {
			json["element"] = ElementDefinition.asJSONArray(element)
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let granularity = self.granularity {
			json["granularity"] = granularity.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let mapping = self.mapping {
			json["mapping"] = DataElementMapping.asJSONArray(mapping)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class DataElementContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "DataElementContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["telecom"] as? [JSONDictionary] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  External specification mapped to.
 *
 *  Identifies a specification (other than a terminology) that the elements that make up the DataElement hav some
 *  correspondance with.
 */
public class DataElementMapping: FHIRElement
{
	override public class var resourceName: String {
		get { return "DataElementMapping" }
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

