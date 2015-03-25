//
//  StructureDefinition.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4879 (http://hl7.org/fhir/StructureDefinition/StructureDefinition) on 2015-03-25.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Structural Definition.
 *
 *  A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in
 *  FHIR, and also for describing extensions, and constraints on resources and data types.
 */
public class StructureDefinition: DomainResource
{
	override public class var resourceName: String {
		get { return "StructureDefinition" }
	}
	
	/// Whether the structure is abstract
	public var abstract: Bool?
	
	/// Structure that this set of constraints applies to
	public var base: NSURL?
	
	/// Assist with indexing and finding
	public var code: [Coding]?
	
	/// Contact details of the publisher
	public var contact: [StructureDefinitionContact]?
	
	/// Where the extension can be used in instances
	public var context: [String]?
	
	/// resource | datatype | mapping | extension
	public var contextType: String?
	
	/// Use and/or Publishing restrictions
	public var copyright: String?
	
	/// Date for this version of the StructureDefinition
	public var date: DateTime?
	
	/// Natural language description of the StructureDefinition
	public var description_fhir: String?
	
	/// Differential view of the structure
	public var differential: StructureDefinitionDifferential?
	
	/// Use this name when displaying the value
	public var display: String?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// FHIR Version this StructureDefinition targets
	public var fhirVersion: String?
	
	/// Other identifiers for the StructureDefinition
	public var identifier: [Identifier]?
	
	/// External specification that the content is mapped to
	public var mapping: [StructureDefinitionMapping]?
	
	/// Informal name for this StructureDefinition
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Scope and Usage this structure definition is for
	public var requirements: String?
	
	/// Snapshot view of the structure
	public var snapshot: StructureDefinitionSnapshot?
	
	/// draft | active | retired
	public var status: String?
	
	/// type | resource | constraint | extension
	public var type: String?
	
	/// Literal URL used to reference this StructureDefinition
	public var url: NSURL?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the StructureDefinition
	public var version: String?
	
	public convenience init(abstract: Bool?, name: String?, status: String?, type: String?, url: NSURL?) {
		self.init(json: nil)
		if nil != abstract {
			self.abstract = abstract
		}
		if nil != name {
			self.name = name
		}
		if nil != status {
			self.status = status
		}
		if nil != type {
			self.type = type
		}
		if nil != url {
			self.url = url
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["abstract"] as? Bool {
				self.abstract = val
			}
			if let val = js["base"] as? String {
				self.base = NSURL(string: val)
			}
			if let val = js["code"] as? [FHIRJSON] {
				self.code = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["contact"] as? [FHIRJSON] {
				self.contact = StructureDefinitionContact.from(val, owner: self) as? [StructureDefinitionContact]
			}
			if let val = js["context"] as? [String] {
				self.context = val
			}
			if let val = js["contextType"] as? String {
				self.contextType = val
			}
			if let val = js["copyright"] as? String {
				self.copyright = val
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["differential"] as? FHIRJSON {
				self.differential = StructureDefinitionDifferential(json: val, owner: self)
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["fhirVersion"] as? String {
				self.fhirVersion = val
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["mapping"] as? [FHIRJSON] {
				self.mapping = StructureDefinitionMapping.from(val, owner: self) as? [StructureDefinitionMapping]
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
			if let val = js["snapshot"] as? FHIRJSON {
				self.snapshot = StructureDefinitionSnapshot(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
			if let val = js["useContext"] as? [FHIRJSON] {
				self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let abstract = self.abstract {
			json["abstract"] = abstract.asJSON()
		}
		if let base = self.base {
			json["base"] = base.asJSON()
		}
		if let code = self.code {
			json["code"] = Coding.asJSONArray(code)
		}
		if let contact = self.contact {
			json["contact"] = StructureDefinitionContact.asJSONArray(contact)
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
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let differential = self.differential {
			json["differential"] = differential.asJSON()
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let mapping = self.mapping {
			json["mapping"] = StructureDefinitionMapping.asJSONArray(mapping)
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
		if let snapshot = self.snapshot {
			json["snapshot"] = snapshot.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
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
public class StructureDefinitionContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "StructureDefinitionContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["telecom"] as? [FHIRJSON] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
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
 *  Differential view of the structure.
 *
 *  A differential view is expressed relative to the base StructureDefinition - a statement of differences that it
 *  applies.
 */
public class StructureDefinitionDifferential: FHIRElement
{
	override public class var resourceName: String {
		get { return "StructureDefinitionDifferential" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition)
	public var element: [ElementDefinition]?
	
	public convenience init(element: [ElementDefinition]?) {
		self.init(json: nil)
		if nil != element {
			self.element = element
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["element"] as? [FHIRJSON] {
				self.element = ElementDefinition.from(val, owner: self) as? [ElementDefinition]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let element = self.element {
			json["element"] = ElementDefinition.asJSONArray(element)
		}
		
		return json
	}
}


/**
 *  External specification that the content is mapped to.
 *
 *  An external specification that the content is mapped to.
 */
public class StructureDefinitionMapping: FHIRElement
{
	override public class var resourceName: String {
		get { return "StructureDefinitionMapping" }
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
	
	public required init(json: FHIRJSON?) {
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
	
	override public func asJSON() -> FHIRJSON {
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


/**
 *  Snapshot view of the structure.
 *
 *  A snapshot view is expressed in a stand alone form that can be used and interpreted without considering the base
 *  StructureDefinition.
 */
public class StructureDefinitionSnapshot: FHIRElement
{
	override public class var resourceName: String {
		get { return "StructureDefinitionSnapshot" }
	}
	
	/// Definition of elements in the resource (if no StructureDefinition)
	public var element: [ElementDefinition]?
	
	public convenience init(element: [ElementDefinition]?) {
		self.init(json: nil)
		if nil != element {
			self.element = element
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["element"] as? [FHIRJSON] {
				self.element = ElementDefinition.from(val, owner: self) as? [ElementDefinition]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let element = self.element {
			json["element"] = ElementDefinition.asJSONArray(element)
		}
		
		return json
	}
}

