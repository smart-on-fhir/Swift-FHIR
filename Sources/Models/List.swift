//
//  List.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 (http://hl7.org/fhir/StructureDefinition/List) on 2017-03-22.
//  2017, SMART Health IT.
//

import Foundation


/**
Information summarized from a list of other resources.

A set of information summarized from a list of other resources.
*/
open class List: DomainResource {
	override open class var resourceType: String {
		get { return "List" }
	}
	
	/// What the purpose of this list is.
	public var code: CodeableConcept?
	
	/// When the list was prepared.
	public var date: DateTime?
	
	/// Why list is empty.
	public var emptyReason: CodeableConcept?
	
	/// Context in which list created.
	public var encounter: Reference?
	
	/// Entries in the list.
	public var entry: [ListEntry]?
	
	/// Business identifier.
	public var identifier: [Identifier]?
	
	/// How this list was prepared - whether it is a working list that is suitable for being maintained on an ongoing
	/// basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list
	/// where items may be marked as added, modified or deleted.
	public var mode: ListMode?
	
	/// Comments about the list.
	public var note: [Annotation]?
	
	/// What order the list has.
	public var orderedBy: CodeableConcept?
	
	/// Who and/or what defined the list contents (aka Author).
	public var source: Reference?
	
	/// Indicates the current state of this list.
	public var status: ListStatus?
	
	/// If all resources have the same subject.
	public var subject: Reference?
	
	/// Descriptive name for the list.
	public var title: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: ListMode, status: ListStatus) {
		self.init()
		self.mode = mode
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		code = createInstance(type: CodeableConcept.self, for: "code", in: json, context: &instCtx, owner: self) ?? code
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		emptyReason = createInstance(type: CodeableConcept.self, for: "emptyReason", in: json, context: &instCtx, owner: self) ?? emptyReason
		encounter = createInstance(type: Reference.self, for: "encounter", in: json, context: &instCtx, owner: self) ?? encounter
		entry = createInstances(of: ListEntry.self, for: "entry", in: json, context: &instCtx, owner: self) ?? entry
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		mode = createEnum(type: ListMode.self, for: "mode", in: json, context: &instCtx) ?? mode
		if nil == mode && !instCtx.containsKey("mode") {
			instCtx.addError(FHIRValidationError(missing: "mode"))
		}
		note = createInstances(of: Annotation.self, for: "note", in: json, context: &instCtx, owner: self) ?? note
		orderedBy = createInstance(type: CodeableConcept.self, for: "orderedBy", in: json, context: &instCtx, owner: self) ?? orderedBy
		source = createInstance(type: Reference.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		status = createEnum(type: ListStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.code?.decorate(json: &json, withKey: "code", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.emptyReason?.decorate(json: &json, withKey: "emptyReason", errors: &errors)
		self.encounter?.decorate(json: &json, withKey: "encounter", errors: &errors)
		arrayDecorate(json: &json, withKey: "entry", using: self.entry, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.mode?.decorate(json: &json, withKey: "mode", errors: &errors)
		if nil == self.mode {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		arrayDecorate(json: &json, withKey: "note", using: self.note, errors: &errors)
		self.orderedBy?.decorate(json: &json, withKey: "orderedBy", errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
	}
}


/**
Entries in the list.

Entries in this list.
*/
open class ListEntry: BackboneElement {
	override open class var resourceType: String {
		get { return "ListEntry" }
	}
	
	/// When item added to list.
	public var date: DateTime?
	
	/// If this item is actually marked as deleted.
	public var deleted: FHIRBool?
	
	/// Status/Workflow information about this item.
	public var flag: CodeableConcept?
	
	/// Actual entry.
	public var item: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(item: Reference) {
		self.init()
		self.item = item
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		deleted = createInstance(type: FHIRBool.self, for: "deleted", in: json, context: &instCtx, owner: self) ?? deleted
		flag = createInstance(type: CodeableConcept.self, for: "flag", in: json, context: &instCtx, owner: self) ?? flag
		item = createInstance(type: Reference.self, for: "item", in: json, context: &instCtx, owner: self) ?? item
		if nil == item && !instCtx.containsKey("item") {
			instCtx.addError(FHIRValidationError(missing: "item"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.deleted?.decorate(json: &json, withKey: "deleted", errors: &errors)
		self.flag?.decorate(json: &json, withKey: "flag", errors: &errors)
		self.item?.decorate(json: &json, withKey: "item", errors: &errors)
		if nil == self.item {
			errors.append(FHIRValidationError(missing: "item"))
		}
	}
}

