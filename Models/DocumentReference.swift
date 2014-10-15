//
//  DocumentReference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.82.2943 (xds-profile.profile.json) on 2014-10-15.
//  2014, SMART Platforms.
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
	
	/// ??
	public var authenticator: FHIRReference<Practitioner>?
	
	/// XDSDocumentEntry.author
	public var author: [FHIRReference<Practitioner>]?
	
	/// XDSDocumentEntry.confidentialityCode
	public var confidentiality: CodeableConcept?
	
	/// event codes, service Start & Stop time, and facility type
	public var context: DocumentReferenceContext?
	
	/// XDSDocumentEntry.creationTime
	public var created: NSDate?
	
	/// n/a
	public var custodian: FHIRReference<Organization>?
	
	/// XDSDocumentEntry.title
	public var description: String?
	
	/// preliminary | final | appended | amended | entered in error
	public var docStatus: CodeableConcept?
	
	/// XDSDocumentEntry.formatCode
	public var format: CodeableConcept?
	
	/// XDSDocumentEntry.hash
	public var hash: String?
	
	/// XDSDocumentEntry.referenceIdList
	public var identifier: [Identifier]?
	
	/// XDS submission time or XDSDocumentEntry.creationTime  if unknown
	public var indexed: NSDate?
	
	/// XDSDocumentEntry.classCode
	public var klass: CodeableConcept?
	
	/// repository location (by implication & configuration)
	public var location: NSURL?
	
	/// XDSDocumentEntry.uniqueId
	public var masterIdentifier: Identifier?
	
	/// XDSDocumentEntry.mimeType
	public var mimeType: String?
	
	/// XDSDocumentEntry.homeCommunityId
	public var policyManager: NSURL?
	
	/// XDSDocumentEntry.languageCode
	public var primaryLanguage: String?
	
	/// Relationships that this document has with other document references that already exist
	public var relatesTo: [DocumentReferenceRelatesTo]?
	
	/// can be determined from repository location + parameters
	public var service: DocumentReferenceService?
	
	/// XDSDocumentEntry.size
	public var size: Int?
	
	/// implied by XDS workflow
	public var status: String?
	
	/// XDSDocumentEntry.patientId + sourcePatientId/sourcePatientInfo
	public var subject: FHIRReference<Patient>?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// XDSDocumentEntry.typeCode
	public var type: CodeableConcept?
	
	public convenience init(author: [FHIRReference<Practitioner>]?, confidentiality: CodeableConcept?, created: NSDate?, format: CodeableConcept?, indexed: NSDate?, klass: CodeableConcept?, masterIdentifier: Identifier?, mimeType: String?, status: String?, subject: FHIRReference<Patient>?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != author {
			self.author = author
		}
		if nil != confidentiality {
			self.confidentiality = confidentiality
		}
		if nil != created {
			self.created = created
		}
		if nil != format {
			self.format = format
		}
		if nil != indexed {
			self.indexed = indexed
		}
		if nil != klass {
			self.klass = klass
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authenticator"] as? NSDictionary {
				self.authenticator = FHIRReference(json: val, owner: self)
			}
			if let val = js["author"] as? [NSDictionary] {
				self.author = FHIRReference.from(val, owner: self)
			}
			if let val = js["confidentiality"] as? NSDictionary {
				self.confidentiality = CodeableConcept(json: val)
			}
			if let val = js["context"] as? NSDictionary {
				self.context = DocumentReferenceContext(json: val)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["custodian"] as? NSDictionary {
				self.custodian = FHIRReference(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["docStatus"] as? NSDictionary {
				self.docStatus = CodeableConcept(json: val)
			}
			if let val = js["format"] as? NSDictionary {
				self.format = CodeableConcept(json: val)
			}
			if let val = js["hash"] as? String {
				self.hash = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["indexed"] as? String {
				self.indexed = NSDate(json: val)
			}
			if let val = js["klass"] as? NSDictionary {
				self.klass = CodeableConcept(json: val)
			}
			if let val = js["location"] as? String {
				self.location = NSURL(json: val)
			}
			if let val = js["masterIdentifier"] as? NSDictionary {
				self.masterIdentifier = Identifier(json: val)
			}
			if let val = js["mimeType"] as? String {
				self.mimeType = val
			}
			if let val = js["policyManager"] as? String {
				self.policyManager = NSURL(json: val)
			}
			if let val = js["primaryLanguage"] as? String {
				self.primaryLanguage = val
			}
			if let val = js["relatesTo"] as? [NSDictionary] {
				self.relatesTo = DocumentReferenceRelatesTo.from(val) as? [DocumentReferenceRelatesTo]
			}
			if let val = js["service"] as? NSDictionary {
				self.service = DocumentReferenceService(json: val)
			}
			if let val = js["size"] as? Int {
				self.size = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = FHIRReference(json: val, owner: self)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
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
	/// The type of relationship that this document has with anther document
	public var code: String?
	
	/// The target document of this relationship
	public var target: FHIRReference<DocumentReference>?
	
	public convenience init(code: String?, target: FHIRReference<DocumentReference>?) {
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
				self.target = FHIRReference(json: val, owner: self)
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

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["address"] as? String {
				self.address = val
			}
			if let val = js["parameter"] as? [NSDictionary] {
				self.parameter = DocumentReferenceServiceParameter.from(val) as? [DocumentReferenceServiceParameter]
			}
			if let val = js["type"] as? NSDictionary {
				self.type = CodeableConcept(json: val)
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
	/// XDSDocumentEntry.eventCodeList
	public var event: [CodeableConcept]?
	
	/// XDSDocumentEntry.healthCareFacilityTypeCode
	public var facilityType: CodeableConcept?
	
	/// XDSDocumentEntry.serviceStartTime & XDSDocumentEntry.serviceStopTime
	public var period: Period?
	
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
			if let val = js["facilityType"] as? NSDictionary {
				self.facilityType = CodeableConcept(json: val)
			}
			if let val = js["period"] as? NSDictionary {
				self.period = Period(json: val)
			}
		}
	}
}

