//
//  DocumentReference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-17.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  XDSDocumentEntry.
 */
class DocumentReference: FHIRResource
{
	override class var resourceName: String {
		get { return "DocumentReference" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! XDSDocumentEntry.uniqueId */
	var masterIdentifier: Identifier?
	
	/*! XDSDocumentEntry.referenceIdList */
	var identifier: [Identifier]?
	
	/*! XDSDocumentEntry.patientId + sourcePatientId/sourcePatientInfo */
	var subject: ResourceReference?
	
	/*! XDSDocumentEntry.typeCode */
	var type: CodeableConcept?
	
	/*! XDSDocumentEntry.classCode */
	var klass: CodeableConcept?
	
	/*! XDSDocumentEntry.author */
	var author: [ResourceReference]?
	
	/*! n/a */
	var custodian: ResourceReference?
	
	/*! XDSDocumentEntry.homeCommunityId */
	var policyManager: NSURL?
	
	/*! ?? */
	var authenticator: ResourceReference?
	
	/*! XDSDocumentEntry.creationTime */
	var created: NSDate?
	
	/*! XDS submission time or XDSDocumentEntry.creationTime  if unknown */
	var indexed: Int?
	
	/*! implied by XDS workflow */
	var status: String?
	
	/*! preliminary | final | appended | amended | entered in error */
	var docStatus: CodeableConcept?
	
	/*! Relationships that this document has with other document references that already exist */
	var relatesTo: [DocumentReferenceRelatesTo]?
	
	/*! XDSDocumentEntry.title */
	var description: String?
	
	/*! XDSDocumentEntry.confidentialityCode */
	var confidentiality: CodeableConcept?
	
	/*! XDSDocumentEntry.languageCode */
	var primaryLanguage: String?
	
	/*! XDSDocumentEntry.mimeType */
	var mimeType: String?
	
	/*! XDSDocumentEntry.formatCode */
	var format: CodeableConcept?
	
	/*! XDSDocumentEntry.size */
	var size: Int?
	
	/*! XDSDocumentEntry.hash */
	var hash: String?
	
	/*! repository location (by implication & configuration) */
	var location: NSURL?
	
	/*! can be determined from repository location + parameters */
	var service: DocumentReferenceService?
	
	/*! event codes, service Start & Stop time, and facility type */
	var context: DocumentReferenceContext?
	
	convenience init(masterIdentifier: Identifier?, subject: ResourceReference?, type: CodeableConcept?, klass: CodeableConcept?, author: [ResourceReference]?, created: NSDate?, indexed: Int?, status: String?, confidentiality: CodeableConcept?, mimeType: String?, format: CodeableConcept?) {
		self.init(json: nil)
		if masterIdentifier {
			self.masterIdentifier = masterIdentifier
		}
		if subject {
			self.subject = subject
		}
		if type {
			self.type = type
		}
		if klass {
			self.klass = klass
		}
		if author {
			self.author = author
		}
		if created {
			self.created = created
		}
		if indexed {
			self.indexed = indexed
		}
		if status {
			self.status = status
		}
		if confidentiality {
			self.confidentiality = confidentiality
		}
		if mimeType {
			self.mimeType = mimeType
		}
		if format {
			self.format = format
		}
	}	
	
	init(json: NSDictionary?) {
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
			if let val = js["indexed"] as? Int {
				self.indexed = val
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
		super.init(json: json)
	}
}


/*!
 *  Relationships that this document has with other document references that already exist.
 *
 *  Relationships to other documents.
 */
class DocumentReferenceRelatesTo: FHIRElement
{	
	/*! The type of relationship that this document has with anther document */
	var code: String?
	
	/*! The target document of this relationship */
	var target: ResourceReference?
	
	convenience init(code: String?, target: ResourceReference?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
		if target {
			self.target = target
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["target"] as? NSDictionary {
				self.target = ResourceReference(json: val)
			}
		}
		super.init(json: json)
	}
}


/*!
 *  can be determined from repository location + parameters.
 *
 *  If access is not fully described by location.
 */
class DocumentReferenceService: FHIRElement
{	
	/*! Type of service (i.e. XDS.b) */
	var type: CodeableConcept?
	
	/*! Where service is located (usually a URL) */
	var address: String?
	
	/*! Service call parameters */
	var parameter: [DocumentReferenceServiceParameter]?
	
	convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if type {
			self.type = type
		}
	}	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}


/*!
 *  Service call parameters.
 *
 *  A list of named parameters that is used in the service call.
 */
class DocumentReferenceServiceParameter: FHIRElement
{	
	/*! Parameter name in service call */
	var name: String?
	
	/*! Parameter value for the name */
	var value: String?
	
	convenience init(name: String?) {
		self.init(json: nil)
		if name {
			self.name = name
		}
	}	
	
	init(json: NSDictionary?) {
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
		super.init(json: json)
	}
}


/*!
 *  event codes, service Start & Stop time, and facility type.
 *
 *  Clinical context of document - eventCodeList, serviceStart & Stop time, and facility type.
 */
class DocumentReferenceContext: FHIRElement
{	
	/*! XDSDocumentEntry.eventCodeList */
	var event: [CodeableConcept]?
	
	/*! XDSDocumentEntry.serviceStartTime & XDSDocumentEntry.serviceStopTime */
	var period: Period?
	
	/*! XDSDocumentEntry.healthCareFacilityTypeCode */
	var facilityType: CodeableConcept?
	
	convenience init(period: Period?) {
		self.init(json: nil)
		if period {
			self.period = period
		}
	}	
	
	init(json: NSDictionary?) {
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
		super.init(json: json)
	}
}
