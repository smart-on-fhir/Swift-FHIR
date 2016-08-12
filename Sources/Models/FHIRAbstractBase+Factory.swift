//
//  FHIRAbstractBase+Factory.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//


/**
 *  Extension to FHIRAbstractBase to be able to instantiate by class name.
 */
extension FHIRAbstractBase {
	
	public class func factory(className: String, json: FHIRJSON, owner: FHIRAbstractBase?) -> FHIRAbstractBase {
		switch className {
			case "Account":
				return Account(json: json, owner: owner)
			case "ActivityDefinition":
				return ActivityDefinition(json: json, owner: owner)
			case "ActivityDefinitionDynamicValue":
				return ActivityDefinitionDynamicValue(json: json, owner: owner)
			case "Address":
				return Address(json: json, owner: owner)
			case "Age":
				return Age(json: json, owner: owner)
			case "AllergyIntolerance":
				return AllergyIntolerance(json: json, owner: owner)
			case "AllergyIntoleranceReaction":
				return AllergyIntoleranceReaction(json: json, owner: owner)
			case "Annotation":
				return Annotation(json: json, owner: owner)
			case "Appointment":
				return Appointment(json: json, owner: owner)
			case "AppointmentParticipant":
				return AppointmentParticipant(json: json, owner: owner)
			case "AppointmentResponse":
				return AppointmentResponse(json: json, owner: owner)
			case "Attachment":
				return Attachment(json: json, owner: owner)
			case "AuditEvent":
				return AuditEvent(json: json, owner: owner)
			case "AuditEventAgent":
				return AuditEventAgent(json: json, owner: owner)
			case "AuditEventAgentNetwork":
				return AuditEventAgentNetwork(json: json, owner: owner)
			case "AuditEventEntity":
				return AuditEventEntity(json: json, owner: owner)
			case "AuditEventEntityDetail":
				return AuditEventEntityDetail(json: json, owner: owner)
			case "AuditEventSource":
				return AuditEventSource(json: json, owner: owner)
			case "BackboneElement":
				return BackboneElement(json: json, owner: owner)
			case "Basic":
				return Basic(json: json, owner: owner)
			case "Binary":
				return Binary(json: json, owner: owner)
			case "BodySite":
				return BodySite(json: json, owner: owner)
			case "Bundle":
				return Bundle(json: json, owner: owner)
			case "BundleEntry":
				return BundleEntry(json: json, owner: owner)
			case "BundleEntryRequest":
				return BundleEntryRequest(json: json, owner: owner)
			case "BundleEntryResponse":
				return BundleEntryResponse(json: json, owner: owner)
			case "BundleEntrySearch":
				return BundleEntrySearch(json: json, owner: owner)
			case "BundleLink":
				return BundleLink(json: json, owner: owner)
			case "CarePlan":
				return CarePlan(json: json, owner: owner)
			case "CarePlanActivity":
				return CarePlanActivity(json: json, owner: owner)
			case "CarePlanActivityDetail":
				return CarePlanActivityDetail(json: json, owner: owner)
			case "CarePlanRelatedPlan":
				return CarePlanRelatedPlan(json: json, owner: owner)
			case "CareTeam":
				return CareTeam(json: json, owner: owner)
			case "CareTeamParticipant":
				return CareTeamParticipant(json: json, owner: owner)
			case "Claim":
				return Claim(json: json, owner: owner)
			case "ClaimAccident":
				return ClaimAccident(json: json, owner: owner)
			case "ClaimCoverage":
				return ClaimCoverage(json: json, owner: owner)
			case "ClaimDiagnosis":
				return ClaimDiagnosis(json: json, owner: owner)
			case "ClaimInformation":
				return ClaimInformation(json: json, owner: owner)
			case "ClaimItem":
				return ClaimItem(json: json, owner: owner)
			case "ClaimItemCareTeam":
				return ClaimItemCareTeam(json: json, owner: owner)
			case "ClaimItemDetail":
				return ClaimItemDetail(json: json, owner: owner)
			case "ClaimItemDetailSubDetail":
				return ClaimItemDetailSubDetail(json: json, owner: owner)
			case "ClaimItemProsthesis":
				return ClaimItemProsthesis(json: json, owner: owner)
			case "ClaimMissingTeeth":
				return ClaimMissingTeeth(json: json, owner: owner)
			case "ClaimPayee":
				return ClaimPayee(json: json, owner: owner)
			case "ClaimProcedure":
				return ClaimProcedure(json: json, owner: owner)
			case "ClaimRelated":
				return ClaimRelated(json: json, owner: owner)
			case "ClaimResponse":
				return ClaimResponse(json: json, owner: owner)
			case "ClaimResponseAddItem":
				return ClaimResponseAddItem(json: json, owner: owner)
			case "ClaimResponseAddItemDetail":
				return ClaimResponseAddItemDetail(json: json, owner: owner)
			case "ClaimResponseCoverage":
				return ClaimResponseCoverage(json: json, owner: owner)
			case "ClaimResponseError":
				return ClaimResponseError(json: json, owner: owner)
			case "ClaimResponseItem":
				return ClaimResponseItem(json: json, owner: owner)
			case "ClaimResponseItemAdjudication":
				return ClaimResponseItemAdjudication(json: json, owner: owner)
			case "ClaimResponseItemDetail":
				return ClaimResponseItemDetail(json: json, owner: owner)
			case "ClaimResponseItemDetailSubDetail":
				return ClaimResponseItemDetailSubDetail(json: json, owner: owner)
			case "ClaimResponseNote":
				return ClaimResponseNote(json: json, owner: owner)
			case "ClaimResponsePayment":
				return ClaimResponsePayment(json: json, owner: owner)
			case "ClinicalImpression":
				return ClinicalImpression(json: json, owner: owner)
			case "ClinicalImpressionFinding":
				return ClinicalImpressionFinding(json: json, owner: owner)
			case "ClinicalImpressionInvestigations":
				return ClinicalImpressionInvestigations(json: json, owner: owner)
			case "CodeSystem":
				return CodeSystem(json: json, owner: owner)
			case "CodeSystemConcept":
				return CodeSystemConcept(json: json, owner: owner)
			case "CodeSystemConceptDesignation":
				return CodeSystemConceptDesignation(json: json, owner: owner)
			case "CodeSystemConceptProperty":
				return CodeSystemConceptProperty(json: json, owner: owner)
			case "CodeSystemContact":
				return CodeSystemContact(json: json, owner: owner)
			case "CodeSystemFilter":
				return CodeSystemFilter(json: json, owner: owner)
			case "CodeSystemProperty":
				return CodeSystemProperty(json: json, owner: owner)
			case "CodeableConcept":
				return CodeableConcept(json: json, owner: owner)
			case "Coding":
				return Coding(json: json, owner: owner)
			case "Communication":
				return Communication(json: json, owner: owner)
			case "CommunicationPayload":
				return CommunicationPayload(json: json, owner: owner)
			case "CommunicationRequest":
				return CommunicationRequest(json: json, owner: owner)
			case "CommunicationRequestPayload":
				return CommunicationRequestPayload(json: json, owner: owner)
			case "CompartmentDefinition":
				return CompartmentDefinition(json: json, owner: owner)
			case "CompartmentDefinitionContact":
				return CompartmentDefinitionContact(json: json, owner: owner)
			case "CompartmentDefinitionResource":
				return CompartmentDefinitionResource(json: json, owner: owner)
			case "Composition":
				return Composition(json: json, owner: owner)
			case "CompositionAttester":
				return CompositionAttester(json: json, owner: owner)
			case "CompositionEvent":
				return CompositionEvent(json: json, owner: owner)
			case "CompositionSection":
				return CompositionSection(json: json, owner: owner)
			case "ConceptMap":
				return ConceptMap(json: json, owner: owner)
			case "ConceptMapContact":
				return ConceptMapContact(json: json, owner: owner)
			case "ConceptMapGroup":
				return ConceptMapGroup(json: json, owner: owner)
			case "ConceptMapGroupElement":
				return ConceptMapGroupElement(json: json, owner: owner)
			case "ConceptMapGroupElementTarget":
				return ConceptMapGroupElementTarget(json: json, owner: owner)
			case "ConceptMapGroupElementTargetDependsOn":
				return ConceptMapGroupElementTargetDependsOn(json: json, owner: owner)
			case "Condition":
				return Condition(json: json, owner: owner)
			case "ConditionEvidence":
				return ConditionEvidence(json: json, owner: owner)
			case "ConditionStage":
				return ConditionStage(json: json, owner: owner)
			case "Conformance":
				return Conformance(json: json, owner: owner)
			case "ConformanceContact":
				return ConformanceContact(json: json, owner: owner)
			case "ConformanceDocument":
				return ConformanceDocument(json: json, owner: owner)
			case "ConformanceImplementation":
				return ConformanceImplementation(json: json, owner: owner)
			case "ConformanceMessaging":
				return ConformanceMessaging(json: json, owner: owner)
			case "ConformanceMessagingEndpoint":
				return ConformanceMessagingEndpoint(json: json, owner: owner)
			case "ConformanceMessagingEvent":
				return ConformanceMessagingEvent(json: json, owner: owner)
			case "ConformanceRest":
				return ConformanceRest(json: json, owner: owner)
			case "ConformanceRestInteraction":
				return ConformanceRestInteraction(json: json, owner: owner)
			case "ConformanceRestOperation":
				return ConformanceRestOperation(json: json, owner: owner)
			case "ConformanceRestResource":
				return ConformanceRestResource(json: json, owner: owner)
			case "ConformanceRestResourceInteraction":
				return ConformanceRestResourceInteraction(json: json, owner: owner)
			case "ConformanceRestResourceSearchParam":
				return ConformanceRestResourceSearchParam(json: json, owner: owner)
			case "ConformanceRestSecurity":
				return ConformanceRestSecurity(json: json, owner: owner)
			case "ConformanceRestSecurityCertificate":
				return ConformanceRestSecurityCertificate(json: json, owner: owner)
			case "ConformanceSoftware":
				return ConformanceSoftware(json: json, owner: owner)
			case "Consent":
				return Consent(json: json, owner: owner)
			case "ConsentExcept":
				return ConsentExcept(json: json, owner: owner)
			case "ConsentExceptActor":
				return ConsentExceptActor(json: json, owner: owner)
			case "ConsentExceptData":
				return ConsentExceptData(json: json, owner: owner)
			case "ContactDetail":
				return ContactDetail(json: json, owner: owner)
			case "ContactPoint":
				return ContactPoint(json: json, owner: owner)
			case "Contract":
				return Contract(json: json, owner: owner)
			case "ContractAgent":
				return ContractAgent(json: json, owner: owner)
			case "ContractFriendly":
				return ContractFriendly(json: json, owner: owner)
			case "ContractLegal":
				return ContractLegal(json: json, owner: owner)
			case "ContractRule":
				return ContractRule(json: json, owner: owner)
			case "ContractSigner":
				return ContractSigner(json: json, owner: owner)
			case "ContractTerm":
				return ContractTerm(json: json, owner: owner)
			case "ContractTermAgent":
				return ContractTermAgent(json: json, owner: owner)
			case "ContractTermValuedItem":
				return ContractTermValuedItem(json: json, owner: owner)
			case "ContractValuedItem":
				return ContractValuedItem(json: json, owner: owner)
			case "Contributor":
				return Contributor(json: json, owner: owner)
			case "Count":
				return Count(json: json, owner: owner)
			case "Coverage":
				return Coverage(json: json, owner: owner)
			case "DataElement":
				return DataElement(json: json, owner: owner)
			case "DataElementContact":
				return DataElementContact(json: json, owner: owner)
			case "DataElementMapping":
				return DataElementMapping(json: json, owner: owner)
			case "DataRequirement":
				return DataRequirement(json: json, owner: owner)
			case "DataRequirementCodeFilter":
				return DataRequirementCodeFilter(json: json, owner: owner)
			case "DataRequirementDateFilter":
				return DataRequirementDateFilter(json: json, owner: owner)
			case "DecisionSupportServiceModule":
				return DecisionSupportServiceModule(json: json, owner: owner)
			case "DetectedIssue":
				return DetectedIssue(json: json, owner: owner)
			case "DetectedIssueMitigation":
				return DetectedIssueMitigation(json: json, owner: owner)
			case "Device":
				return Device(json: json, owner: owner)
			case "DeviceComponent":
				return DeviceComponent(json: json, owner: owner)
			case "DeviceComponentProductionSpecification":
				return DeviceComponentProductionSpecification(json: json, owner: owner)
			case "DeviceMetric":
				return DeviceMetric(json: json, owner: owner)
			case "DeviceMetricCalibration":
				return DeviceMetricCalibration(json: json, owner: owner)
			case "DeviceUseRequest":
				return DeviceUseRequest(json: json, owner: owner)
			case "DeviceUseStatement":
				return DeviceUseStatement(json: json, owner: owner)
			case "DiagnosticReport":
				return DiagnosticReport(json: json, owner: owner)
			case "DiagnosticReportImage":
				return DiagnosticReportImage(json: json, owner: owner)
			case "DiagnosticRequest":
				return DiagnosticRequest(json: json, owner: owner)
			case "Distance":
				return Distance(json: json, owner: owner)
			case "DocumentManifest":
				return DocumentManifest(json: json, owner: owner)
			case "DocumentManifestContent":
				return DocumentManifestContent(json: json, owner: owner)
			case "DocumentManifestRelated":
				return DocumentManifestRelated(json: json, owner: owner)
			case "DocumentReference":
				return DocumentReference(json: json, owner: owner)
			case "DocumentReferenceContent":
				return DocumentReferenceContent(json: json, owner: owner)
			case "DocumentReferenceContext":
				return DocumentReferenceContext(json: json, owner: owner)
			case "DocumentReferenceContextRelated":
				return DocumentReferenceContextRelated(json: json, owner: owner)
			case "DocumentReferenceRelatesTo":
				return DocumentReferenceRelatesTo(json: json, owner: owner)
			case "DomainResource":
				return DomainResource(json: json, owner: owner)
			case "Duration":
				return Duration(json: json, owner: owner)
			case "Element":
				return Element(json: json, owner: owner)
			case "ElementDefinition":
				return ElementDefinition(json: json, owner: owner)
			case "ElementDefinitionBase":
				return ElementDefinitionBase(json: json, owner: owner)
			case "ElementDefinitionBinding":
				return ElementDefinitionBinding(json: json, owner: owner)
			case "ElementDefinitionConstraint":
				return ElementDefinitionConstraint(json: json, owner: owner)
			case "ElementDefinitionMapping":
				return ElementDefinitionMapping(json: json, owner: owner)
			case "ElementDefinitionSlicing":
				return ElementDefinitionSlicing(json: json, owner: owner)
			case "ElementDefinitionType":
				return ElementDefinitionType(json: json, owner: owner)
			case "EligibilityRequest":
				return EligibilityRequest(json: json, owner: owner)
			case "EligibilityResponse":
				return EligibilityResponse(json: json, owner: owner)
			case "EligibilityResponseBenefitBalance":
				return EligibilityResponseBenefitBalance(json: json, owner: owner)
			case "EligibilityResponseBenefitBalanceFinancial":
				return EligibilityResponseBenefitBalanceFinancial(json: json, owner: owner)
			case "EligibilityResponseError":
				return EligibilityResponseError(json: json, owner: owner)
			case "Encounter":
				return Encounter(json: json, owner: owner)
			case "EncounterHospitalization":
				return EncounterHospitalization(json: json, owner: owner)
			case "EncounterLocation":
				return EncounterLocation(json: json, owner: owner)
			case "EncounterParticipant":
				return EncounterParticipant(json: json, owner: owner)
			case "EncounterStatusHistory":
				return EncounterStatusHistory(json: json, owner: owner)
			case "Endpoint":
				return Endpoint(json: json, owner: owner)
			case "EnrollmentRequest":
				return EnrollmentRequest(json: json, owner: owner)
			case "EnrollmentResponse":
				return EnrollmentResponse(json: json, owner: owner)
			case "EpisodeOfCare":
				return EpisodeOfCare(json: json, owner: owner)
			case "EpisodeOfCareStatusHistory":
				return EpisodeOfCareStatusHistory(json: json, owner: owner)
			case "ExpansionProfile":
				return ExpansionProfile(json: json, owner: owner)
			case "ExpansionProfileCodeSystem":
				return ExpansionProfileCodeSystem(json: json, owner: owner)
			case "ExpansionProfileCodeSystemExclude":
				return ExpansionProfileCodeSystemExclude(json: json, owner: owner)
			case "ExpansionProfileCodeSystemExcludeCodeSystem":
				return ExpansionProfileCodeSystemExcludeCodeSystem(json: json, owner: owner)
			case "ExpansionProfileCodeSystemInclude":
				return ExpansionProfileCodeSystemInclude(json: json, owner: owner)
			case "ExpansionProfileCodeSystemIncludeCodeSystem":
				return ExpansionProfileCodeSystemIncludeCodeSystem(json: json, owner: owner)
			case "ExpansionProfileContact":
				return ExpansionProfileContact(json: json, owner: owner)
			case "ExpansionProfileDesignation":
				return ExpansionProfileDesignation(json: json, owner: owner)
			case "ExpansionProfileDesignationExclude":
				return ExpansionProfileDesignationExclude(json: json, owner: owner)
			case "ExpansionProfileDesignationExcludeDesignation":
				return ExpansionProfileDesignationExcludeDesignation(json: json, owner: owner)
			case "ExpansionProfileDesignationInclude":
				return ExpansionProfileDesignationInclude(json: json, owner: owner)
			case "ExpansionProfileDesignationIncludeDesignation":
				return ExpansionProfileDesignationIncludeDesignation(json: json, owner: owner)
			case "ExplanationOfBenefit":
				return ExplanationOfBenefit(json: json, owner: owner)
			case "ExplanationOfBenefitAccident":
				return ExplanationOfBenefitAccident(json: json, owner: owner)
			case "ExplanationOfBenefitAddItem":
				return ExplanationOfBenefitAddItem(json: json, owner: owner)
			case "ExplanationOfBenefitAddItemDetail":
				return ExplanationOfBenefitAddItemDetail(json: json, owner: owner)
			case "ExplanationOfBenefitBenefitBalance":
				return ExplanationOfBenefitBenefitBalance(json: json, owner: owner)
			case "ExplanationOfBenefitBenefitBalanceFinancial":
				return ExplanationOfBenefitBenefitBalanceFinancial(json: json, owner: owner)
			case "ExplanationOfBenefitCoverage":
				return ExplanationOfBenefitCoverage(json: json, owner: owner)
			case "ExplanationOfBenefitDiagnosis":
				return ExplanationOfBenefitDiagnosis(json: json, owner: owner)
			case "ExplanationOfBenefitInformation":
				return ExplanationOfBenefitInformation(json: json, owner: owner)
			case "ExplanationOfBenefitItem":
				return ExplanationOfBenefitItem(json: json, owner: owner)
			case "ExplanationOfBenefitItemAdjudication":
				return ExplanationOfBenefitItemAdjudication(json: json, owner: owner)
			case "ExplanationOfBenefitItemCareTeam":
				return ExplanationOfBenefitItemCareTeam(json: json, owner: owner)
			case "ExplanationOfBenefitItemDetail":
				return ExplanationOfBenefitItemDetail(json: json, owner: owner)
			case "ExplanationOfBenefitItemDetailSubDetail":
				return ExplanationOfBenefitItemDetailSubDetail(json: json, owner: owner)
			case "ExplanationOfBenefitItemProsthesis":
				return ExplanationOfBenefitItemProsthesis(json: json, owner: owner)
			case "ExplanationOfBenefitMissingTeeth":
				return ExplanationOfBenefitMissingTeeth(json: json, owner: owner)
			case "ExplanationOfBenefitNote":
				return ExplanationOfBenefitNote(json: json, owner: owner)
			case "ExplanationOfBenefitPayee":
				return ExplanationOfBenefitPayee(json: json, owner: owner)
			case "ExplanationOfBenefitPayment":
				return ExplanationOfBenefitPayment(json: json, owner: owner)
			case "ExplanationOfBenefitProcedure":
				return ExplanationOfBenefitProcedure(json: json, owner: owner)
			case "ExplanationOfBenefitRelated":
				return ExplanationOfBenefitRelated(json: json, owner: owner)
			case "Extension":
				return Extension(json: json, owner: owner)
			case "FamilyMemberHistory":
				return FamilyMemberHistory(json: json, owner: owner)
			case "FamilyMemberHistoryCondition":
				return FamilyMemberHistoryCondition(json: json, owner: owner)
			case "Flag":
				return Flag(json: json, owner: owner)
			case "Goal":
				return Goal(json: json, owner: owner)
			case "GoalOutcome":
				return GoalOutcome(json: json, owner: owner)
			case "Group":
				return Group(json: json, owner: owner)
			case "GroupCharacteristic":
				return GroupCharacteristic(json: json, owner: owner)
			case "GroupMember":
				return GroupMember(json: json, owner: owner)
			case "GuidanceResponse":
				return GuidanceResponse(json: json, owner: owner)
			case "GuidanceResponseAction":
				return GuidanceResponseAction(json: json, owner: owner)
			case "GuidanceResponseActionRelatedAction":
				return GuidanceResponseActionRelatedAction(json: json, owner: owner)
			case "HealthcareService":
				return HealthcareService(json: json, owner: owner)
			case "HealthcareServiceAvailableTime":
				return HealthcareServiceAvailableTime(json: json, owner: owner)
			case "HealthcareServiceNotAvailable":
				return HealthcareServiceNotAvailable(json: json, owner: owner)
			case "HumanName":
				return HumanName(json: json, owner: owner)
			case "Identifier":
				return Identifier(json: json, owner: owner)
			case "ImagingManifest":
				return ImagingManifest(json: json, owner: owner)
			case "ImagingManifestStudy":
				return ImagingManifestStudy(json: json, owner: owner)
			case "ImagingManifestStudyBaseLocation":
				return ImagingManifestStudyBaseLocation(json: json, owner: owner)
			case "ImagingManifestStudySeries":
				return ImagingManifestStudySeries(json: json, owner: owner)
			case "ImagingManifestStudySeriesBaseLocation":
				return ImagingManifestStudySeriesBaseLocation(json: json, owner: owner)
			case "ImagingManifestStudySeriesInstance":
				return ImagingManifestStudySeriesInstance(json: json, owner: owner)
			case "ImagingStudy":
				return ImagingStudy(json: json, owner: owner)
			case "ImagingStudyBaseLocation":
				return ImagingStudyBaseLocation(json: json, owner: owner)
			case "ImagingStudySeries":
				return ImagingStudySeries(json: json, owner: owner)
			case "ImagingStudySeriesBaseLocation":
				return ImagingStudySeriesBaseLocation(json: json, owner: owner)
			case "ImagingStudySeriesInstance":
				return ImagingStudySeriesInstance(json: json, owner: owner)
			case "Immunization":
				return Immunization(json: json, owner: owner)
			case "ImmunizationExplanation":
				return ImmunizationExplanation(json: json, owner: owner)
			case "ImmunizationReaction":
				return ImmunizationReaction(json: json, owner: owner)
			case "ImmunizationRecommendation":
				return ImmunizationRecommendation(json: json, owner: owner)
			case "ImmunizationRecommendationRecommendation":
				return ImmunizationRecommendationRecommendation(json: json, owner: owner)
			case "ImmunizationRecommendationRecommendationDateCriterion":
				return ImmunizationRecommendationRecommendationDateCriterion(json: json, owner: owner)
			case "ImmunizationRecommendationRecommendationProtocol":
				return ImmunizationRecommendationRecommendationProtocol(json: json, owner: owner)
			case "ImmunizationVaccinationProtocol":
				return ImmunizationVaccinationProtocol(json: json, owner: owner)
			case "ImplementationGuide":
				return ImplementationGuide(json: json, owner: owner)
			case "ImplementationGuideContact":
				return ImplementationGuideContact(json: json, owner: owner)
			case "ImplementationGuideDependency":
				return ImplementationGuideDependency(json: json, owner: owner)
			case "ImplementationGuideGlobal":
				return ImplementationGuideGlobal(json: json, owner: owner)
			case "ImplementationGuidePackage":
				return ImplementationGuidePackage(json: json, owner: owner)
			case "ImplementationGuidePackageResource":
				return ImplementationGuidePackageResource(json: json, owner: owner)
			case "ImplementationGuidePage":
				return ImplementationGuidePage(json: json, owner: owner)
			case "Library":
				return Library(json: json, owner: owner)
			case "Linkage":
				return Linkage(json: json, owner: owner)
			case "LinkageItem":
				return LinkageItem(json: json, owner: owner)
			case "List":
				return List(json: json, owner: owner)
			case "ListEntry":
				return ListEntry(json: json, owner: owner)
			case "Location":
				return Location(json: json, owner: owner)
			case "LocationPosition":
				return LocationPosition(json: json, owner: owner)
			case "Measure":
				return Measure(json: json, owner: owner)
			case "MeasureGroup":
				return MeasureGroup(json: json, owner: owner)
			case "MeasureGroupPopulation":
				return MeasureGroupPopulation(json: json, owner: owner)
			case "MeasureGroupStratifier":
				return MeasureGroupStratifier(json: json, owner: owner)
			case "MeasureReport":
				return MeasureReport(json: json, owner: owner)
			case "MeasureReportGroup":
				return MeasureReportGroup(json: json, owner: owner)
			case "MeasureReportGroupPopulation":
				return MeasureReportGroupPopulation(json: json, owner: owner)
			case "MeasureReportGroupStratifier":
				return MeasureReportGroupStratifier(json: json, owner: owner)
			case "MeasureReportGroupStratifierGroup":
				return MeasureReportGroupStratifierGroup(json: json, owner: owner)
			case "MeasureReportGroupStratifierGroupPopulation":
				return MeasureReportGroupStratifierGroupPopulation(json: json, owner: owner)
			case "MeasureReportGroupSupplementalData":
				return MeasureReportGroupSupplementalData(json: json, owner: owner)
			case "MeasureReportGroupSupplementalDataGroup":
				return MeasureReportGroupSupplementalDataGroup(json: json, owner: owner)
			case "MeasureSupplementalData":
				return MeasureSupplementalData(json: json, owner: owner)
			case "Media":
				return Media(json: json, owner: owner)
			case "Medication":
				return Medication(json: json, owner: owner)
			case "MedicationAdministration":
				return MedicationAdministration(json: json, owner: owner)
			case "MedicationAdministrationDosage":
				return MedicationAdministrationDosage(json: json, owner: owner)
			case "MedicationAdministrationEventHistory":
				return MedicationAdministrationEventHistory(json: json, owner: owner)
			case "MedicationDispense":
				return MedicationDispense(json: json, owner: owner)
			case "MedicationDispenseDosageInstruction":
				return MedicationDispenseDosageInstruction(json: json, owner: owner)
			case "MedicationDispenseEventHistory":
				return MedicationDispenseEventHistory(json: json, owner: owner)
			case "MedicationDispenseSubstitution":
				return MedicationDispenseSubstitution(json: json, owner: owner)
			case "MedicationOrder":
				return MedicationOrder(json: json, owner: owner)
			case "MedicationOrderDispenseRequest":
				return MedicationOrderDispenseRequest(json: json, owner: owner)
			case "MedicationOrderDosageInstruction":
				return MedicationOrderDosageInstruction(json: json, owner: owner)
			case "MedicationOrderEventHistory":
				return MedicationOrderEventHistory(json: json, owner: owner)
			case "MedicationOrderSubstitution":
				return MedicationOrderSubstitution(json: json, owner: owner)
			case "MedicationPackage":
				return MedicationPackage(json: json, owner: owner)
			case "MedicationPackageContent":
				return MedicationPackageContent(json: json, owner: owner)
			case "MedicationProduct":
				return MedicationProduct(json: json, owner: owner)
			case "MedicationProductBatch":
				return MedicationProductBatch(json: json, owner: owner)
			case "MedicationProductIngredient":
				return MedicationProductIngredient(json: json, owner: owner)
			case "MedicationStatement":
				return MedicationStatement(json: json, owner: owner)
			case "MedicationStatementDosage":
				return MedicationStatementDosage(json: json, owner: owner)
			case "MessageHeader":
				return MessageHeader(json: json, owner: owner)
			case "MessageHeaderDestination":
				return MessageHeaderDestination(json: json, owner: owner)
			case "MessageHeaderResponse":
				return MessageHeaderResponse(json: json, owner: owner)
			case "MessageHeaderSource":
				return MessageHeaderSource(json: json, owner: owner)
			case "Meta":
				return Meta(json: json, owner: owner)
			case "Money":
				return Money(json: json, owner: owner)
			case "NamingSystem":
				return NamingSystem(json: json, owner: owner)
			case "NamingSystemContact":
				return NamingSystemContact(json: json, owner: owner)
			case "NamingSystemUniqueId":
				return NamingSystemUniqueId(json: json, owner: owner)
			case "Narrative":
				return Narrative(json: json, owner: owner)
			case "NutritionRequest":
				return NutritionRequest(json: json, owner: owner)
			case "NutritionRequestEnteralFormula":
				return NutritionRequestEnteralFormula(json: json, owner: owner)
			case "NutritionRequestEnteralFormulaAdministration":
				return NutritionRequestEnteralFormulaAdministration(json: json, owner: owner)
			case "NutritionRequestOralDiet":
				return NutritionRequestOralDiet(json: json, owner: owner)
			case "NutritionRequestOralDietNutrient":
				return NutritionRequestOralDietNutrient(json: json, owner: owner)
			case "NutritionRequestOralDietTexture":
				return NutritionRequestOralDietTexture(json: json, owner: owner)
			case "NutritionRequestSupplement":
				return NutritionRequestSupplement(json: json, owner: owner)
			case "Observation":
				return Observation(json: json, owner: owner)
			case "ObservationComponent":
				return ObservationComponent(json: json, owner: owner)
			case "ObservationReferenceRange":
				return ObservationReferenceRange(json: json, owner: owner)
			case "ObservationRelated":
				return ObservationRelated(json: json, owner: owner)
			case "OperationDefinition":
				return OperationDefinition(json: json, owner: owner)
			case "OperationDefinitionContact":
				return OperationDefinitionContact(json: json, owner: owner)
			case "OperationDefinitionParameter":
				return OperationDefinitionParameter(json: json, owner: owner)
			case "OperationDefinitionParameterBinding":
				return OperationDefinitionParameterBinding(json: json, owner: owner)
			case "OperationOutcome":
				return OperationOutcome(json: json, owner: owner)
			case "OperationOutcomeIssue":
				return OperationOutcomeIssue(json: json, owner: owner)
			case "Organization":
				return Organization(json: json, owner: owner)
			case "OrganizationContact":
				return OrganizationContact(json: json, owner: owner)
			case "ParameterDefinition":
				return ParameterDefinition(json: json, owner: owner)
			case "Parameters":
				return Parameters(json: json, owner: owner)
			case "ParametersParameter":
				return ParametersParameter(json: json, owner: owner)
			case "Patient":
				return Patient(json: json, owner: owner)
			case "PatientAnimal":
				return PatientAnimal(json: json, owner: owner)
			case "PatientCommunication":
				return PatientCommunication(json: json, owner: owner)
			case "PatientContact":
				return PatientContact(json: json, owner: owner)
			case "PatientLink":
				return PatientLink(json: json, owner: owner)
			case "PaymentNotice":
				return PaymentNotice(json: json, owner: owner)
			case "PaymentReconciliation":
				return PaymentReconciliation(json: json, owner: owner)
			case "PaymentReconciliationDetail":
				return PaymentReconciliationDetail(json: json, owner: owner)
			case "PaymentReconciliationNote":
				return PaymentReconciliationNote(json: json, owner: owner)
			case "Period":
				return Period(json: json, owner: owner)
			case "Person":
				return Person(json: json, owner: owner)
			case "PersonLink":
				return PersonLink(json: json, owner: owner)
			case "PlanDefinition":
				return PlanDefinition(json: json, owner: owner)
			case "PlanDefinitionActionDefinition":
				return PlanDefinitionActionDefinition(json: json, owner: owner)
			case "PlanDefinitionActionDefinitionCondition":
				return PlanDefinitionActionDefinitionCondition(json: json, owner: owner)
			case "PlanDefinitionActionDefinitionDynamicValue":
				return PlanDefinitionActionDefinitionDynamicValue(json: json, owner: owner)
			case "PlanDefinitionActionDefinitionRelatedAction":
				return PlanDefinitionActionDefinitionRelatedAction(json: json, owner: owner)
			case "Practitioner":
				return Practitioner(json: json, owner: owner)
			case "PractitionerPractRole":
				return PractitionerPractRole(json: json, owner: owner)
			case "PractitionerQualification":
				return PractitionerQualification(json: json, owner: owner)
			case "PractitionerRole":
				return PractitionerRole(json: json, owner: owner)
			case "PractitionerRoleAvailableTime":
				return PractitionerRoleAvailableTime(json: json, owner: owner)
			case "PractitionerRoleNotAvailable":
				return PractitionerRoleNotAvailable(json: json, owner: owner)
			case "Procedure":
				return Procedure(json: json, owner: owner)
			case "ProcedureFocalDevice":
				return ProcedureFocalDevice(json: json, owner: owner)
			case "ProcedurePerformer":
				return ProcedurePerformer(json: json, owner: owner)
			case "ProcedureRequest":
				return ProcedureRequest(json: json, owner: owner)
			case "ProcessRequest":
				return ProcessRequest(json: json, owner: owner)
			case "ProcessRequestItem":
				return ProcessRequestItem(json: json, owner: owner)
			case "ProcessResponse":
				return ProcessResponse(json: json, owner: owner)
			case "ProcessResponseNotes":
				return ProcessResponseNotes(json: json, owner: owner)
			case "Provenance":
				return Provenance(json: json, owner: owner)
			case "ProvenanceAgent":
				return ProvenanceAgent(json: json, owner: owner)
			case "ProvenanceAgentRelatedAgent":
				return ProvenanceAgentRelatedAgent(json: json, owner: owner)
			case "ProvenanceEntity":
				return ProvenanceEntity(json: json, owner: owner)
			case "Quantity":
				return Quantity(json: json, owner: owner)
			case "Questionnaire":
				return Questionnaire(json: json, owner: owner)
			case "QuestionnaireItem":
				return QuestionnaireItem(json: json, owner: owner)
			case "QuestionnaireItemEnableWhen":
				return QuestionnaireItemEnableWhen(json: json, owner: owner)
			case "QuestionnaireItemOption":
				return QuestionnaireItemOption(json: json, owner: owner)
			case "QuestionnaireResponse":
				return QuestionnaireResponse(json: json, owner: owner)
			case "QuestionnaireResponseItem":
				return QuestionnaireResponseItem(json: json, owner: owner)
			case "QuestionnaireResponseItemAnswer":
				return QuestionnaireResponseItemAnswer(json: json, owner: owner)
			case "Range":
				return Range(json: json, owner: owner)
			case "Ratio":
				return Ratio(json: json, owner: owner)
			case "Reference":
				return Reference(json: json, owner: owner)
			case "ReferralRequest":
				return ReferralRequest(json: json, owner: owner)
			case "RelatedPerson":
				return RelatedPerson(json: json, owner: owner)
			case "RelatedResource":
				return RelatedResource(json: json, owner: owner)
			case "Resource":
				return Resource(json: json, owner: owner)
			case "RiskAssessment":
				return RiskAssessment(json: json, owner: owner)
			case "RiskAssessmentPrediction":
				return RiskAssessmentPrediction(json: json, owner: owner)
			case "SampledData":
				return SampledData(json: json, owner: owner)
			case "Schedule":
				return Schedule(json: json, owner: owner)
			case "SearchParameter":
				return SearchParameter(json: json, owner: owner)
			case "SearchParameterContact":
				return SearchParameterContact(json: json, owner: owner)
			case "Sequence":
				return Sequence(json: json, owner: owner)
			case "SequenceQuality":
				return SequenceQuality(json: json, owner: owner)
			case "SequenceReferenceSeq":
				return SequenceReferenceSeq(json: json, owner: owner)
			case "SequenceRepository":
				return SequenceRepository(json: json, owner: owner)
			case "SequenceStructureVariant":
				return SequenceStructureVariant(json: json, owner: owner)
			case "SequenceStructureVariantInner":
				return SequenceStructureVariantInner(json: json, owner: owner)
			case "SequenceStructureVariantOuter":
				return SequenceStructureVariantOuter(json: json, owner: owner)
			case "SequenceVariant":
				return SequenceVariant(json: json, owner: owner)
			case "Signature":
				return Signature(json: json, owner: owner)
			case "Slot":
				return Slot(json: json, owner: owner)
			case "Specimen":
				return Specimen(json: json, owner: owner)
			case "SpecimenCollection":
				return SpecimenCollection(json: json, owner: owner)
			case "SpecimenContainer":
				return SpecimenContainer(json: json, owner: owner)
			case "SpecimenTreatment":
				return SpecimenTreatment(json: json, owner: owner)
			case "StructureDefinition":
				return StructureDefinition(json: json, owner: owner)
			case "StructureDefinitionContact":
				return StructureDefinitionContact(json: json, owner: owner)
			case "StructureDefinitionDifferential":
				return StructureDefinitionDifferential(json: json, owner: owner)
			case "StructureDefinitionMapping":
				return StructureDefinitionMapping(json: json, owner: owner)
			case "StructureDefinitionSnapshot":
				return StructureDefinitionSnapshot(json: json, owner: owner)
			case "StructureMap":
				return StructureMap(json: json, owner: owner)
			case "StructureMapContact":
				return StructureMapContact(json: json, owner: owner)
			case "StructureMapGroup":
				return StructureMapGroup(json: json, owner: owner)
			case "StructureMapGroupInput":
				return StructureMapGroupInput(json: json, owner: owner)
			case "StructureMapGroupRule":
				return StructureMapGroupRule(json: json, owner: owner)
			case "StructureMapGroupRuleDependent":
				return StructureMapGroupRuleDependent(json: json, owner: owner)
			case "StructureMapGroupRuleSource":
				return StructureMapGroupRuleSource(json: json, owner: owner)
			case "StructureMapGroupRuleTarget":
				return StructureMapGroupRuleTarget(json: json, owner: owner)
			case "StructureMapGroupRuleTargetParameter":
				return StructureMapGroupRuleTargetParameter(json: json, owner: owner)
			case "StructureMapStructure":
				return StructureMapStructure(json: json, owner: owner)
			case "Subscription":
				return Subscription(json: json, owner: owner)
			case "SubscriptionChannel":
				return SubscriptionChannel(json: json, owner: owner)
			case "Substance":
				return Substance(json: json, owner: owner)
			case "SubstanceIngredient":
				return SubstanceIngredient(json: json, owner: owner)
			case "SubstanceInstance":
				return SubstanceInstance(json: json, owner: owner)
			case "SupplyDelivery":
				return SupplyDelivery(json: json, owner: owner)
			case "SupplyRequest":
				return SupplyRequest(json: json, owner: owner)
			case "SupplyRequestWhen":
				return SupplyRequestWhen(json: json, owner: owner)
			case "Task":
				return Task(json: json, owner: owner)
			case "TaskFulfillment":
				return TaskFulfillment(json: json, owner: owner)
			case "TaskInput":
				return TaskInput(json: json, owner: owner)
			case "TaskOutput":
				return TaskOutput(json: json, owner: owner)
			case "TestScript":
				return TestScript(json: json, owner: owner)
			case "TestScriptContact":
				return TestScriptContact(json: json, owner: owner)
			case "TestScriptDestination":
				return TestScriptDestination(json: json, owner: owner)
			case "TestScriptFixture":
				return TestScriptFixture(json: json, owner: owner)
			case "TestScriptMetadata":
				return TestScriptMetadata(json: json, owner: owner)
			case "TestScriptMetadataCapability":
				return TestScriptMetadataCapability(json: json, owner: owner)
			case "TestScriptMetadataLink":
				return TestScriptMetadataLink(json: json, owner: owner)
			case "TestScriptOrigin":
				return TestScriptOrigin(json: json, owner: owner)
			case "TestScriptRule":
				return TestScriptRule(json: json, owner: owner)
			case "TestScriptRuleParam":
				return TestScriptRuleParam(json: json, owner: owner)
			case "TestScriptRuleset":
				return TestScriptRuleset(json: json, owner: owner)
			case "TestScriptRulesetRule":
				return TestScriptRulesetRule(json: json, owner: owner)
			case "TestScriptRulesetRuleParam":
				return TestScriptRulesetRuleParam(json: json, owner: owner)
			case "TestScriptSetup":
				return TestScriptSetup(json: json, owner: owner)
			case "TestScriptSetupAction":
				return TestScriptSetupAction(json: json, owner: owner)
			case "TestScriptSetupActionAssert":
				return TestScriptSetupActionAssert(json: json, owner: owner)
			case "TestScriptSetupActionAssertRule":
				return TestScriptSetupActionAssertRule(json: json, owner: owner)
			case "TestScriptSetupActionAssertRuleParam":
				return TestScriptSetupActionAssertRuleParam(json: json, owner: owner)
			case "TestScriptSetupActionAssertRuleset":
				return TestScriptSetupActionAssertRuleset(json: json, owner: owner)
			case "TestScriptSetupActionAssertRulesetRule":
				return TestScriptSetupActionAssertRulesetRule(json: json, owner: owner)
			case "TestScriptSetupActionAssertRulesetRuleParam":
				return TestScriptSetupActionAssertRulesetRuleParam(json: json, owner: owner)
			case "TestScriptSetupActionOperation":
				return TestScriptSetupActionOperation(json: json, owner: owner)
			case "TestScriptSetupActionOperationRequestHeader":
				return TestScriptSetupActionOperationRequestHeader(json: json, owner: owner)
			case "TestScriptTeardown":
				return TestScriptTeardown(json: json, owner: owner)
			case "TestScriptTeardownAction":
				return TestScriptTeardownAction(json: json, owner: owner)
			case "TestScriptTest":
				return TestScriptTest(json: json, owner: owner)
			case "TestScriptTestAction":
				return TestScriptTestAction(json: json, owner: owner)
			case "TestScriptVariable":
				return TestScriptVariable(json: json, owner: owner)
			case "Timing":
				return Timing(json: json, owner: owner)
			case "TimingRepeat":
				return TimingRepeat(json: json, owner: owner)
			case "TriggerDefinition":
				return TriggerDefinition(json: json, owner: owner)
			case "UsageContext":
				return UsageContext(json: json, owner: owner)
			case "ValueSet":
				return ValueSet(json: json, owner: owner)
			case "ValueSetCompose":
				return ValueSetCompose(json: json, owner: owner)
			case "ValueSetComposeInclude":
				return ValueSetComposeInclude(json: json, owner: owner)
			case "ValueSetComposeIncludeConcept":
				return ValueSetComposeIncludeConcept(json: json, owner: owner)
			case "ValueSetComposeIncludeConceptDesignation":
				return ValueSetComposeIncludeConceptDesignation(json: json, owner: owner)
			case "ValueSetComposeIncludeFilter":
				return ValueSetComposeIncludeFilter(json: json, owner: owner)
			case "ValueSetContact":
				return ValueSetContact(json: json, owner: owner)
			case "ValueSetExpansion":
				return ValueSetExpansion(json: json, owner: owner)
			case "ValueSetExpansionContains":
				return ValueSetExpansionContains(json: json, owner: owner)
			case "ValueSetExpansionParameter":
				return ValueSetExpansionParameter(json: json, owner: owner)
			case "VisionPrescription":
				return VisionPrescription(json: json, owner: owner)
			case "VisionPrescriptionDispense":
				return VisionPrescriptionDispense(json: json, owner: owner)
			default:
				return FHIRAbstractBase(json: json, owner: owner)
		}
	}
}
