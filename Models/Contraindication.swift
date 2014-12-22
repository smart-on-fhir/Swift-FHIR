//
//  Contraindication.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (contraindication.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Clinical issue with action.
 *
 *  Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for
 *  a patient.  E.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
 */
public class Contraindication: FHIRResource
{
	override public class var resourceName: String {
		get { return "Contraindication" }
	}
	
	/// Who found issue?
	public var author: Reference?
	
	/// E.g. Drug-drug, duplicate therapy, etc.
	public var category: CodeableConcept?
	
	/// When identified
	public var date: NSDate?
	
	/// Description and context
	public var detail: String?
	
	/// Unique id for the contraindication
	public var identifier: Identifier?
	
	/// Problem resource
	public var implicated: [Reference]?
	
	/// Step taken to address
	public var mitigation: [ContraindicationMitigation]?
	
	/// Associated patient
	public var patient: Reference?
	
	/// Authority for issue
	public var reference: NSURL?
	
	/// high | medium | low
	public var severity: String?
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? NSDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["category"] as? NSDictionary {
				self.category = CodeableConcept(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["detail"] as? String {
				self.detail = val
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["implicated"] as? [NSDictionary] {
				self.implicated = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["mitigation"] as? [NSDictionary] {
				self.mitigation = ContraindicationMitigation.from(val, owner: self) as? [ContraindicationMitigation]
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["reference"] as? String {
				self.reference = NSURL(json: val)
			}
			if let val = js["severity"] as? String {
				self.severity = val
			}
		}
	}
}


/**
 *  Step taken to address.
 *
 *  Indicates an action that has been taken or is committed to to reduce or eliminate the likelihood of the risk
 *  identified by the contraindicaiton from manifesting.  Can also reflect an observation of known mitigating factors
 *  that may reduce/eliminate the need for any action.
 */
public class ContraindicationMitigation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ContraindicationMitigation" }
	}
	
	/// What mitigation?
	public var action: CodeableConcept?
	
	/// Who is committing?
	public var author: Reference?
	
	/// Date committed
	public var date: NSDate?
	
	public convenience init(action: CodeableConcept?) {
		self.init(json: nil)
		if nil != action {
			self.action = action
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["action"] as? NSDictionary {
				self.action = CodeableConcept(json: val, owner: self)
			}
			if let val = js["author"] as? NSDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
		}
	}
}

