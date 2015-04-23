//
//  DataElement.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DataElement) on 2015-04-23.
//  2015, SMART Health IT.
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
	
	/// Logical id to reference this data element
	public var identifier: Identifier?
	
	/// External specification mapped to
	public var mapping: [DataElementMapping]?
	
	/// Descriptive label for this element definition
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// comparable | fully-specified | equivalent | convertable | scaleable | flexible
	public var specificity: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// Globally unique logical id for data element
	public var url: NSURL?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the data element
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(element: [ElementDefinition]?, status: String?) {
		self.init(json: nil)
		if nil != element {
			self.element = element
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["contact"] {
				presentKeys.addObject("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = DataElementContact.from(val, owner: self) as? [DataElementContact]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"contact\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["copyright"] {
				presentKeys.addObject("copyright")
				if let val = exist as? String {
					self.copyright = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"copyright\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["date"] {
				presentKeys.addObject("date")
				if let val = exist as? String {
					self.date = DateTime(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"date\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["element"] {
				presentKeys.addObject("element")
				if let val = exist as? [FHIRJSON] {
					self.element = ElementDefinition.from(val, owner: self) as? [ElementDefinition]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"element\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"element\" but it is missing"))
			}
			if let exist: AnyObject = js["experimental"] {
				presentKeys.addObject("experimental")
				if let val = exist as? Bool {
					self.experimental = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"experimental\" to be `Bool`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.addObject("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identifier\" to be `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["mapping"] {
				presentKeys.addObject("mapping")
				if let val = exist as? [FHIRJSON] {
					self.mapping = DataElementMapping.from(val, owner: self) as? [DataElementMapping]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"mapping\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["publisher"] {
				presentKeys.addObject("publisher")
				if let val = exist as? String {
					self.publisher = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"publisher\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["specificity"] {
				presentKeys.addObject("specificity")
				if let val = exist as? String {
					self.specificity = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"specificity\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.addObject("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"status\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"status\" but it is missing"))
			}
			if let exist: AnyObject = js["url"] {
				presentKeys.addObject("url")
				if let val = exist as? String {
					self.url = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"url\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["useContext"] {
				presentKeys.addObject("useContext")
				if let val = exist as? [FHIRJSON] {
					self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"useContext\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["version"] {
				presentKeys.addObject("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"version\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
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
		if let specificity = self.specificity {
			json["specificity"] = specificity.asJSON()
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["telecom"] {
				presentKeys.addObject("telecom")
				if let val = exist as? [FHIRJSON] {
					self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"telecom\" to be an array of `FHIRJSON`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties an arguments. */
	public convenience init(identity: String?) {
		self.init(json: nil)
		if nil != identity {
			self.identity = identity
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, presentKeys: NSMutableSet) -> [NSError]? {
		var errors = super.populateFromJSON(json, presentKeys: presentKeys) ?? [NSError]()
		if let js = json {
			if let exist: AnyObject = js["comments"] {
				presentKeys.addObject("comments")
				if let val = exist as? String {
					self.comments = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"comments\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["identity"] {
				presentKeys.addObject("identity")
				if let val = exist as? String {
					self.identity = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"identity\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			else {
				errors.append(fhir_generateJSONError("\(self) expects nonoptional JSON property \"identity\" but it is missing"))
			}
			if let exist: AnyObject = js["name"] {
				presentKeys.addObject("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"name\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
			if let exist: AnyObject = js["uri"] {
				presentKeys.addObject("uri")
				if let val = exist as? String {
					self.uri = NSURL(string: val)
				}
				else {
					errors.append(fhir_generateJSONError("\(self) expects JSON property \"uri\" to be `String`, but is \(exist.dynamicType)"))
				}
			}
		}
		return errors.isEmpty ? nil : errors
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

