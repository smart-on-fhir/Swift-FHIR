//
//  FHIRAbstractBase+Factory.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 on 2016-11-04.
//  2016, SMART Health IT.
//


/**
Extension to FHIRAbstractBase to be able to instantiate by class name.
*/
extension FHIRAbstractBase {
	
	public class func factory(_ className: String, json: FHIRJSON, owner: FHIRAbstractBase?) throws -> FHIRAbstractBase {
		switch className {
			case "Account":
				return try Account(json: json, owner: owner)
			case "ActivityDefinition":
				return try ActivityDefinition(json: json, owner: owner)
			case "ActivityDefinitionDynamicValue":
				return try ActivityDefinitionDynamicValue(json: json, owner: owner)
			case "Address":
				return try Address(json: json, owner: owner)
			case "Age":
				return try Age(json: json, owner: owner)
			case "AllergyIntolerance":
				return try AllergyIntolerance(json: json, owner: owner)
			case "AllergyIntoleranceReaction":
				return try AllergyIntoleranceReaction(json: json, owner: owner)
			case "Annotation":
				return try Annotation(json: json, owner: owner)
			case "Appointment":
				return try Appointment(json: json, owner: owner)
			case "AppointmentParticipant":
				return try AppointmentParticipant(json: json, owner: owner)
			case "AppointmentResponse":
				return try AppointmentResponse(json: json, owner: owner)
			case "Attachment":
				return try Attachment(json: json, owner: owner)
			case "AuditEvent":
				return try AuditEvent(json: json, owner: owner)
			case "AuditEventAgent":
				return try AuditEventAgent(json: json, owner: owner)
			case "AuditEventAgentNetwork":
				return try AuditEventAgentNetwork(json: json, owner: owner)
			case "AuditEventEntity":
				return try AuditEventEntity(json: json, owner: owner)
			case "AuditEventEntityDetail":
				return try AuditEventEntityDetail(json: json, owner: owner)
			case "AuditEventSource":
				return try AuditEventSource(json: json, owner: owner)
			case "BackboneElement":
				return try BackboneElement(json: json, owner: owner)
			case "Basic":
				return try Basic(json: json, owner: owner)
			case "Binary":
				return try Binary(json: json, owner: owner)
			case "BodySite":
				return try BodySite(json: json, owner: owner)
			case "Bundle":
				return try Bundle(json: json, owner: owner)
			case "BundleEntry":
				return try BundleEntry(json: json, owner: owner)
			case "BundleEntryRequest":
				return try BundleEntryRequest(json: json, owner: owner)
			case "BundleEntryResponse":
				return try BundleEntryResponse(json: json, owner: owner)
			case "BundleEntrySearch":
				return try BundleEntrySearch(json: json, owner: owner)
			case "BundleLink":
				return try BundleLink(json: json, owner: owner)
			case "CapabilityStatement":
				return try CapabilityStatement(json: json, owner: owner)
			case "CapabilityStatementDocument":
				return try CapabilityStatementDocument(json: json, owner: owner)
			case "CapabilityStatementImplementation":
				return try CapabilityStatementImplementation(json: json, owner: owner)
			case "CapabilityStatementMessaging":
				return try CapabilityStatementMessaging(json: json, owner: owner)
			case "CapabilityStatementMessagingEndpoint":
				return try CapabilityStatementMessagingEndpoint(json: json, owner: owner)
			case "CapabilityStatementMessagingEvent":
				return try CapabilityStatementMessagingEvent(json: json, owner: owner)
			case "CapabilityStatementRest":
				return try CapabilityStatementRest(json: json, owner: owner)
			case "CapabilityStatementRestInteraction":
				return try CapabilityStatementRestInteraction(json: json, owner: owner)
			case "CapabilityStatementRestOperation":
				return try CapabilityStatementRestOperation(json: json, owner: owner)
			case "CapabilityStatementRestResource":
				return try CapabilityStatementRestResource(json: json, owner: owner)
			case "CapabilityStatementRestResourceInteraction":
				return try CapabilityStatementRestResourceInteraction(json: json, owner: owner)
			case "CapabilityStatementRestResourceSearchParam":
				return try CapabilityStatementRestResourceSearchParam(json: json, owner: owner)
			case "CapabilityStatementRestSecurity":
				return try CapabilityStatementRestSecurity(json: json, owner: owner)
			case "CapabilityStatementRestSecurityCertificate":
				return try CapabilityStatementRestSecurityCertificate(json: json, owner: owner)
			case "CapabilityStatementSoftware":
				return try CapabilityStatementSoftware(json: json, owner: owner)
			case "CarePlan":
				return try CarePlan(json: json, owner: owner)
			case "CarePlanActivity":
				return try CarePlanActivity(json: json, owner: owner)
			case "CarePlanActivityDetail":
				return try CarePlanActivityDetail(json: json, owner: owner)
			case "CarePlanRelatedPlan":
				return try CarePlanRelatedPlan(json: json, owner: owner)
			case "CareTeam":
				return try CareTeam(json: json, owner: owner)
			case "CareTeamParticipant":
				return try CareTeamParticipant(json: json, owner: owner)
			case "Claim":
				return try Claim(json: json, owner: owner)
			case "ClaimAccident":
				return try ClaimAccident(json: json, owner: owner)
			case "ClaimCoverage":
				return try ClaimCoverage(json: json, owner: owner)
			case "ClaimDiagnosis":
				return try ClaimDiagnosis(json: json, owner: owner)
			case "ClaimInformation":
				return try ClaimInformation(json: json, owner: owner)
			case "ClaimItem":
				return try ClaimItem(json: json, owner: owner)
			case "ClaimItemCareTeam":
				return try ClaimItemCareTeam(json: json, owner: owner)
			case "ClaimItemDetail":
				return try ClaimItemDetail(json: json, owner: owner)
			case "ClaimItemDetailSubDetail":
				return try ClaimItemDetailSubDetail(json: json, owner: owner)
			case "ClaimItemProsthesis":
				return try ClaimItemProsthesis(json: json, owner: owner)
			case "ClaimMissingTeeth":
				return try ClaimMissingTeeth(json: json, owner: owner)
			case "ClaimPayee":
				return try ClaimPayee(json: json, owner: owner)
			case "ClaimProcedure":
				return try ClaimProcedure(json: json, owner: owner)
			case "ClaimRelated":
				return try ClaimRelated(json: json, owner: owner)
			case "ClaimResponse":
				return try ClaimResponse(json: json, owner: owner)
			case "ClaimResponseAddItem":
				return try ClaimResponseAddItem(json: json, owner: owner)
			case "ClaimResponseAddItemDetail":
				return try ClaimResponseAddItemDetail(json: json, owner: owner)
			case "ClaimResponseCoverage":
				return try ClaimResponseCoverage(json: json, owner: owner)
			case "ClaimResponseError":
				return try ClaimResponseError(json: json, owner: owner)
			case "ClaimResponseItem":
				return try ClaimResponseItem(json: json, owner: owner)
			case "ClaimResponseItemAdjudication":
				return try ClaimResponseItemAdjudication(json: json, owner: owner)
			case "ClaimResponseItemDetail":
				return try ClaimResponseItemDetail(json: json, owner: owner)
			case "ClaimResponseItemDetailSubDetail":
				return try ClaimResponseItemDetailSubDetail(json: json, owner: owner)
			case "ClaimResponseNote":
				return try ClaimResponseNote(json: json, owner: owner)
			case "ClaimResponsePayment":
				return try ClaimResponsePayment(json: json, owner: owner)
			case "ClinicalImpression":
				return try ClinicalImpression(json: json, owner: owner)
			case "ClinicalImpressionFinding":
				return try ClinicalImpressionFinding(json: json, owner: owner)
			case "ClinicalImpressionInvestigation":
				return try ClinicalImpressionInvestigation(json: json, owner: owner)
			case "CodeSystem":
				return try CodeSystem(json: json, owner: owner)
			case "CodeSystemConcept":
				return try CodeSystemConcept(json: json, owner: owner)
			case "CodeSystemConceptDesignation":
				return try CodeSystemConceptDesignation(json: json, owner: owner)
			case "CodeSystemConceptProperty":
				return try CodeSystemConceptProperty(json: json, owner: owner)
			case "CodeSystemFilter":
				return try CodeSystemFilter(json: json, owner: owner)
			case "CodeSystemProperty":
				return try CodeSystemProperty(json: json, owner: owner)
			case "CodeableConcept":
				return try CodeableConcept(json: json, owner: owner)
			case "Coding":
				return try Coding(json: json, owner: owner)
			case "Communication":
				return try Communication(json: json, owner: owner)
			case "CommunicationPayload":
				return try CommunicationPayload(json: json, owner: owner)
			case "CommunicationRequest":
				return try CommunicationRequest(json: json, owner: owner)
			case "CommunicationRequestPayload":
				return try CommunicationRequestPayload(json: json, owner: owner)
			case "CompartmentDefinition":
				return try CompartmentDefinition(json: json, owner: owner)
			case "CompartmentDefinitionResource":
				return try CompartmentDefinitionResource(json: json, owner: owner)
			case "Composition":
				return try Composition(json: json, owner: owner)
			case "CompositionAttester":
				return try CompositionAttester(json: json, owner: owner)
			case "CompositionEvent":
				return try CompositionEvent(json: json, owner: owner)
			case "CompositionSection":
				return try CompositionSection(json: json, owner: owner)
			case "ConceptMap":
				return try ConceptMap(json: json, owner: owner)
			case "ConceptMapGroup":
				return try ConceptMapGroup(json: json, owner: owner)
			case "ConceptMapGroupElement":
				return try ConceptMapGroupElement(json: json, owner: owner)
			case "ConceptMapGroupElementTarget":
				return try ConceptMapGroupElementTarget(json: json, owner: owner)
			case "ConceptMapGroupElementTargetDependsOn":
				return try ConceptMapGroupElementTargetDependsOn(json: json, owner: owner)
			case "Condition":
				return try Condition(json: json, owner: owner)
			case "ConditionEvidence":
				return try ConditionEvidence(json: json, owner: owner)
			case "ConditionStage":
				return try ConditionStage(json: json, owner: owner)
			case "Consent":
				return try Consent(json: json, owner: owner)
			case "ConsentExcept":
				return try ConsentExcept(json: json, owner: owner)
			case "ConsentExceptActor":
				return try ConsentExceptActor(json: json, owner: owner)
			case "ConsentExceptData":
				return try ConsentExceptData(json: json, owner: owner)
			case "ContactDetail":
				return try ContactDetail(json: json, owner: owner)
			case "ContactPoint":
				return try ContactPoint(json: json, owner: owner)
			case "Contract":
				return try Contract(json: json, owner: owner)
			case "ContractAgent":
				return try ContractAgent(json: json, owner: owner)
			case "ContractFriendly":
				return try ContractFriendly(json: json, owner: owner)
			case "ContractLegal":
				return try ContractLegal(json: json, owner: owner)
			case "ContractRule":
				return try ContractRule(json: json, owner: owner)
			case "ContractSigner":
				return try ContractSigner(json: json, owner: owner)
			case "ContractTerm":
				return try ContractTerm(json: json, owner: owner)
			case "ContractTermAgent":
				return try ContractTermAgent(json: json, owner: owner)
			case "ContractTermValuedItem":
				return try ContractTermValuedItem(json: json, owner: owner)
			case "ContractValuedItem":
				return try ContractValuedItem(json: json, owner: owner)
			case "Contributor":
				return try Contributor(json: json, owner: owner)
			case "Count":
				return try Count(json: json, owner: owner)
			case "Coverage":
				return try Coverage(json: json, owner: owner)
			case "DataElement":
				return try DataElement(json: json, owner: owner)
			case "DataElementMapping":
				return try DataElementMapping(json: json, owner: owner)
			case "DataRequirement":
				return try DataRequirement(json: json, owner: owner)
			case "DataRequirementCodeFilter":
				return try DataRequirementCodeFilter(json: json, owner: owner)
			case "DataRequirementDateFilter":
				return try DataRequirementDateFilter(json: json, owner: owner)
			case "DetectedIssue":
				return try DetectedIssue(json: json, owner: owner)
			case "DetectedIssueMitigation":
				return try DetectedIssueMitigation(json: json, owner: owner)
			case "Device":
				return try Device(json: json, owner: owner)
			case "DeviceComponent":
				return try DeviceComponent(json: json, owner: owner)
			case "DeviceComponentProductionSpecification":
				return try DeviceComponentProductionSpecification(json: json, owner: owner)
			case "DeviceMetric":
				return try DeviceMetric(json: json, owner: owner)
			case "DeviceMetricCalibration":
				return try DeviceMetricCalibration(json: json, owner: owner)
			case "DeviceUseRequest":
				return try DeviceUseRequest(json: json, owner: owner)
			case "DeviceUseStatement":
				return try DeviceUseStatement(json: json, owner: owner)
			case "DiagnosticReport":
				return try DiagnosticReport(json: json, owner: owner)
			case "DiagnosticReportImage":
				return try DiagnosticReportImage(json: json, owner: owner)
			case "DiagnosticRequest":
				return try DiagnosticRequest(json: json, owner: owner)
			case "Distance":
				return try Distance(json: json, owner: owner)
			case "DocumentManifest":
				return try DocumentManifest(json: json, owner: owner)
			case "DocumentManifestContent":
				return try DocumentManifestContent(json: json, owner: owner)
			case "DocumentManifestRelated":
				return try DocumentManifestRelated(json: json, owner: owner)
			case "DocumentReference":
				return try DocumentReference(json: json, owner: owner)
			case "DocumentReferenceContent":
				return try DocumentReferenceContent(json: json, owner: owner)
			case "DocumentReferenceContext":
				return try DocumentReferenceContext(json: json, owner: owner)
			case "DocumentReferenceContextRelated":
				return try DocumentReferenceContextRelated(json: json, owner: owner)
			case "DocumentReferenceRelatesTo":
				return try DocumentReferenceRelatesTo(json: json, owner: owner)
			case "DomainResource":
				return try DomainResource(json: json, owner: owner)
			case "DosageInstruction":
				return try DosageInstruction(json: json, owner: owner)
			case "Duration":
				return try Duration(json: json, owner: owner)
			case "Element":
				return try Element(json: json, owner: owner)
			case "ElementDefinition":
				return try ElementDefinition(json: json, owner: owner)
			case "ElementDefinitionBase":
				return try ElementDefinitionBase(json: json, owner: owner)
			case "ElementDefinitionBinding":
				return try ElementDefinitionBinding(json: json, owner: owner)
			case "ElementDefinitionConstraint":
				return try ElementDefinitionConstraint(json: json, owner: owner)
			case "ElementDefinitionMapping":
				return try ElementDefinitionMapping(json: json, owner: owner)
			case "ElementDefinitionSlicing":
				return try ElementDefinitionSlicing(json: json, owner: owner)
			case "ElementDefinitionType":
				return try ElementDefinitionType(json: json, owner: owner)
			case "EligibilityRequest":
				return try EligibilityRequest(json: json, owner: owner)
			case "EligibilityResponse":
				return try EligibilityResponse(json: json, owner: owner)
			case "EligibilityResponseBenefitBalance":
				return try EligibilityResponseBenefitBalance(json: json, owner: owner)
			case "EligibilityResponseBenefitBalanceFinancial":
				return try EligibilityResponseBenefitBalanceFinancial(json: json, owner: owner)
			case "EligibilityResponseError":
				return try EligibilityResponseError(json: json, owner: owner)
			case "Encounter":
				return try Encounter(json: json, owner: owner)
			case "EncounterHospitalization":
				return try EncounterHospitalization(json: json, owner: owner)
			case "EncounterLocation":
				return try EncounterLocation(json: json, owner: owner)
			case "EncounterParticipant":
				return try EncounterParticipant(json: json, owner: owner)
			case "EncounterStatusHistory":
				return try EncounterStatusHistory(json: json, owner: owner)
			case "Endpoint":
				return try Endpoint(json: json, owner: owner)
			case "EnrollmentRequest":
				return try EnrollmentRequest(json: json, owner: owner)
			case "EnrollmentResponse":
				return try EnrollmentResponse(json: json, owner: owner)
			case "EpisodeOfCare":
				return try EpisodeOfCare(json: json, owner: owner)
			case "EpisodeOfCareStatusHistory":
				return try EpisodeOfCareStatusHistory(json: json, owner: owner)
			case "ExpansionProfile":
				return try ExpansionProfile(json: json, owner: owner)
			case "ExpansionProfileDesignation":
				return try ExpansionProfileDesignation(json: json, owner: owner)
			case "ExpansionProfileDesignationExclude":
				return try ExpansionProfileDesignationExclude(json: json, owner: owner)
			case "ExpansionProfileDesignationExcludeDesignation":
				return try ExpansionProfileDesignationExcludeDesignation(json: json, owner: owner)
			case "ExpansionProfileDesignationInclude":
				return try ExpansionProfileDesignationInclude(json: json, owner: owner)
			case "ExpansionProfileDesignationIncludeDesignation":
				return try ExpansionProfileDesignationIncludeDesignation(json: json, owner: owner)
			case "ExpansionProfileExcludedSystem":
				return try ExpansionProfileExcludedSystem(json: json, owner: owner)
			case "ExpansionProfileFixedVersion":
				return try ExpansionProfileFixedVersion(json: json, owner: owner)
			case "ExplanationOfBenefit":
				return try ExplanationOfBenefit(json: json, owner: owner)
			case "ExplanationOfBenefitAccident":
				return try ExplanationOfBenefitAccident(json: json, owner: owner)
			case "ExplanationOfBenefitAddItem":
				return try ExplanationOfBenefitAddItem(json: json, owner: owner)
			case "ExplanationOfBenefitAddItemDetail":
				return try ExplanationOfBenefitAddItemDetail(json: json, owner: owner)
			case "ExplanationOfBenefitBenefitBalance":
				return try ExplanationOfBenefitBenefitBalance(json: json, owner: owner)
			case "ExplanationOfBenefitBenefitBalanceFinancial":
				return try ExplanationOfBenefitBenefitBalanceFinancial(json: json, owner: owner)
			case "ExplanationOfBenefitCoverage":
				return try ExplanationOfBenefitCoverage(json: json, owner: owner)
			case "ExplanationOfBenefitDiagnosis":
				return try ExplanationOfBenefitDiagnosis(json: json, owner: owner)
			case "ExplanationOfBenefitInformation":
				return try ExplanationOfBenefitInformation(json: json, owner: owner)
			case "ExplanationOfBenefitItem":
				return try ExplanationOfBenefitItem(json: json, owner: owner)
			case "ExplanationOfBenefitItemAdjudication":
				return try ExplanationOfBenefitItemAdjudication(json: json, owner: owner)
			case "ExplanationOfBenefitItemCareTeam":
				return try ExplanationOfBenefitItemCareTeam(json: json, owner: owner)
			case "ExplanationOfBenefitItemDetail":
				return try ExplanationOfBenefitItemDetail(json: json, owner: owner)
			case "ExplanationOfBenefitItemDetailSubDetail":
				return try ExplanationOfBenefitItemDetailSubDetail(json: json, owner: owner)
			case "ExplanationOfBenefitItemProsthesis":
				return try ExplanationOfBenefitItemProsthesis(json: json, owner: owner)
			case "ExplanationOfBenefitMissingTeeth":
				return try ExplanationOfBenefitMissingTeeth(json: json, owner: owner)
			case "ExplanationOfBenefitNote":
				return try ExplanationOfBenefitNote(json: json, owner: owner)
			case "ExplanationOfBenefitPayee":
				return try ExplanationOfBenefitPayee(json: json, owner: owner)
			case "ExplanationOfBenefitPayment":
				return try ExplanationOfBenefitPayment(json: json, owner: owner)
			case "ExplanationOfBenefitProcedure":
				return try ExplanationOfBenefitProcedure(json: json, owner: owner)
			case "ExplanationOfBenefitRelated":
				return try ExplanationOfBenefitRelated(json: json, owner: owner)
			case "Extension":
				return try Extension(json: json, owner: owner)
			case "FamilyMemberHistory":
				return try FamilyMemberHistory(json: json, owner: owner)
			case "FamilyMemberHistoryCondition":
				return try FamilyMemberHistoryCondition(json: json, owner: owner)
			case "Flag":
				return try Flag(json: json, owner: owner)
			case "Goal":
				return try Goal(json: json, owner: owner)
			case "GoalOutcome":
				return try GoalOutcome(json: json, owner: owner)
			case "Group":
				return try Group(json: json, owner: owner)
			case "GroupCharacteristic":
				return try GroupCharacteristic(json: json, owner: owner)
			case "GroupMember":
				return try GroupMember(json: json, owner: owner)
			case "GuidanceResponse":
				return try GuidanceResponse(json: json, owner: owner)
			case "HealthcareService":
				return try HealthcareService(json: json, owner: owner)
			case "HealthcareServiceAvailableTime":
				return try HealthcareServiceAvailableTime(json: json, owner: owner)
			case "HealthcareServiceNotAvailable":
				return try HealthcareServiceNotAvailable(json: json, owner: owner)
			case "HumanName":
				return try HumanName(json: json, owner: owner)
			case "Identifier":
				return try Identifier(json: json, owner: owner)
			case "ImagingManifest":
				return try ImagingManifest(json: json, owner: owner)
			case "ImagingManifestStudy":
				return try ImagingManifestStudy(json: json, owner: owner)
			case "ImagingManifestStudyBaseLocation":
				return try ImagingManifestStudyBaseLocation(json: json, owner: owner)
			case "ImagingManifestStudySeries":
				return try ImagingManifestStudySeries(json: json, owner: owner)
			case "ImagingManifestStudySeriesBaseLocation":
				return try ImagingManifestStudySeriesBaseLocation(json: json, owner: owner)
			case "ImagingManifestStudySeriesInstance":
				return try ImagingManifestStudySeriesInstance(json: json, owner: owner)
			case "ImagingStudy":
				return try ImagingStudy(json: json, owner: owner)
			case "ImagingStudyBaseLocation":
				return try ImagingStudyBaseLocation(json: json, owner: owner)
			case "ImagingStudySeries":
				return try ImagingStudySeries(json: json, owner: owner)
			case "ImagingStudySeriesBaseLocation":
				return try ImagingStudySeriesBaseLocation(json: json, owner: owner)
			case "ImagingStudySeriesInstance":
				return try ImagingStudySeriesInstance(json: json, owner: owner)
			case "Immunization":
				return try Immunization(json: json, owner: owner)
			case "ImmunizationExplanation":
				return try ImmunizationExplanation(json: json, owner: owner)
			case "ImmunizationReaction":
				return try ImmunizationReaction(json: json, owner: owner)
			case "ImmunizationRecommendation":
				return try ImmunizationRecommendation(json: json, owner: owner)
			case "ImmunizationRecommendationRecommendation":
				return try ImmunizationRecommendationRecommendation(json: json, owner: owner)
			case "ImmunizationRecommendationRecommendationDateCriterion":
				return try ImmunizationRecommendationRecommendationDateCriterion(json: json, owner: owner)
			case "ImmunizationRecommendationRecommendationProtocol":
				return try ImmunizationRecommendationRecommendationProtocol(json: json, owner: owner)
			case "ImmunizationVaccinationProtocol":
				return try ImmunizationVaccinationProtocol(json: json, owner: owner)
			case "ImplementationGuide":
				return try ImplementationGuide(json: json, owner: owner)
			case "ImplementationGuideDependency":
				return try ImplementationGuideDependency(json: json, owner: owner)
			case "ImplementationGuideGlobal":
				return try ImplementationGuideGlobal(json: json, owner: owner)
			case "ImplementationGuidePackage":
				return try ImplementationGuidePackage(json: json, owner: owner)
			case "ImplementationGuidePackageResource":
				return try ImplementationGuidePackageResource(json: json, owner: owner)
			case "ImplementationGuidePage":
				return try ImplementationGuidePage(json: json, owner: owner)
			case "Library":
				return try Library(json: json, owner: owner)
			case "Linkage":
				return try Linkage(json: json, owner: owner)
			case "LinkageItem":
				return try LinkageItem(json: json, owner: owner)
			case "List":
				return try List(json: json, owner: owner)
			case "ListEntry":
				return try ListEntry(json: json, owner: owner)
			case "Location":
				return try Location(json: json, owner: owner)
			case "LocationPosition":
				return try LocationPosition(json: json, owner: owner)
			case "Measure":
				return try Measure(json: json, owner: owner)
			case "MeasureGroup":
				return try MeasureGroup(json: json, owner: owner)
			case "MeasureGroupPopulation":
				return try MeasureGroupPopulation(json: json, owner: owner)
			case "MeasureGroupStratifier":
				return try MeasureGroupStratifier(json: json, owner: owner)
			case "MeasureReport":
				return try MeasureReport(json: json, owner: owner)
			case "MeasureReportGroup":
				return try MeasureReportGroup(json: json, owner: owner)
			case "MeasureReportGroupPopulation":
				return try MeasureReportGroupPopulation(json: json, owner: owner)
			case "MeasureReportGroupStratifier":
				return try MeasureReportGroupStratifier(json: json, owner: owner)
			case "MeasureReportGroupStratifierGroup":
				return try MeasureReportGroupStratifierGroup(json: json, owner: owner)
			case "MeasureReportGroupStratifierGroupPopulation":
				return try MeasureReportGroupStratifierGroupPopulation(json: json, owner: owner)
			case "MeasureReportGroupSupplementalData":
				return try MeasureReportGroupSupplementalData(json: json, owner: owner)
			case "MeasureReportGroupSupplementalDataGroup":
				return try MeasureReportGroupSupplementalDataGroup(json: json, owner: owner)
			case "MeasureSupplementalData":
				return try MeasureSupplementalData(json: json, owner: owner)
			case "Media":
				return try Media(json: json, owner: owner)
			case "Medication":
				return try Medication(json: json, owner: owner)
			case "MedicationAdministration":
				return try MedicationAdministration(json: json, owner: owner)
			case "MedicationAdministrationDosage":
				return try MedicationAdministrationDosage(json: json, owner: owner)
			case "MedicationDispense":
				return try MedicationDispense(json: json, owner: owner)
			case "MedicationDispenseSubstitution":
				return try MedicationDispenseSubstitution(json: json, owner: owner)
			case "MedicationPackage":
				return try MedicationPackage(json: json, owner: owner)
			case "MedicationPackageContent":
				return try MedicationPackageContent(json: json, owner: owner)
			case "MedicationProduct":
				return try MedicationProduct(json: json, owner: owner)
			case "MedicationProductBatch":
				return try MedicationProductBatch(json: json, owner: owner)
			case "MedicationProductIngredient":
				return try MedicationProductIngredient(json: json, owner: owner)
			case "MedicationRequest":
				return try MedicationRequest(json: json, owner: owner)
			case "MedicationRequestDispenseRequest":
				return try MedicationRequestDispenseRequest(json: json, owner: owner)
			case "MedicationRequestSubstitution":
				return try MedicationRequestSubstitution(json: json, owner: owner)
			case "MedicationStatement":
				return try MedicationStatement(json: json, owner: owner)
			case "MessageHeader":
				return try MessageHeader(json: json, owner: owner)
			case "MessageHeaderDestination":
				return try MessageHeaderDestination(json: json, owner: owner)
			case "MessageHeaderResponse":
				return try MessageHeaderResponse(json: json, owner: owner)
			case "MessageHeaderSource":
				return try MessageHeaderSource(json: json, owner: owner)
			case "Meta":
				return try Meta(json: json, owner: owner)
			case "MetadataResource":
				return try MetadataResource(json: json, owner: owner)
			case "Money":
				return try Money(json: json, owner: owner)
			case "NamingSystem":
				return try NamingSystem(json: json, owner: owner)
			case "NamingSystemUniqueId":
				return try NamingSystemUniqueId(json: json, owner: owner)
			case "Narrative":
				return try Narrative(json: json, owner: owner)
			case "NutritionRequest":
				return try NutritionRequest(json: json, owner: owner)
			case "NutritionRequestEnteralFormula":
				return try NutritionRequestEnteralFormula(json: json, owner: owner)
			case "NutritionRequestEnteralFormulaAdministration":
				return try NutritionRequestEnteralFormulaAdministration(json: json, owner: owner)
			case "NutritionRequestOralDiet":
				return try NutritionRequestOralDiet(json: json, owner: owner)
			case "NutritionRequestOralDietNutrient":
				return try NutritionRequestOralDietNutrient(json: json, owner: owner)
			case "NutritionRequestOralDietTexture":
				return try NutritionRequestOralDietTexture(json: json, owner: owner)
			case "NutritionRequestSupplement":
				return try NutritionRequestSupplement(json: json, owner: owner)
			case "Observation":
				return try Observation(json: json, owner: owner)
			case "ObservationComponent":
				return try ObservationComponent(json: json, owner: owner)
			case "ObservationReferenceRange":
				return try ObservationReferenceRange(json: json, owner: owner)
			case "ObservationRelated":
				return try ObservationRelated(json: json, owner: owner)
			case "OperationDefinition":
				return try OperationDefinition(json: json, owner: owner)
			case "OperationDefinitionOverload":
				return try OperationDefinitionOverload(json: json, owner: owner)
			case "OperationDefinitionParameter":
				return try OperationDefinitionParameter(json: json, owner: owner)
			case "OperationDefinitionParameterBinding":
				return try OperationDefinitionParameterBinding(json: json, owner: owner)
			case "OperationOutcome":
				return try OperationOutcome(json: json, owner: owner)
			case "OperationOutcomeIssue":
				return try OperationOutcomeIssue(json: json, owner: owner)
			case "Organization":
				return try Organization(json: json, owner: owner)
			case "OrganizationContact":
				return try OrganizationContact(json: json, owner: owner)
			case "ParameterDefinition":
				return try ParameterDefinition(json: json, owner: owner)
			case "Parameters":
				return try Parameters(json: json, owner: owner)
			case "ParametersParameter":
				return try ParametersParameter(json: json, owner: owner)
			case "Patient":
				return try Patient(json: json, owner: owner)
			case "PatientAnimal":
				return try PatientAnimal(json: json, owner: owner)
			case "PatientCommunication":
				return try PatientCommunication(json: json, owner: owner)
			case "PatientContact":
				return try PatientContact(json: json, owner: owner)
			case "PatientLink":
				return try PatientLink(json: json, owner: owner)
			case "PaymentNotice":
				return try PaymentNotice(json: json, owner: owner)
			case "PaymentReconciliation":
				return try PaymentReconciliation(json: json, owner: owner)
			case "PaymentReconciliationDetail":
				return try PaymentReconciliationDetail(json: json, owner: owner)
			case "PaymentReconciliationNote":
				return try PaymentReconciliationNote(json: json, owner: owner)
			case "Period":
				return try Period(json: json, owner: owner)
			case "Person":
				return try Person(json: json, owner: owner)
			case "PersonLink":
				return try PersonLink(json: json, owner: owner)
			case "PlanDefinition":
				return try PlanDefinition(json: json, owner: owner)
			case "PlanDefinitionActionDefinition":
				return try PlanDefinitionActionDefinition(json: json, owner: owner)
			case "PlanDefinitionActionDefinitionCondition":
				return try PlanDefinitionActionDefinitionCondition(json: json, owner: owner)
			case "PlanDefinitionActionDefinitionDynamicValue":
				return try PlanDefinitionActionDefinitionDynamicValue(json: json, owner: owner)
			case "PlanDefinitionActionDefinitionRelatedAction":
				return try PlanDefinitionActionDefinitionRelatedAction(json: json, owner: owner)
			case "Practitioner":
				return try Practitioner(json: json, owner: owner)
			case "PractitionerPractRole":
				return try PractitionerPractRole(json: json, owner: owner)
			case "PractitionerQualification":
				return try PractitionerQualification(json: json, owner: owner)
			case "PractitionerRole":
				return try PractitionerRole(json: json, owner: owner)
			case "PractitionerRoleAvailableTime":
				return try PractitionerRoleAvailableTime(json: json, owner: owner)
			case "PractitionerRoleNotAvailable":
				return try PractitionerRoleNotAvailable(json: json, owner: owner)
			case "Procedure":
				return try Procedure(json: json, owner: owner)
			case "ProcedureFocalDevice":
				return try ProcedureFocalDevice(json: json, owner: owner)
			case "ProcedurePerformer":
				return try ProcedurePerformer(json: json, owner: owner)
			case "ProcedureRequest":
				return try ProcedureRequest(json: json, owner: owner)
			case "ProcessRequest":
				return try ProcessRequest(json: json, owner: owner)
			case "ProcessRequestItem":
				return try ProcessRequestItem(json: json, owner: owner)
			case "ProcessResponse":
				return try ProcessResponse(json: json, owner: owner)
			case "ProcessResponseNotes":
				return try ProcessResponseNotes(json: json, owner: owner)
			case "Provenance":
				return try Provenance(json: json, owner: owner)
			case "ProvenanceAgent":
				return try ProvenanceAgent(json: json, owner: owner)
			case "ProvenanceAgentRelatedAgent":
				return try ProvenanceAgentRelatedAgent(json: json, owner: owner)
			case "ProvenanceEntity":
				return try ProvenanceEntity(json: json, owner: owner)
			case "Quantity":
				return try Quantity(json: json, owner: owner)
			case "Questionnaire":
				return try Questionnaire(json: json, owner: owner)
			case "QuestionnaireItem":
				return try QuestionnaireItem(json: json, owner: owner)
			case "QuestionnaireItemEnableWhen":
				return try QuestionnaireItemEnableWhen(json: json, owner: owner)
			case "QuestionnaireItemOption":
				return try QuestionnaireItemOption(json: json, owner: owner)
			case "QuestionnaireResponse":
				return try QuestionnaireResponse(json: json, owner: owner)
			case "QuestionnaireResponseItem":
				return try QuestionnaireResponseItem(json: json, owner: owner)
			case "QuestionnaireResponseItemAnswer":
				return try QuestionnaireResponseItemAnswer(json: json, owner: owner)
			case "Range":
				return try Range(json: json, owner: owner)
			case "Ratio":
				return try Ratio(json: json, owner: owner)
			case "Reference":
				return try Reference(json: json, owner: owner)
			case "ReferralRequest":
				return try ReferralRequest(json: json, owner: owner)
			case "RelatedArtifact":
				return try RelatedArtifact(json: json, owner: owner)
			case "RelatedPerson":
				return try RelatedPerson(json: json, owner: owner)
			case "RequestGroup":
				return try RequestGroup(json: json, owner: owner)
			case "RequestGroupAction":
				return try RequestGroupAction(json: json, owner: owner)
			case "RequestGroupActionRelatedAction":
				return try RequestGroupActionRelatedAction(json: json, owner: owner)
			case "Resource":
				return try Resource(json: json, owner: owner)
			case "RiskAssessment":
				return try RiskAssessment(json: json, owner: owner)
			case "RiskAssessmentPrediction":
				return try RiskAssessmentPrediction(json: json, owner: owner)
			case "SampledData":
				return try SampledData(json: json, owner: owner)
			case "Schedule":
				return try Schedule(json: json, owner: owner)
			case "SearchParameter":
				return try SearchParameter(json: json, owner: owner)
			case "Sequence":
				return try Sequence(json: json, owner: owner)
			case "SequenceQuality":
				return try SequenceQuality(json: json, owner: owner)
			case "SequenceReferenceSeq":
				return try SequenceReferenceSeq(json: json, owner: owner)
			case "SequenceRepository":
				return try SequenceRepository(json: json, owner: owner)
			case "SequenceStructureVariant":
				return try SequenceStructureVariant(json: json, owner: owner)
			case "SequenceStructureVariantInner":
				return try SequenceStructureVariantInner(json: json, owner: owner)
			case "SequenceStructureVariantOuter":
				return try SequenceStructureVariantOuter(json: json, owner: owner)
			case "SequenceVariant":
				return try SequenceVariant(json: json, owner: owner)
			case "ServiceDefinition":
				return try ServiceDefinition(json: json, owner: owner)
			case "Signature":
				return try Signature(json: json, owner: owner)
			case "Slot":
				return try Slot(json: json, owner: owner)
			case "Specimen":
				return try Specimen(json: json, owner: owner)
			case "SpecimenCollection":
				return try SpecimenCollection(json: json, owner: owner)
			case "SpecimenContainer":
				return try SpecimenContainer(json: json, owner: owner)
			case "SpecimenTreatment":
				return try SpecimenTreatment(json: json, owner: owner)
			case "StructureDefinition":
				return try StructureDefinition(json: json, owner: owner)
			case "StructureDefinitionDifferential":
				return try StructureDefinitionDifferential(json: json, owner: owner)
			case "StructureDefinitionMapping":
				return try StructureDefinitionMapping(json: json, owner: owner)
			case "StructureDefinitionSnapshot":
				return try StructureDefinitionSnapshot(json: json, owner: owner)
			case "StructureMap":
				return try StructureMap(json: json, owner: owner)
			case "StructureMapGroup":
				return try StructureMapGroup(json: json, owner: owner)
			case "StructureMapGroupInput":
				return try StructureMapGroupInput(json: json, owner: owner)
			case "StructureMapGroupRule":
				return try StructureMapGroupRule(json: json, owner: owner)
			case "StructureMapGroupRuleDependent":
				return try StructureMapGroupRuleDependent(json: json, owner: owner)
			case "StructureMapGroupRuleSource":
				return try StructureMapGroupRuleSource(json: json, owner: owner)
			case "StructureMapGroupRuleTarget":
				return try StructureMapGroupRuleTarget(json: json, owner: owner)
			case "StructureMapGroupRuleTargetParameter":
				return try StructureMapGroupRuleTargetParameter(json: json, owner: owner)
			case "StructureMapStructure":
				return try StructureMapStructure(json: json, owner: owner)
			case "Subscription":
				return try Subscription(json: json, owner: owner)
			case "SubscriptionChannel":
				return try SubscriptionChannel(json: json, owner: owner)
			case "Substance":
				return try Substance(json: json, owner: owner)
			case "SubstanceIngredient":
				return try SubstanceIngredient(json: json, owner: owner)
			case "SubstanceInstance":
				return try SubstanceInstance(json: json, owner: owner)
			case "SupplyDelivery":
				return try SupplyDelivery(json: json, owner: owner)
			case "SupplyRequest":
				return try SupplyRequest(json: json, owner: owner)
			case "SupplyRequestWhen":
				return try SupplyRequestWhen(json: json, owner: owner)
			case "Task":
				return try Task(json: json, owner: owner)
			case "TaskFulfillment":
				return try TaskFulfillment(json: json, owner: owner)
			case "TaskInput":
				return try TaskInput(json: json, owner: owner)
			case "TaskOutput":
				return try TaskOutput(json: json, owner: owner)
			case "TestReport":
				return try TestReport(json: json, owner: owner)
			case "TestReportParticipant":
				return try TestReportParticipant(json: json, owner: owner)
			case "TestReportSetup":
				return try TestReportSetup(json: json, owner: owner)
			case "TestReportSetupAction":
				return try TestReportSetupAction(json: json, owner: owner)
			case "TestReportSetupActionAssert":
				return try TestReportSetupActionAssert(json: json, owner: owner)
			case "TestReportSetupActionOperation":
				return try TestReportSetupActionOperation(json: json, owner: owner)
			case "TestReportTeardown":
				return try TestReportTeardown(json: json, owner: owner)
			case "TestReportTeardownAction":
				return try TestReportTeardownAction(json: json, owner: owner)
			case "TestReportTest":
				return try TestReportTest(json: json, owner: owner)
			case "TestReportTestAction":
				return try TestReportTestAction(json: json, owner: owner)
			case "TestScript":
				return try TestScript(json: json, owner: owner)
			case "TestScriptDestination":
				return try TestScriptDestination(json: json, owner: owner)
			case "TestScriptFixture":
				return try TestScriptFixture(json: json, owner: owner)
			case "TestScriptMetadata":
				return try TestScriptMetadata(json: json, owner: owner)
			case "TestScriptMetadataCapability":
				return try TestScriptMetadataCapability(json: json, owner: owner)
			case "TestScriptMetadataLink":
				return try TestScriptMetadataLink(json: json, owner: owner)
			case "TestScriptOrigin":
				return try TestScriptOrigin(json: json, owner: owner)
			case "TestScriptRule":
				return try TestScriptRule(json: json, owner: owner)
			case "TestScriptRuleParam":
				return try TestScriptRuleParam(json: json, owner: owner)
			case "TestScriptRuleset":
				return try TestScriptRuleset(json: json, owner: owner)
			case "TestScriptRulesetRule":
				return try TestScriptRulesetRule(json: json, owner: owner)
			case "TestScriptRulesetRuleParam":
				return try TestScriptRulesetRuleParam(json: json, owner: owner)
			case "TestScriptSetup":
				return try TestScriptSetup(json: json, owner: owner)
			case "TestScriptSetupAction":
				return try TestScriptSetupAction(json: json, owner: owner)
			case "TestScriptSetupActionAssert":
				return try TestScriptSetupActionAssert(json: json, owner: owner)
			case "TestScriptSetupActionAssertRule":
				return try TestScriptSetupActionAssertRule(json: json, owner: owner)
			case "TestScriptSetupActionAssertRuleParam":
				return try TestScriptSetupActionAssertRuleParam(json: json, owner: owner)
			case "TestScriptSetupActionAssertRuleset":
				return try TestScriptSetupActionAssertRuleset(json: json, owner: owner)
			case "TestScriptSetupActionAssertRulesetRule":
				return try TestScriptSetupActionAssertRulesetRule(json: json, owner: owner)
			case "TestScriptSetupActionAssertRulesetRuleParam":
				return try TestScriptSetupActionAssertRulesetRuleParam(json: json, owner: owner)
			case "TestScriptSetupActionOperation":
				return try TestScriptSetupActionOperation(json: json, owner: owner)
			case "TestScriptSetupActionOperationRequestHeader":
				return try TestScriptSetupActionOperationRequestHeader(json: json, owner: owner)
			case "TestScriptTeardown":
				return try TestScriptTeardown(json: json, owner: owner)
			case "TestScriptTeardownAction":
				return try TestScriptTeardownAction(json: json, owner: owner)
			case "TestScriptTest":
				return try TestScriptTest(json: json, owner: owner)
			case "TestScriptTestAction":
				return try TestScriptTestAction(json: json, owner: owner)
			case "TestScriptVariable":
				return try TestScriptVariable(json: json, owner: owner)
			case "Timing":
				return try Timing(json: json, owner: owner)
			case "TimingRepeat":
				return try TimingRepeat(json: json, owner: owner)
			case "TriggerDefinition":
				return try TriggerDefinition(json: json, owner: owner)
			case "UsageContext":
				return try UsageContext(json: json, owner: owner)
			case "ValueSet":
				return try ValueSet(json: json, owner: owner)
			case "ValueSetCompose":
				return try ValueSetCompose(json: json, owner: owner)
			case "ValueSetComposeInclude":
				return try ValueSetComposeInclude(json: json, owner: owner)
			case "ValueSetComposeIncludeConcept":
				return try ValueSetComposeIncludeConcept(json: json, owner: owner)
			case "ValueSetComposeIncludeConceptDesignation":
				return try ValueSetComposeIncludeConceptDesignation(json: json, owner: owner)
			case "ValueSetComposeIncludeFilter":
				return try ValueSetComposeIncludeFilter(json: json, owner: owner)
			case "ValueSetExpansion":
				return try ValueSetExpansion(json: json, owner: owner)
			case "ValueSetExpansionContains":
				return try ValueSetExpansionContains(json: json, owner: owner)
			case "ValueSetExpansionParameter":
				return try ValueSetExpansionParameter(json: json, owner: owner)
			case "VisionPrescription":
				return try VisionPrescription(json: json, owner: owner)
			case "VisionPrescriptionDispense":
				return try VisionPrescriptionDispense(json: json, owner: owner)
			default:
				return try FHIRAbstractBase(json: json, owner: owner)
		}
	}
}
