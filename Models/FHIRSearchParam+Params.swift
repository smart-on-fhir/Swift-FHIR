//
//  FHIRSearchParam+Properties.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-16.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//


/*!
 *  This extension defines convenience methods in order to be able to compose search queries
 *  in an object-oriented way.
 */
extension FHIRSearchParam
{
	func _id(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "_id", token: token)
		p.previous = self
		return p
	}
	
	func _id(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "_id", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func _language(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "_language", token: token)
		p.previous = self
		return p
	}
	
	func _language(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "_language", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func accession(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "accession", token: token)
		p.supportedProfiles = [
			"ImagingStudy"
		]
		p.previous = self
		return p
	}
	
	func accession(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "accession", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func accession(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "accession", missing: missing)
		p.previous = self
		return p
	}
	
	func action(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "action", token: token)
		p.supportedProfiles = [
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func action(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "action", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func action(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "action", missing: missing)
		p.previous = self
		return p
	}
	
	func active(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "active", token: token)
		p.supportedProfiles = [
			"Organization",
			"Patient"
		]
		p.previous = self
		return p
	}
	
	func active(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "active", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func active(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "active", missing: missing)
		p.previous = self
		return p
	}
	
	func activitycode(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "activitycode", token: token)
		p.supportedProfiles = [
			"CarePlan"
		]
		p.previous = self
		return p
	}
	
	func activitycode(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "activitycode", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func activitycode(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "activitycode", missing: missing)
		p.previous = self
		return p
	}
	
	func activitydate(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "activitydate", date: date)
		p.supportedProfiles = [
			"CarePlan"
		]
		p.previous = self
		return p
	}
	
	func activitydate(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "activitydate", missing: missing)
		p.previous = self
		return p
	}
	
	func activitydetail(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "activitydetail", reference: reference)
		p.supportedProfiles = [
			"CarePlan"
		]
		p.previous = self
		return p
	}
	
	func activitydetail(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "activitydetail", missing: missing)
		p.previous = self
		return p
	}
	
	func actor(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "actor", reference: reference)
		p.supportedProfiles = [
			"DiagnosticOrder"
		]
		p.previous = self
		return p
	}
	
	func actor(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "actor", missing: missing)
		p.previous = self
		return p
	}
	
	func actual(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "actual", token: token)
		p.supportedProfiles = [
			"Group"
		]
		p.previous = self
		return p
	}
	
	func actual(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "actual", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func actual(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "actual", missing: missing)
		p.previous = self
		return p
	}
	
	func address(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "address", string: string)
		p.supportedProfiles = [
			"Location",
			"Patient",
			"Practitioner",
			"RelatedPerson",
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func address(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "address", exact: exact)
		p.previous = self
		return p
	}
	
	func address(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "address", missing: missing)
		p.previous = self
		return p
	}
	
	func address(# token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "address", token: token)
		p.supportedProfiles = [
			"Location",
			"Patient",
			"Practitioner",
			"RelatedPerson",
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func address(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "address", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func altid(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "altid", token: token)
		p.supportedProfiles = [
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func altid(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "altid", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func altid(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "altid", missing: missing)
		p.previous = self
		return p
	}
	
	func animalBreed(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "animal-breed", token: token)
		p.supportedProfiles = [
			"Patient"
		]
		p.previous = self
		return p
	}
	
	func animalBreed(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "animal-breed", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func animalBreed(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "animal-breed", missing: missing)
		p.previous = self
		return p
	}
	
	func animalSpecies(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "animal-species", token: token)
		p.supportedProfiles = [
			"Patient"
		]
		p.previous = self
		return p
	}
	
	func animalSpecies(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "animal-species", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func animalSpecies(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "animal-species", missing: missing)
		p.previous = self
		return p
	}
	
	func asserter(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "asserter", reference: reference)
		p.supportedProfiles = [
			"Condition"
		]
		p.previous = self
		return p
	}
	
	func asserter(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "asserter", missing: missing)
		p.previous = self
		return p
	}
	
	func attester(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "attester", reference: reference)
		p.supportedProfiles = [
			"Composition"
		]
		p.previous = self
		return p
	}
	
	func attester(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "attester", missing: missing)
		p.previous = self
		return p
	}
	
	func authenticator(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "authenticator", reference: reference)
		p.supportedProfiles = [
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func authenticator(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "authenticator", missing: missing)
		p.previous = self
		return p
	}
	
	func authored(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "authored", date: date)
		p.supportedProfiles = [
			"Questionnaire"
		]
		p.previous = self
		return p
	}
	
	func authored(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "authored", missing: missing)
		p.previous = self
		return p
	}
	
	func authority(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "authority", reference: reference)
		p.supportedProfiles = [
			"Order"
		]
		p.previous = self
		return p
	}
	
	func authority(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "authority", missing: missing)
		p.previous = self
		return p
	}
	
	func author(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "author", reference: reference)
		p.supportedProfiles = [
			"Composition",
			"DocumentManifest",
			"DocumentReference",
			"Questionnaire"
		]
		p.previous = self
		return p
	}
	
	func author(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "author", missing: missing)
		p.previous = self
		return p
	}
	
	func birthdate(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "birthdate", date: date)
		p.supportedProfiles = [
			"Patient"
		]
		p.previous = self
		return p
	}
	
	func birthdate(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "birthdate", missing: missing)
		p.previous = self
		return p
	}
	
	func bodysite(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "bodysite", token: token)
		p.supportedProfiles = [
			"DiagnosticOrder",
			"ImagingStudy"
		]
		p.previous = self
		return p
	}
	
	func bodysite(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "bodysite", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func bodysite(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "bodysite", missing: missing)
		p.previous = self
		return p
	}
	
	func category(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "category", token: token)
		p.supportedProfiles = [
			"Condition"
		]
		p.previous = self
		return p
	}
	
	func category(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "category", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func category(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "category", missing: missing)
		p.previous = self
		return p
	}
	
	func channel(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "channel", token: token)
		p.supportedProfiles = [
			"DeviceObservationReport"
		]
		p.previous = self
		return p
	}
	
	func channel(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "channel", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func channel(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "channel", missing: missing)
		p.previous = self
		return p
	}
	
	func characteristicValue(composite: [String: String]) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "characteristic-value", composite: composite)
		p.supportedProfiles = [
			"Group"
		]
		p.previous = self
		return p
	}
	
	func characteristicValue(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "characteristic-value", missing: missing)
		p.previous = self
		return p
	}
	
	func characteristic(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "characteristic", token: token)
		p.supportedProfiles = [
			"Group"
		]
		p.previous = self
		return p
	}
	
	func characteristic(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "characteristic", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func characteristic(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "characteristic", missing: missing)
		p.previous = self
		return p
	}
	
	func klass(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "class", token: token)
		p.previous = self
		return p
	}
	
	func klass(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "class", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func klass(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "class", missing: missing)
		p.previous = self
		return p
	}
	
	func code(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "code", token: token)
		p.supportedProfiles = [
			"Condition",
			"DeviceObservationReport",
			"DiagnosticOrder",
			"Group",
			"List",
			"Medication",
			"OrderResponse",
			"Other",
			"Profile",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func code(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "code", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func code(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "code", missing: missing)
		p.previous = self
		return p
	}
	
	func condition(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "condition", reference: reference)
		p.supportedProfiles = [
			"CarePlan"
		]
		p.previous = self
		return p
	}
	
	func condition(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "condition", missing: missing)
		p.previous = self
		return p
	}
	
	func confidentiality(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "confidentiality", token: token)
		p.supportedProfiles = [
			"DocumentManifest",
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func confidentiality(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "confidentiality", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func confidentiality(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "confidentiality", missing: missing)
		p.previous = self
		return p
	}
	
	func container(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "container", token: token)
		p.supportedProfiles = [
			"Medication"
		]
		p.previous = self
		return p
	}
	
	func container(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "container", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func container(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "container", missing: missing)
		p.previous = self
		return p
	}
	
	func content(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "content", reference: reference)
		p.supportedProfiles = [
			"DocumentManifest",
			"Medication"
		]
		p.previous = self
		return p
	}
	
	func content(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "content", missing: missing)
		p.previous = self
		return p
	}
	
	func context(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "context", token: token)
		p.supportedProfiles = [
			"Composition"
		]
		p.previous = self
		return p
	}
	
	func context(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "context", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func context(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "context", missing: missing)
		p.previous = self
		return p
	}
	
	func created(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "created", date: date)
		p.supportedProfiles = [
			"DocumentManifest",
			"DocumentReference",
			"Other"
		]
		p.previous = self
		return p
	}
	
	func created(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "created", missing: missing)
		p.previous = self
		return p
	}
	
	func custodian(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "custodian", reference: reference)
		p.supportedProfiles = [
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func custodian(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "custodian", missing: missing)
		p.previous = self
		return p
	}
	
	func dateAsserted(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "date-asserted", date: date)
		p.supportedProfiles = [
			"Condition"
		]
		p.previous = self
		return p
	}
	
	func dateAsserted(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "date-asserted", missing: missing)
		p.previous = self
		return p
	}
	
	func datewritten(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "datewritten", date: date)
		p.supportedProfiles = [
			"MedicationPrescription"
		]
		p.previous = self
		return p
	}
	
	func datewritten(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "datewritten", missing: missing)
		p.previous = self
		return p
	}
	
	func date(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "date", date: date)
		p.supportedProfiles = [
			"AdverseReaction",
			"AllergyIntolerance",
			"CarePlan",
			"Composition",
			"ConceptMap",
			"Conformance",
			"DiagnosticReport",
			"Encounter",
			"ImagingStudy",
			"Immunization",
			"ImmunizationRecommendation",
			"List",
			"Media",
			"Observation",
			"Order",
			"OrderResponse",
			"Procedure",
			"Profile",
			"SecurityEvent",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func date(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "date", missing: missing)
		p.previous = self
		return p
	}
	
	func dependson(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dependson", token: token)
		p.supportedProfiles = [
			"ConceptMap"
		]
		p.previous = self
		return p
	}
	
	func dependson(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dependson", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func dependson(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dependson", missing: missing)
		p.previous = self
		return p
	}
	
	func description(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "description", string: string)
		p.supportedProfiles = [
			"ConceptMap",
			"Conformance",
			"DocumentManifest",
			"DocumentReference",
			"Profile",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func description(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "description", exact: exact)
		p.previous = self
		return p
	}
	
	func description(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "description", missing: missing)
		p.previous = self
		return p
	}
	
	func desc(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "desc", string: string)
		p.supportedProfiles = [
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func desc(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "desc", exact: exact)
		p.previous = self
		return p
	}
	
	func desc(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "desc", missing: missing)
		p.previous = self
		return p
	}
	
	func destination(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "destination", reference: reference)
		p.supportedProfiles = [
			"MedicationDispense"
		]
		p.previous = self
		return p
	}
	
	func destination(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "destination", missing: missing)
		p.previous = self
		return p
	}
	
	func detail(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "detail", reference: reference)
		p.supportedProfiles = [
			"Order"
		]
		p.previous = self
		return p
	}
	
	func detail(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "detail", missing: missing)
		p.previous = self
		return p
	}
	
	func device(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "device", reference: reference)
		p.supportedProfiles = [
			"MedicationAdministration",
			"MedicationStatement"
		]
		p.previous = self
		return p
	}
	
	func device(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "device", missing: missing)
		p.previous = self
		return p
	}
	
	func diagnosis(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "diagnosis", token: token)
		p.supportedProfiles = [
			"DiagnosticReport"
		]
		p.previous = self
		return p
	}
	
	func diagnosis(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "diagnosis", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func diagnosis(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "diagnosis", missing: missing)
		p.previous = self
		return p
	}
	
	func dicomClass(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dicom-class", token: token)
		p.supportedProfiles = [
			"ImagingStudy"
		]
		p.previous = self
		return p
	}
	
	func dicomClass(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dicom-class", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func dicomClass(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dicom-class", missing: missing)
		p.previous = self
		return p
	}
	
	func dispenseid(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dispenseid", token: token)
		p.supportedProfiles = [
			"Supply"
		]
		p.previous = self
		return p
	}
	
	func dispenseid(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dispenseid", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func dispenseid(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dispenseid", missing: missing)
		p.previous = self
		return p
	}
	
	func dispenser(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dispenser", reference: reference)
		p.supportedProfiles = [
			"MedicationDispense"
		]
		p.previous = self
		return p
	}
	
	func dispenser(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dispenser", missing: missing)
		p.previous = self
		return p
	}
	
	func dispensestatus(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dispensestatus", token: token)
		p.supportedProfiles = [
			"Supply"
		]
		p.previous = self
		return p
	}
	
	func dispensestatus(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dispensestatus", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func dispensestatus(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dispensestatus", missing: missing)
		p.previous = self
		return p
	}
	
	func doseNumber(number: Float) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dose-number", number: number)
		p.supportedProfiles = [
			"ImmunizationRecommendation"
		]
		p.previous = self
		return p
	}
	
	func doseNumber(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dose-number", missing: missing)
		p.previous = self
		return p
	}
	
	func doseSequence(# number: Float) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dose-sequence", number: number)
		p.supportedProfiles = [
			"Immunization",
			"ImmunizationRecommendation"
		]
		p.previous = self
		return p
	}
	
	func doseSequence(# token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dose-sequence", token: token)
		p.supportedProfiles = [
			"Immunization",
			"ImmunizationRecommendation"
		]
		p.previous = self
		return p
	}
	
	func doseSequence(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "dose-sequence", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func emptyReason(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "empty-reason", token: token)
		p.supportedProfiles = [
			"List"
		]
		p.previous = self
		return p
	}
	
	func emptyReason(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "empty-reason", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func emptyReason(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "empty-reason", missing: missing)
		p.previous = self
		return p
	}
	
	func encounter(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "encounter", reference: reference)
		p.supportedProfiles = [
			"Condition",
			"DiagnosticOrder",
			"MedicationAdministration",
			"MedicationPrescription",
			"Questionnaire"
		]
		p.previous = self
		return p
	}
	
	func encounter(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "encounter", missing: missing)
		p.previous = self
		return p
	}
	
	func end(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "end", date: date)
		p.supportedProfiles = [
			"Provenance"
		]
		p.previous = self
		return p
	}
	
	func end(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "end", missing: missing)
		p.previous = self
		return p
	}
	
	func eventDate(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event-date", date: date)
		p.supportedProfiles = [
			"DiagnosticOrder"
		]
		p.previous = self
		return p
	}
	
	func eventDate(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event-date", missing: missing)
		p.previous = self
		return p
	}
	
	func eventStatusDate(composite: [String: String]) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event-status-date", composite: composite)
		p.supportedProfiles = [
			"DiagnosticOrder"
		]
		p.previous = self
		return p
	}
	
	func eventStatusDate(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event-status-date", missing: missing)
		p.previous = self
		return p
	}
	
	func eventStatus(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event-status", token: token)
		p.supportedProfiles = [
			"DiagnosticOrder"
		]
		p.previous = self
		return p
	}
	
	func eventStatus(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event-status", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func eventStatus(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event-status", missing: missing)
		p.previous = self
		return p
	}
	
	func event(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event", token: token)
		p.supportedProfiles = [
			"Conformance",
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func event(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func event(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "event", missing: missing)
		p.previous = self
		return p
	}
	
	func evidence(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "evidence", token: token)
		p.supportedProfiles = [
			"Condition"
		]
		p.previous = self
		return p
	}
	
	func evidence(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "evidence", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func evidence(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "evidence", missing: missing)
		p.previous = self
		return p
	}
	
	func exclude(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "exclude", token: token)
		p.supportedProfiles = [
			"Group"
		]
		p.previous = self
		return p
	}
	
	func exclude(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "exclude", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func exclude(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "exclude", missing: missing)
		p.previous = self
		return p
	}
	
	func expiry(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "expiry", date: date)
		p.supportedProfiles = [
			"Substance"
		]
		p.previous = self
		return p
	}
	
	func expiry(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "expiry", missing: missing)
		p.previous = self
		return p
	}
	
	func ext(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "extension", token: token)
		p.previous = self
		return p
	}
	
	func ext(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "extension", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func ext(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "extension", missing: missing)
		p.previous = self
		return p
	}
	
	func facility(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "facility", token: token)
		p.supportedProfiles = [
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func facility(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "facility", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func facility(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "facility", missing: missing)
		p.previous = self
		return p
	}
	
	func family(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "family", string: string)
		p.supportedProfiles = [
			"Patient",
			"Practitioner"
		]
		p.previous = self
		return p
	}
	
	func family(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "family", exact: exact)
		p.previous = self
		return p
	}
	
	func family(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "family", missing: missing)
		p.previous = self
		return p
	}
	
	func fhirversion(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "fhirversion", token: token)
		p.supportedProfiles = [
			"Conformance"
		]
		p.previous = self
		return p
	}
	
	func fhirversion(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "fhirversion", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func fhirversion(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "fhirversion", missing: missing)
		p.previous = self
		return p
	}
	
	func format(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "format", token: token)
		p.supportedProfiles = [
			"Conformance",
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func format(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "format", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func format(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "format", missing: missing)
		p.previous = self
		return p
	}
	
	func form(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "form", token: token)
		p.supportedProfiles = [
			"Medication"
		]
		p.previous = self
		return p
	}
	
	func form(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "form", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func form(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "form", missing: missing)
		p.previous = self
		return p
	}
	
	func fulfillment(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "fulfillment", reference: reference)
		p.supportedProfiles = [
			"OrderResponse"
		]
		p.previous = self
		return p
	}
	
	func fulfillment(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "fulfillment", missing: missing)
		p.previous = self
		return p
	}
	
	func gender(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "gender", token: token)
		p.supportedProfiles = [
			"Patient",
			"Practitioner",
			"RelatedPerson"
		]
		p.previous = self
		return p
	}
	
	func gender(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "gender", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func gender(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "gender", missing: missing)
		p.previous = self
		return p
	}
	
	func given(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "given", string: string)
		p.supportedProfiles = [
			"Patient",
			"Practitioner"
		]
		p.previous = self
		return p
	}
	
	func given(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "given", exact: exact)
		p.previous = self
		return p
	}
	
	func given(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "given", missing: missing)
		p.previous = self
		return p
	}
	
	func identifier(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "identifier", token: token)
		p.supportedProfiles = [
			"Composition",
			"ConceptMap",
			"Conformance",
			"Device",
			"DiagnosticOrder",
			"DiagnosticReport",
			"DocumentManifest",
			"DocumentReference",
			"Encounter",
			"Group",
			"Immunization",
			"ImmunizationRecommendation",
			"Location",
			"Media",
			"MedicationAdministration",
			"MedicationDispense",
			"MedicationPrescription",
			"MedicationStatement",
			"Organization",
			"Patient",
			"Practitioner",
			"Profile",
			"Query",
			"Questionnaire",
			"RelatedPerson",
			"Substance",
			"Supply",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func identifier(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "identifier", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func identifier(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "identifier", missing: missing)
		p.previous = self
		return p
	}
	
	func identity(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "identity", token: token)
		p.supportedProfiles = [
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func identity(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "identity", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func identity(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "identity", missing: missing)
		p.previous = self
		return p
	}
	
	func image(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "image", reference: reference)
		p.supportedProfiles = [
			"DiagnosticReport"
		]
		p.previous = self
		return p
	}
	
	func image(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "image", missing: missing)
		p.previous = self
		return p
	}
	
	func indexed(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "indexed", date: date)
		p.supportedProfiles = [
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func indexed(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "indexed", missing: missing)
		p.previous = self
		return p
	}
	
	func indication(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "indication", reference: reference)
		p.supportedProfiles = [
			"Encounter"
		]
		p.previous = self
		return p
	}
	
	func indication(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "indication", missing: missing)
		p.previous = self
		return p
	}
	
	func information(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "information", reference: reference)
		p.supportedProfiles = [
			"ImmunizationRecommendation"
		]
		p.previous = self
		return p
	}
	
	func information(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "information", missing: missing)
		p.previous = self
		return p
	}
	
	func ingredient(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "ingredient", reference: reference)
		p.supportedProfiles = [
			"Medication"
		]
		p.previous = self
		return p
	}
	
	func ingredient(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "ingredient", missing: missing)
		p.previous = self
		return p
	}
	
	func issued(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "issued", date: date)
		p.supportedProfiles = [
			"DiagnosticReport"
		]
		p.previous = self
		return p
	}
	
	func issued(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "issued", missing: missing)
		p.previous = self
		return p
	}
	
	func itemDate(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-date", date: date)
		p.supportedProfiles = [
			"DiagnosticOrder"
		]
		p.previous = self
		return p
	}
	
	func itemDate(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-date", missing: missing)
		p.previous = self
		return p
	}
	
	func itemPastStatus(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-past-status", token: token)
		p.supportedProfiles = [
			"DiagnosticOrder"
		]
		p.previous = self
		return p
	}
	
	func itemPastStatus(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-past-status", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func itemPastStatus(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-past-status", missing: missing)
		p.previous = self
		return p
	}
	
	func itemStatusDate(composite: [String: String]) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-status-date", composite: composite)
		p.supportedProfiles = [
			"DiagnosticOrder"
		]
		p.previous = self
		return p
	}
	
	func itemStatusDate(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-status-date", missing: missing)
		p.previous = self
		return p
	}
	
	func itemStatus(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-status", token: token)
		p.supportedProfiles = [
			"DiagnosticOrder"
		]
		p.previous = self
		return p
	}
	
	func itemStatus(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-status", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func itemStatus(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item-status", missing: missing)
		p.previous = self
		return p
	}
	
	func item(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item", reference: reference)
		p.supportedProfiles = [
			"List"
		]
		p.previous = self
		return p
	}
	
	func item(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "item", missing: missing)
		p.previous = self
		return p
	}
	
	func kind(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "kind", token: token)
		p.supportedProfiles = [
			"Supply"
		]
		p.previous = self
		return p
	}
	
	func kind(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "kind", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func kind(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "kind", missing: missing)
		p.previous = self
		return p
	}
	
	func language(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "language", token: token)
		p.supportedProfiles = [
			"DocumentReference",
			"Patient"
		]
		p.previous = self
		return p
	}
	
	func language(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "language", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func language(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "language", missing: missing)
		p.previous = self
		return p
	}
	
	func length(number: Float) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "length", number: number)
		p.supportedProfiles = [
			"Encounter"
		]
		p.previous = self
		return p
	}
	
	func length(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "length", missing: missing)
		p.previous = self
		return p
	}
	
	func link(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "link", reference: reference)
		p.supportedProfiles = [
			"Patient"
		]
		p.previous = self
		return p
	}
	
	func link(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "link", missing: missing)
		p.previous = self
		return p
	}
	
	func locationPeriod(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "location-period", date: date)
		p.supportedProfiles = [
			"Encounter"
		]
		p.previous = self
		return p
	}
	
	func locationPeriod(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "location-period", missing: missing)
		p.previous = self
		return p
	}
	
	func location(# reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "location", reference: reference)
		p.supportedProfiles = [
			"Condition",
			"Device",
			"DocumentReference",
			"Encounter",
			"Immunization",
			"Provenance"
		]
		p.previous = self
		return p
	}
	
	func location(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "location", string: string)
		p.supportedProfiles = [
			"Condition",
			"Device",
			"DocumentReference",
			"Encounter",
			"Immunization",
			"Provenance"
		]
		p.previous = self
		return p
	}
	
	func location(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "location", exact: exact)
		p.previous = self
		return p
	}
	
	func location(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "location", missing: missing)
		p.previous = self
		return p
	}
	
	func location(# token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "location", token: token)
		p.supportedProfiles = [
			"Condition",
			"Device",
			"DocumentReference",
			"Encounter",
			"Immunization",
			"Provenance"
		]
		p.previous = self
		return p
	}
	
	func location(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "location", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func lotNumber(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "lot-number", string: string)
		p.supportedProfiles = [
			"Immunization"
		]
		p.previous = self
		return p
	}
	
	func lotNumber(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "lot-number", exact: exact)
		p.previous = self
		return p
	}
	
	func lotNumber(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "lot-number", missing: missing)
		p.previous = self
		return p
	}
	
	func manufacturer(# reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "manufacturer", reference: reference)
		p.supportedProfiles = [
			"Device",
			"Immunization",
			"Medication"
		]
		p.previous = self
		return p
	}
	
	func manufacturer(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "manufacturer", string: string)
		p.supportedProfiles = [
			"Device",
			"Immunization",
			"Medication"
		]
		p.previous = self
		return p
	}
	
	func manufacturer(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "manufacturer", exact: exact)
		p.previous = self
		return p
	}
	
	func manufacturer(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "manufacturer", missing: missing)
		p.previous = self
		return p
	}
	
	func medication(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "medication", reference: reference)
		p.supportedProfiles = [
			"MedicationAdministration",
			"MedicationDispense",
			"MedicationPrescription",
			"MedicationStatement"
		]
		p.previous = self
		return p
	}
	
	func medication(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "medication", missing: missing)
		p.previous = self
		return p
	}
	
	func member(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "member", reference: reference)
		p.supportedProfiles = [
			"Group"
		]
		p.previous = self
		return p
	}
	
	func member(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "member", missing: missing)
		p.previous = self
		return p
	}
	
	func modality(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "modality", token: token)
		p.supportedProfiles = [
			"ImagingStudy"
		]
		p.previous = self
		return p
	}
	
	func modality(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "modality", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func modality(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "modality", missing: missing)
		p.previous = self
		return p
	}
	
	func model(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "model", string: string)
		p.supportedProfiles = [
			"Device"
		]
		p.previous = self
		return p
	}
	
	func model(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "model", exact: exact)
		p.previous = self
		return p
	}
	
	func model(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "model", missing: missing)
		p.previous = self
		return p
	}
	
	func mode(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "mode", token: token)
		p.supportedProfiles = [
			"Conformance"
		]
		p.previous = self
		return p
	}
	
	func mode(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "mode", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func mode(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "mode", missing: missing)
		p.previous = self
		return p
	}
	
	func nameValueX(composite: [String: String]) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "name-value-[x]", composite: composite)
		p.supportedProfiles = [
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func nameValueX(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "name-value-[x]", missing: missing)
		p.previous = self
		return p
	}
	
	func name(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "name", string: string)
		p.supportedProfiles = [
			"ConceptMap",
			"Conformance",
			"DiagnosticReport",
			"Location",
			"Medication",
			"Observation",
			"Organization",
			"Patient",
			"Practitioner",
			"Profile",
			"Questionnaire",
			"RelatedPerson",
			"SecurityEvent",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func name(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "name", exact: exact)
		p.previous = self
		return p
	}
	
	func name(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "name", missing: missing)
		p.previous = self
		return p
	}
	
	func name(# token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "name", token: token)
		p.supportedProfiles = [
			"ConceptMap",
			"Conformance",
			"DiagnosticReport",
			"Location",
			"Medication",
			"Observation",
			"Organization",
			"Patient",
			"Practitioner",
			"Profile",
			"Questionnaire",
			"RelatedPerson",
			"SecurityEvent",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func name(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "name", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func nearDistance(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "near-distance", token: token)
		p.supportedProfiles = [
			"Location"
		]
		p.previous = self
		return p
	}
	
	func nearDistance(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "near-distance", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func nearDistance(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "near-distance", missing: missing)
		p.previous = self
		return p
	}
	
	func near(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "near", token: token)
		p.supportedProfiles = [
			"Location"
		]
		p.previous = self
		return p
	}
	
	func near(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "near", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func near(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "near", missing: missing)
		p.previous = self
		return p
	}
	
	func notgiven(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "notgiven", token: token)
		p.supportedProfiles = [
			"MedicationAdministration"
		]
		p.previous = self
		return p
	}
	
	func notgiven(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "notgiven", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func notgiven(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "notgiven", missing: missing)
		p.previous = self
		return p
	}
	
	func objectType(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "object-type", token: token)
		p.supportedProfiles = [
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func objectType(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "object-type", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func objectType(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "object-type", missing: missing)
		p.previous = self
		return p
	}
	
	func observation(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "observation", reference: reference)
		p.supportedProfiles = [
			"DeviceObservationReport"
		]
		p.previous = self
		return p
	}
	
	func observation(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "observation", missing: missing)
		p.previous = self
		return p
	}
	
	func onset(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "onset", date: date)
		p.supportedProfiles = [
			"Condition"
		]
		p.previous = self
		return p
	}
	
	func onset(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "onset", missing: missing)
		p.previous = self
		return p
	}
	
	func operator(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "operator", reference: reference)
		p.supportedProfiles = [
			"Media"
		]
		p.previous = self
		return p
	}
	
	func operator(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "operator", missing: missing)
		p.previous = self
		return p
	}
	
	func orderer(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "orderer", reference: reference)
		p.supportedProfiles = [
			"DiagnosticOrder"
		]
		p.previous = self
		return p
	}
	
	func orderer(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "orderer", missing: missing)
		p.previous = self
		return p
	}
	
	func organization(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "organization", reference: reference)
		p.supportedProfiles = [
			"Device",
			"Practitioner"
		]
		p.previous = self
		return p
	}
	
	func organization(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "organization", missing: missing)
		p.previous = self
		return p
	}
	
	func participant(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "participant", reference: reference)
		p.supportedProfiles = [
			"CarePlan"
		]
		p.previous = self
		return p
	}
	
	func participant(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "participant", missing: missing)
		p.previous = self
		return p
	}
	
	func partof(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "partof", reference: reference)
		p.supportedProfiles = [
			"Location",
			"Organization"
		]
		p.previous = self
		return p
	}
	
	func partof(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "partof", missing: missing)
		p.previous = self
		return p
	}
	
	func partytype(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "partytype", token: token)
		p.supportedProfiles = [
			"Provenance"
		]
		p.previous = self
		return p
	}
	
	func partytype(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "partytype", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func partytype(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "partytype", missing: missing)
		p.previous = self
		return p
	}
	
	func party(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "party", token: token)
		p.supportedProfiles = [
			"Provenance"
		]
		p.previous = self
		return p
	}
	
	func party(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "party", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func party(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "party", missing: missing)
		p.previous = self
		return p
	}
	
	func patientid(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "patientid", token: token)
		p.supportedProfiles = [
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func patientid(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "patientid", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func patientid(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "patientid", missing: missing)
		p.previous = self
		return p
	}
	
	func patient(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "patient", reference: reference)
		p.supportedProfiles = [
			"CarePlan",
			"Device",
			"MedicationAdministration",
			"MedicationDispense",
			"MedicationPrescription",
			"MedicationStatement",
			"RelatedPerson",
			"Supply"
		]
		p.previous = self
		return p
	}
	
	func patient(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "patient", missing: missing)
		p.previous = self
		return p
	}
	
	func performer(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "performer", reference: reference)
		p.supportedProfiles = [
			"DiagnosticReport",
			"Immunization",
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func performer(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "performer", missing: missing)
		p.previous = self
		return p
	}
	
	func period(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "period", date: date)
		p.supportedProfiles = [
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func period(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "period", missing: missing)
		p.previous = self
		return p
	}
	
	func phonetic(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "phonetic", string: string)
		p.supportedProfiles = [
			"Organization",
			"Patient",
			"Practitioner",
			"RelatedPerson"
		]
		p.previous = self
		return p
	}
	
	func phonetic(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "phonetic", exact: exact)
		p.previous = self
		return p
	}
	
	func phonetic(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "phonetic", missing: missing)
		p.previous = self
		return p
	}
	
	func prescription(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "prescription", reference: reference)
		p.supportedProfiles = [
			"MedicationAdministration",
			"MedicationDispense"
		]
		p.previous = self
		return p
	}
	
	func prescription(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "prescription", missing: missing)
		p.previous = self
		return p
	}
	
	func product(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "product", token: token)
		p.supportedProfiles = [
			"ConceptMap"
		]
		p.previous = self
		return p
	}
	
	func product(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "product", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func product(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "product", missing: missing)
		p.previous = self
		return p
	}
	
	func profile(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "profile", reference: reference)
		p.supportedProfiles = [
			"Conformance"
		]
		p.previous = self
		return p
	}
	
	func profile(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "profile", missing: missing)
		p.previous = self
		return p
	}
	
	func provider(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "provider", reference: reference)
		p.supportedProfiles = [
			"Patient"
		]
		p.previous = self
		return p
	}
	
	func provider(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "provider", missing: missing)
		p.previous = self
		return p
	}
	
	func publisher(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "publisher", string: string)
		p.supportedProfiles = [
			"ConceptMap",
			"Conformance",
			"Profile",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func publisher(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "publisher", exact: exact)
		p.previous = self
		return p
	}
	
	func publisher(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "publisher", missing: missing)
		p.previous = self
		return p
	}
	
	func quantity(number: Float) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "quantity", number: number)
		p.supportedProfiles = [
			"Substance"
		]
		p.previous = self
		return p
	}
	
	func quantity(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "quantity", missing: missing)
		p.previous = self
		return p
	}
	
	func reactionDate(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reaction-date", date: date)
		p.supportedProfiles = [
			"Immunization"
		]
		p.previous = self
		return p
	}
	
	func reactionDate(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reaction-date", missing: missing)
		p.previous = self
		return p
	}
	
	func reaction(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reaction", reference: reference)
		p.supportedProfiles = [
			"Immunization"
		]
		p.previous = self
		return p
	}
	
	func reaction(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reaction", missing: missing)
		p.previous = self
		return p
	}
	
	func reason(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reason", token: token)
		p.supportedProfiles = [
			"Immunization"
		]
		p.previous = self
		return p
	}
	
	func reason(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reason", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func reason(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reason", missing: missing)
		p.previous = self
		return p
	}
	
	func recipient(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "recipient", reference: reference)
		p.supportedProfiles = [
			"DocumentManifest"
		]
		p.previous = self
		return p
	}
	
	func recipient(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "recipient", missing: missing)
		p.previous = self
		return p
	}
	
	func recorder(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "recorder", reference: reference)
		p.supportedProfiles = [
			"AllergyIntolerance"
		]
		p.previous = self
		return p
	}
	
	func recorder(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "recorder", missing: missing)
		p.previous = self
		return p
	}
	
	func reference(# reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reference", reference: reference)
		p.supportedProfiles = [
			"SecurityEvent",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func reference(# token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reference", token: token)
		p.supportedProfiles = [
			"SecurityEvent",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func reference(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reference", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func refusalReason(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "refusal-reason", token: token)
		p.supportedProfiles = [
			"Immunization"
		]
		p.previous = self
		return p
	}
	
	func refusalReason(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "refusal-reason", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func refusalReason(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "refusal-reason", missing: missing)
		p.previous = self
		return p
	}
	
	func refused(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "refused", token: token)
		p.supportedProfiles = [
			"Immunization"
		]
		p.previous = self
		return p
	}
	
	func refused(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "refused", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func refused(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "refused", missing: missing)
		p.previous = self
		return p
	}
	
	func relatedCode(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-code", token: token)
		p.supportedProfiles = [
			"Condition"
		]
		p.previous = self
		return p
	}
	
	func relatedCode(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-code", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func relatedCode(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-code", missing: missing)
		p.previous = self
		return p
	}
	
	func relatedItem(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-item", reference: reference)
		p.supportedProfiles = [
			"Condition"
		]
		p.previous = self
		return p
	}
	
	func relatedItem(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-item", missing: missing)
		p.previous = self
		return p
	}
	
	func relatedTarget(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-target", reference: reference)
		p.supportedProfiles = [
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func relatedTarget(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-target", missing: missing)
		p.previous = self
		return p
	}
	
	func relatedType(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-type", token: token)
		p.supportedProfiles = [
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func relatedType(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-type", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func relatedType(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related-type", missing: missing)
		p.previous = self
		return p
	}
	
	func related(composite: [String: String]) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related", composite: composite)
		p.supportedProfiles = [
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func related(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "related", missing: missing)
		p.previous = self
		return p
	}
	
	func relatesto(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "relatesto", reference: reference)
		p.supportedProfiles = [
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func relatesto(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "relatesto", missing: missing)
		p.previous = self
		return p
	}
	
	func relationship(composite: [String: String]) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "relationship", composite: composite)
		p.supportedProfiles = [
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func relationship(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "relationship", missing: missing)
		p.previous = self
		return p
	}
	
	func relation(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "relation", token: token)
		p.supportedProfiles = [
			"DocumentReference"
		]
		p.previous = self
		return p
	}
	
	func relation(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "relation", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func relation(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "relation", missing: missing)
		p.previous = self
		return p
	}
	
	func reliability(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reliability", token: token)
		p.supportedProfiles = [
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func reliability(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reliability", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func reliability(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "reliability", missing: missing)
		p.previous = self
		return p
	}
	
	func requester(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "requester", reference: reference)
		p.supportedProfiles = [
			"Immunization"
		]
		p.previous = self
		return p
	}
	
	func requester(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "requester", missing: missing)
		p.previous = self
		return p
	}
	
	func request(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "request", reference: reference)
		p.supportedProfiles = [
			"DiagnosticReport",
			"OrderResponse"
		]
		p.previous = self
		return p
	}
	
	func request(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "request", missing: missing)
		p.previous = self
		return p
	}
	
	func resource(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "resource", token: token)
		p.supportedProfiles = [
			"Conformance"
		]
		p.previous = self
		return p
	}
	
	func resource(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "resource", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func resource(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "resource", missing: missing)
		p.previous = self
		return p
	}
	
	func response(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "response", token: token)
		p.supportedProfiles = [
			"Query"
		]
		p.previous = self
		return p
	}
	
	func response(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "response", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func response(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "response", missing: missing)
		p.previous = self
		return p
	}
	
	func responsibleparty(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "responsibleparty", reference: reference)
		p.supportedProfiles = [
			"MedicationDispense"
		]
		p.previous = self
		return p
	}
	
	func responsibleparty(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "responsibleparty", missing: missing)
		p.previous = self
		return p
	}
	
	func result(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "result", reference: reference)
		p.supportedProfiles = [
			"DiagnosticReport"
		]
		p.previous = self
		return p
	}
	
	func result(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "result", missing: missing)
		p.previous = self
		return p
	}
	
	func sectionContent(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "section-content", reference: reference)
		p.supportedProfiles = [
			"Composition"
		]
		p.previous = self
		return p
	}
	
	func sectionContent(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "section-content", missing: missing)
		p.previous = self
		return p
	}
	
	func sectionType(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "section-type", token: token)
		p.supportedProfiles = [
			"Composition"
		]
		p.previous = self
		return p
	}
	
	func sectionType(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "section-type", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func sectionType(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "section-type", missing: missing)
		p.previous = self
		return p
	}
	
	func security(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "security", token: token)
		p.supportedProfiles = [
			"Conformance"
		]
		p.previous = self
		return p
	}
	
	func security(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "security", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func security(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "security", missing: missing)
		p.previous = self
		return p
	}
	
	func series(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "series", token: token)
		p.supportedProfiles = [
			"ImagingStudy"
		]
		p.previous = self
		return p
	}
	
	func series(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "series", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func series(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "series", missing: missing)
		p.previous = self
		return p
	}
	
	func service(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "service", token: token)
		p.supportedProfiles = [
			"DiagnosticReport"
		]
		p.previous = self
		return p
	}
	
	func service(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "service", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func service(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "service", missing: missing)
		p.previous = self
		return p
	}
	
	func severity(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "severity", token: token)
		p.supportedProfiles = [
			"Condition"
		]
		p.previous = self
		return p
	}
	
	func severity(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "severity", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func severity(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "severity", missing: missing)
		p.previous = self
		return p
	}
	
	func site(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "site", token: token)
		p.supportedProfiles = [
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func site(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "site", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func site(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "site", missing: missing)
		p.previous = self
		return p
	}
	
	func size(number: Float) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "size", number: number)
		p.supportedProfiles = [
			"DocumentReference",
			"ImagingStudy"
		]
		p.previous = self
		return p
	}
	
	func size(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "size", missing: missing)
		p.previous = self
		return p
	}
	
	func software(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "software", string: string)
		p.supportedProfiles = [
			"Conformance"
		]
		p.previous = self
		return p
	}
	
	func software(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "software", exact: exact)
		p.previous = self
		return p
	}
	
	func software(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "software", missing: missing)
		p.previous = self
		return p
	}
	
	func source(# reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "source", reference: reference)
		p.supportedProfiles = [
			"ConceptMap",
			"DeviceObservationReport",
			"List",
			"Order",
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func source(# token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "source", token: token)
		p.supportedProfiles = [
			"ConceptMap",
			"DeviceObservationReport",
			"List",
			"Order",
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func source(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "source", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func specimen(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "specimen", reference: reference)
		p.supportedProfiles = [
			"DiagnosticOrder",
			"DiagnosticReport",
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func specimen(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "specimen", missing: missing)
		p.previous = self
		return p
	}
	
	func stage(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "stage", token: token)
		p.supportedProfiles = [
			"Condition"
		]
		p.previous = self
		return p
	}
	
	func stage(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "stage", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func stage(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "stage", missing: missing)
		p.previous = self
		return p
	}
	
	func start(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "start", date: date)
		p.supportedProfiles = [
			"Provenance"
		]
		p.previous = self
		return p
	}
	
	func start(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "start", missing: missing)
		p.previous = self
		return p
	}
	
	func status(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "status", token: token)
		p.supportedProfiles = [
			"AllergyIntolerance",
			"ConceptMap",
			"Condition",
			"Conformance",
			"DiagnosticOrder",
			"DiagnosticReport",
			"DocumentManifest",
			"DocumentReference",
			"Encounter",
			"ImmunizationRecommendation",
			"Location",
			"MedicationAdministration",
			"MedicationDispense",
			"MedicationPrescription",
			"Observation",
			"Profile",
			"Questionnaire",
			"Supply",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func status(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "status", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func status(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "status", missing: missing)
		p.previous = self
		return p
	}
	
	func study(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "study", token: token)
		p.supportedProfiles = [
			"ImagingStudy"
		]
		p.previous = self
		return p
	}
	
	func study(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "study", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func study(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "study", missing: missing)
		p.previous = self
		return p
	}
	
	func subject(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "subject", reference: reference)
		p.supportedProfiles = [
			"AdverseReaction",
			"Alert",
			"AllergyIntolerance",
			"Composition",
			"Condition",
			"DeviceObservationReport",
			"DiagnosticOrder",
			"DiagnosticReport",
			"DocumentManifest",
			"DocumentReference",
			"Encounter",
			"FamilyHistory",
			"ImagingStudy",
			"Immunization",
			"ImmunizationRecommendation",
			"List",
			"Media",
			"Observation",
			"Order",
			"Other",
			"Procedure",
			"Questionnaire",
			"Specimen"
		]
		p.previous = self
		return p
	}
	
	func subject(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "subject", missing: missing)
		p.previous = self
		return p
	}
	
	func substance(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "substance", reference: reference)
		p.supportedProfiles = [
			"AdverseReaction",
			"AllergyIntolerance",
			"Substance"
		]
		p.previous = self
		return p
	}
	
	func substance(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "substance", missing: missing)
		p.previous = self
		return p
	}
	
	func subtype(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "subtype", token: token)
		p.supportedProfiles = [
			"Media",
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func subtype(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "subtype", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func subtype(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "subtype", missing: missing)
		p.previous = self
		return p
	}
	
	func supersedes(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "supersedes", reference: reference)
		p.supportedProfiles = [
			"DocumentManifest"
		]
		p.previous = self
		return p
	}
	
	func supersedes(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "supersedes", missing: missing)
		p.previous = self
		return p
	}
	
	func supplier(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "supplier", reference: reference)
		p.supportedProfiles = [
			"Supply"
		]
		p.previous = self
		return p
	}
	
	func supplier(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "supplier", missing: missing)
		p.previous = self
		return p
	}
	
	func supportedProfile(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "supported-profile", reference: reference)
		p.supportedProfiles = [
			"Conformance"
		]
		p.previous = self
		return p
	}
	
	func supportedProfile(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "supported-profile", missing: missing)
		p.previous = self
		return p
	}
	
	func support(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "support", reference: reference)
		p.supportedProfiles = [
			"ImmunizationRecommendation"
		]
		p.previous = self
		return p
	}
	
	func support(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "support", missing: missing)
		p.previous = self
		return p
	}
	
	func symptom(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "symptom", token: token)
		p.supportedProfiles = [
			"AdverseReaction"
		]
		p.previous = self
		return p
	}
	
	func symptom(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "symptom", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func symptom(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "symptom", missing: missing)
		p.previous = self
		return p
	}
	
	func system(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "system", token: token)
		p.supportedProfiles = [
			"ConceptMap",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func system(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "system", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func system(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "system", missing: missing)
		p.previous = self
		return p
	}
	
	func target(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "target", reference: reference)
		p.supportedProfiles = [
			"ConceptMap",
			"Order",
			"Provenance"
		]
		p.previous = self
		return p
	}
	
	func target(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "target", missing: missing)
		p.previous = self
		return p
	}
	
	func telecom(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "telecom", string: string)
		p.supportedProfiles = [
			"Patient",
			"Practitioner",
			"RelatedPerson"
		]
		p.previous = self
		return p
	}
	
	func telecom(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "telecom", exact: exact)
		p.previous = self
		return p
	}
	
	func telecom(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "telecom", missing: missing)
		p.previous = self
		return p
	}
	
	func type(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "type", token: token)
		p.supportedProfiles = [
			"AllergyIntolerance",
			"Composition",
			"Device",
			"DocumentManifest",
			"DocumentReference",
			"Group",
			"Location",
			"Media",
			"MedicationDispense",
			"Organization",
			"Procedure",
			"Profile",
			"SecurityEvent",
			"Substance"
		]
		p.previous = self
		return p
	}
	
	func type(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "type", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func type(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "type", missing: missing)
		p.previous = self
		return p
	}
	
	func udi(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "udi", string: string)
		p.supportedProfiles = [
			"Device"
		]
		p.previous = self
		return p
	}
	
	func udi(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "udi", exact: exact)
		p.previous = self
		return p
	}
	
	func udi(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "udi", missing: missing)
		p.previous = self
		return p
	}
	
	func uid(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "uid", token: token)
		p.supportedProfiles = [
			"ImagingStudy"
		]
		p.previous = self
		return p
	}
	
	func uid(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "uid", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func uid(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "uid", missing: missing)
		p.previous = self
		return p
	}
	
	func user(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "user", token: token)
		p.supportedProfiles = [
			"SecurityEvent"
		]
		p.previous = self
		return p
	}
	
	func user(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "user", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func user(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "user", missing: missing)
		p.previous = self
		return p
	}
	
	func vaccineType(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "vaccine-type", token: token)
		p.supportedProfiles = [
			"Immunization",
			"ImmunizationRecommendation"
		]
		p.previous = self
		return p
	}
	
	func vaccineType(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "vaccine-type", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func vaccineType(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "vaccine-type", missing: missing)
		p.previous = self
		return p
	}
	
	func valueConcept(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-concept", token: token)
		p.supportedProfiles = [
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func valueConcept(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-concept", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func valueConcept(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-concept", missing: missing)
		p.previous = self
		return p
	}
	
	func valueDate(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-date", date: date)
		p.supportedProfiles = [
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func valueDate(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-date", missing: missing)
		p.previous = self
		return p
	}
	
	func valueQuantity(quantity: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-quantity", quantity: quantity)
		p.supportedProfiles = [
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func valueQuantity(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-quantity", missing: missing)
		p.previous = self
		return p
	}
	
	func valueString(string: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-string", string: string)
		p.supportedProfiles = [
			"Observation"
		]
		p.previous = self
		return p
	}
	
	func valueString(# exact: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-string", exact: exact)
		p.previous = self
		return p
	}
	
	func valueString(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value-string", missing: missing)
		p.previous = self
		return p
	}
	
	func valueset(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "valueset", reference: reference)
		p.supportedProfiles = [
			"Profile"
		]
		p.previous = self
		return p
	}
	
	func valueset(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "valueset", missing: missing)
		p.previous = self
		return p
	}
	
	func value(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value", token: token)
		p.supportedProfiles = [
			"Group"
		]
		p.previous = self
		return p
	}
	
	func value(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func value(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "value", missing: missing)
		p.previous = self
		return p
	}
	
	func version(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "version", token: token)
		p.supportedProfiles = [
			"ConceptMap",
			"Conformance",
			"Profile",
			"ValueSet"
		]
		p.previous = self
		return p
	}
	
	func version(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "version", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func version(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "version", missing: missing)
		p.previous = self
		return p
	}
	
	func view(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "view", token: token)
		p.supportedProfiles = [
			"Media"
		]
		p.previous = self
		return p
	}
	
	func view(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "view", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func view(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "view", missing: missing)
		p.previous = self
		return p
	}
	
	func whenGiven(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "when-given", date: date)
		p.supportedProfiles = [
			"MedicationStatement"
		]
		p.previous = self
		return p
	}
	
	func whenGiven(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "when-given", missing: missing)
		p.previous = self
		return p
	}
	
	func when_code(token: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "when_code", token: token)
		p.supportedProfiles = [
			"Order"
		]
		p.previous = self
		return p
	}
	
	func when_code(# asText: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "when_code", tokenAsText: asText)
		p.previous = self
		return p
	}
	
	func when_code(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "when_code", missing: missing)
		p.previous = self
		return p
	}
	
	func whengiven(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "whengiven", date: date)
		p.supportedProfiles = [
			"MedicationAdministration"
		]
		p.previous = self
		return p
	}
	
	func whengiven(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "whengiven", missing: missing)
		p.previous = self
		return p
	}
	
	func whenhandedover(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "whenhandedover", date: date)
		p.supportedProfiles = [
			"MedicationDispense"
		]
		p.previous = self
		return p
	}
	
	func whenhandedover(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "whenhandedover", missing: missing)
		p.previous = self
		return p
	}
	
	func whenprepared(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "whenprepared", date: date)
		p.supportedProfiles = [
			"MedicationDispense"
		]
		p.previous = self
		return p
	}
	
	func whenprepared(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "whenprepared", missing: missing)
		p.previous = self
		return p
	}
	
	func when(date: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "when", date: date)
		p.supportedProfiles = [
			"Order"
		]
		p.previous = self
		return p
	}
	
	func when(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "when", missing: missing)
		p.previous = self
		return p
	}
	
	func who(reference: String) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "who", reference: reference)
		p.supportedProfiles = [
			"OrderResponse"
		]
		p.previous = self
		return p
	}
	
	func who(# missing: Bool) -> FHIRSearchParam {
		let p = FHIRSearchParam(subject: "who", missing: missing)
		p.previous = self
		return p
	}
	
}
