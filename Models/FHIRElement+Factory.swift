//
//  FHIRElement+Factory.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//


/**
 *  Extension to FHIRElement to be able to instantiate by class name.
 */
extension FHIRElement
{
	public class func factory(className: String, json: JSONDictionary, owner: FHIRElement?) -> FHIRElement {
		switch className {
			case "Address":
				return Address(json: json, owner: owner)
			case "Age":
				return Age(json: json, owner: owner)
			case "Alert":
				return Alert(json: json, owner: owner)
			case "AllergyIntolerance":
				return AllergyIntolerance(json: json, owner: owner)
			case "AllergyIntoleranceEvent":
				return AllergyIntoleranceEvent(json: json, owner: owner)
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
			case "AuditEventEvent":
				return AuditEventEvent(json: json, owner: owner)
			case "AuditEventObject":
				return AuditEventObject(json: json, owner: owner)
			case "AuditEventObjectDetail":
				return AuditEventObjectDetail(json: json, owner: owner)
			case "AuditEventParticipant":
				return AuditEventParticipant(json: json, owner: owner)
			case "AuditEventParticipantNetwork":
				return AuditEventParticipantNetwork(json: json, owner: owner)
			case "AuditEventSource":
				return AuditEventSource(json: json, owner: owner)
			case "Basic":
				return Basic(json: json, owner: owner)
			case "Binary":
				return Binary(json: json, owner: owner)
			case "BodySite":
				return BodySite(json: json, owner: owner)
			case "BodySiteRelativeLocation":
				return BodySiteRelativeLocation(json: json, owner: owner)
			case "BodySiteSpecificLocation":
				return BodySiteSpecificLocation(json: json, owner: owner)
			case "Bundle":
				return Bundle(json: json, owner: owner)
			case "BundleEntry":
				return BundleEntry(json: json, owner: owner)
			case "BundleEntrySearch":
				return BundleEntrySearch(json: json, owner: owner)
			case "BundleEntryTransaction":
				return BundleEntryTransaction(json: json, owner: owner)
			case "BundleEntryTransactionResponse":
				return BundleEntryTransactionResponse(json: json, owner: owner)
			case "BundleLink":
				return BundleLink(json: json, owner: owner)
			case "CarePlan":
				return CarePlan(json: json, owner: owner)
			case "CarePlan2":
				return CarePlan2(json: json, owner: owner)
			case "CarePlan2Participant":
				return CarePlan2Participant(json: json, owner: owner)
			case "CarePlanActivity":
				return CarePlanActivity(json: json, owner: owner)
			case "CarePlanActivitySimple":
				return CarePlanActivitySimple(json: json, owner: owner)
			case "CarePlanGoal":
				return CarePlanGoal(json: json, owner: owner)
			case "CarePlanParticipant":
				return CarePlanParticipant(json: json, owner: owner)
			case "ClaimResponse":
				return ClaimResponse(json: json, owner: owner)
			case "ClaimResponseAddItem":
				return ClaimResponseAddItem(json: json, owner: owner)
			case "ClaimResponseAddItemAdjudication":
				return ClaimResponseAddItemAdjudication(json: json, owner: owner)
			case "ClaimResponseAddItemDetail":
				return ClaimResponseAddItemDetail(json: json, owner: owner)
			case "ClaimResponseAddItemDetailAdjudication":
				return ClaimResponseAddItemDetailAdjudication(json: json, owner: owner)
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
			case "ClaimResponseItemDetailAdjudication":
				return ClaimResponseItemDetailAdjudication(json: json, owner: owner)
			case "ClaimResponseItemDetailSubDetail":
				return ClaimResponseItemDetailSubDetail(json: json, owner: owner)
			case "ClaimResponseItemDetailSubDetailAdjudication":
				return ClaimResponseItemDetailSubDetailAdjudication(json: json, owner: owner)
			case "ClaimResponseNote":
				return ClaimResponseNote(json: json, owner: owner)
			case "ClinicalAssessment":
				return ClinicalAssessment(json: json, owner: owner)
			case "ClinicalAssessmentDiagnosis":
				return ClinicalAssessmentDiagnosis(json: json, owner: owner)
			case "ClinicalAssessmentInvestigations":
				return ClinicalAssessmentInvestigations(json: json, owner: owner)
			case "ClinicalAssessmentRuledOut":
				return ClinicalAssessmentRuledOut(json: json, owner: owner)
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
			case "ConceptMapElement":
				return ConceptMapElement(json: json, owner: owner)
			case "ConceptMapElementDependsOn":
				return ConceptMapElementDependsOn(json: json, owner: owner)
			case "ConceptMapElementMap":
				return ConceptMapElementMap(json: json, owner: owner)
			case "Condition":
				return Condition(json: json, owner: owner)
			case "ConditionDueTo":
				return ConditionDueTo(json: json, owner: owner)
			case "ConditionEvidence":
				return ConditionEvidence(json: json, owner: owner)
			case "ConditionLocation":
				return ConditionLocation(json: json, owner: owner)
			case "ConditionOccurredFollowing":
				return ConditionOccurredFollowing(json: json, owner: owner)
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
			case "ContactPoint":
				return ContactPoint(json: json, owner: owner)
			case "Contract":
				return Contract(json: json, owner: owner)
			case "ContractActor":
				return ContractActor(json: json, owner: owner)
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
			case "ContractTermActor":
				return ContractTermActor(json: json, owner: owner)
			case "ContractTermValuedItem":
				return ContractTermValuedItem(json: json, owner: owner)
			case "ContractValuedItem":
				return ContractValuedItem(json: json, owner: owner)
			case "Contraindication":
				return Contraindication(json: json, owner: owner)
			case "ContraindicationMitigation":
				return ContraindicationMitigation(json: json, owner: owner)
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
			case "DiagnosticOrder":
				return DiagnosticOrder(json: json, owner: owner)
			case "DiagnosticOrderEvent":
				return DiagnosticOrderEvent(json: json, owner: owner)
			case "DiagnosticOrderItem":
				return DiagnosticOrderItem(json: json, owner: owner)
			case "DiagnosticReport":
				return DiagnosticReport(json: json, owner: owner)
			case "DiagnosticReportImage":
				return DiagnosticReportImage(json: json, owner: owner)
			case "Distance":
				return Distance(json: json, owner: owner)
			case "DocumentManifest":
				return DocumentManifest(json: json, owner: owner)
			case "DocumentReference":
				return DocumentReference(json: json, owner: owner)
			case "DocumentReferenceContext":
				return DocumentReferenceContext(json: json, owner: owner)
			case "DocumentReferenceRelatesTo":
				return DocumentReferenceRelatesTo(json: json, owner: owner)
			case "DomainResource":
				return DomainResource(json: json, owner: owner)
			case "Duration":
				return Duration(json: json, owner: owner)
			case "ElementDefinition":
				return ElementDefinition(json: json, owner: owner)
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
			case "EnrollmentRequest":
				return EnrollmentRequest(json: json, owner: owner)
			case "EnrollmentResponse":
				return EnrollmentResponse(json: json, owner: owner)
			case "EpisodeOfCare":
				return EpisodeOfCare(json: json, owner: owner)
			case "EpisodeOfCareCareTeam":
				return EpisodeOfCareCareTeam(json: json, owner: owner)
			case "EpisodeOfCareStatusHistory":
				return EpisodeOfCareStatusHistory(json: json, owner: owner)
			case "ExplanationOfBenefit":
				return ExplanationOfBenefit(json: json, owner: owner)
			case "Extension":
				return Extension(json: json, owner: owner)
			case "FamilyHistory":
				return FamilyHistory(json: json, owner: owner)
			case "FamilyHistoryRelation":
				return FamilyHistoryRelation(json: json, owner: owner)
			case "FamilyHistoryRelationCondition":
				return FamilyHistoryRelationCondition(json: json, owner: owner)
			case "Goal":
				return Goal(json: json, owner: owner)
			case "Group":
				return Group(json: json, owner: owner)
			case "GroupCharacteristic":
				return GroupCharacteristic(json: json, owner: owner)
			case "HealthcareService":
				return HealthcareService(json: json, owner: owner)
			case "HealthcareServiceAvailableTime":
				return HealthcareServiceAvailableTime(json: json, owner: owner)
			case "HealthcareServiceNotAvailableTime":
				return HealthcareServiceNotAvailableTime(json: json, owner: owner)
			case "HealthcareServiceServiceType":
				return HealthcareServiceServiceType(json: json, owner: owner)
			case "HumanName":
				return HumanName(json: json, owner: owner)
			case "Identifier":
				return Identifier(json: json, owner: owner)
			case "ImagingObjectSelection":
				return ImagingObjectSelection(json: json, owner: owner)
			case "ImagingObjectSelectionStudy":
				return ImagingObjectSelectionStudy(json: json, owner: owner)
			case "ImagingObjectSelectionStudySeries":
				return ImagingObjectSelectionStudySeries(json: json, owner: owner)
			case "ImagingObjectSelectionStudySeriesInstance":
				return ImagingObjectSelectionStudySeriesInstance(json: json, owner: owner)
			case "ImagingObjectSelectionStudySeriesInstanceFrames":
				return ImagingObjectSelectionStudySeriesInstanceFrames(json: json, owner: owner)
			case "ImagingStudy":
				return ImagingStudy(json: json, owner: owner)
			case "ImagingStudySeries":
				return ImagingStudySeries(json: json, owner: owner)
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
			case "InstitutionalClaim":
				return InstitutionalClaim(json: json, owner: owner)
			case "InstitutionalClaimCoverage":
				return InstitutionalClaimCoverage(json: json, owner: owner)
			case "InstitutionalClaimDiagnosis":
				return InstitutionalClaimDiagnosis(json: json, owner: owner)
			case "InstitutionalClaimItem":
				return InstitutionalClaimItem(json: json, owner: owner)
			case "InstitutionalClaimItemDetail":
				return InstitutionalClaimItemDetail(json: json, owner: owner)
			case "InstitutionalClaimItemDetailSubDetail":
				return InstitutionalClaimItemDetailSubDetail(json: json, owner: owner)
			case "InstitutionalClaimPayee":
				return InstitutionalClaimPayee(json: json, owner: owner)
			case "List":
				return List(json: json, owner: owner)
			case "ListEntry":
				return ListEntry(json: json, owner: owner)
			case "Location":
				return Location(json: json, owner: owner)
			case "LocationPosition":
				return LocationPosition(json: json, owner: owner)
			case "Media":
				return Media(json: json, owner: owner)
			case "Medication":
				return Medication(json: json, owner: owner)
			case "MedicationAdministration":
				return MedicationAdministration(json: json, owner: owner)
			case "MedicationAdministrationDosage":
				return MedicationAdministrationDosage(json: json, owner: owner)
			case "MedicationDispense":
				return MedicationDispense(json: json, owner: owner)
			case "MedicationDispenseDosageInstruction":
				return MedicationDispenseDosageInstruction(json: json, owner: owner)
			case "MedicationDispenseSubstitution":
				return MedicationDispenseSubstitution(json: json, owner: owner)
			case "MedicationPackage":
				return MedicationPackage(json: json, owner: owner)
			case "MedicationPackageContent":
				return MedicationPackageContent(json: json, owner: owner)
			case "MedicationPrescription":
				return MedicationPrescription(json: json, owner: owner)
			case "MedicationPrescriptionDispense":
				return MedicationPrescriptionDispense(json: json, owner: owner)
			case "MedicationPrescriptionDosageInstruction":
				return MedicationPrescriptionDosageInstruction(json: json, owner: owner)
			case "MedicationPrescriptionSubstitution":
				return MedicationPrescriptionSubstitution(json: json, owner: owner)
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
			case "NutritionOrder":
				return NutritionOrder(json: json, owner: owner)
			case "NutritionOrderEnteralFormula":
				return NutritionOrderEnteralFormula(json: json, owner: owner)
			case "NutritionOrderOralDiet":
				return NutritionOrderOralDiet(json: json, owner: owner)
			case "NutritionOrderOralDietNutrients":
				return NutritionOrderOralDietNutrients(json: json, owner: owner)
			case "NutritionOrderOralDietTexture":
				return NutritionOrderOralDietTexture(json: json, owner: owner)
			case "NutritionOrderSupplement":
				return NutritionOrderSupplement(json: json, owner: owner)
			case "Observation":
				return Observation(json: json, owner: owner)
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
			case "OperationDefinitionParameterPart":
				return OperationDefinitionParameterPart(json: json, owner: owner)
			case "OperationOutcome":
				return OperationOutcome(json: json, owner: owner)
			case "OperationOutcomeIssue":
				return OperationOutcomeIssue(json: json, owner: owner)
			case "OralHealthClaim":
				return OralHealthClaim(json: json, owner: owner)
			case "OralHealthClaimCoverage":
				return OralHealthClaimCoverage(json: json, owner: owner)
			case "OralHealthClaimDiagnosis":
				return OralHealthClaimDiagnosis(json: json, owner: owner)
			case "OralHealthClaimItem":
				return OralHealthClaimItem(json: json, owner: owner)
			case "OralHealthClaimItemDetail":
				return OralHealthClaimItemDetail(json: json, owner: owner)
			case "OralHealthClaimItemDetailSubDetail":
				return OralHealthClaimItemDetailSubDetail(json: json, owner: owner)
			case "OralHealthClaimItemProsthesis":
				return OralHealthClaimItemProsthesis(json: json, owner: owner)
			case "OralHealthClaimMissingTeeth":
				return OralHealthClaimMissingTeeth(json: json, owner: owner)
			case "OralHealthClaimPayee":
				return OralHealthClaimPayee(json: json, owner: owner)
			case "Order":
				return Order(json: json, owner: owner)
			case "OrderResponse":
				return OrderResponse(json: json, owner: owner)
			case "OrderWhen":
				return OrderWhen(json: json, owner: owner)
			case "Organization":
				return Organization(json: json, owner: owner)
			case "OrganizationContact":
				return OrganizationContact(json: json, owner: owner)
			case "Other":
				return Other(json: json, owner: owner)
			case "Parameters":
				return Parameters(json: json, owner: owner)
			case "ParametersParameter":
				return ParametersParameter(json: json, owner: owner)
			case "ParametersParameterPart":
				return ParametersParameterPart(json: json, owner: owner)
			case "Patient":
				return Patient(json: json, owner: owner)
			case "PatientAnimal":
				return PatientAnimal(json: json, owner: owner)
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
			case "PendedRequest":
				return PendedRequest(json: json, owner: owner)
			case "Period":
				return Period(json: json, owner: owner)
			case "Person":
				return Person(json: json, owner: owner)
			case "PersonLink":
				return PersonLink(json: json, owner: owner)
			case "PharmacyClaim":
				return PharmacyClaim(json: json, owner: owner)
			case "PharmacyClaimCoverage":
				return PharmacyClaimCoverage(json: json, owner: owner)
			case "PharmacyClaimDiagnosis":
				return PharmacyClaimDiagnosis(json: json, owner: owner)
			case "PharmacyClaimItem":
				return PharmacyClaimItem(json: json, owner: owner)
			case "PharmacyClaimItemDetail":
				return PharmacyClaimItemDetail(json: json, owner: owner)
			case "PharmacyClaimItemDetailSubDetail":
				return PharmacyClaimItemDetailSubDetail(json: json, owner: owner)
			case "PharmacyClaimPayee":
				return PharmacyClaimPayee(json: json, owner: owner)
			case "Practitioner":
				return Practitioner(json: json, owner: owner)
			case "PractitionerPractitionerRole":
				return PractitionerPractitionerRole(json: json, owner: owner)
			case "PractitionerQualification":
				return PractitionerQualification(json: json, owner: owner)
			case "Procedure":
				return Procedure(json: json, owner: owner)
			case "ProcedurePerformer":
				return ProcedurePerformer(json: json, owner: owner)
			case "ProcedureRelatedItem":
				return ProcedureRelatedItem(json: json, owner: owner)
			case "ProcedureRequest":
				return ProcedureRequest(json: json, owner: owner)
			case "ProfessionalClaim":
				return ProfessionalClaim(json: json, owner: owner)
			case "ProfessionalClaimCoverage":
				return ProfessionalClaimCoverage(json: json, owner: owner)
			case "ProfessionalClaimDiagnosis":
				return ProfessionalClaimDiagnosis(json: json, owner: owner)
			case "ProfessionalClaimItem":
				return ProfessionalClaimItem(json: json, owner: owner)
			case "ProfessionalClaimItemDetail":
				return ProfessionalClaimItemDetail(json: json, owner: owner)
			case "ProfessionalClaimItemDetailSubDetail":
				return ProfessionalClaimItemDetailSubDetail(json: json, owner: owner)
			case "ProfessionalClaimPayee":
				return ProfessionalClaimPayee(json: json, owner: owner)
			case "Provenance":
				return Provenance(json: json, owner: owner)
			case "ProvenanceAgent":
				return ProvenanceAgent(json: json, owner: owner)
			case "ProvenanceEntity":
				return ProvenanceEntity(json: json, owner: owner)
			case "Quantity":
				return Quantity(json: json, owner: owner)
			case "Questionnaire":
				return Questionnaire(json: json, owner: owner)
			case "QuestionnaireAnswers":
				return QuestionnaireAnswers(json: json, owner: owner)
			case "QuestionnaireAnswersGroup":
				return QuestionnaireAnswersGroup(json: json, owner: owner)
			case "QuestionnaireAnswersGroupQuestion":
				return QuestionnaireAnswersGroupQuestion(json: json, owner: owner)
			case "QuestionnaireAnswersGroupQuestionAnswer":
				return QuestionnaireAnswersGroupQuestionAnswer(json: json, owner: owner)
			case "QuestionnaireGroup":
				return QuestionnaireGroup(json: json, owner: owner)
			case "QuestionnaireGroupQuestion":
				return QuestionnaireGroupQuestion(json: json, owner: owner)
			case "Range":
				return Range(json: json, owner: owner)
			case "Ratio":
				return Ratio(json: json, owner: owner)
			case "Readjudicate":
				return Readjudicate(json: json, owner: owner)
			case "ReadjudicateItem":
				return ReadjudicateItem(json: json, owner: owner)
			case "Reference":
				return Reference(json: json, owner: owner)
			case "ReferralRequest":
				return ReferralRequest(json: json, owner: owner)
			case "RelatedPerson":
				return RelatedPerson(json: json, owner: owner)
			case "Resource":
				return Resource(json: json, owner: owner)
			case "Reversal":
				return Reversal(json: json, owner: owner)
			case "ReversalCoverage":
				return ReversalCoverage(json: json, owner: owner)
			case "ReversalPayee":
				return ReversalPayee(json: json, owner: owner)
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
			case "StatusRequest":
				return StatusRequest(json: json, owner: owner)
			case "StatusResponse":
				return StatusResponse(json: json, owner: owner)
			case "StatusResponseNotes":
				return StatusResponseNotes(json: json, owner: owner)
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
			case "Subscription":
				return Subscription(json: json, owner: owner)
			case "SubscriptionChannel":
				return SubscriptionChannel(json: json, owner: owner)
			case "SubscriptionTag":
				return SubscriptionTag(json: json, owner: owner)
			case "Substance":
				return Substance(json: json, owner: owner)
			case "SubstanceIngredient":
				return SubstanceIngredient(json: json, owner: owner)
			case "SubstanceInstance":
				return SubstanceInstance(json: json, owner: owner)
			case "Supply":
				return Supply(json: json, owner: owner)
			case "SupplyDispense":
				return SupplyDispense(json: json, owner: owner)
			case "SupportingDocumentation":
				return SupportingDocumentation(json: json, owner: owner)
			case "SupportingDocumentationDetail":
				return SupportingDocumentationDetail(json: json, owner: owner)
			case "Timing":
				return Timing(json: json, owner: owner)
			case "TimingRepeat":
				return TimingRepeat(json: json, owner: owner)
			case "ValueSet":
				return ValueSet(json: json, owner: owner)
			case "ValueSetCompose":
				return ValueSetCompose(json: json, owner: owner)
			case "ValueSetComposeInclude":
				return ValueSetComposeInclude(json: json, owner: owner)
			case "ValueSetComposeIncludeConcept":
				return ValueSetComposeIncludeConcept(json: json, owner: owner)
			case "ValueSetComposeIncludeFilter":
				return ValueSetComposeIncludeFilter(json: json, owner: owner)
			case "ValueSetContact":
				return ValueSetContact(json: json, owner: owner)
			case "ValueSetDefine":
				return ValueSetDefine(json: json, owner: owner)
			case "ValueSetDefineConcept":
				return ValueSetDefineConcept(json: json, owner: owner)
			case "ValueSetDefineConceptDesignation":
				return ValueSetDefineConceptDesignation(json: json, owner: owner)
			case "ValueSetExpansion":
				return ValueSetExpansion(json: json, owner: owner)
			case "ValueSetExpansionContains":
				return ValueSetExpansionContains(json: json, owner: owner)
			case "VisionClaim":
				return VisionClaim(json: json, owner: owner)
			case "VisionClaimCoverage":
				return VisionClaimCoverage(json: json, owner: owner)
			case "VisionClaimDiagnosis":
				return VisionClaimDiagnosis(json: json, owner: owner)
			case "VisionClaimItem":
				return VisionClaimItem(json: json, owner: owner)
			case "VisionClaimItemDetail":
				return VisionClaimItemDetail(json: json, owner: owner)
			case "VisionClaimItemDetailSubDetail":
				return VisionClaimItemDetailSubDetail(json: json, owner: owner)
			case "VisionClaimPayee":
				return VisionClaimPayee(json: json, owner: owner)
			case "VisionPrescription":
				return VisionPrescription(json: json, owner: owner)
			case "VisionPrescriptionDispense":
				return VisionPrescriptionDispense(json: json, owner: owner)
			default:
				return FHIRElement(json: json, owner: owner)
		}
	}
}
