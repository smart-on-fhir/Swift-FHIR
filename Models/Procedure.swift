//
//  Procedure.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-18.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  An action that is performed on a patient.
 *
 *  Scope and Usage This resource is used to record the details of procedures performed on a patient. A procedure
 *  is an activity that is performed with or on a patient as part of the provision of care. Examples include
 *  surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, and exclude things for which
 *  there are specific resources, such as immunizations, drug administrations.
 *  
 *  Note that many diagnostic processes are procedures that generate observations and reports. In many cases, the
 *  existence of the procedure is assumed, but where there are details of interest about how the diagnostic
 *  procedure was performed, the procedure resource is used to describe the activity.
 */
class Procedure: FHIRResource
{
	override class var resourceName: String {
		get { return "Procedure" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! External Ids for this procedure */
	var identifier: [Identifier]?
	
	/*! Who procedure was performed on */
	var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/*! Identification of the procedure */
	var type: CodeableConcept?
	
	/*! Precise location details */
	var bodySite: [CodeableConcept]?
	
	/*! Reason procedure performed */
	var indication: [CodeableConcept]?
	
	/*! The people who performed the procedure */
	var performer: [ProcedurePerformer]?
	
	/*! The date the procedure was performed */
	var date: Period?
	
	/*! The encounter when procedure performed */
	var encounter: FHIRElement? {
		get { return resolveReference("encounter") }
		set {
			if newValue {
				didSetReference(newValue!, name: "encounter")
			}
		}
	}
	
	/*! What was result of procedure? */
	var outcome: String?
	
	/*! Any report that results from the procedure */
	var report: [FHIRElement]? {
		get { return resolveReferences("report") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "report")
			}
		}
	}
	
	/*! Complication following the procedure */
	var complication: [CodeableConcept]?
	
	/*! Instructions for follow up */
	var followUp: String?
	
	/*! A procedure that is related to this one */
	var relatedItem: [ProcedureRelatedItem]?
	
	/*! Additional information about procedure */
	var notes: String?
	
	convenience init(subject: ResourceReference?, type: CodeableConcept?) {
		self.init(json: nil)
		if subject {
			self.subject = subject
		}
		if type {
			self.type = type
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
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
			if let val = js["bodySite"] as? [NSDictionary] {
				self.bodySite = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["indication"] as? [NSDictionary] {
				self.indication = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["performer"] as? [NSDictionary] {
				self.performer = ProcedurePerformer.from(val) as? [ProcedurePerformer]
			}
			if let val = js["date"] as? NSDictionary {
				self.date = Period(json: val)
			}
			if let val = js["encounter"] as? NSDictionary {
				self.encounter = ResourceReference(json: val)
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["report"] as? [NSDictionary] {
				self.report = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["complication"] as? [NSDictionary] {
				self.complication = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["followUp"] as? String {
				self.followUp = val
			}
			if let val = js["relatedItem"] as? [NSDictionary] {
				self.relatedItem = ProcedureRelatedItem.from(val) as? [ProcedureRelatedItem]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
		}
	}
}


/*!
 *  The people who performed the procedure.
 *
 *  Limited to 'real' people rather than equipment.
 */
class ProcedurePerformer: FHIRElement
{	
	/*! The reference to the practitioner */
	var person: FHIRElement? {
		get { return resolveReference("person") }
		set {
			if newValue {
				didSetReference(newValue!, name: "person")
			}
		}
	}
	
	/*! The role the person was in */
	var role: CodeableConcept?
	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["person"] as? NSDictionary {
				self.person = ResourceReference(json: val)
			}
			if let val = js["role"] as? NSDictionary {
				self.role = CodeableConcept(json: val)
			}
		}
	}
}


/*!
 *  A procedure that is related to this one.
 *
 *  Procedures may be related to other items such as procedures or medications. For example treating wound
 *  dehiscence following a previous procedure.
 */
class ProcedureRelatedItem: FHIRElement
{	
	/*! caused-by | because-of */
	var type: String?
	
	/*! The related item - e.g. a procedure */
	var target: FHIRElement? {
		get { return resolveReference("target") }
		set {
			if newValue {
				didSetReference(newValue!, name: "target")
			}
		}
	}
	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["target"] as? NSDictionary {
				self.target = ResourceReference(json: val)
			}
		}
	}
}

