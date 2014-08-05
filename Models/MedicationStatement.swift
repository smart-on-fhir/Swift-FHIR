//
//  MedicationStatement.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  Scope and Usage Common usage includes:
 *  
 *  * the recording of non-prescription and/or recreational drugs
 *  * the recording of an intake medication list upon admission to hospital
 *  * the summarization of a patient's "active medications" in a patient profile
 */
public class MedicationStatement: FHIRResource
{
	override public class var resourceName: String {
		get { return "MedicationStatement" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** External Identifier */
	public var identifier: [Identifier]?
	
	/** Who was/is taking medication */
	public var patient: FHIRElement? {
		get { return resolveReference("patient") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "patient")
			}
		}
	}
	
	/** True if medication is/was not being taken */
	public var wasNotGiven: Bool?
	
	/** True if asserting medication was not given */
	public var reasonNotGiven: [CodeableConcept]?
	
	/** Over what period was medication consumed? */
	public var whenGiven: Period?
	
	/** What medication was taken? */
	public var medication: FHIRElement? {
		get { return resolveReference("medication") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "medication")
			}
		}
	}
	
	/** E.g. infusion pump */
	public var device: [FHIRElement]? {
		get { return resolveReferences("device") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "device")
			}
		}
	}
	
	/** Details of how medication was taken */
	public var dosage: [MedicationStatementDosage]?
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = ResourceReference(json: val)
			}
			if let val = js["wasNotGiven"] as? Int {
				self.wasNotGiven = (1 == val)
			}
			if let val = js["reasonNotGiven"] as? [NSDictionary] {
				self.reasonNotGiven = CodeableConcept.from(val) as? [CodeableConcept]
			}
			if let val = js["whenGiven"] as? NSDictionary {
				self.whenGiven = Period(json: val)
			}
			if let val = js["medication"] as? NSDictionary {
				self.medication = ResourceReference(json: val)
			}
			if let val = js["device"] as? [NSDictionary] {
				self.device = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["dosage"] as? [NSDictionary] {
				self.dosage = MedicationStatementDosage.from(val) as? [MedicationStatementDosage]
			}
		}
	}
}


/**
 *  Details of how medication was taken.
 *
 *  Indicates how the medication is/was used by the patient.
 */
public class MedicationStatementDosage: FHIRElement
{	
	/** When/how often was medication taken? */
	public var timing: Schedule?
	
	/** Take "as needed" f(or x) */
	public var asNeededBoolean: Bool?
	
	/** Take "as needed" f(or x) */
	public var asNeededCodeableConcept: CodeableConcept?
	
	/** Where on body was medication administered? */
	public var site: CodeableConcept?
	
	/** How did the medication enter the body? */
	public var route: CodeableConcept?
	
	/** Technique used to administer medication */
	public var method: CodeableConcept?
	
	/** Amount administered in one dose */
	public var quantity: Quantity?
	
	/** Dose quantity per unit of time */
	public var rate: Ratio?
	
	/** Maximum dose that was consumed per unit of time */
	public var maxDosePerPeriod: Ratio?
	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["timing"] as? NSDictionary {
				self.timing = Schedule(json: val)
			}
			if let val = js["asNeededBoolean"] as? Int {
				self.asNeededBoolean = (1 == val)
			}
			if let val = js["asNeededCodeableConcept"] as? NSDictionary {
				self.asNeededCodeableConcept = CodeableConcept(json: val)
			}
			if let val = js["site"] as? NSDictionary {
				self.site = CodeableConcept(json: val)
			}
			if let val = js["route"] as? NSDictionary {
				self.route = CodeableConcept(json: val)
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val)
			}
			if let val = js["quantity"] as? NSDictionary {
				self.quantity = Quantity(json: val)
			}
			if let val = js["rate"] as? NSDictionary {
				self.rate = Ratio(json: val)
			}
			if let val = js["maxDosePerPeriod"] as? NSDictionary {
				self.maxDosePerPeriod = Ratio(json: val)
			}
		}
	}
}

