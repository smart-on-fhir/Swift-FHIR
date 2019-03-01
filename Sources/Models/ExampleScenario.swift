//
//  ExampleScenario.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/ExampleScenario) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
Example of workflow instance.
*/
open class ExampleScenario: DomainResource {
	override open class var resourceType: String {
		get { return "ExampleScenario" }
	}
	
	/// Actor participating in the resource.
	public var actor: [ExampleScenarioActor]?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: FHIRString?
	
	/// Date last changed.
	public var date: DateTime?
	
	/// For testing purposes, not real usage.
	public var experimental: FHIRBool?
	
	/// Additional identifier for the example scenario.
	public var identifier: [Identifier]?
	
	/// Each resource and each version that is present in the workflow.
	public var instance: [ExampleScenarioInstance]?
	
	/// Intended jurisdiction for example scenario (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// Name for this example scenario (computer friendly).
	public var name: FHIRString?
	
	/// Each major process - a group of operations.
	public var process: [ExampleScenarioProcess]?
	
	/// Name of the publisher (organization or individual).
	public var publisher: FHIRString?
	
	/// The purpose of the example, e.g. to illustrate a scenario.
	public var purpose: FHIRString?
	
	/// The status of this example scenario. Enables tracking the life-cycle of the content.
	public var status: PublicationStatus?
	
	/// Canonical identifier for this example scenario, represented as a URI (globally unique).
	public var url: FHIRURL?
	
	/// The context that the content is intended to support.
	public var useContext: [UsageContext]?
	
	/// Business version of the example scenario.
	public var version: FHIRString?
	
	/// Another nested workflow.
	public var workflow: [FHIRURL]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: PublicationStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actor = createInstances(of: ExampleScenarioActor.self, for: "actor", in: json, context: &instCtx, owner: self) ?? actor
		contact = createInstances(of: ContactDetail.self, for: "contact", in: json, context: &instCtx, owner: self) ?? contact
		copyright = createInstance(type: FHIRString.self, for: "copyright", in: json, context: &instCtx, owner: self) ?? copyright
		date = createInstance(type: DateTime.self, for: "date", in: json, context: &instCtx, owner: self) ?? date
		experimental = createInstance(type: FHIRBool.self, for: "experimental", in: json, context: &instCtx, owner: self) ?? experimental
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		instance = createInstances(of: ExampleScenarioInstance.self, for: "instance", in: json, context: &instCtx, owner: self) ?? instance
		jurisdiction = createInstances(of: CodeableConcept.self, for: "jurisdiction", in: json, context: &instCtx, owner: self) ?? jurisdiction
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		process = createInstances(of: ExampleScenarioProcess.self, for: "process", in: json, context: &instCtx, owner: self) ?? process
		publisher = createInstance(type: FHIRString.self, for: "publisher", in: json, context: &instCtx, owner: self) ?? publisher
		purpose = createInstance(type: FHIRString.self, for: "purpose", in: json, context: &instCtx, owner: self) ?? purpose
		status = createEnum(type: PublicationStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		url = createInstance(type: FHIRURL.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		useContext = createInstances(of: UsageContext.self, for: "useContext", in: json, context: &instCtx, owner: self) ?? useContext
		version = createInstance(type: FHIRString.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
		workflow = createInstances(of: FHIRURL.self, for: "workflow", in: json, context: &instCtx, owner: self) ?? workflow
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "actor", using: self.actor, errors: &errors)
		arrayDecorate(json: &json, withKey: "contact", using: self.contact, errors: &errors)
		self.copyright?.decorate(json: &json, withKey: "copyright", errors: &errors)
		self.date?.decorate(json: &json, withKey: "date", errors: &errors)
		self.experimental?.decorate(json: &json, withKey: "experimental", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		arrayDecorate(json: &json, withKey: "instance", using: self.instance, errors: &errors)
		arrayDecorate(json: &json, withKey: "jurisdiction", using: self.jurisdiction, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		arrayDecorate(json: &json, withKey: "process", using: self.process, errors: &errors)
		self.publisher?.decorate(json: &json, withKey: "publisher", errors: &errors)
		self.purpose?.decorate(json: &json, withKey: "purpose", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		arrayDecorate(json: &json, withKey: "useContext", using: self.useContext, errors: &errors)
		self.version?.decorate(json: &json, withKey: "version", errors: &errors)
		arrayDecorate(json: &json, withKey: "workflow", using: self.workflow, errors: &errors)
	}
}


/**
Actor participating in the resource.
*/
open class ExampleScenarioActor: BackboneElement {
	override open class var resourceType: String {
		get { return "ExampleScenarioActor" }
	}
	
	/// ID or acronym of the actor.
	public var actorId: FHIRString?
	
	/// The description of the actor.
	public var description_fhir: FHIRString?
	
	/// The name of the actor as shown in the page.
	public var name: FHIRString?
	
	/// The type of actor - person or system.
	public var type: ExampleScenarioActorType?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(actorId: FHIRString, type: ExampleScenarioActorType) {
		self.init()
		self.actorId = actorId
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		actorId = createInstance(type: FHIRString.self, for: "actorId", in: json, context: &instCtx, owner: self) ?? actorId
		if nil == actorId && !instCtx.containsKey("actorId") {
			instCtx.addError(FHIRValidationError(missing: "actorId"))
		}
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		type = createEnum(type: ExampleScenarioActorType.self, for: "type", in: json, context: &instCtx) ?? type
		if nil == type && !instCtx.containsKey("type") {
			instCtx.addError(FHIRValidationError(missing: "type"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.actorId?.decorate(json: &json, withKey: "actorId", errors: &errors)
		if nil == self.actorId {
			errors.append(FHIRValidationError(missing: "actorId"))
		}
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
		if nil == self.type {
			errors.append(FHIRValidationError(missing: "type"))
		}
	}
}


/**
Each resource and each version that is present in the workflow.
*/
open class ExampleScenarioInstance: BackboneElement {
	override open class var resourceType: String {
		get { return "ExampleScenarioInstance" }
	}
	
	/// Resources contained in the instance.
	public var containedInstance: [ExampleScenarioInstanceContainedInstance]?
	
	/// Human-friendly description of the resource instance.
	public var description_fhir: FHIRString?
	
	/// A short name for the resource instance.
	public var name: FHIRString?
	
	/// The id of the resource for referencing.
	public var resourceId: FHIRString?
	
	/// None
	public var resourceType: ResourceType?
	
	/// A specific version of the resource.
	public var version: [ExampleScenarioInstanceVersion]?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resourceId: FHIRString, resourceType: ResourceType) {
		self.init()
		self.resourceId = resourceId
		self.resourceType = resourceType
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		containedInstance = createInstances(of: ExampleScenarioInstanceContainedInstance.self, for: "containedInstance", in: json, context: &instCtx, owner: self) ?? containedInstance
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		resourceId = createInstance(type: FHIRString.self, for: "resourceId", in: json, context: &instCtx, owner: self) ?? resourceId
		if nil == resourceId && !instCtx.containsKey("resourceId") {
			instCtx.addError(FHIRValidationError(missing: "resourceId"))
		}
		resourceType = createEnum(type: ResourceType.self, for: "resourceType", in: json, context: &instCtx) ?? resourceType
		if nil == resourceType && !instCtx.containsKey("resourceType") {
			instCtx.addError(FHIRValidationError(missing: "resourceType"))
		}
		version = createInstances(of: ExampleScenarioInstanceVersion.self, for: "version", in: json, context: &instCtx, owner: self) ?? version
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "containedInstance", using: self.containedInstance, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.resourceId?.decorate(json: &json, withKey: "resourceId", errors: &errors)
		if nil == self.resourceId {
			errors.append(FHIRValidationError(missing: "resourceId"))
		}
		self.resourceType?.decorate(json: &json, withKey: "resourceType", errors: &errors)
		if nil == self.resourceType {
			errors.append(FHIRValidationError(missing: "resourceType"))
		}
		arrayDecorate(json: &json, withKey: "version", using: self.version, errors: &errors)
	}
}


/**
Resources contained in the instance.

Resources contained in the instance (e.g. the observations contained in a bundle).
*/
open class ExampleScenarioInstanceContainedInstance: BackboneElement {
	override open class var resourceType: String {
		get { return "ExampleScenarioInstanceContainedInstance" }
	}
	
	/// Each resource contained in the instance.
	public var resourceId: FHIRString?
	
	/// A specific version of a resource contained in the instance.
	public var versionId: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(resourceId: FHIRString) {
		self.init()
		self.resourceId = resourceId
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		resourceId = createInstance(type: FHIRString.self, for: "resourceId", in: json, context: &instCtx, owner: self) ?? resourceId
		if nil == resourceId && !instCtx.containsKey("resourceId") {
			instCtx.addError(FHIRValidationError(missing: "resourceId"))
		}
		versionId = createInstance(type: FHIRString.self, for: "versionId", in: json, context: &instCtx, owner: self) ?? versionId
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.resourceId?.decorate(json: &json, withKey: "resourceId", errors: &errors)
		if nil == self.resourceId {
			errors.append(FHIRValidationError(missing: "resourceId"))
		}
		self.versionId?.decorate(json: &json, withKey: "versionId", errors: &errors)
	}
}


/**
A specific version of the resource.
*/
open class ExampleScenarioInstanceVersion: BackboneElement {
	override open class var resourceType: String {
		get { return "ExampleScenarioInstanceVersion" }
	}
	
	/// The description of the resource version.
	public var description_fhir: FHIRString?
	
	/// The identifier of a specific version of a resource.
	public var versionId: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: FHIRString, versionId: FHIRString) {
		self.init()
		self.description_fhir = description_fhir
		self.versionId = versionId
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		if nil == description_fhir && !instCtx.containsKey("description") {
			instCtx.addError(FHIRValidationError(missing: "description"))
		}
		versionId = createInstance(type: FHIRString.self, for: "versionId", in: json, context: &instCtx, owner: self) ?? versionId
		if nil == versionId && !instCtx.containsKey("versionId") {
			instCtx.addError(FHIRValidationError(missing: "versionId"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		if nil == self.description_fhir {
			errors.append(FHIRValidationError(missing: "description"))
		}
		self.versionId?.decorate(json: &json, withKey: "versionId", errors: &errors)
		if nil == self.versionId {
			errors.append(FHIRValidationError(missing: "versionId"))
		}
	}
}


/**
Each major process - a group of operations.
*/
open class ExampleScenarioProcess: BackboneElement {
	override open class var resourceType: String {
		get { return "ExampleScenarioProcess" }
	}
	
	/// A longer description of the group of operations.
	public var description_fhir: FHIRString?
	
	/// Description of final status after the process ends.
	public var postConditions: FHIRString?
	
	/// Description of initial status before the process starts.
	public var preConditions: FHIRString?
	
	/// Each step of the process.
	public var step: [ExampleScenarioProcessStep]?
	
	/// The diagram title of the group of operations.
	public var title: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(title: FHIRString) {
		self.init()
		self.title = title
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		postConditions = createInstance(type: FHIRString.self, for: "postConditions", in: json, context: &instCtx, owner: self) ?? postConditions
		preConditions = createInstance(type: FHIRString.self, for: "preConditions", in: json, context: &instCtx, owner: self) ?? preConditions
		step = createInstances(of: ExampleScenarioProcessStep.self, for: "step", in: json, context: &instCtx, owner: self) ?? step
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		if nil == title && !instCtx.containsKey("title") {
			instCtx.addError(FHIRValidationError(missing: "title"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.postConditions?.decorate(json: &json, withKey: "postConditions", errors: &errors)
		self.preConditions?.decorate(json: &json, withKey: "preConditions", errors: &errors)
		arrayDecorate(json: &json, withKey: "step", using: self.step, errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		if nil == self.title {
			errors.append(FHIRValidationError(missing: "title"))
		}
	}
}


/**
Each step of the process.
*/
open class ExampleScenarioProcessStep: BackboneElement {
	override open class var resourceType: String {
		get { return "ExampleScenarioProcessStep" }
	}
	
	/// Alternate non-typical step action.
	public var alternative: [ExampleScenarioProcessStepAlternative]?
	
	/// Each interaction or action.
	public var operation: ExampleScenarioProcessStepOperation?
	
	/// If there is a pause in the flow.
	public var pause: FHIRBool?
	
	/// Nested process.
	public var process: [ExampleScenarioProcess]?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		alternative = createInstances(of: ExampleScenarioProcessStepAlternative.self, for: "alternative", in: json, context: &instCtx, owner: self) ?? alternative
		operation = createInstance(type: ExampleScenarioProcessStepOperation.self, for: "operation", in: json, context: &instCtx, owner: self) ?? operation
		pause = createInstance(type: FHIRBool.self, for: "pause", in: json, context: &instCtx, owner: self) ?? pause
		process = createInstances(of: ExampleScenarioProcess.self, for: "process", in: json, context: &instCtx, owner: self) ?? process
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "alternative", using: self.alternative, errors: &errors)
		self.operation?.decorate(json: &json, withKey: "operation", errors: &errors)
		self.pause?.decorate(json: &json, withKey: "pause", errors: &errors)
		arrayDecorate(json: &json, withKey: "process", using: self.process, errors: &errors)
	}
}


/**
Alternate non-typical step action.

Indicates an alternative step that can be taken instead of the operations on the base step in exceptional/atypical
circumstances.
*/
open class ExampleScenarioProcessStepAlternative: BackboneElement {
	override open class var resourceType: String {
		get { return "ExampleScenarioProcessStepAlternative" }
	}
	
	/// A human-readable description of each option.
	public var description_fhir: FHIRString?
	
	/// What happens in each alternative option.
	public var step: [ExampleScenarioProcessStep]?
	
	/// Label for alternative.
	public var title: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(title: FHIRString) {
		self.init()
		self.title = title
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		step = createInstances(of: ExampleScenarioProcessStep.self, for: "step", in: json, context: &instCtx, owner: self) ?? step
		title = createInstance(type: FHIRString.self, for: "title", in: json, context: &instCtx, owner: self) ?? title
		if nil == title && !instCtx.containsKey("title") {
			instCtx.addError(FHIRValidationError(missing: "title"))
		}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "step", using: self.step, errors: &errors)
		self.title?.decorate(json: &json, withKey: "title", errors: &errors)
		if nil == self.title {
			errors.append(FHIRValidationError(missing: "title"))
		}
	}
}


/**
Each interaction or action.
*/
open class ExampleScenarioProcessStepOperation: BackboneElement {
	override open class var resourceType: String {
		get { return "ExampleScenarioProcessStepOperation" }
	}
	
	/// A comment to be inserted in the diagram.
	public var description_fhir: FHIRString?
	
	/// Who starts the transaction.
	public var initiator: FHIRString?
	
	/// Whether the initiator is deactivated right after the transaction.
	public var initiatorActive: FHIRBool?
	
	/// The human-friendly name of the interaction.
	public var name: FHIRString?
	
	/// The sequential number of the interaction.
	public var number: FHIRString?
	
	/// Who receives the transaction.
	public var receiver: FHIRString?
	
	/// Whether the receiver is deactivated right after the transaction.
	public var receiverActive: FHIRBool?
	
	/// Each resource instance used by the initiator.
	public var request: ExampleScenarioInstanceContainedInstance?
	
	/// Each resource instance used by the responder.
	public var response: ExampleScenarioInstanceContainedInstance?
	
	/// The type of operation - CRUD.
	public var type: FHIRString?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(number: FHIRString) {
		self.init()
		self.number = number
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		initiator = createInstance(type: FHIRString.self, for: "initiator", in: json, context: &instCtx, owner: self) ?? initiator
		initiatorActive = createInstance(type: FHIRBool.self, for: "initiatorActive", in: json, context: &instCtx, owner: self) ?? initiatorActive
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		number = createInstance(type: FHIRString.self, for: "number", in: json, context: &instCtx, owner: self) ?? number
		if nil == number && !instCtx.containsKey("number") {
			instCtx.addError(FHIRValidationError(missing: "number"))
		}
		receiver = createInstance(type: FHIRString.self, for: "receiver", in: json, context: &instCtx, owner: self) ?? receiver
		receiverActive = createInstance(type: FHIRBool.self, for: "receiverActive", in: json, context: &instCtx, owner: self) ?? receiverActive
		request = createInstance(type: ExampleScenarioInstanceContainedInstance.self, for: "request", in: json, context: &instCtx, owner: self) ?? request
		response = createInstance(type: ExampleScenarioInstanceContainedInstance.self, for: "response", in: json, context: &instCtx, owner: self) ?? response
		type = createInstance(type: FHIRString.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		self.initiator?.decorate(json: &json, withKey: "initiator", errors: &errors)
		self.initiatorActive?.decorate(json: &json, withKey: "initiatorActive", errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.number?.decorate(json: &json, withKey: "number", errors: &errors)
		if nil == self.number {
			errors.append(FHIRValidationError(missing: "number"))
		}
		self.receiver?.decorate(json: &json, withKey: "receiver", errors: &errors)
		self.receiverActive?.decorate(json: &json, withKey: "receiverActive", errors: &errors)
		self.request?.decorate(json: &json, withKey: "request", errors: &errors)
		self.response?.decorate(json: &json, withKey: "response", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}

