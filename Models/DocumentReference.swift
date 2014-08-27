//
//  DocumentReference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 (xds-profile.profile.json) on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  XDSDocumentEntry.
 */
public class DocumentReference: FHIRResource
{
	override public class var resourceName: String {
		get { return "DocumentReference" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** XDSDocumentEntry.uniqueId */
	public var masterIdentifier: Identifier?
	
	/** XDSDocumentEntry.referenceIdList */
	public var identifier: [Identifier]?
	
	/** XDSDocumentEntry.patientId + sourcePatientId/sourcePatientInfo */
	public var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/** XDSDocumentEntry.typeCode */
	public var type: CodeableConcept?
	
	/** XDSDocumentEntry.classCode */
	public var klass: CodeableConcept?
	
	/** XDSDocumentEntry.author */
	public var author: [FHIRElement]? {
		get { return resolveReferences("author") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "author")
			}
		}
	}
	
	/** n/a */
	public var custodian: FHIRElement? {
		get { return resolveReference("custodian") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "custodian")
			}
		}
	}
	
	/** XDSDocumentEntry.homeCommunityId */
	public var policyManager: NSURL?
	
	/** ?? */
	public var authenticator: FHIRElement? {
		get { return resolveReference("authenticator") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "authenticator")
			}
		}
	}
	
	/** XDSDocumentEntry.creationTime */
	public var created: NSDate?
	
	/** XDS submission time or XDSDocumentEntry.creationTime  if unknown */
	public var indexed: NSDate?
	
	/** implied by XDS workflow */
	public var status: String?
	
	/** preliminary | final | appended | amended | entered in error */
	public var docStatus: CodeableConcept?
	
	/** Relationships that this document has with other document references that already exist */
	public var relatesTo: [DocumentReferenceRelatesTo]?
	
	/** XDSDocumentEntry.title */
	public var description: String?
	
	/** XDSDocumentEntry.confidentialityCode */
	public var confidentiality: CodeableConcept?
	
	/** XDSDocumentEntry.languageCode */
	public var primaryLanguage: String?
	
	/** XDSDocumentEntry.mimeType */
	public var mimeType: String?
	
	/** XDSDocumentEntry.formatCode */
	public var format: CodeableConcept?
	
	/** XDSDocumentEntry.size */
	public var size: Int?
	
	/** XDSDocumentEntry.hash */
	public var hash: String?
	
	/** repository location (by implication & configuration) */
	public var location: NSURL?
	
	/** can be determined from repository location + parameters */
	public var service: DocumentReferenceService?
	
	/** event codes, service Start & Stop time, and facility type */
	public var context: DocumentReferenceContext?
	
	public convenience init(masterIdentifier: Identifier?, subject: ResourceReference?, type: CodeableConcept?, klass: CodeableConcept?, author: [ResourceReference]?, created: NSDate?, indexed: NSDate?, status: String?, confidentiality: CodeableConcept?, mimeType: String?, format: CodeableConcept?) {
		self.init(json: nil)
		if nil != masterIdentifier {
			self.masterIdentifier = masterIdentifier
		}
		if nil != subject {
			self.subject = subject
		}
		if nil != type {
			self.type = type
		}
		if nil != klass {
			self.klass = klass
		}
		if nil != author {
			self.author = author
		}
		if nil != created {
			self.created = created
		}
		if nil != indexed {
			self.indexed = indexed
		}
		if nil != status {
			self.status = status
		}
		if nil != confidentiality {
			self.confidentiality = confidentiality
		}
		if nil != mimeType {
			self.mimeType = mimeType
		}
		if nil != format {
			self.format = format
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["masterIdentifier"] as? NSDictionary {
				self.masterIdentifier = Identifier(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["klass"] as? NSDictionary {
				self.klass = CodeableConcept(json: val)
			}
			if let val = js["author"] as? [NSDictionary] {
				self.author = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["custodian"] as? NSDictionary {
				self.custodian = ResourceReference(json: val)
			}
			if let val = js["policyManager"] as? String {
				self.policyManager = NSURL(json: val)
			}
			if let val = js["authenticator"] as? NSDictionary {
				self.authenticator = ResourceReference(json: val)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["indexed"] as? String {
				self.indexed = NSDate(json: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["docStatus"] as? NSDictionary {
				self.docStatus = CodeableConcept(json: val)
			}
			if let val = js["relatesTo"] as? [NSDictionary] {
				self.relatesTo = DocumentReferenceRelatesTo.from(val) as? [DocumentReferenceRelatesTo]
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["confidentiality"] as? NSDictionary {
				self.confidentiality = CodeableConcept(json: val)
			}
			if let val = js["primaryLanguage"] as? String {
				self.primaryLanguage = val
			}
			if let val = js["mimeType"] as? String {
				self.mimeType = val
			}
			if let val = js["format"] as? NSDictionary {
				self.format = CodeableConcept(json: val)
			}
			if let val = js["size"] as? Int {
				self.size = val
			}
			if let val = js["hash"] as? String {
				self.hash = val
			}
			if let val = js["location"] as? String {
				self.location = NSURL(json: val)
			}
			if let val = js["service"] as? NSDictionary {
				self.service = DocumentReferenceService(json: val)
			}
			if let val = js["context"] as? NSDictionary {
				self.context = DocumentReferenceContext(json: val)
			}
		}
	}
}


/**
 *  Relationships that this document has with other document references that already exist.
 *
 *  Relationships to other documents.
 */
public class DocumentReferenceRelatesTo: FHIRElement
{	
	/** The type of relationship that this document has with anther document */
	public var code: String?
	
	/** The target document of this relationship */
	public var target: FHIRElement? {
		get { return resolveReference("target") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "target")
			}
		}
	}
	
	public convenience init(code: String?, target: ResourceReference?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != target {
			self.target = target
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["target"] as? NSDictionary {
				self.target = ResourceReference(json: val)
			}
		}
	}
}


/**
 *  can be determined from repository location + parameters.
 *
 *  If access is not fully described by location.
 */
public class DocumentReferenceService: FHIRElement
{	
	/** Type of service (i.e. XDS.b) */
	public var type: CodeableConcept?
	
	/** Where service is located (usually a URL) */
	public var address: String?
	
	/** Service call parameters */
	public var parameter: [DocumentReferenceServiceParameter]?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
			}
			if let val = js["address"] as? String {
				self.address = val
			}
			if let val = js["parameter"] as? [NSDictionary] {
				self.parameter = DocumentReferenceServiceParameter.from(val) as? [DocumentReferenceServiceParameter]
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
	/** Parameter name in service call */
	public var name: String?
	
	/** Parameter value for the name */
	public var value: String?
	
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}	

	public required init(json: NSDictionary?) {
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


/**
 *  event codes, service Start & Stop time, and facility type.
 *
 *  Clinical context of document - eventCodeList, serviceStart & Stop time, and facility type.
 */
public class DocumentReferenceContext: FHIRElement
{	
	/** XDSDocumentEntry.eventCodeList */
	public var event: [CodeableConcept]?
	
	/** XDSDocumentEntry.serviceStartTime & XDSDocumentEntry.serviceStopTime */
	public var period: Period?
	
	/** XDSDocumentEntry.healthCareFacilityTypeCode */
	public var facilityType: CodeableConcept?
	
	public convenience init(period: Period?) {
		self.init(json: nil)
		if nil != period {
			self.period = period
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["event"] as? [NSDictionary] {
				self.event = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
			if let val = js["facilityType"] as? NSDictionary {
				self.facilityType = CodeableConcept(json: val)
			}
		}
	}
}

