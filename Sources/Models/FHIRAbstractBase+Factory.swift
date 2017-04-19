//
//  FHIRAbstractBase+Factory.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//


/**
Extension to FHIRAbstractBase to be able to instantiate by class name.
*/
extension FHIRAbstractBase {
	
	public class func factory<T: FHIRAbstractBase>(_ typeName: String, json: FHIRJSON, owner: FHIRAbstractBase?, type: T.Type, context: inout FHIRInstantiationContext) -> T {
		switch typeName {
			case "Account":
				if let res = Account(json: json, owner: owner, context: &context) as? T { return res }
			case "AccountCoverage":
				if let res = AccountCoverage(json: json, owner: owner, context: &context) as? T { return res }
			case "AccountGuarantor":
				if let res = AccountGuarantor(json: json, owner: owner, context: &context) as? T { return res }
			case "ActivityDefinition":
				if let res = ActivityDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "ActivityDefinitionDynamicValue":
				if let res = ActivityDefinitionDynamicValue(json: json, owner: owner, context: &context) as? T { return res }
			case "ActivityDefinitionParticipant":
				if let res = ActivityDefinitionParticipant(json: json, owner: owner, context: &context) as? T { return res }
			case "Address":
				if let res = Address(json: json, owner: owner, context: &context) as? T { return res }
			case "AdverseEvent":
				if let res = AdverseEvent(json: json, owner: owner, context: &context) as? T { return res }
			case "AdverseEventSuspectEntity":
				if let res = AdverseEventSuspectEntity(json: json, owner: owner, context: &context) as? T { return res }
			case "Age":
				if let res = Age(json: json, owner: owner, context: &context) as? T { return res }
			case "AllergyIntolerance":
				if let res = AllergyIntolerance(json: json, owner: owner, context: &context) as? T { return res }
			case "AllergyIntoleranceReaction":
				if let res = AllergyIntoleranceReaction(json: json, owner: owner, context: &context) as? T { return res }
			case "Annotation":
				if let res = Annotation(json: json, owner: owner, context: &context) as? T { return res }
			case "Appointment":
				if let res = Appointment(json: json, owner: owner, context: &context) as? T { return res }
			case "AppointmentParticipant":
				if let res = AppointmentParticipant(json: json, owner: owner, context: &context) as? T { return res }
			case "AppointmentResponse":
				if let res = AppointmentResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "Attachment":
				if let res = Attachment(json: json, owner: owner, context: &context) as? T { return res }
			case "AuditEvent":
				if let res = AuditEvent(json: json, owner: owner, context: &context) as? T { return res }
			case "AuditEventAgent":
				if let res = AuditEventAgent(json: json, owner: owner, context: &context) as? T { return res }
			case "AuditEventAgentNetwork":
				if let res = AuditEventAgentNetwork(json: json, owner: owner, context: &context) as? T { return res }
			case "AuditEventEntity":
				if let res = AuditEventEntity(json: json, owner: owner, context: &context) as? T { return res }
			case "AuditEventEntityDetail":
				if let res = AuditEventEntityDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "AuditEventSource":
				if let res = AuditEventSource(json: json, owner: owner, context: &context) as? T { return res }
			case "BackboneElement":
				if let res = BackboneElement(json: json, owner: owner, context: &context) as? T { return res }
			case "Basic":
				if let res = Basic(json: json, owner: owner, context: &context) as? T { return res }
			case "Binary":
				if let res = Binary(json: json, owner: owner, context: &context) as? T { return res }
			case "BodySite":
				if let res = BodySite(json: json, owner: owner, context: &context) as? T { return res }
			case "Bundle":
				if let res = Bundle(json: json, owner: owner, context: &context) as? T { return res }
			case "BundleEntry":
				if let res = BundleEntry(json: json, owner: owner, context: &context) as? T { return res }
			case "BundleEntryRequest":
				if let res = BundleEntryRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "BundleEntryResponse":
				if let res = BundleEntryResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "BundleEntrySearch":
				if let res = BundleEntrySearch(json: json, owner: owner, context: &context) as? T { return res }
			case "BundleLink":
				if let res = BundleLink(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatement":
				if let res = CapabilityStatement(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementDocument":
				if let res = CapabilityStatementDocument(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementImplementation":
				if let res = CapabilityStatementImplementation(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementMessaging":
				if let res = CapabilityStatementMessaging(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementMessagingEndpoint":
				if let res = CapabilityStatementMessagingEndpoint(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementMessagingEvent":
				if let res = CapabilityStatementMessagingEvent(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementMessagingSupportedMessage":
				if let res = CapabilityStatementMessagingSupportedMessage(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRest":
				if let res = CapabilityStatementRest(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestInteraction":
				if let res = CapabilityStatementRestInteraction(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestOperation":
				if let res = CapabilityStatementRestOperation(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestResource":
				if let res = CapabilityStatementRestResource(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestResourceInteraction":
				if let res = CapabilityStatementRestResourceInteraction(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestResourceSearchParam":
				if let res = CapabilityStatementRestResourceSearchParam(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestSecurity":
				if let res = CapabilityStatementRestSecurity(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestSecurityCertificate":
				if let res = CapabilityStatementRestSecurityCertificate(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementSoftware":
				if let res = CapabilityStatementSoftware(json: json, owner: owner, context: &context) as? T { return res }
			case "CarePlan":
				if let res = CarePlan(json: json, owner: owner, context: &context) as? T { return res }
			case "CarePlanActivity":
				if let res = CarePlanActivity(json: json, owner: owner, context: &context) as? T { return res }
			case "CarePlanActivityDetail":
				if let res = CarePlanActivityDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "CareTeam":
				if let res = CareTeam(json: json, owner: owner, context: &context) as? T { return res }
			case "CareTeamParticipant":
				if let res = CareTeamParticipant(json: json, owner: owner, context: &context) as? T { return res }
			case "ChargeItem":
				if let res = ChargeItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ChargeItemParticipant":
				if let res = ChargeItemParticipant(json: json, owner: owner, context: &context) as? T { return res }
			case "Claim":
				if let res = Claim(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimAccident":
				if let res = ClaimAccident(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimCareTeam":
				if let res = ClaimCareTeam(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimDiagnosis":
				if let res = ClaimDiagnosis(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimInformation":
				if let res = ClaimInformation(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimInsurance":
				if let res = ClaimInsurance(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimItem":
				if let res = ClaimItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimItemDetail":
				if let res = ClaimItemDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimItemDetailSubDetail":
				if let res = ClaimItemDetailSubDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimPayee":
				if let res = ClaimPayee(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimProcedure":
				if let res = ClaimProcedure(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimRelated":
				if let res = ClaimRelated(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponse":
				if let res = ClaimResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponseAddItem":
				if let res = ClaimResponseAddItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponseAddItemDetail":
				if let res = ClaimResponseAddItemDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponseError":
				if let res = ClaimResponseError(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponseInsurance":
				if let res = ClaimResponseInsurance(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponseItem":
				if let res = ClaimResponseItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponseItemAdjudication":
				if let res = ClaimResponseItemAdjudication(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponseItemDetail":
				if let res = ClaimResponseItemDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponseItemDetailSubDetail":
				if let res = ClaimResponseItemDetailSubDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponsePayment":
				if let res = ClaimResponsePayment(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimResponseProcessNote":
				if let res = ClaimResponseProcessNote(json: json, owner: owner, context: &context) as? T { return res }
			case "ClinicalImpression":
				if let res = ClinicalImpression(json: json, owner: owner, context: &context) as? T { return res }
			case "ClinicalImpressionFinding":
				if let res = ClinicalImpressionFinding(json: json, owner: owner, context: &context) as? T { return res }
			case "ClinicalImpressionInvestigation":
				if let res = ClinicalImpressionInvestigation(json: json, owner: owner, context: &context) as? T { return res }
			case "CodeSystem":
				if let res = CodeSystem(json: json, owner: owner, context: &context) as? T { return res }
			case "CodeSystemConcept":
				if let res = CodeSystemConcept(json: json, owner: owner, context: &context) as? T { return res }
			case "CodeSystemConceptDesignation":
				if let res = CodeSystemConceptDesignation(json: json, owner: owner, context: &context) as? T { return res }
			case "CodeSystemConceptProperty":
				if let res = CodeSystemConceptProperty(json: json, owner: owner, context: &context) as? T { return res }
			case "CodeSystemFilter":
				if let res = CodeSystemFilter(json: json, owner: owner, context: &context) as? T { return res }
			case "CodeSystemProperty":
				if let res = CodeSystemProperty(json: json, owner: owner, context: &context) as? T { return res }
			case "CodeableConcept":
				if let res = CodeableConcept(json: json, owner: owner, context: &context) as? T { return res }
			case "Coding":
				if let res = Coding(json: json, owner: owner, context: &context) as? T { return res }
			case "Communication":
				if let res = Communication(json: json, owner: owner, context: &context) as? T { return res }
			case "CommunicationPayload":
				if let res = CommunicationPayload(json: json, owner: owner, context: &context) as? T { return res }
			case "CommunicationRequest":
				if let res = CommunicationRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "CommunicationRequestPayload":
				if let res = CommunicationRequestPayload(json: json, owner: owner, context: &context) as? T { return res }
			case "CommunicationRequestRequester":
				if let res = CommunicationRequestRequester(json: json, owner: owner, context: &context) as? T { return res }
			case "CompartmentDefinition":
				if let res = CompartmentDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "CompartmentDefinitionResource":
				if let res = CompartmentDefinitionResource(json: json, owner: owner, context: &context) as? T { return res }
			case "Composition":
				if let res = Composition(json: json, owner: owner, context: &context) as? T { return res }
			case "CompositionAttester":
				if let res = CompositionAttester(json: json, owner: owner, context: &context) as? T { return res }
			case "CompositionEvent":
				if let res = CompositionEvent(json: json, owner: owner, context: &context) as? T { return res }
			case "CompositionRelatesTo":
				if let res = CompositionRelatesTo(json: json, owner: owner, context: &context) as? T { return res }
			case "CompositionSection":
				if let res = CompositionSection(json: json, owner: owner, context: &context) as? T { return res }
			case "ConceptMap":
				if let res = ConceptMap(json: json, owner: owner, context: &context) as? T { return res }
			case "ConceptMapGroup":
				if let res = ConceptMapGroup(json: json, owner: owner, context: &context) as? T { return res }
			case "ConceptMapGroupElement":
				if let res = ConceptMapGroupElement(json: json, owner: owner, context: &context) as? T { return res }
			case "ConceptMapGroupElementTarget":
				if let res = ConceptMapGroupElementTarget(json: json, owner: owner, context: &context) as? T { return res }
			case "ConceptMapGroupElementTargetDependsOn":
				if let res = ConceptMapGroupElementTargetDependsOn(json: json, owner: owner, context: &context) as? T { return res }
			case "ConceptMapGroupUnmapped":
				if let res = ConceptMapGroupUnmapped(json: json, owner: owner, context: &context) as? T { return res }
			case "Condition":
				if let res = Condition(json: json, owner: owner, context: &context) as? T { return res }
			case "ConditionEvidence":
				if let res = ConditionEvidence(json: json, owner: owner, context: &context) as? T { return res }
			case "ConditionStage":
				if let res = ConditionStage(json: json, owner: owner, context: &context) as? T { return res }
			case "Consent":
				if let res = Consent(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentActor":
				if let res = ConsentActor(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentData":
				if let res = ConsentData(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentExcept":
				if let res = ConsentExcept(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentExceptActor":
				if let res = ConsentExceptActor(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentExceptData":
				if let res = ConsentExceptData(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentPolicy":
				if let res = ConsentPolicy(json: json, owner: owner, context: &context) as? T { return res }
			case "ContactDetail":
				if let res = ContactDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ContactPoint":
				if let res = ContactPoint(json: json, owner: owner, context: &context) as? T { return res }
			case "Contract":
				if let res = Contract(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractAgent":
				if let res = ContractAgent(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractFriendly":
				if let res = ContractFriendly(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractLegal":
				if let res = ContractLegal(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractRule":
				if let res = ContractRule(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractSigner":
				if let res = ContractSigner(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTerm":
				if let res = ContractTerm(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermAgent":
				if let res = ContractTermAgent(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermValuedItem":
				if let res = ContractTermValuedItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractValuedItem":
				if let res = ContractValuedItem(json: json, owner: owner, context: &context) as? T { return res }
			case "Contributor":
				if let res = Contributor(json: json, owner: owner, context: &context) as? T { return res }
			case "Count":
				if let res = Count(json: json, owner: owner, context: &context) as? T { return res }
			case "Coverage":
				if let res = Coverage(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageGrouping":
				if let res = CoverageGrouping(json: json, owner: owner, context: &context) as? T { return res }
			case "DataElement":
				if let res = DataElement(json: json, owner: owner, context: &context) as? T { return res }
			case "DataElementMapping":
				if let res = DataElementMapping(json: json, owner: owner, context: &context) as? T { return res }
			case "DataRequirement":
				if let res = DataRequirement(json: json, owner: owner, context: &context) as? T { return res }
			case "DataRequirementCodeFilter":
				if let res = DataRequirementCodeFilter(json: json, owner: owner, context: &context) as? T { return res }
			case "DataRequirementDateFilter":
				if let res = DataRequirementDateFilter(json: json, owner: owner, context: &context) as? T { return res }
			case "DetectedIssue":
				if let res = DetectedIssue(json: json, owner: owner, context: &context) as? T { return res }
			case "DetectedIssueMitigation":
				if let res = DetectedIssueMitigation(json: json, owner: owner, context: &context) as? T { return res }
			case "Device":
				if let res = Device(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceComponent":
				if let res = DeviceComponent(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceComponentProductionSpecification":
				if let res = DeviceComponentProductionSpecification(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceMetric":
				if let res = DeviceMetric(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceMetricCalibration":
				if let res = DeviceMetricCalibration(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceRequest":
				if let res = DeviceRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceRequestRequester":
				if let res = DeviceRequestRequester(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceUdi":
				if let res = DeviceUdi(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceUseStatement":
				if let res = DeviceUseStatement(json: json, owner: owner, context: &context) as? T { return res }
			case "DiagnosticReport":
				if let res = DiagnosticReport(json: json, owner: owner, context: &context) as? T { return res }
			case "DiagnosticReportImage":
				if let res = DiagnosticReportImage(json: json, owner: owner, context: &context) as? T { return res }
			case "DiagnosticReportPerformer":
				if let res = DiagnosticReportPerformer(json: json, owner: owner, context: &context) as? T { return res }
			case "Distance":
				if let res = Distance(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentManifest":
				if let res = DocumentManifest(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentManifestContent":
				if let res = DocumentManifestContent(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentManifestRelated":
				if let res = DocumentManifestRelated(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentReference":
				if let res = DocumentReference(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentReferenceContent":
				if let res = DocumentReferenceContent(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentReferenceContext":
				if let res = DocumentReferenceContext(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentReferenceContextRelated":
				if let res = DocumentReferenceContextRelated(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentReferenceRelatesTo":
				if let res = DocumentReferenceRelatesTo(json: json, owner: owner, context: &context) as? T { return res }
			case "DomainResource":
				if let res = DomainResource(json: json, owner: owner, context: &context) as? T { return res }
			case "Dosage":
				if let res = Dosage(json: json, owner: owner, context: &context) as? T { return res }
			case "Duration":
				if let res = Duration(json: json, owner: owner, context: &context) as? T { return res }
			case "Element":
				if let res = Element(json: json, owner: owner, context: &context) as? T { return res }
			case "ElementDefinition":
				if let res = ElementDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "ElementDefinitionBase":
				if let res = ElementDefinitionBase(json: json, owner: owner, context: &context) as? T { return res }
			case "ElementDefinitionBinding":
				if let res = ElementDefinitionBinding(json: json, owner: owner, context: &context) as? T { return res }
			case "ElementDefinitionConstraint":
				if let res = ElementDefinitionConstraint(json: json, owner: owner, context: &context) as? T { return res }
			case "ElementDefinitionExample":
				if let res = ElementDefinitionExample(json: json, owner: owner, context: &context) as? T { return res }
			case "ElementDefinitionMapping":
				if let res = ElementDefinitionMapping(json: json, owner: owner, context: &context) as? T { return res }
			case "ElementDefinitionSlicing":
				if let res = ElementDefinitionSlicing(json: json, owner: owner, context: &context) as? T { return res }
			case "ElementDefinitionSlicingDiscriminator":
				if let res = ElementDefinitionSlicingDiscriminator(json: json, owner: owner, context: &context) as? T { return res }
			case "ElementDefinitionType":
				if let res = ElementDefinitionType(json: json, owner: owner, context: &context) as? T { return res }
			case "EligibilityRequest":
				if let res = EligibilityRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "EligibilityResponse":
				if let res = EligibilityResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "EligibilityResponseError":
				if let res = EligibilityResponseError(json: json, owner: owner, context: &context) as? T { return res }
			case "EligibilityResponseInsurance":
				if let res = EligibilityResponseInsurance(json: json, owner: owner, context: &context) as? T { return res }
			case "EligibilityResponseInsuranceBenefitBalance":
				if let res = EligibilityResponseInsuranceBenefitBalance(json: json, owner: owner, context: &context) as? T { return res }
			case "EligibilityResponseInsuranceBenefitBalanceFinancial":
				if let res = EligibilityResponseInsuranceBenefitBalanceFinancial(json: json, owner: owner, context: &context) as? T { return res }
			case "Encounter":
				if let res = Encounter(json: json, owner: owner, context: &context) as? T { return res }
			case "EncounterClassHistory":
				if let res = EncounterClassHistory(json: json, owner: owner, context: &context) as? T { return res }
			case "EncounterDiagnosis":
				if let res = EncounterDiagnosis(json: json, owner: owner, context: &context) as? T { return res }
			case "EncounterHospitalization":
				if let res = EncounterHospitalization(json: json, owner: owner, context: &context) as? T { return res }
			case "EncounterLocation":
				if let res = EncounterLocation(json: json, owner: owner, context: &context) as? T { return res }
			case "EncounterParticipant":
				if let res = EncounterParticipant(json: json, owner: owner, context: &context) as? T { return res }
			case "EncounterStatusHistory":
				if let res = EncounterStatusHistory(json: json, owner: owner, context: &context) as? T { return res }
			case "Endpoint":
				if let res = Endpoint(json: json, owner: owner, context: &context) as? T { return res }
			case "EnrollmentRequest":
				if let res = EnrollmentRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "EnrollmentResponse":
				if let res = EnrollmentResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "EpisodeOfCare":
				if let res = EpisodeOfCare(json: json, owner: owner, context: &context) as? T { return res }
			case "EpisodeOfCareDiagnosis":
				if let res = EpisodeOfCareDiagnosis(json: json, owner: owner, context: &context) as? T { return res }
			case "EpisodeOfCareStatusHistory":
				if let res = EpisodeOfCareStatusHistory(json: json, owner: owner, context: &context) as? T { return res }
			case "ExpansionProfile":
				if let res = ExpansionProfile(json: json, owner: owner, context: &context) as? T { return res }
			case "ExpansionProfileDesignation":
				if let res = ExpansionProfileDesignation(json: json, owner: owner, context: &context) as? T { return res }
			case "ExpansionProfileDesignationExclude":
				if let res = ExpansionProfileDesignationExclude(json: json, owner: owner, context: &context) as? T { return res }
			case "ExpansionProfileDesignationExcludeDesignation":
				if let res = ExpansionProfileDesignationExcludeDesignation(json: json, owner: owner, context: &context) as? T { return res }
			case "ExpansionProfileDesignationInclude":
				if let res = ExpansionProfileDesignationInclude(json: json, owner: owner, context: &context) as? T { return res }
			case "ExpansionProfileDesignationIncludeDesignation":
				if let res = ExpansionProfileDesignationIncludeDesignation(json: json, owner: owner, context: &context) as? T { return res }
			case "ExpansionProfileExcludedSystem":
				if let res = ExpansionProfileExcludedSystem(json: json, owner: owner, context: &context) as? T { return res }
			case "ExpansionProfileFixedVersion":
				if let res = ExpansionProfileFixedVersion(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefit":
				if let res = ExplanationOfBenefit(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitAccident":
				if let res = ExplanationOfBenefitAccident(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitAddItem":
				if let res = ExplanationOfBenefitAddItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitAddItemDetail":
				if let res = ExplanationOfBenefitAddItemDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitBenefitBalance":
				if let res = ExplanationOfBenefitBenefitBalance(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitBenefitBalanceFinancial":
				if let res = ExplanationOfBenefitBenefitBalanceFinancial(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitCareTeam":
				if let res = ExplanationOfBenefitCareTeam(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitDiagnosis":
				if let res = ExplanationOfBenefitDiagnosis(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitInformation":
				if let res = ExplanationOfBenefitInformation(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitInsurance":
				if let res = ExplanationOfBenefitInsurance(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitItem":
				if let res = ExplanationOfBenefitItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitItemAdjudication":
				if let res = ExplanationOfBenefitItemAdjudication(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitItemDetail":
				if let res = ExplanationOfBenefitItemDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitItemDetailSubDetail":
				if let res = ExplanationOfBenefitItemDetailSubDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitPayee":
				if let res = ExplanationOfBenefitPayee(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitPayment":
				if let res = ExplanationOfBenefitPayment(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitProcedure":
				if let res = ExplanationOfBenefitProcedure(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitProcessNote":
				if let res = ExplanationOfBenefitProcessNote(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitRelated":
				if let res = ExplanationOfBenefitRelated(json: json, owner: owner, context: &context) as? T { return res }
			case "Extension":
				if let res = Extension(json: json, owner: owner, context: &context) as? T { return res }
			case "FamilyMemberHistory":
				if let res = FamilyMemberHistory(json: json, owner: owner, context: &context) as? T { return res }
			case "FamilyMemberHistoryCondition":
				if let res = FamilyMemberHistoryCondition(json: json, owner: owner, context: &context) as? T { return res }
			case "Flag":
				if let res = Flag(json: json, owner: owner, context: &context) as? T { return res }
			case "Goal":
				if let res = Goal(json: json, owner: owner, context: &context) as? T { return res }
			case "GoalTarget":
				if let res = GoalTarget(json: json, owner: owner, context: &context) as? T { return res }
			case "GraphDefinition":
				if let res = GraphDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "GraphDefinitionLink":
				if let res = GraphDefinitionLink(json: json, owner: owner, context: &context) as? T { return res }
			case "GraphDefinitionLinkTarget":
				if let res = GraphDefinitionLinkTarget(json: json, owner: owner, context: &context) as? T { return res }
			case "GraphDefinitionLinkTargetCompartment":
				if let res = GraphDefinitionLinkTargetCompartment(json: json, owner: owner, context: &context) as? T { return res }
			case "Group":
				if let res = Group(json: json, owner: owner, context: &context) as? T { return res }
			case "GroupCharacteristic":
				if let res = GroupCharacteristic(json: json, owner: owner, context: &context) as? T { return res }
			case "GroupMember":
				if let res = GroupMember(json: json, owner: owner, context: &context) as? T { return res }
			case "GuidanceResponse":
				if let res = GuidanceResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "HealthcareService":
				if let res = HealthcareService(json: json, owner: owner, context: &context) as? T { return res }
			case "HealthcareServiceAvailableTime":
				if let res = HealthcareServiceAvailableTime(json: json, owner: owner, context: &context) as? T { return res }
			case "HealthcareServiceNotAvailable":
				if let res = HealthcareServiceNotAvailable(json: json, owner: owner, context: &context) as? T { return res }
			case "HumanName":
				if let res = HumanName(json: json, owner: owner, context: &context) as? T { return res }
			case "Identifier":
				if let res = Identifier(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingManifest":
				if let res = ImagingManifest(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingManifestStudy":
				if let res = ImagingManifestStudy(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingManifestStudySeries":
				if let res = ImagingManifestStudySeries(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingManifestStudySeriesInstance":
				if let res = ImagingManifestStudySeriesInstance(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingStudy":
				if let res = ImagingStudy(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingStudySeries":
				if let res = ImagingStudySeries(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingStudySeriesInstance":
				if let res = ImagingStudySeriesInstance(json: json, owner: owner, context: &context) as? T { return res }
			case "Immunization":
				if let res = Immunization(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationExplanation":
				if let res = ImmunizationExplanation(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationPractitioner":
				if let res = ImmunizationPractitioner(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationReaction":
				if let res = ImmunizationReaction(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationRecommendation":
				if let res = ImmunizationRecommendation(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationRecommendationRecommendation":
				if let res = ImmunizationRecommendationRecommendation(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationRecommendationRecommendationDateCriterion":
				if let res = ImmunizationRecommendationRecommendationDateCriterion(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationRecommendationRecommendationProtocol":
				if let res = ImmunizationRecommendationRecommendationProtocol(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationVaccinationProtocol":
				if let res = ImmunizationVaccinationProtocol(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuide":
				if let res = ImplementationGuide(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideDependency":
				if let res = ImplementationGuideDependency(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideGlobal":
				if let res = ImplementationGuideGlobal(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuidePackage":
				if let res = ImplementationGuidePackage(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuidePackageResource":
				if let res = ImplementationGuidePackageResource(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuidePage":
				if let res = ImplementationGuidePage(json: json, owner: owner, context: &context) as? T { return res }
			case "Library":
				if let res = Library(json: json, owner: owner, context: &context) as? T { return res }
			case "Linkage":
				if let res = Linkage(json: json, owner: owner, context: &context) as? T { return res }
			case "LinkageItem":
				if let res = LinkageItem(json: json, owner: owner, context: &context) as? T { return res }
			case "List":
				if let res = List(json: json, owner: owner, context: &context) as? T { return res }
			case "ListEntry":
				if let res = ListEntry(json: json, owner: owner, context: &context) as? T { return res }
			case "Location":
				if let res = Location(json: json, owner: owner, context: &context) as? T { return res }
			case "LocationPosition":
				if let res = LocationPosition(json: json, owner: owner, context: &context) as? T { return res }
			case "Measure":
				if let res = Measure(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureGroup":
				if let res = MeasureGroup(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureGroupPopulation":
				if let res = MeasureGroupPopulation(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureGroupStratifier":
				if let res = MeasureGroupStratifier(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureReport":
				if let res = MeasureReport(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureReportGroup":
				if let res = MeasureReportGroup(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureReportGroupPopulation":
				if let res = MeasureReportGroupPopulation(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureReportGroupStratifier":
				if let res = MeasureReportGroupStratifier(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureReportGroupStratifierStratum":
				if let res = MeasureReportGroupStratifierStratum(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureReportGroupStratifierStratumPopulation":
				if let res = MeasureReportGroupStratifierStratumPopulation(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureSupplementalData":
				if let res = MeasureSupplementalData(json: json, owner: owner, context: &context) as? T { return res }
			case "Media":
				if let res = Media(json: json, owner: owner, context: &context) as? T { return res }
			case "Medication":
				if let res = Medication(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationAdministration":
				if let res = MedicationAdministration(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationAdministrationDosage":
				if let res = MedicationAdministrationDosage(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationAdministrationPerformer":
				if let res = MedicationAdministrationPerformer(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationDispense":
				if let res = MedicationDispense(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationDispensePerformer":
				if let res = MedicationDispensePerformer(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationDispenseSubstitution":
				if let res = MedicationDispenseSubstitution(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationIngredient":
				if let res = MedicationIngredient(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationPackage":
				if let res = MedicationPackage(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationPackageBatch":
				if let res = MedicationPackageBatch(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationPackageContent":
				if let res = MedicationPackageContent(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationRequest":
				if let res = MedicationRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationRequestDispenseRequest":
				if let res = MedicationRequestDispenseRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationRequestRequester":
				if let res = MedicationRequestRequester(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationRequestSubstitution":
				if let res = MedicationRequestSubstitution(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationStatement":
				if let res = MedicationStatement(json: json, owner: owner, context: &context) as? T { return res }
			case "MessageDefinition":
				if let res = MessageDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "MessageDefinitionAllowedResponse":
				if let res = MessageDefinitionAllowedResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "MessageDefinitionFocus":
				if let res = MessageDefinitionFocus(json: json, owner: owner, context: &context) as? T { return res }
			case "MessageHeader":
				if let res = MessageHeader(json: json, owner: owner, context: &context) as? T { return res }
			case "MessageHeaderDestination":
				if let res = MessageHeaderDestination(json: json, owner: owner, context: &context) as? T { return res }
			case "MessageHeaderResponse":
				if let res = MessageHeaderResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "MessageHeaderSource":
				if let res = MessageHeaderSource(json: json, owner: owner, context: &context) as? T { return res }
			case "Meta":
				if let res = Meta(json: json, owner: owner, context: &context) as? T { return res }
			case "MetadataResource":
				if let res = MetadataResource(json: json, owner: owner, context: &context) as? T { return res }
			case "Money":
				if let res = Money(json: json, owner: owner, context: &context) as? T { return res }
			case "NamingSystem":
				if let res = NamingSystem(json: json, owner: owner, context: &context) as? T { return res }
			case "NamingSystemUniqueId":
				if let res = NamingSystemUniqueId(json: json, owner: owner, context: &context) as? T { return res }
			case "Narrative":
				if let res = Narrative(json: json, owner: owner, context: &context) as? T { return res }
			case "NutritionOrder":
				if let res = NutritionOrder(json: json, owner: owner, context: &context) as? T { return res }
			case "NutritionOrderEnteralFormula":
				if let res = NutritionOrderEnteralFormula(json: json, owner: owner, context: &context) as? T { return res }
			case "NutritionOrderEnteralFormulaAdministration":
				if let res = NutritionOrderEnteralFormulaAdministration(json: json, owner: owner, context: &context) as? T { return res }
			case "NutritionOrderOralDiet":
				if let res = NutritionOrderOralDiet(json: json, owner: owner, context: &context) as? T { return res }
			case "NutritionOrderOralDietNutrient":
				if let res = NutritionOrderOralDietNutrient(json: json, owner: owner, context: &context) as? T { return res }
			case "NutritionOrderOralDietTexture":
				if let res = NutritionOrderOralDietTexture(json: json, owner: owner, context: &context) as? T { return res }
			case "NutritionOrderSupplement":
				if let res = NutritionOrderSupplement(json: json, owner: owner, context: &context) as? T { return res }
			case "Observation":
				if let res = Observation(json: json, owner: owner, context: &context) as? T { return res }
			case "ObservationComponent":
				if let res = ObservationComponent(json: json, owner: owner, context: &context) as? T { return res }
			case "ObservationReferenceRange":
				if let res = ObservationReferenceRange(json: json, owner: owner, context: &context) as? T { return res }
			case "ObservationRelated":
				if let res = ObservationRelated(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationDefinition":
				if let res = OperationDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationDefinitionOverload":
				if let res = OperationDefinitionOverload(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationDefinitionParameter":
				if let res = OperationDefinitionParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationDefinitionParameterBinding":
				if let res = OperationDefinitionParameterBinding(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationOutcome":
				if let res = OperationOutcome(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationOutcomeIssue":
				if let res = OperationOutcomeIssue(json: json, owner: owner, context: &context) as? T { return res }
			case "Organization":
				if let res = Organization(json: json, owner: owner, context: &context) as? T { return res }
			case "OrganizationContact":
				if let res = OrganizationContact(json: json, owner: owner, context: &context) as? T { return res }
			case "ParameterDefinition":
				if let res = ParameterDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "Parameters":
				if let res = Parameters(json: json, owner: owner, context: &context) as? T { return res }
			case "ParametersParameter":
				if let res = ParametersParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "Patient":
				if let res = Patient(json: json, owner: owner, context: &context) as? T { return res }
			case "PatientAnimal":
				if let res = PatientAnimal(json: json, owner: owner, context: &context) as? T { return res }
			case "PatientCommunication":
				if let res = PatientCommunication(json: json, owner: owner, context: &context) as? T { return res }
			case "PatientContact":
				if let res = PatientContact(json: json, owner: owner, context: &context) as? T { return res }
			case "PatientLink":
				if let res = PatientLink(json: json, owner: owner, context: &context) as? T { return res }
			case "PaymentNotice":
				if let res = PaymentNotice(json: json, owner: owner, context: &context) as? T { return res }
			case "PaymentReconciliation":
				if let res = PaymentReconciliation(json: json, owner: owner, context: &context) as? T { return res }
			case "PaymentReconciliationDetail":
				if let res = PaymentReconciliationDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "PaymentReconciliationProcessNote":
				if let res = PaymentReconciliationProcessNote(json: json, owner: owner, context: &context) as? T { return res }
			case "Period":
				if let res = Period(json: json, owner: owner, context: &context) as? T { return res }
			case "Person":
				if let res = Person(json: json, owner: owner, context: &context) as? T { return res }
			case "PersonLink":
				if let res = PersonLink(json: json, owner: owner, context: &context) as? T { return res }
			case "PlanDefinition":
				if let res = PlanDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "PlanDefinitionAction":
				if let res = PlanDefinitionAction(json: json, owner: owner, context: &context) as? T { return res }
			case "PlanDefinitionActionCondition":
				if let res = PlanDefinitionActionCondition(json: json, owner: owner, context: &context) as? T { return res }
			case "PlanDefinitionActionDynamicValue":
				if let res = PlanDefinitionActionDynamicValue(json: json, owner: owner, context: &context) as? T { return res }
			case "PlanDefinitionActionParticipant":
				if let res = PlanDefinitionActionParticipant(json: json, owner: owner, context: &context) as? T { return res }
			case "PlanDefinitionActionRelatedAction":
				if let res = PlanDefinitionActionRelatedAction(json: json, owner: owner, context: &context) as? T { return res }
			case "PlanDefinitionGoal":
				if let res = PlanDefinitionGoal(json: json, owner: owner, context: &context) as? T { return res }
			case "PlanDefinitionGoalTarget":
				if let res = PlanDefinitionGoalTarget(json: json, owner: owner, context: &context) as? T { return res }
			case "Practitioner":
				if let res = Practitioner(json: json, owner: owner, context: &context) as? T { return res }
			case "PractitionerQualification":
				if let res = PractitionerQualification(json: json, owner: owner, context: &context) as? T { return res }
			case "PractitionerRole":
				if let res = PractitionerRole(json: json, owner: owner, context: &context) as? T { return res }
			case "PractitionerRoleAvailableTime":
				if let res = PractitionerRoleAvailableTime(json: json, owner: owner, context: &context) as? T { return res }
			case "PractitionerRoleNotAvailable":
				if let res = PractitionerRoleNotAvailable(json: json, owner: owner, context: &context) as? T { return res }
			case "Procedure":
				if let res = Procedure(json: json, owner: owner, context: &context) as? T { return res }
			case "ProcedureFocalDevice":
				if let res = ProcedureFocalDevice(json: json, owner: owner, context: &context) as? T { return res }
			case "ProcedurePerformer":
				if let res = ProcedurePerformer(json: json, owner: owner, context: &context) as? T { return res }
			case "ProcedureRequest":
				if let res = ProcedureRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "ProcedureRequestRequester":
				if let res = ProcedureRequestRequester(json: json, owner: owner, context: &context) as? T { return res }
			case "ProcessRequest":
				if let res = ProcessRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "ProcessRequestItem":
				if let res = ProcessRequestItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ProcessResponse":
				if let res = ProcessResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "ProcessResponseProcessNote":
				if let res = ProcessResponseProcessNote(json: json, owner: owner, context: &context) as? T { return res }
			case "Provenance":
				if let res = Provenance(json: json, owner: owner, context: &context) as? T { return res }
			case "ProvenanceAgent":
				if let res = ProvenanceAgent(json: json, owner: owner, context: &context) as? T { return res }
			case "ProvenanceEntity":
				if let res = ProvenanceEntity(json: json, owner: owner, context: &context) as? T { return res }
			case "Quantity":
				if let res = Quantity(json: json, owner: owner, context: &context) as? T { return res }
			case "Questionnaire":
				if let res = Questionnaire(json: json, owner: owner, context: &context) as? T { return res }
			case "QuestionnaireItem":
				if let res = QuestionnaireItem(json: json, owner: owner, context: &context) as? T { return res }
			case "QuestionnaireItemEnableWhen":
				if let res = QuestionnaireItemEnableWhen(json: json, owner: owner, context: &context) as? T { return res }
			case "QuestionnaireItemOption":
				if let res = QuestionnaireItemOption(json: json, owner: owner, context: &context) as? T { return res }
			case "QuestionnaireResponse":
				if let res = QuestionnaireResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "QuestionnaireResponseItem":
				if let res = QuestionnaireResponseItem(json: json, owner: owner, context: &context) as? T { return res }
			case "QuestionnaireResponseItemAnswer":
				if let res = QuestionnaireResponseItemAnswer(json: json, owner: owner, context: &context) as? T { return res }
			case "Range":
				if let res = Range(json: json, owner: owner, context: &context) as? T { return res }
			case "Ratio":
				if let res = Ratio(json: json, owner: owner, context: &context) as? T { return res }
			case "Reference":
				if let res = Reference(json: json, owner: owner, context: &context) as? T { return res }
			case "ReferralRequest":
				if let res = ReferralRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "ReferralRequestRequester":
				if let res = ReferralRequestRequester(json: json, owner: owner, context: &context) as? T { return res }
			case "RelatedArtifact":
				if let res = RelatedArtifact(json: json, owner: owner, context: &context) as? T { return res }
			case "RelatedPerson":
				if let res = RelatedPerson(json: json, owner: owner, context: &context) as? T { return res }
			case "RequestGroup":
				if let res = RequestGroup(json: json, owner: owner, context: &context) as? T { return res }
			case "RequestGroupAction":
				if let res = RequestGroupAction(json: json, owner: owner, context: &context) as? T { return res }
			case "RequestGroupActionCondition":
				if let res = RequestGroupActionCondition(json: json, owner: owner, context: &context) as? T { return res }
			case "RequestGroupActionRelatedAction":
				if let res = RequestGroupActionRelatedAction(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchStudy":
				if let res = ResearchStudy(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchStudyArm":
				if let res = ResearchStudyArm(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchSubject":
				if let res = ResearchSubject(json: json, owner: owner, context: &context) as? T { return res }
			case "Resource":
				if let res = Resource(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskAssessment":
				if let res = RiskAssessment(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskAssessmentPrediction":
				if let res = RiskAssessmentPrediction(json: json, owner: owner, context: &context) as? T { return res }
			case "SampledData":
				if let res = SampledData(json: json, owner: owner, context: &context) as? T { return res }
			case "Schedule":
				if let res = Schedule(json: json, owner: owner, context: &context) as? T { return res }
			case "SearchParameter":
				if let res = SearchParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "SearchParameterComponent":
				if let res = SearchParameterComponent(json: json, owner: owner, context: &context) as? T { return res }
			case "Sequence":
				if let res = Sequence(json: json, owner: owner, context: &context) as? T { return res }
			case "SequenceQuality":
				if let res = SequenceQuality(json: json, owner: owner, context: &context) as? T { return res }
			case "SequenceReferenceSeq":
				if let res = SequenceReferenceSeq(json: json, owner: owner, context: &context) as? T { return res }
			case "SequenceRepository":
				if let res = SequenceRepository(json: json, owner: owner, context: &context) as? T { return res }
			case "SequenceVariant":
				if let res = SequenceVariant(json: json, owner: owner, context: &context) as? T { return res }
			case "ServiceDefinition":
				if let res = ServiceDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "Signature":
				if let res = Signature(json: json, owner: owner, context: &context) as? T { return res }
			case "Slot":
				if let res = Slot(json: json, owner: owner, context: &context) as? T { return res }
			case "Specimen":
				if let res = Specimen(json: json, owner: owner, context: &context) as? T { return res }
			case "SpecimenCollection":
				if let res = SpecimenCollection(json: json, owner: owner, context: &context) as? T { return res }
			case "SpecimenContainer":
				if let res = SpecimenContainer(json: json, owner: owner, context: &context) as? T { return res }
			case "SpecimenProcessing":
				if let res = SpecimenProcessing(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureDefinition":
				if let res = StructureDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureDefinitionDifferential":
				if let res = StructureDefinitionDifferential(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureDefinitionMapping":
				if let res = StructureDefinitionMapping(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureDefinitionSnapshot":
				if let res = StructureDefinitionSnapshot(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureMap":
				if let res = StructureMap(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureMapGroup":
				if let res = StructureMapGroup(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureMapGroupInput":
				if let res = StructureMapGroupInput(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureMapGroupRule":
				if let res = StructureMapGroupRule(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureMapGroupRuleDependent":
				if let res = StructureMapGroupRuleDependent(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureMapGroupRuleSource":
				if let res = StructureMapGroupRuleSource(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureMapGroupRuleTarget":
				if let res = StructureMapGroupRuleTarget(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureMapGroupRuleTargetParameter":
				if let res = StructureMapGroupRuleTargetParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureMapStructure":
				if let res = StructureMapStructure(json: json, owner: owner, context: &context) as? T { return res }
			case "Subscription":
				if let res = Subscription(json: json, owner: owner, context: &context) as? T { return res }
			case "SubscriptionChannel":
				if let res = SubscriptionChannel(json: json, owner: owner, context: &context) as? T { return res }
			case "Substance":
				if let res = Substance(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceIngredient":
				if let res = SubstanceIngredient(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceInstance":
				if let res = SubstanceInstance(json: json, owner: owner, context: &context) as? T { return res }
			case "SupplyDelivery":
				if let res = SupplyDelivery(json: json, owner: owner, context: &context) as? T { return res }
			case "SupplyDeliverySuppliedItem":
				if let res = SupplyDeliverySuppliedItem(json: json, owner: owner, context: &context) as? T { return res }
			case "SupplyRequest":
				if let res = SupplyRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "SupplyRequestOrderedItem":
				if let res = SupplyRequestOrderedItem(json: json, owner: owner, context: &context) as? T { return res }
			case "SupplyRequestRequester":
				if let res = SupplyRequestRequester(json: json, owner: owner, context: &context) as? T { return res }
			case "Task":
				if let res = Task(json: json, owner: owner, context: &context) as? T { return res }
			case "TaskInput":
				if let res = TaskInput(json: json, owner: owner, context: &context) as? T { return res }
			case "TaskOutput":
				if let res = TaskOutput(json: json, owner: owner, context: &context) as? T { return res }
			case "TaskRequester":
				if let res = TaskRequester(json: json, owner: owner, context: &context) as? T { return res }
			case "TaskRestriction":
				if let res = TaskRestriction(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReport":
				if let res = TestReport(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReportParticipant":
				if let res = TestReportParticipant(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReportSetup":
				if let res = TestReportSetup(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReportSetupAction":
				if let res = TestReportSetupAction(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReportSetupActionAssert":
				if let res = TestReportSetupActionAssert(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReportSetupActionOperation":
				if let res = TestReportSetupActionOperation(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReportTeardown":
				if let res = TestReportTeardown(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReportTeardownAction":
				if let res = TestReportTeardownAction(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReportTest":
				if let res = TestReportTest(json: json, owner: owner, context: &context) as? T { return res }
			case "TestReportTestAction":
				if let res = TestReportTestAction(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScript":
				if let res = TestScript(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptDestination":
				if let res = TestScriptDestination(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptFixture":
				if let res = TestScriptFixture(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptMetadata":
				if let res = TestScriptMetadata(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptMetadataCapability":
				if let res = TestScriptMetadataCapability(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptMetadataLink":
				if let res = TestScriptMetadataLink(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptOrigin":
				if let res = TestScriptOrigin(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptRule":
				if let res = TestScriptRule(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptRuleParam":
				if let res = TestScriptRuleParam(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptRuleset":
				if let res = TestScriptRuleset(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptRulesetRule":
				if let res = TestScriptRulesetRule(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptRulesetRuleParam":
				if let res = TestScriptRulesetRuleParam(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetup":
				if let res = TestScriptSetup(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupAction":
				if let res = TestScriptSetupAction(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupActionAssert":
				if let res = TestScriptSetupActionAssert(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupActionAssertRule":
				if let res = TestScriptSetupActionAssertRule(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupActionAssertRuleParam":
				if let res = TestScriptSetupActionAssertRuleParam(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupActionAssertRuleset":
				if let res = TestScriptSetupActionAssertRuleset(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupActionAssertRulesetRule":
				if let res = TestScriptSetupActionAssertRulesetRule(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupActionAssertRulesetRuleParam":
				if let res = TestScriptSetupActionAssertRulesetRuleParam(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupActionOperation":
				if let res = TestScriptSetupActionOperation(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupActionOperationRequestHeader":
				if let res = TestScriptSetupActionOperationRequestHeader(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptTeardown":
				if let res = TestScriptTeardown(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptTeardownAction":
				if let res = TestScriptTeardownAction(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptTest":
				if let res = TestScriptTest(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptTestAction":
				if let res = TestScriptTestAction(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptVariable":
				if let res = TestScriptVariable(json: json, owner: owner, context: &context) as? T { return res }
			case "Timing":
				if let res = Timing(json: json, owner: owner, context: &context) as? T { return res }
			case "TimingRepeat":
				if let res = TimingRepeat(json: json, owner: owner, context: &context) as? T { return res }
			case "TriggerDefinition":
				if let res = TriggerDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "UsageContext":
				if let res = UsageContext(json: json, owner: owner, context: &context) as? T { return res }
			case "ValueSet":
				if let res = ValueSet(json: json, owner: owner, context: &context) as? T { return res }
			case "ValueSetCompose":
				if let res = ValueSetCompose(json: json, owner: owner, context: &context) as? T { return res }
			case "ValueSetComposeInclude":
				if let res = ValueSetComposeInclude(json: json, owner: owner, context: &context) as? T { return res }
			case "ValueSetComposeIncludeConcept":
				if let res = ValueSetComposeIncludeConcept(json: json, owner: owner, context: &context) as? T { return res }
			case "ValueSetComposeIncludeConceptDesignation":
				if let res = ValueSetComposeIncludeConceptDesignation(json: json, owner: owner, context: &context) as? T { return res }
			case "ValueSetComposeIncludeFilter":
				if let res = ValueSetComposeIncludeFilter(json: json, owner: owner, context: &context) as? T { return res }
			case "ValueSetExpansion":
				if let res = ValueSetExpansion(json: json, owner: owner, context: &context) as? T { return res }
			case "ValueSetExpansionContains":
				if let res = ValueSetExpansionContains(json: json, owner: owner, context: &context) as? T { return res }
			case "ValueSetExpansionParameter":
				if let res = ValueSetExpansionParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "VisionPrescription":
				if let res = VisionPrescription(json: json, owner: owner, context: &context) as? T { return res }
			case "VisionPrescriptionDispense":
				if let res = VisionPrescriptionDispense(json: json, owner: owner, context: &context) as? T { return res }
			default:
				break
		}
		return T(json: json, owner: owner, context: &context)
	}
}
