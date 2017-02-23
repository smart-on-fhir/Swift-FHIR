//
//  FHIRAbstractBase+Factory.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 on 2017-02-23.
//  2017, SMART Health IT.
//


/**
Extension to FHIRAbstractBase to be able to instantiate by class name.
*/
extension FHIRAbstractBase {
	
	public class func factory<T: FHIRAbstractBase>(_ typeName: String, json: FHIRJSON, owner: FHIRAbstractBase?, type: T.Type) throws -> T {
		switch typeName {
			case "Account":
				if let res = try Account(json: json, owner: owner) as? T { return res }
			case "AccountCoverage":
				if let res = try AccountCoverage(json: json, owner: owner) as? T { return res }
			case "AccountGuarantor":
				if let res = try AccountGuarantor(json: json, owner: owner) as? T { return res }
			case "ActivityDefinition":
				if let res = try ActivityDefinition(json: json, owner: owner) as? T { return res }
			case "ActivityDefinitionDynamicValue":
				if let res = try ActivityDefinitionDynamicValue(json: json, owner: owner) as? T { return res }
			case "ActivityDefinitionParticipant":
				if let res = try ActivityDefinitionParticipant(json: json, owner: owner) as? T { return res }
			case "Address":
				if let res = try Address(json: json, owner: owner) as? T { return res }
			case "AdverseEvent":
				if let res = try AdverseEvent(json: json, owner: owner) as? T { return res }
			case "AdverseEventSuspectEntity":
				if let res = try AdverseEventSuspectEntity(json: json, owner: owner) as? T { return res }
			case "Age":
				if let res = try Age(json: json, owner: owner) as? T { return res }
			case "AllergyIntolerance":
				if let res = try AllergyIntolerance(json: json, owner: owner) as? T { return res }
			case "AllergyIntoleranceReaction":
				if let res = try AllergyIntoleranceReaction(json: json, owner: owner) as? T { return res }
			case "Annotation":
				if let res = try Annotation(json: json, owner: owner) as? T { return res }
			case "Appointment":
				if let res = try Appointment(json: json, owner: owner) as? T { return res }
			case "AppointmentParticipant":
				if let res = try AppointmentParticipant(json: json, owner: owner) as? T { return res }
			case "AppointmentResponse":
				if let res = try AppointmentResponse(json: json, owner: owner) as? T { return res }
			case "Attachment":
				if let res = try Attachment(json: json, owner: owner) as? T { return res }
			case "AuditEvent":
				if let res = try AuditEvent(json: json, owner: owner) as? T { return res }
			case "AuditEventAgent":
				if let res = try AuditEventAgent(json: json, owner: owner) as? T { return res }
			case "AuditEventAgentNetwork":
				if let res = try AuditEventAgentNetwork(json: json, owner: owner) as? T { return res }
			case "AuditEventEntity":
				if let res = try AuditEventEntity(json: json, owner: owner) as? T { return res }
			case "AuditEventEntityDetail":
				if let res = try AuditEventEntityDetail(json: json, owner: owner) as? T { return res }
			case "AuditEventSource":
				if let res = try AuditEventSource(json: json, owner: owner) as? T { return res }
			case "BackboneElement":
				if let res = try BackboneElement(json: json, owner: owner) as? T { return res }
			case "Basic":
				if let res = try Basic(json: json, owner: owner) as? T { return res }
			case "Binary":
				if let res = try Binary(json: json, owner: owner) as? T { return res }
			case "BodySite":
				if let res = try BodySite(json: json, owner: owner) as? T { return res }
			case "Bundle":
				if let res = try Bundle(json: json, owner: owner) as? T { return res }
			case "BundleEntry":
				if let res = try BundleEntry(json: json, owner: owner) as? T { return res }
			case "BundleEntryRequest":
				if let res = try BundleEntryRequest(json: json, owner: owner) as? T { return res }
			case "BundleEntryResponse":
				if let res = try BundleEntryResponse(json: json, owner: owner) as? T { return res }
			case "BundleEntrySearch":
				if let res = try BundleEntrySearch(json: json, owner: owner) as? T { return res }
			case "BundleLink":
				if let res = try BundleLink(json: json, owner: owner) as? T { return res }
			case "CapabilityStatement":
				if let res = try CapabilityStatement(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementDocument":
				if let res = try CapabilityStatementDocument(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementImplementation":
				if let res = try CapabilityStatementImplementation(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementMessaging":
				if let res = try CapabilityStatementMessaging(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementMessagingEndpoint":
				if let res = try CapabilityStatementMessagingEndpoint(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementMessagingEvent":
				if let res = try CapabilityStatementMessagingEvent(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementMessagingSupportedMessage":
				if let res = try CapabilityStatementMessagingSupportedMessage(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementRest":
				if let res = try CapabilityStatementRest(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementRestInteraction":
				if let res = try CapabilityStatementRestInteraction(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementRestOperation":
				if let res = try CapabilityStatementRestOperation(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementRestResource":
				if let res = try CapabilityStatementRestResource(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementRestResourceInteraction":
				if let res = try CapabilityStatementRestResourceInteraction(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementRestResourceSearchParam":
				if let res = try CapabilityStatementRestResourceSearchParam(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementRestSecurity":
				if let res = try CapabilityStatementRestSecurity(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementRestSecurityCertificate":
				if let res = try CapabilityStatementRestSecurityCertificate(json: json, owner: owner) as? T { return res }
			case "CapabilityStatementSoftware":
				if let res = try CapabilityStatementSoftware(json: json, owner: owner) as? T { return res }
			case "CarePlan":
				if let res = try CarePlan(json: json, owner: owner) as? T { return res }
			case "CarePlanActivity":
				if let res = try CarePlanActivity(json: json, owner: owner) as? T { return res }
			case "CarePlanActivityDetail":
				if let res = try CarePlanActivityDetail(json: json, owner: owner) as? T { return res }
			case "CareTeam":
				if let res = try CareTeam(json: json, owner: owner) as? T { return res }
			case "CareTeamParticipant":
				if let res = try CareTeamParticipant(json: json, owner: owner) as? T { return res }
			case "ChargeItem":
				if let res = try ChargeItem(json: json, owner: owner) as? T { return res }
			case "ChargeItemParticipant":
				if let res = try ChargeItemParticipant(json: json, owner: owner) as? T { return res }
			case "Claim":
				if let res = try Claim(json: json, owner: owner) as? T { return res }
			case "ClaimAccident":
				if let res = try ClaimAccident(json: json, owner: owner) as? T { return res }
			case "ClaimCareTeam":
				if let res = try ClaimCareTeam(json: json, owner: owner) as? T { return res }
			case "ClaimDiagnosis":
				if let res = try ClaimDiagnosis(json: json, owner: owner) as? T { return res }
			case "ClaimInformation":
				if let res = try ClaimInformation(json: json, owner: owner) as? T { return res }
			case "ClaimInsurance":
				if let res = try ClaimInsurance(json: json, owner: owner) as? T { return res }
			case "ClaimItem":
				if let res = try ClaimItem(json: json, owner: owner) as? T { return res }
			case "ClaimItemDetail":
				if let res = try ClaimItemDetail(json: json, owner: owner) as? T { return res }
			case "ClaimItemDetailSubDetail":
				if let res = try ClaimItemDetailSubDetail(json: json, owner: owner) as? T { return res }
			case "ClaimPayee":
				if let res = try ClaimPayee(json: json, owner: owner) as? T { return res }
			case "ClaimProcedure":
				if let res = try ClaimProcedure(json: json, owner: owner) as? T { return res }
			case "ClaimRelated":
				if let res = try ClaimRelated(json: json, owner: owner) as? T { return res }
			case "ClaimResponse":
				if let res = try ClaimResponse(json: json, owner: owner) as? T { return res }
			case "ClaimResponseAddItem":
				if let res = try ClaimResponseAddItem(json: json, owner: owner) as? T { return res }
			case "ClaimResponseAddItemDetail":
				if let res = try ClaimResponseAddItemDetail(json: json, owner: owner) as? T { return res }
			case "ClaimResponseError":
				if let res = try ClaimResponseError(json: json, owner: owner) as? T { return res }
			case "ClaimResponseInsurance":
				if let res = try ClaimResponseInsurance(json: json, owner: owner) as? T { return res }
			case "ClaimResponseItem":
				if let res = try ClaimResponseItem(json: json, owner: owner) as? T { return res }
			case "ClaimResponseItemAdjudication":
				if let res = try ClaimResponseItemAdjudication(json: json, owner: owner) as? T { return res }
			case "ClaimResponseItemDetail":
				if let res = try ClaimResponseItemDetail(json: json, owner: owner) as? T { return res }
			case "ClaimResponseItemDetailSubDetail":
				if let res = try ClaimResponseItemDetailSubDetail(json: json, owner: owner) as? T { return res }
			case "ClaimResponsePayment":
				if let res = try ClaimResponsePayment(json: json, owner: owner) as? T { return res }
			case "ClaimResponseProcessNote":
				if let res = try ClaimResponseProcessNote(json: json, owner: owner) as? T { return res }
			case "ClinicalImpression":
				if let res = try ClinicalImpression(json: json, owner: owner) as? T { return res }
			case "ClinicalImpressionFinding":
				if let res = try ClinicalImpressionFinding(json: json, owner: owner) as? T { return res }
			case "ClinicalImpressionInvestigation":
				if let res = try ClinicalImpressionInvestigation(json: json, owner: owner) as? T { return res }
			case "CodeSystem":
				if let res = try CodeSystem(json: json, owner: owner) as? T { return res }
			case "CodeSystemConcept":
				if let res = try CodeSystemConcept(json: json, owner: owner) as? T { return res }
			case "CodeSystemConceptDesignation":
				if let res = try CodeSystemConceptDesignation(json: json, owner: owner) as? T { return res }
			case "CodeSystemConceptProperty":
				if let res = try CodeSystemConceptProperty(json: json, owner: owner) as? T { return res }
			case "CodeSystemFilter":
				if let res = try CodeSystemFilter(json: json, owner: owner) as? T { return res }
			case "CodeSystemProperty":
				if let res = try CodeSystemProperty(json: json, owner: owner) as? T { return res }
			case "CodeableConcept":
				if let res = try CodeableConcept(json: json, owner: owner) as? T { return res }
			case "Coding":
				if let res = try Coding(json: json, owner: owner) as? T { return res }
			case "Communication":
				if let res = try Communication(json: json, owner: owner) as? T { return res }
			case "CommunicationPayload":
				if let res = try CommunicationPayload(json: json, owner: owner) as? T { return res }
			case "CommunicationRequest":
				if let res = try CommunicationRequest(json: json, owner: owner) as? T { return res }
			case "CommunicationRequestPayload":
				if let res = try CommunicationRequestPayload(json: json, owner: owner) as? T { return res }
			case "CommunicationRequestRequester":
				if let res = try CommunicationRequestRequester(json: json, owner: owner) as? T { return res }
			case "CompartmentDefinition":
				if let res = try CompartmentDefinition(json: json, owner: owner) as? T { return res }
			case "CompartmentDefinitionResource":
				if let res = try CompartmentDefinitionResource(json: json, owner: owner) as? T { return res }
			case "Composition":
				if let res = try Composition(json: json, owner: owner) as? T { return res }
			case "CompositionAttester":
				if let res = try CompositionAttester(json: json, owner: owner) as? T { return res }
			case "CompositionEvent":
				if let res = try CompositionEvent(json: json, owner: owner) as? T { return res }
			case "CompositionRelatesTo":
				if let res = try CompositionRelatesTo(json: json, owner: owner) as? T { return res }
			case "CompositionSection":
				if let res = try CompositionSection(json: json, owner: owner) as? T { return res }
			case "ConceptMap":
				if let res = try ConceptMap(json: json, owner: owner) as? T { return res }
			case "ConceptMapGroup":
				if let res = try ConceptMapGroup(json: json, owner: owner) as? T { return res }
			case "ConceptMapGroupElement":
				if let res = try ConceptMapGroupElement(json: json, owner: owner) as? T { return res }
			case "ConceptMapGroupElementTarget":
				if let res = try ConceptMapGroupElementTarget(json: json, owner: owner) as? T { return res }
			case "ConceptMapGroupElementTargetDependsOn":
				if let res = try ConceptMapGroupElementTargetDependsOn(json: json, owner: owner) as? T { return res }
			case "ConceptMapGroupUnmapped":
				if let res = try ConceptMapGroupUnmapped(json: json, owner: owner) as? T { return res }
			case "Condition":
				if let res = try Condition(json: json, owner: owner) as? T { return res }
			case "ConditionEvidence":
				if let res = try ConditionEvidence(json: json, owner: owner) as? T { return res }
			case "ConditionStage":
				if let res = try ConditionStage(json: json, owner: owner) as? T { return res }
			case "Consent":
				if let res = try Consent(json: json, owner: owner) as? T { return res }
			case "ConsentActor":
				if let res = try ConsentActor(json: json, owner: owner) as? T { return res }
			case "ConsentData":
				if let res = try ConsentData(json: json, owner: owner) as? T { return res }
			case "ConsentExcept":
				if let res = try ConsentExcept(json: json, owner: owner) as? T { return res }
			case "ConsentExceptActor":
				if let res = try ConsentExceptActor(json: json, owner: owner) as? T { return res }
			case "ConsentExceptData":
				if let res = try ConsentExceptData(json: json, owner: owner) as? T { return res }
			case "ConsentPolicy":
				if let res = try ConsentPolicy(json: json, owner: owner) as? T { return res }
			case "ContactDetail":
				if let res = try ContactDetail(json: json, owner: owner) as? T { return res }
			case "ContactPoint":
				if let res = try ContactPoint(json: json, owner: owner) as? T { return res }
			case "Contract":
				if let res = try Contract(json: json, owner: owner) as? T { return res }
			case "ContractAgent":
				if let res = try ContractAgent(json: json, owner: owner) as? T { return res }
			case "ContractFriendly":
				if let res = try ContractFriendly(json: json, owner: owner) as? T { return res }
			case "ContractLegal":
				if let res = try ContractLegal(json: json, owner: owner) as? T { return res }
			case "ContractRule":
				if let res = try ContractRule(json: json, owner: owner) as? T { return res }
			case "ContractSigner":
				if let res = try ContractSigner(json: json, owner: owner) as? T { return res }
			case "ContractTerm":
				if let res = try ContractTerm(json: json, owner: owner) as? T { return res }
			case "ContractTermAgent":
				if let res = try ContractTermAgent(json: json, owner: owner) as? T { return res }
			case "ContractTermValuedItem":
				if let res = try ContractTermValuedItem(json: json, owner: owner) as? T { return res }
			case "ContractValuedItem":
				if let res = try ContractValuedItem(json: json, owner: owner) as? T { return res }
			case "Contributor":
				if let res = try Contributor(json: json, owner: owner) as? T { return res }
			case "Count":
				if let res = try Count(json: json, owner: owner) as? T { return res }
			case "Coverage":
				if let res = try Coverage(json: json, owner: owner) as? T { return res }
			case "CoverageGrouping":
				if let res = try CoverageGrouping(json: json, owner: owner) as? T { return res }
			case "DataElement":
				if let res = try DataElement(json: json, owner: owner) as? T { return res }
			case "DataElementMapping":
				if let res = try DataElementMapping(json: json, owner: owner) as? T { return res }
			case "DataRequirement":
				if let res = try DataRequirement(json: json, owner: owner) as? T { return res }
			case "DataRequirementCodeFilter":
				if let res = try DataRequirementCodeFilter(json: json, owner: owner) as? T { return res }
			case "DataRequirementDateFilter":
				if let res = try DataRequirementDateFilter(json: json, owner: owner) as? T { return res }
			case "DetectedIssue":
				if let res = try DetectedIssue(json: json, owner: owner) as? T { return res }
			case "DetectedIssueMitigation":
				if let res = try DetectedIssueMitigation(json: json, owner: owner) as? T { return res }
			case "Device":
				if let res = try Device(json: json, owner: owner) as? T { return res }
			case "DeviceComponent":
				if let res = try DeviceComponent(json: json, owner: owner) as? T { return res }
			case "DeviceComponentProductionSpecification":
				if let res = try DeviceComponentProductionSpecification(json: json, owner: owner) as? T { return res }
			case "DeviceMetric":
				if let res = try DeviceMetric(json: json, owner: owner) as? T { return res }
			case "DeviceMetricCalibration":
				if let res = try DeviceMetricCalibration(json: json, owner: owner) as? T { return res }
			case "DeviceRequest":
				if let res = try DeviceRequest(json: json, owner: owner) as? T { return res }
			case "DeviceRequestRequester":
				if let res = try DeviceRequestRequester(json: json, owner: owner) as? T { return res }
			case "DeviceUdi":
				if let res = try DeviceUdi(json: json, owner: owner) as? T { return res }
			case "DeviceUseStatement":
				if let res = try DeviceUseStatement(json: json, owner: owner) as? T { return res }
			case "DiagnosticReport":
				if let res = try DiagnosticReport(json: json, owner: owner) as? T { return res }
			case "DiagnosticReportImage":
				if let res = try DiagnosticReportImage(json: json, owner: owner) as? T { return res }
			case "DiagnosticReportPerformer":
				if let res = try DiagnosticReportPerformer(json: json, owner: owner) as? T { return res }
			case "Distance":
				if let res = try Distance(json: json, owner: owner) as? T { return res }
			case "DocumentManifest":
				if let res = try DocumentManifest(json: json, owner: owner) as? T { return res }
			case "DocumentManifestContent":
				if let res = try DocumentManifestContent(json: json, owner: owner) as? T { return res }
			case "DocumentManifestRelated":
				if let res = try DocumentManifestRelated(json: json, owner: owner) as? T { return res }
			case "DocumentReference":
				if let res = try DocumentReference(json: json, owner: owner) as? T { return res }
			case "DocumentReferenceContent":
				if let res = try DocumentReferenceContent(json: json, owner: owner) as? T { return res }
			case "DocumentReferenceContext":
				if let res = try DocumentReferenceContext(json: json, owner: owner) as? T { return res }
			case "DocumentReferenceContextRelated":
				if let res = try DocumentReferenceContextRelated(json: json, owner: owner) as? T { return res }
			case "DocumentReferenceRelatesTo":
				if let res = try DocumentReferenceRelatesTo(json: json, owner: owner) as? T { return res }
			case "DomainResource":
				if let res = try DomainResource(json: json, owner: owner) as? T { return res }
			case "Dosage":
				if let res = try Dosage(json: json, owner: owner) as? T { return res }
			case "Duration":
				if let res = try Duration(json: json, owner: owner) as? T { return res }
			case "Element":
				if let res = try Element(json: json, owner: owner) as? T { return res }
			case "ElementDefinition":
				if let res = try ElementDefinition(json: json, owner: owner) as? T { return res }
			case "ElementDefinitionBase":
				if let res = try ElementDefinitionBase(json: json, owner: owner) as? T { return res }
			case "ElementDefinitionBinding":
				if let res = try ElementDefinitionBinding(json: json, owner: owner) as? T { return res }
			case "ElementDefinitionConstraint":
				if let res = try ElementDefinitionConstraint(json: json, owner: owner) as? T { return res }
			case "ElementDefinitionExample":
				if let res = try ElementDefinitionExample(json: json, owner: owner) as? T { return res }
			case "ElementDefinitionMapping":
				if let res = try ElementDefinitionMapping(json: json, owner: owner) as? T { return res }
			case "ElementDefinitionSlicing":
				if let res = try ElementDefinitionSlicing(json: json, owner: owner) as? T { return res }
			case "ElementDefinitionSlicingDiscriminator":
				if let res = try ElementDefinitionSlicingDiscriminator(json: json, owner: owner) as? T { return res }
			case "ElementDefinitionType":
				if let res = try ElementDefinitionType(json: json, owner: owner) as? T { return res }
			case "EligibilityRequest":
				if let res = try EligibilityRequest(json: json, owner: owner) as? T { return res }
			case "EligibilityResponse":
				if let res = try EligibilityResponse(json: json, owner: owner) as? T { return res }
			case "EligibilityResponseError":
				if let res = try EligibilityResponseError(json: json, owner: owner) as? T { return res }
			case "EligibilityResponseInsurance":
				if let res = try EligibilityResponseInsurance(json: json, owner: owner) as? T { return res }
			case "EligibilityResponseInsuranceBenefitBalance":
				if let res = try EligibilityResponseInsuranceBenefitBalance(json: json, owner: owner) as? T { return res }
			case "EligibilityResponseInsuranceBenefitBalanceFinancial":
				if let res = try EligibilityResponseInsuranceBenefitBalanceFinancial(json: json, owner: owner) as? T { return res }
			case "Encounter":
				if let res = try Encounter(json: json, owner: owner) as? T { return res }
			case "EncounterClassHistory":
				if let res = try EncounterClassHistory(json: json, owner: owner) as? T { return res }
			case "EncounterDiagnosis":
				if let res = try EncounterDiagnosis(json: json, owner: owner) as? T { return res }
			case "EncounterHospitalization":
				if let res = try EncounterHospitalization(json: json, owner: owner) as? T { return res }
			case "EncounterLocation":
				if let res = try EncounterLocation(json: json, owner: owner) as? T { return res }
			case "EncounterParticipant":
				if let res = try EncounterParticipant(json: json, owner: owner) as? T { return res }
			case "EncounterStatusHistory":
				if let res = try EncounterStatusHistory(json: json, owner: owner) as? T { return res }
			case "Endpoint":
				if let res = try Endpoint(json: json, owner: owner) as? T { return res }
			case "EnrollmentRequest":
				if let res = try EnrollmentRequest(json: json, owner: owner) as? T { return res }
			case "EnrollmentResponse":
				if let res = try EnrollmentResponse(json: json, owner: owner) as? T { return res }
			case "EpisodeOfCare":
				if let res = try EpisodeOfCare(json: json, owner: owner) as? T { return res }
			case "EpisodeOfCareDiagnosis":
				if let res = try EpisodeOfCareDiagnosis(json: json, owner: owner) as? T { return res }
			case "EpisodeOfCareStatusHistory":
				if let res = try EpisodeOfCareStatusHistory(json: json, owner: owner) as? T { return res }
			case "ExpansionProfile":
				if let res = try ExpansionProfile(json: json, owner: owner) as? T { return res }
			case "ExpansionProfileDesignation":
				if let res = try ExpansionProfileDesignation(json: json, owner: owner) as? T { return res }
			case "ExpansionProfileDesignationExclude":
				if let res = try ExpansionProfileDesignationExclude(json: json, owner: owner) as? T { return res }
			case "ExpansionProfileDesignationExcludeDesignation":
				if let res = try ExpansionProfileDesignationExcludeDesignation(json: json, owner: owner) as? T { return res }
			case "ExpansionProfileDesignationInclude":
				if let res = try ExpansionProfileDesignationInclude(json: json, owner: owner) as? T { return res }
			case "ExpansionProfileDesignationIncludeDesignation":
				if let res = try ExpansionProfileDesignationIncludeDesignation(json: json, owner: owner) as? T { return res }
			case "ExpansionProfileExcludedSystem":
				if let res = try ExpansionProfileExcludedSystem(json: json, owner: owner) as? T { return res }
			case "ExpansionProfileFixedVersion":
				if let res = try ExpansionProfileFixedVersion(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefit":
				if let res = try ExplanationOfBenefit(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitAccident":
				if let res = try ExplanationOfBenefitAccident(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitAddItem":
				if let res = try ExplanationOfBenefitAddItem(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitAddItemDetail":
				if let res = try ExplanationOfBenefitAddItemDetail(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitBenefitBalance":
				if let res = try ExplanationOfBenefitBenefitBalance(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitBenefitBalanceFinancial":
				if let res = try ExplanationOfBenefitBenefitBalanceFinancial(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitCareTeam":
				if let res = try ExplanationOfBenefitCareTeam(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitDiagnosis":
				if let res = try ExplanationOfBenefitDiagnosis(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitInformation":
				if let res = try ExplanationOfBenefitInformation(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitInsurance":
				if let res = try ExplanationOfBenefitInsurance(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitItem":
				if let res = try ExplanationOfBenefitItem(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitItemAdjudication":
				if let res = try ExplanationOfBenefitItemAdjudication(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitItemDetail":
				if let res = try ExplanationOfBenefitItemDetail(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitItemDetailSubDetail":
				if let res = try ExplanationOfBenefitItemDetailSubDetail(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitPayee":
				if let res = try ExplanationOfBenefitPayee(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitPayment":
				if let res = try ExplanationOfBenefitPayment(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitProcedure":
				if let res = try ExplanationOfBenefitProcedure(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitProcessNote":
				if let res = try ExplanationOfBenefitProcessNote(json: json, owner: owner) as? T { return res }
			case "ExplanationOfBenefitRelated":
				if let res = try ExplanationOfBenefitRelated(json: json, owner: owner) as? T { return res }
			case "Extension":
				if let res = try Extension(json: json, owner: owner) as? T { return res }
			case "FamilyMemberHistory":
				if let res = try FamilyMemberHistory(json: json, owner: owner) as? T { return res }
			case "FamilyMemberHistoryCondition":
				if let res = try FamilyMemberHistoryCondition(json: json, owner: owner) as? T { return res }
			case "Flag":
				if let res = try Flag(json: json, owner: owner) as? T { return res }
			case "Goal":
				if let res = try Goal(json: json, owner: owner) as? T { return res }
			case "GoalTarget":
				if let res = try GoalTarget(json: json, owner: owner) as? T { return res }
			case "GraphDefinition":
				if let res = try GraphDefinition(json: json, owner: owner) as? T { return res }
			case "GraphDefinitionLink":
				if let res = try GraphDefinitionLink(json: json, owner: owner) as? T { return res }
			case "GraphDefinitionLinkTarget":
				if let res = try GraphDefinitionLinkTarget(json: json, owner: owner) as? T { return res }
			case "GraphDefinitionLinkTargetCompartment":
				if let res = try GraphDefinitionLinkTargetCompartment(json: json, owner: owner) as? T { return res }
			case "Group":
				if let res = try Group(json: json, owner: owner) as? T { return res }
			case "GroupCharacteristic":
				if let res = try GroupCharacteristic(json: json, owner: owner) as? T { return res }
			case "GroupMember":
				if let res = try GroupMember(json: json, owner: owner) as? T { return res }
			case "GuidanceResponse":
				if let res = try GuidanceResponse(json: json, owner: owner) as? T { return res }
			case "HealthcareService":
				if let res = try HealthcareService(json: json, owner: owner) as? T { return res }
			case "HealthcareServiceAvailableTime":
				if let res = try HealthcareServiceAvailableTime(json: json, owner: owner) as? T { return res }
			case "HealthcareServiceNotAvailable":
				if let res = try HealthcareServiceNotAvailable(json: json, owner: owner) as? T { return res }
			case "HumanName":
				if let res = try HumanName(json: json, owner: owner) as? T { return res }
			case "Identifier":
				if let res = try Identifier(json: json, owner: owner) as? T { return res }
			case "ImagingManifest":
				if let res = try ImagingManifest(json: json, owner: owner) as? T { return res }
			case "ImagingManifestStudy":
				if let res = try ImagingManifestStudy(json: json, owner: owner) as? T { return res }
			case "ImagingManifestStudySeries":
				if let res = try ImagingManifestStudySeries(json: json, owner: owner) as? T { return res }
			case "ImagingManifestStudySeriesInstance":
				if let res = try ImagingManifestStudySeriesInstance(json: json, owner: owner) as? T { return res }
			case "ImagingStudy":
				if let res = try ImagingStudy(json: json, owner: owner) as? T { return res }
			case "ImagingStudySeries":
				if let res = try ImagingStudySeries(json: json, owner: owner) as? T { return res }
			case "ImagingStudySeriesInstance":
				if let res = try ImagingStudySeriesInstance(json: json, owner: owner) as? T { return res }
			case "Immunization":
				if let res = try Immunization(json: json, owner: owner) as? T { return res }
			case "ImmunizationExplanation":
				if let res = try ImmunizationExplanation(json: json, owner: owner) as? T { return res }
			case "ImmunizationPractitioner":
				if let res = try ImmunizationPractitioner(json: json, owner: owner) as? T { return res }
			case "ImmunizationReaction":
				if let res = try ImmunizationReaction(json: json, owner: owner) as? T { return res }
			case "ImmunizationRecommendation":
				if let res = try ImmunizationRecommendation(json: json, owner: owner) as? T { return res }
			case "ImmunizationRecommendationRecommendation":
				if let res = try ImmunizationRecommendationRecommendation(json: json, owner: owner) as? T { return res }
			case "ImmunizationRecommendationRecommendationDateCriterion":
				if let res = try ImmunizationRecommendationRecommendationDateCriterion(json: json, owner: owner) as? T { return res }
			case "ImmunizationRecommendationRecommendationProtocol":
				if let res = try ImmunizationRecommendationRecommendationProtocol(json: json, owner: owner) as? T { return res }
			case "ImmunizationVaccinationProtocol":
				if let res = try ImmunizationVaccinationProtocol(json: json, owner: owner) as? T { return res }
			case "ImplementationGuide":
				if let res = try ImplementationGuide(json: json, owner: owner) as? T { return res }
			case "ImplementationGuideDependency":
				if let res = try ImplementationGuideDependency(json: json, owner: owner) as? T { return res }
			case "ImplementationGuideGlobal":
				if let res = try ImplementationGuideGlobal(json: json, owner: owner) as? T { return res }
			case "ImplementationGuidePackage":
				if let res = try ImplementationGuidePackage(json: json, owner: owner) as? T { return res }
			case "ImplementationGuidePackageResource":
				if let res = try ImplementationGuidePackageResource(json: json, owner: owner) as? T { return res }
			case "ImplementationGuidePage":
				if let res = try ImplementationGuidePage(json: json, owner: owner) as? T { return res }
			case "Library":
				if let res = try Library(json: json, owner: owner) as? T { return res }
			case "Linkage":
				if let res = try Linkage(json: json, owner: owner) as? T { return res }
			case "LinkageItem":
				if let res = try LinkageItem(json: json, owner: owner) as? T { return res }
			case "List":
				if let res = try List(json: json, owner: owner) as? T { return res }
			case "ListEntry":
				if let res = try ListEntry(json: json, owner: owner) as? T { return res }
			case "Location":
				if let res = try Location(json: json, owner: owner) as? T { return res }
			case "LocationPosition":
				if let res = try LocationPosition(json: json, owner: owner) as? T { return res }
			case "Measure":
				if let res = try Measure(json: json, owner: owner) as? T { return res }
			case "MeasureGroup":
				if let res = try MeasureGroup(json: json, owner: owner) as? T { return res }
			case "MeasureGroupPopulation":
				if let res = try MeasureGroupPopulation(json: json, owner: owner) as? T { return res }
			case "MeasureGroupStratifier":
				if let res = try MeasureGroupStratifier(json: json, owner: owner) as? T { return res }
			case "MeasureReport":
				if let res = try MeasureReport(json: json, owner: owner) as? T { return res }
			case "MeasureReportGroup":
				if let res = try MeasureReportGroup(json: json, owner: owner) as? T { return res }
			case "MeasureReportGroupPopulation":
				if let res = try MeasureReportGroupPopulation(json: json, owner: owner) as? T { return res }
			case "MeasureReportGroupStratifier":
				if let res = try MeasureReportGroupStratifier(json: json, owner: owner) as? T { return res }
			case "MeasureReportGroupStratifierStratum":
				if let res = try MeasureReportGroupStratifierStratum(json: json, owner: owner) as? T { return res }
			case "MeasureReportGroupStratifierStratumPopulation":
				if let res = try MeasureReportGroupStratifierStratumPopulation(json: json, owner: owner) as? T { return res }
			case "MeasureSupplementalData":
				if let res = try MeasureSupplementalData(json: json, owner: owner) as? T { return res }
			case "Media":
				if let res = try Media(json: json, owner: owner) as? T { return res }
			case "Medication":
				if let res = try Medication(json: json, owner: owner) as? T { return res }
			case "MedicationAdministration":
				if let res = try MedicationAdministration(json: json, owner: owner) as? T { return res }
			case "MedicationAdministrationDosage":
				if let res = try MedicationAdministrationDosage(json: json, owner: owner) as? T { return res }
			case "MedicationAdministrationPerformer":
				if let res = try MedicationAdministrationPerformer(json: json, owner: owner) as? T { return res }
			case "MedicationDispense":
				if let res = try MedicationDispense(json: json, owner: owner) as? T { return res }
			case "MedicationDispensePerformer":
				if let res = try MedicationDispensePerformer(json: json, owner: owner) as? T { return res }
			case "MedicationDispenseSubstitution":
				if let res = try MedicationDispenseSubstitution(json: json, owner: owner) as? T { return res }
			case "MedicationIngredient":
				if let res = try MedicationIngredient(json: json, owner: owner) as? T { return res }
			case "MedicationPackage":
				if let res = try MedicationPackage(json: json, owner: owner) as? T { return res }
			case "MedicationPackageBatch":
				if let res = try MedicationPackageBatch(json: json, owner: owner) as? T { return res }
			case "MedicationPackageContent":
				if let res = try MedicationPackageContent(json: json, owner: owner) as? T { return res }
			case "MedicationRequest":
				if let res = try MedicationRequest(json: json, owner: owner) as? T { return res }
			case "MedicationRequestDispenseRequest":
				if let res = try MedicationRequestDispenseRequest(json: json, owner: owner) as? T { return res }
			case "MedicationRequestRequester":
				if let res = try MedicationRequestRequester(json: json, owner: owner) as? T { return res }
			case "MedicationRequestSubstitution":
				if let res = try MedicationRequestSubstitution(json: json, owner: owner) as? T { return res }
			case "MedicationStatement":
				if let res = try MedicationStatement(json: json, owner: owner) as? T { return res }
			case "MessageDefinition":
				if let res = try MessageDefinition(json: json, owner: owner) as? T { return res }
			case "MessageDefinitionAllowedResponse":
				if let res = try MessageDefinitionAllowedResponse(json: json, owner: owner) as? T { return res }
			case "MessageDefinitionFocus":
				if let res = try MessageDefinitionFocus(json: json, owner: owner) as? T { return res }
			case "MessageHeader":
				if let res = try MessageHeader(json: json, owner: owner) as? T { return res }
			case "MessageHeaderDestination":
				if let res = try MessageHeaderDestination(json: json, owner: owner) as? T { return res }
			case "MessageHeaderResponse":
				if let res = try MessageHeaderResponse(json: json, owner: owner) as? T { return res }
			case "MessageHeaderSource":
				if let res = try MessageHeaderSource(json: json, owner: owner) as? T { return res }
			case "Meta":
				if let res = try Meta(json: json, owner: owner) as? T { return res }
			case "MetadataResource":
				if let res = try MetadataResource(json: json, owner: owner) as? T { return res }
			case "Money":
				if let res = try Money(json: json, owner: owner) as? T { return res }
			case "NamingSystem":
				if let res = try NamingSystem(json: json, owner: owner) as? T { return res }
			case "NamingSystemUniqueId":
				if let res = try NamingSystemUniqueId(json: json, owner: owner) as? T { return res }
			case "Narrative":
				if let res = try Narrative(json: json, owner: owner) as? T { return res }
			case "NutritionOrder":
				if let res = try NutritionOrder(json: json, owner: owner) as? T { return res }
			case "NutritionOrderEnteralFormula":
				if let res = try NutritionOrderEnteralFormula(json: json, owner: owner) as? T { return res }
			case "NutritionOrderEnteralFormulaAdministration":
				if let res = try NutritionOrderEnteralFormulaAdministration(json: json, owner: owner) as? T { return res }
			case "NutritionOrderOralDiet":
				if let res = try NutritionOrderOralDiet(json: json, owner: owner) as? T { return res }
			case "NutritionOrderOralDietNutrient":
				if let res = try NutritionOrderOralDietNutrient(json: json, owner: owner) as? T { return res }
			case "NutritionOrderOralDietTexture":
				if let res = try NutritionOrderOralDietTexture(json: json, owner: owner) as? T { return res }
			case "NutritionOrderSupplement":
				if let res = try NutritionOrderSupplement(json: json, owner: owner) as? T { return res }
			case "Observation":
				if let res = try Observation(json: json, owner: owner) as? T { return res }
			case "ObservationComponent":
				if let res = try ObservationComponent(json: json, owner: owner) as? T { return res }
			case "ObservationReferenceRange":
				if let res = try ObservationReferenceRange(json: json, owner: owner) as? T { return res }
			case "ObservationRelated":
				if let res = try ObservationRelated(json: json, owner: owner) as? T { return res }
			case "OperationDefinition":
				if let res = try OperationDefinition(json: json, owner: owner) as? T { return res }
			case "OperationDefinitionOverload":
				if let res = try OperationDefinitionOverload(json: json, owner: owner) as? T { return res }
			case "OperationDefinitionParameter":
				if let res = try OperationDefinitionParameter(json: json, owner: owner) as? T { return res }
			case "OperationDefinitionParameterBinding":
				if let res = try OperationDefinitionParameterBinding(json: json, owner: owner) as? T { return res }
			case "OperationOutcome":
				if let res = try OperationOutcome(json: json, owner: owner) as? T { return res }
			case "OperationOutcomeIssue":
				if let res = try OperationOutcomeIssue(json: json, owner: owner) as? T { return res }
			case "Organization":
				if let res = try Organization(json: json, owner: owner) as? T { return res }
			case "OrganizationContact":
				if let res = try OrganizationContact(json: json, owner: owner) as? T { return res }
			case "ParameterDefinition":
				if let res = try ParameterDefinition(json: json, owner: owner) as? T { return res }
			case "Parameters":
				if let res = try Parameters(json: json, owner: owner) as? T { return res }
			case "ParametersParameter":
				if let res = try ParametersParameter(json: json, owner: owner) as? T { return res }
			case "Patient":
				if let res = try Patient(json: json, owner: owner) as? T { return res }
			case "PatientAnimal":
				if let res = try PatientAnimal(json: json, owner: owner) as? T { return res }
			case "PatientCommunication":
				if let res = try PatientCommunication(json: json, owner: owner) as? T { return res }
			case "PatientContact":
				if let res = try PatientContact(json: json, owner: owner) as? T { return res }
			case "PatientLink":
				if let res = try PatientLink(json: json, owner: owner) as? T { return res }
			case "PaymentNotice":
				if let res = try PaymentNotice(json: json, owner: owner) as? T { return res }
			case "PaymentReconciliation":
				if let res = try PaymentReconciliation(json: json, owner: owner) as? T { return res }
			case "PaymentReconciliationDetail":
				if let res = try PaymentReconciliationDetail(json: json, owner: owner) as? T { return res }
			case "PaymentReconciliationProcessNote":
				if let res = try PaymentReconciliationProcessNote(json: json, owner: owner) as? T { return res }
			case "Period":
				if let res = try Period(json: json, owner: owner) as? T { return res }
			case "Person":
				if let res = try Person(json: json, owner: owner) as? T { return res }
			case "PersonLink":
				if let res = try PersonLink(json: json, owner: owner) as? T { return res }
			case "PlanDefinition":
				if let res = try PlanDefinition(json: json, owner: owner) as? T { return res }
			case "PlanDefinitionActionDefinition":
				if let res = try PlanDefinitionActionDefinition(json: json, owner: owner) as? T { return res }
			case "PlanDefinitionActionDefinitionCondition":
				if let res = try PlanDefinitionActionDefinitionCondition(json: json, owner: owner) as? T { return res }
			case "PlanDefinitionActionDefinitionDynamicValue":
				if let res = try PlanDefinitionActionDefinitionDynamicValue(json: json, owner: owner) as? T { return res }
			case "PlanDefinitionActionDefinitionParticipant":
				if let res = try PlanDefinitionActionDefinitionParticipant(json: json, owner: owner) as? T { return res }
			case "PlanDefinitionActionDefinitionRelatedAction":
				if let res = try PlanDefinitionActionDefinitionRelatedAction(json: json, owner: owner) as? T { return res }
			case "PlanDefinitionGoalDefinition":
				if let res = try PlanDefinitionGoalDefinition(json: json, owner: owner) as? T { return res }
			case "PlanDefinitionGoalDefinitionTarget":
				if let res = try PlanDefinitionGoalDefinitionTarget(json: json, owner: owner) as? T { return res }
			case "Practitioner":
				if let res = try Practitioner(json: json, owner: owner) as? T { return res }
			case "PractitionerQualification":
				if let res = try PractitionerQualification(json: json, owner: owner) as? T { return res }
			case "PractitionerRole":
				if let res = try PractitionerRole(json: json, owner: owner) as? T { return res }
			case "PractitionerRoleAvailableTime":
				if let res = try PractitionerRoleAvailableTime(json: json, owner: owner) as? T { return res }
			case "PractitionerRoleNotAvailable":
				if let res = try PractitionerRoleNotAvailable(json: json, owner: owner) as? T { return res }
			case "Procedure":
				if let res = try Procedure(json: json, owner: owner) as? T { return res }
			case "ProcedureFocalDevice":
				if let res = try ProcedureFocalDevice(json: json, owner: owner) as? T { return res }
			case "ProcedurePerformer":
				if let res = try ProcedurePerformer(json: json, owner: owner) as? T { return res }
			case "ProcedureRequest":
				if let res = try ProcedureRequest(json: json, owner: owner) as? T { return res }
			case "ProcedureRequestRequester":
				if let res = try ProcedureRequestRequester(json: json, owner: owner) as? T { return res }
			case "ProcessRequest":
				if let res = try ProcessRequest(json: json, owner: owner) as? T { return res }
			case "ProcessRequestItem":
				if let res = try ProcessRequestItem(json: json, owner: owner) as? T { return res }
			case "ProcessResponse":
				if let res = try ProcessResponse(json: json, owner: owner) as? T { return res }
			case "ProcessResponseProcessNote":
				if let res = try ProcessResponseProcessNote(json: json, owner: owner) as? T { return res }
			case "Provenance":
				if let res = try Provenance(json: json, owner: owner) as? T { return res }
			case "ProvenanceAgent":
				if let res = try ProvenanceAgent(json: json, owner: owner) as? T { return res }
			case "ProvenanceEntity":
				if let res = try ProvenanceEntity(json: json, owner: owner) as? T { return res }
			case "Quantity":
				if let res = try Quantity(json: json, owner: owner) as? T { return res }
			case "Questionnaire":
				if let res = try Questionnaire(json: json, owner: owner) as? T { return res }
			case "QuestionnaireItem":
				if let res = try QuestionnaireItem(json: json, owner: owner) as? T { return res }
			case "QuestionnaireItemEnableWhen":
				if let res = try QuestionnaireItemEnableWhen(json: json, owner: owner) as? T { return res }
			case "QuestionnaireItemOption":
				if let res = try QuestionnaireItemOption(json: json, owner: owner) as? T { return res }
			case "QuestionnaireResponse":
				if let res = try QuestionnaireResponse(json: json, owner: owner) as? T { return res }
			case "QuestionnaireResponseItem":
				if let res = try QuestionnaireResponseItem(json: json, owner: owner) as? T { return res }
			case "QuestionnaireResponseItemAnswer":
				if let res = try QuestionnaireResponseItemAnswer(json: json, owner: owner) as? T { return res }
			case "Range":
				if let res = try Range(json: json, owner: owner) as? T { return res }
			case "Ratio":
				if let res = try Ratio(json: json, owner: owner) as? T { return res }
			case "Reference":
				if let res = try Reference(json: json, owner: owner) as? T { return res }
			case "ReferralRequest":
				if let res = try ReferralRequest(json: json, owner: owner) as? T { return res }
			case "ReferralRequestRequester":
				if let res = try ReferralRequestRequester(json: json, owner: owner) as? T { return res }
			case "RelatedArtifact":
				if let res = try RelatedArtifact(json: json, owner: owner) as? T { return res }
			case "RelatedPerson":
				if let res = try RelatedPerson(json: json, owner: owner) as? T { return res }
			case "RequestGroup":
				if let res = try RequestGroup(json: json, owner: owner) as? T { return res }
			case "RequestGroupAction":
				if let res = try RequestGroupAction(json: json, owner: owner) as? T { return res }
			case "RequestGroupActionCondition":
				if let res = try RequestGroupActionCondition(json: json, owner: owner) as? T { return res }
			case "RequestGroupActionRelatedAction":
				if let res = try RequestGroupActionRelatedAction(json: json, owner: owner) as? T { return res }
			case "ResearchStudy":
				if let res = try ResearchStudy(json: json, owner: owner) as? T { return res }
			case "ResearchStudyArm":
				if let res = try ResearchStudyArm(json: json, owner: owner) as? T { return res }
			case "ResearchSubject":
				if let res = try ResearchSubject(json: json, owner: owner) as? T { return res }
			case "Resource":
				if let res = try Resource(json: json, owner: owner) as? T { return res }
			case "RiskAssessment":
				if let res = try RiskAssessment(json: json, owner: owner) as? T { return res }
			case "RiskAssessmentPrediction":
				if let res = try RiskAssessmentPrediction(json: json, owner: owner) as? T { return res }
			case "SampledData":
				if let res = try SampledData(json: json, owner: owner) as? T { return res }
			case "Schedule":
				if let res = try Schedule(json: json, owner: owner) as? T { return res }
			case "SearchParameter":
				if let res = try SearchParameter(json: json, owner: owner) as? T { return res }
			case "SearchParameterComponent":
				if let res = try SearchParameterComponent(json: json, owner: owner) as? T { return res }
			case "Sequence":
				if let res = try Sequence(json: json, owner: owner) as? T { return res }
			case "SequenceQuality":
				if let res = try SequenceQuality(json: json, owner: owner) as? T { return res }
			case "SequenceReferenceSeq":
				if let res = try SequenceReferenceSeq(json: json, owner: owner) as? T { return res }
			case "SequenceRepository":
				if let res = try SequenceRepository(json: json, owner: owner) as? T { return res }
			case "SequenceVariant":
				if let res = try SequenceVariant(json: json, owner: owner) as? T { return res }
			case "ServiceDefinition":
				if let res = try ServiceDefinition(json: json, owner: owner) as? T { return res }
			case "Signature":
				if let res = try Signature(json: json, owner: owner) as? T { return res }
			case "Slot":
				if let res = try Slot(json: json, owner: owner) as? T { return res }
			case "Specimen":
				if let res = try Specimen(json: json, owner: owner) as? T { return res }
			case "SpecimenCollection":
				if let res = try SpecimenCollection(json: json, owner: owner) as? T { return res }
			case "SpecimenContainer":
				if let res = try SpecimenContainer(json: json, owner: owner) as? T { return res }
			case "SpecimenProcessing":
				if let res = try SpecimenProcessing(json: json, owner: owner) as? T { return res }
			case "StructureDefinition":
				if let res = try StructureDefinition(json: json, owner: owner) as? T { return res }
			case "StructureDefinitionDifferential":
				if let res = try StructureDefinitionDifferential(json: json, owner: owner) as? T { return res }
			case "StructureDefinitionMapping":
				if let res = try StructureDefinitionMapping(json: json, owner: owner) as? T { return res }
			case "StructureDefinitionSnapshot":
				if let res = try StructureDefinitionSnapshot(json: json, owner: owner) as? T { return res }
			case "StructureMap":
				if let res = try StructureMap(json: json, owner: owner) as? T { return res }
			case "StructureMapGroup":
				if let res = try StructureMapGroup(json: json, owner: owner) as? T { return res }
			case "StructureMapGroupInput":
				if let res = try StructureMapGroupInput(json: json, owner: owner) as? T { return res }
			case "StructureMapGroupRule":
				if let res = try StructureMapGroupRule(json: json, owner: owner) as? T { return res }
			case "StructureMapGroupRuleDependent":
				if let res = try StructureMapGroupRuleDependent(json: json, owner: owner) as? T { return res }
			case "StructureMapGroupRuleSource":
				if let res = try StructureMapGroupRuleSource(json: json, owner: owner) as? T { return res }
			case "StructureMapGroupRuleTarget":
				if let res = try StructureMapGroupRuleTarget(json: json, owner: owner) as? T { return res }
			case "StructureMapGroupRuleTargetParameter":
				if let res = try StructureMapGroupRuleTargetParameter(json: json, owner: owner) as? T { return res }
			case "StructureMapStructure":
				if let res = try StructureMapStructure(json: json, owner: owner) as? T { return res }
			case "Subscription":
				if let res = try Subscription(json: json, owner: owner) as? T { return res }
			case "SubscriptionChannel":
				if let res = try SubscriptionChannel(json: json, owner: owner) as? T { return res }
			case "Substance":
				if let res = try Substance(json: json, owner: owner) as? T { return res }
			case "SubstanceIngredient":
				if let res = try SubstanceIngredient(json: json, owner: owner) as? T { return res }
			case "SubstanceInstance":
				if let res = try SubstanceInstance(json: json, owner: owner) as? T { return res }
			case "SupplyDelivery":
				if let res = try SupplyDelivery(json: json, owner: owner) as? T { return res }
			case "SupplyDeliverySuppliedItem":
				if let res = try SupplyDeliverySuppliedItem(json: json, owner: owner) as? T { return res }
			case "SupplyRequest":
				if let res = try SupplyRequest(json: json, owner: owner) as? T { return res }
			case "SupplyRequestOrderedItem":
				if let res = try SupplyRequestOrderedItem(json: json, owner: owner) as? T { return res }
			case "SupplyRequestRequester":
				if let res = try SupplyRequestRequester(json: json, owner: owner) as? T { return res }
			case "Task":
				if let res = try Task(json: json, owner: owner) as? T { return res }
			case "TaskInput":
				if let res = try TaskInput(json: json, owner: owner) as? T { return res }
			case "TaskOutput":
				if let res = try TaskOutput(json: json, owner: owner) as? T { return res }
			case "TaskRequester":
				if let res = try TaskRequester(json: json, owner: owner) as? T { return res }
			case "TaskRestriction":
				if let res = try TaskRestriction(json: json, owner: owner) as? T { return res }
			case "TestReport":
				if let res = try TestReport(json: json, owner: owner) as? T { return res }
			case "TestReportParticipant":
				if let res = try TestReportParticipant(json: json, owner: owner) as? T { return res }
			case "TestReportSetup":
				if let res = try TestReportSetup(json: json, owner: owner) as? T { return res }
			case "TestReportSetupAction":
				if let res = try TestReportSetupAction(json: json, owner: owner) as? T { return res }
			case "TestReportSetupActionAssert":
				if let res = try TestReportSetupActionAssert(json: json, owner: owner) as? T { return res }
			case "TestReportSetupActionOperation":
				if let res = try TestReportSetupActionOperation(json: json, owner: owner) as? T { return res }
			case "TestReportTeardown":
				if let res = try TestReportTeardown(json: json, owner: owner) as? T { return res }
			case "TestReportTeardownAction":
				if let res = try TestReportTeardownAction(json: json, owner: owner) as? T { return res }
			case "TestReportTest":
				if let res = try TestReportTest(json: json, owner: owner) as? T { return res }
			case "TestReportTestAction":
				if let res = try TestReportTestAction(json: json, owner: owner) as? T { return res }
			case "TestScript":
				if let res = try TestScript(json: json, owner: owner) as? T { return res }
			case "TestScriptDestination":
				if let res = try TestScriptDestination(json: json, owner: owner) as? T { return res }
			case "TestScriptFixture":
				if let res = try TestScriptFixture(json: json, owner: owner) as? T { return res }
			case "TestScriptMetadata":
				if let res = try TestScriptMetadata(json: json, owner: owner) as? T { return res }
			case "TestScriptMetadataCapability":
				if let res = try TestScriptMetadataCapability(json: json, owner: owner) as? T { return res }
			case "TestScriptMetadataLink":
				if let res = try TestScriptMetadataLink(json: json, owner: owner) as? T { return res }
			case "TestScriptOrigin":
				if let res = try TestScriptOrigin(json: json, owner: owner) as? T { return res }
			case "TestScriptRule":
				if let res = try TestScriptRule(json: json, owner: owner) as? T { return res }
			case "TestScriptRuleParam":
				if let res = try TestScriptRuleParam(json: json, owner: owner) as? T { return res }
			case "TestScriptRuleset":
				if let res = try TestScriptRuleset(json: json, owner: owner) as? T { return res }
			case "TestScriptRulesetRule":
				if let res = try TestScriptRulesetRule(json: json, owner: owner) as? T { return res }
			case "TestScriptRulesetRuleParam":
				if let res = try TestScriptRulesetRuleParam(json: json, owner: owner) as? T { return res }
			case "TestScriptSetup":
				if let res = try TestScriptSetup(json: json, owner: owner) as? T { return res }
			case "TestScriptSetupAction":
				if let res = try TestScriptSetupAction(json: json, owner: owner) as? T { return res }
			case "TestScriptSetupActionAssert":
				if let res = try TestScriptSetupActionAssert(json: json, owner: owner) as? T { return res }
			case "TestScriptSetupActionAssertRule":
				if let res = try TestScriptSetupActionAssertRule(json: json, owner: owner) as? T { return res }
			case "TestScriptSetupActionAssertRuleParam":
				if let res = try TestScriptSetupActionAssertRuleParam(json: json, owner: owner) as? T { return res }
			case "TestScriptSetupActionAssertRuleset":
				if let res = try TestScriptSetupActionAssertRuleset(json: json, owner: owner) as? T { return res }
			case "TestScriptSetupActionAssertRulesetRule":
				if let res = try TestScriptSetupActionAssertRulesetRule(json: json, owner: owner) as? T { return res }
			case "TestScriptSetupActionAssertRulesetRuleParam":
				if let res = try TestScriptSetupActionAssertRulesetRuleParam(json: json, owner: owner) as? T { return res }
			case "TestScriptSetupActionOperation":
				if let res = try TestScriptSetupActionOperation(json: json, owner: owner) as? T { return res }
			case "TestScriptSetupActionOperationRequestHeader":
				if let res = try TestScriptSetupActionOperationRequestHeader(json: json, owner: owner) as? T { return res }
			case "TestScriptTeardown":
				if let res = try TestScriptTeardown(json: json, owner: owner) as? T { return res }
			case "TestScriptTeardownAction":
				if let res = try TestScriptTeardownAction(json: json, owner: owner) as? T { return res }
			case "TestScriptTest":
				if let res = try TestScriptTest(json: json, owner: owner) as? T { return res }
			case "TestScriptTestAction":
				if let res = try TestScriptTestAction(json: json, owner: owner) as? T { return res }
			case "TestScriptVariable":
				if let res = try TestScriptVariable(json: json, owner: owner) as? T { return res }
			case "Timing":
				if let res = try Timing(json: json, owner: owner) as? T { return res }
			case "TimingRepeat":
				if let res = try TimingRepeat(json: json, owner: owner) as? T { return res }
			case "TriggerDefinition":
				if let res = try TriggerDefinition(json: json, owner: owner) as? T { return res }
			case "UsageContext":
				if let res = try UsageContext(json: json, owner: owner) as? T { return res }
			case "ValueSet":
				if let res = try ValueSet(json: json, owner: owner) as? T { return res }
			case "ValueSetCompose":
				if let res = try ValueSetCompose(json: json, owner: owner) as? T { return res }
			case "ValueSetComposeInclude":
				if let res = try ValueSetComposeInclude(json: json, owner: owner) as? T { return res }
			case "ValueSetComposeIncludeConcept":
				if let res = try ValueSetComposeIncludeConcept(json: json, owner: owner) as? T { return res }
			case "ValueSetComposeIncludeConceptDesignation":
				if let res = try ValueSetComposeIncludeConceptDesignation(json: json, owner: owner) as? T { return res }
			case "ValueSetComposeIncludeFilter":
				if let res = try ValueSetComposeIncludeFilter(json: json, owner: owner) as? T { return res }
			case "ValueSetExpansion":
				if let res = try ValueSetExpansion(json: json, owner: owner) as? T { return res }
			case "ValueSetExpansionContains":
				if let res = try ValueSetExpansionContains(json: json, owner: owner) as? T { return res }
			case "ValueSetExpansionParameter":
				if let res = try ValueSetExpansionParameter(json: json, owner: owner) as? T { return res }
			case "VisionPrescription":
				if let res = try VisionPrescription(json: json, owner: owner) as? T { return res }
			case "VisionPrescriptionDispense":
				if let res = try VisionPrescriptionDispense(json: json, owner: owner) as? T { return res }
			default:
				break
		}
		return try T(json: json, owner: owner)
	}
}
