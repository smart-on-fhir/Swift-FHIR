//
//  DocumentReference.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-03.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  XDSDocumentEntry.
 */
class DocumentReference: FHIRResource
{
	override var resourceName: String {
		get { return "DocumentReference" }
	}

	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?

	/*! Contained, inline Resources */
	var contained: FHIRResource[]?

	/*! XDSDocumentEntry.uniqueId */
	var masterIdentifier: Identifier

	/*! XDSDocumentEntry.referenceIdList */
	var identifier: Identifier[]?

	/*! XDSDocumentEntry.patientId + sourcePatientId/sourcePatientInfo */
	var subject: ResourceReference

	/*! XDSDocumentEntry.typeCode */
	var type: CodeableConcept

	/*! XDSDocumentEntry.classCode */
	var classification: CodeableConcept

	/*! XDSDocumentEntry.author */
	var author: ResourceReference[]

	/*! n/a */
	var custodian: ResourceReference?

	/*! XDSDocumentEntry.homeCommunityId */
	var policyManager: NSURL?

	/*! ?? */
	var authenticator: ResourceReference?

	/*! XDSDocumentEntry.creationTime */
	var created: NSDate

	/*! XDS submission time or XDSDocumentEntry.creationTime  if unknown */
	var indexed: Int

	/*! implied by XDS workflow */
	var status: String

	/*! preliminary | final | appended | amended | entered in error */
	var docStatus: CodeableConcept?

	/*! Relationships that this document has with other document references that already exist */
	var relatesTo: DocumentReferenceRelatesTo[]?

	/*! XDSDocumentEntry.title */
	var description: String?

	/*! XDSDocumentEntry.confidentialityCode */
	var confidentiality: CodeableConcept

	/*! XDSDocumentEntry.languageCode */
	var primaryLanguage: String?

	/*! XDSDocumentEntry.mimeType */
	var mimeType: String

	/*! XDSDocumentEntry.formatCode */
	var format: CodeableConcept

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

	init(masterIdentifier: Identifier, subject: ResourceReference, type: CodeableConcept, classification: CodeableConcept, author: ResourceReference[], created: NSDate, indexed: Int, status: String, confidentiality: CodeableConcept, mimeType: String, format: CodeableConcept) {
		self.masterIdentifier = masterIdentifier
		self.subject = subject
		self.type = type
		self.classification = classification
		self.author = author
		self.created = created
		self.indexed = indexed
		self.status = status
		self.confidentiality = confidentiality
		self.mimeType = mimeType
		self.format = format
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
	var code: String

	/*! The target document of this relationship */
	var target: ResourceReference

	init(code: String, target: ResourceReference) {
		self.code = code
		self.target = target
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
	var type: CodeableConcept

	/*! Where service is located (usually a URL) */
	var address: String?

	/*! Service call parameters */
	var parameter: DocumentReferenceServiceParameter[]?

	init(type: CodeableConcept) {
		self.type = type
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
	var name: String

	/*! Parameter value for the name */
	var value: String?

	init(name: String) {
		self.name = name
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
	var event: CodeableConcept[]?

	/*! XDSDocumentEntry.serviceStartTime & XDSDocumentEntry.serviceStopTime */
	var period: Period

	/*! XDSDocumentEntry.healthCareFacilityTypeCode */
	var facilityType: CodeableConcept?

	init(period: Period) {
		self.period = period
	}
}
