//
//  DocumentReference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3958 (documentreference.profile.json) on 2015-01-20.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A reference to a document.
 */
public class DocumentReference: FHIRResource
{
	override public class var resourceName: String {
		get { return "DocumentReference" }
	}
	
	/// Who/What authenticated the document
	public var authenticator: Reference?
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Sensitivity of source document
	public var confidentiality: [CodeableConcept]?
	
	/// Clinical context of document
	public var context: DocumentReferenceContext?
	
	/// Document creation time
	public var created: DateTime?
	
	/// Org which maintains the document
	public var custodian: Reference?
	
	/// Human-readable description (title)
	public var description: String?
	
	/// preliminary | final | appended | amended | entered in error
	public var docStatus: CodeableConcept?
	
	/// Format/content rules for the document
	public var format: [NSURL]?
	
	/// Base64 representation of SHA1
	public var hash: Base64Binary?
	
	/// Other identifiers for the document
	public var identifier: [Identifier]?
	
	/// When this document reference created
	public var indexed: Instant?
	
	/// Categorization of Document
	public var klass: CodeableConcept?
	
	/// Where to access the document
	public var location: NSURL?
	
	/// Master Version Specific Identifier
	public var masterIdentifier: Identifier?
	
	/// Mime type, + maybe character encoding
	public var mimeType: String?
	
	/// Manages access policies for the document
	public var policyManager: NSURL?
	
	/// The marked primary language for the document
	public var primaryLanguage: String?
	
	/// Relationships to other documents
	public var relatesTo: [DocumentReferenceRelatesTo]?
	
	/// If access is not fully described by location
	public var service: DocumentReferenceService?
	
	/// Size of the document in bytes
	public var size: Int?
	
	/// current | superceded | entered in error
	public var status: String?
	
	/// Who|what is the subject of the document
	public var subject: Reference?
	
	/// What kind of document this is (LOINC if possible)
	public var type: CodeableConcept?
	
	public convenience init(author: [Reference]?, indexed: Instant?, masterIdentifier: Identifier?, mimeType: String?, status: String?, subject: Reference?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != author {
			self.author = author
		}
		if nil != indexed {
			self.indexed = indexed
		}
		if nil != masterIdentifier {
			self.masterIdentifier = masterIdentifier
		}
		if nil != mimeType {
			self.mimeType = mimeType
		}
		if nil != status {
			self.status = status
		}
		if nil != subject {
			self.subject = subject
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authenticator"] as? JSONDictionary {
				self.authenticator = Reference(json: val, owner: self)
			}
			if let val = js["author"] as? [JSONDictionary] {
				self.author = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["confidentiality"] as? [JSONDictionary] {
				self.confidentiality = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["context"] as? JSONDictionary {
				self.context = DocumentReferenceContext(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["custodian"] as? JSONDictionary {
				self.custodian = Reference(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["docStatus"] as? JSONDictionary {
				self.docStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["format"] as? [String] {
				self.format = NSURL.from(val)
			}
			if let val = js["hash"] as? String {
				self.hash = Base64Binary(string: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indexed"] as? String {
				self.indexed = Instant(string: val)
			}
			if let val = js["class"] as? JSONDictionary {
				self.klass = CodeableConcept(json: val, owner: self)
			}
			if let val = js["location"] as? String {
				self.location = NSURL(string: val)
			}
			if let val = js["masterIdentifier"] as? JSONDictionary {
				self.masterIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["mimeType"] as? String {
				self.mimeType = val
			}
			if let val = js["policyManager"] as? String {
				self.policyManager = NSURL(string: val)
			}
			if let val = js["primaryLanguage"] as? String {
				self.primaryLanguage = val
			}
			if let val = js["relatesTo"] as? [JSONDictionary] {
				self.relatesTo = DocumentReferenceRelatesTo.from(val, owner: self) as? [DocumentReferenceRelatesTo]
			}
			if let val = js["service"] as? JSONDictionary {
				self.service = DocumentReferenceService(json: val, owner: self)
			}
			if let val = js["size"] as? Int {
				self.size = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Clinical context of document.
 *
 *  The clinical context in which the document was prepared.
 */
public class DocumentReferenceContext: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceContext" }
	}
	
	/// Main Clinical Acts Documented
	public var event: [CodeableConcept]?
	
	/// Kind of facility where patient was seen
	public var facilityType: CodeableConcept?
	
	/// Time of service that is being documented
	public var period: Period?
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["event"] as? [JSONDictionary] {
				self.event = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["facilityType"] as? JSONDictionary {
				self.facilityType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["period"] as? JSONDictionary {
				self.period = Period(json: val, owner: self)
			}
		}
	}
}


/**
 *  Relationships to other documents.
 *
 *  Relationships that this document has with other document references that already exist.
 */
public class DocumentReferenceRelatesTo: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceRelatesTo" }
	}
	
	/// replaces | transforms | signs | appends
	public var code: String?
	
	/// Target of the relationship
	public var target: Reference?
	
	public convenience init(code: String?, target: Reference?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != target {
			self.target = target
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["target"] as? JSONDictionary {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  If access is not fully described by location.
 *
 *  A description of a service call that can be used to retrieve the document.
 */
public class DocumentReferenceService: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceService" }
	}
	
	/// Where service is located (usually a URL)
	public var address: String?
	
	/// Service call parameters
	public var parameter: [DocumentReferenceServiceParameter]?
	
	/// Type of service (i.e. XDS.b)
	public var type: CodeableConcept?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? String {
				self.address = val
			}
			if let val = js["parameter"] as? [JSONDictionary] {
				self.parameter = DocumentReferenceServiceParameter.from(val, owner: self) as? [DocumentReferenceServiceParameter]
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
}


/**
 *  Service call parameters.
 *
 *  A list of named parameters that is used in the service call.
 */
public class DocumentReferenceServiceParameter: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceServiceParameter" }
	}
	
	/// Parameter name in service call
	public var name: String?
	
	/// Parameter value for the name
	public var value: String?
	
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
	}
}

