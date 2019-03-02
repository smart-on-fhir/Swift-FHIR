//
//  FHIRAbstractBase+Factory.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
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
			case "AdverseEventSuspectEntityCausality":
				if let res = AdverseEventSuspectEntityCausality(json: json, owner: owner, context: &context) as? T { return res }
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
			case "BiologicallyDerivedProduct":
				if let res = BiologicallyDerivedProduct(json: json, owner: owner, context: &context) as? T { return res }
			case "BiologicallyDerivedProductCollection":
				if let res = BiologicallyDerivedProductCollection(json: json, owner: owner, context: &context) as? T { return res }
			case "BiologicallyDerivedProductManipulation":
				if let res = BiologicallyDerivedProductManipulation(json: json, owner: owner, context: &context) as? T { return res }
			case "BiologicallyDerivedProductProcessing":
				if let res = BiologicallyDerivedProductProcessing(json: json, owner: owner, context: &context) as? T { return res }
			case "BiologicallyDerivedProductStorage":
				if let res = BiologicallyDerivedProductStorage(json: json, owner: owner, context: &context) as? T { return res }
			case "BodyStructure":
				if let res = BodyStructure(json: json, owner: owner, context: &context) as? T { return res }
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
			case "CapabilityStatementMessagingSupportedMessage":
				if let res = CapabilityStatementMessagingSupportedMessage(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRest":
				if let res = CapabilityStatementRest(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestInteraction":
				if let res = CapabilityStatementRestInteraction(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestResource":
				if let res = CapabilityStatementRestResource(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestResourceInteraction":
				if let res = CapabilityStatementRestResourceInteraction(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestResourceOperation":
				if let res = CapabilityStatementRestResourceOperation(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestResourceSearchParam":
				if let res = CapabilityStatementRestResourceSearchParam(json: json, owner: owner, context: &context) as? T { return res }
			case "CapabilityStatementRestSecurity":
				if let res = CapabilityStatementRestSecurity(json: json, owner: owner, context: &context) as? T { return res }
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
			case "CatalogEntry":
				if let res = CatalogEntry(json: json, owner: owner, context: &context) as? T { return res }
			case "CatalogEntryRelatedEntry":
				if let res = CatalogEntryRelatedEntry(json: json, owner: owner, context: &context) as? T { return res }
			case "ChargeItem":
				if let res = ChargeItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ChargeItemDefinition":
				if let res = ChargeItemDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "ChargeItemDefinitionApplicability":
				if let res = ChargeItemDefinitionApplicability(json: json, owner: owner, context: &context) as? T { return res }
			case "ChargeItemDefinitionPropertyGroup":
				if let res = ChargeItemDefinitionPropertyGroup(json: json, owner: owner, context: &context) as? T { return res }
			case "ChargeItemDefinitionPropertyGroupPriceComponent":
				if let res = ChargeItemDefinitionPropertyGroupPriceComponent(json: json, owner: owner, context: &context) as? T { return res }
			case "ChargeItemPerformer":
				if let res = ChargeItemPerformer(json: json, owner: owner, context: &context) as? T { return res }
			case "Claim":
				if let res = Claim(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimAccident":
				if let res = ClaimAccident(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimCareTeam":
				if let res = ClaimCareTeam(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimDiagnosis":
				if let res = ClaimDiagnosis(json: json, owner: owner, context: &context) as? T { return res }
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
			case "ClaimResponseAddItemDetailSubDetail":
				if let res = ClaimResponseAddItemDetailSubDetail(json: json, owner: owner, context: &context) as? T { return res }
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
			case "ClaimResponseTotal":
				if let res = ClaimResponseTotal(json: json, owner: owner, context: &context) as? T { return res }
			case "ClaimSupportingInfo":
				if let res = ClaimSupportingInfo(json: json, owner: owner, context: &context) as? T { return res }
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
			case "ConsentPolicy":
				if let res = ConsentPolicy(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentProvision":
				if let res = ConsentProvision(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentProvisionActor":
				if let res = ConsentProvisionActor(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentProvisionData":
				if let res = ConsentProvisionData(json: json, owner: owner, context: &context) as? T { return res }
			case "ConsentVerification":
				if let res = ConsentVerification(json: json, owner: owner, context: &context) as? T { return res }
			case "ContactDetail":
				if let res = ContactDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ContactPoint":
				if let res = ContactPoint(json: json, owner: owner, context: &context) as? T { return res }
			case "Contract":
				if let res = Contract(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractContentDefinition":
				if let res = ContractContentDefinition(json: json, owner: owner, context: &context) as? T { return res }
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
			case "ContractTermAction":
				if let res = ContractTermAction(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermActionSubject":
				if let res = ContractTermActionSubject(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermAsset":
				if let res = ContractTermAsset(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermAssetContext":
				if let res = ContractTermAssetContext(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermAssetValuedItem":
				if let res = ContractTermAssetValuedItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermOffer":
				if let res = ContractTermOffer(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermOfferAnswer":
				if let res = ContractTermOfferAnswer(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermOfferParty":
				if let res = ContractTermOfferParty(json: json, owner: owner, context: &context) as? T { return res }
			case "ContractTermSecurityLabel":
				if let res = ContractTermSecurityLabel(json: json, owner: owner, context: &context) as? T { return res }
			case "Contributor":
				if let res = Contributor(json: json, owner: owner, context: &context) as? T { return res }
			case "Count":
				if let res = Count(json: json, owner: owner, context: &context) as? T { return res }
			case "Coverage":
				if let res = Coverage(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageClass":
				if let res = CoverageClass(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageCostToBeneficiary":
				if let res = CoverageCostToBeneficiary(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageCostToBeneficiaryException":
				if let res = CoverageCostToBeneficiaryException(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityRequest":
				if let res = CoverageEligibilityRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityRequestInsurance":
				if let res = CoverageEligibilityRequestInsurance(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityRequestItem":
				if let res = CoverageEligibilityRequestItem(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityRequestItemDiagnosis":
				if let res = CoverageEligibilityRequestItemDiagnosis(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityRequestSupportingInfo":
				if let res = CoverageEligibilityRequestSupportingInfo(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityResponse":
				if let res = CoverageEligibilityResponse(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityResponseError":
				if let res = CoverageEligibilityResponseError(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityResponseInsurance":
				if let res = CoverageEligibilityResponseInsurance(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityResponseInsuranceItem":
				if let res = CoverageEligibilityResponseInsuranceItem(json: json, owner: owner, context: &context) as? T { return res }
			case "CoverageEligibilityResponseInsuranceItemBenefit":
				if let res = CoverageEligibilityResponseInsuranceItemBenefit(json: json, owner: owner, context: &context) as? T { return res }
			case "DataRequirement":
				if let res = DataRequirement(json: json, owner: owner, context: &context) as? T { return res }
			case "DataRequirementCodeFilter":
				if let res = DataRequirementCodeFilter(json: json, owner: owner, context: &context) as? T { return res }
			case "DataRequirementDateFilter":
				if let res = DataRequirementDateFilter(json: json, owner: owner, context: &context) as? T { return res }
			case "DataRequirementSort":
				if let res = DataRequirementSort(json: json, owner: owner, context: &context) as? T { return res }
			case "DetectedIssue":
				if let res = DetectedIssue(json: json, owner: owner, context: &context) as? T { return res }
			case "DetectedIssueEvidence":
				if let res = DetectedIssueEvidence(json: json, owner: owner, context: &context) as? T { return res }
			case "DetectedIssueMitigation":
				if let res = DetectedIssueMitigation(json: json, owner: owner, context: &context) as? T { return res }
			case "Device":
				if let res = Device(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceDefinition":
				if let res = DeviceDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceDefinitionCapability":
				if let res = DeviceDefinitionCapability(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceDefinitionDeviceName":
				if let res = DeviceDefinitionDeviceName(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceDefinitionMaterial":
				if let res = DeviceDefinitionMaterial(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceDefinitionProperty":
				if let res = DeviceDefinitionProperty(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceDefinitionSpecialization":
				if let res = DeviceDefinitionSpecialization(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceDefinitionUdiDeviceIdentifier":
				if let res = DeviceDefinitionUdiDeviceIdentifier(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceDeviceName":
				if let res = DeviceDeviceName(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceMetric":
				if let res = DeviceMetric(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceMetricCalibration":
				if let res = DeviceMetricCalibration(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceProperty":
				if let res = DeviceProperty(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceRequest":
				if let res = DeviceRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceRequestParameter":
				if let res = DeviceRequestParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceSpecialization":
				if let res = DeviceSpecialization(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceUdiCarrier":
				if let res = DeviceUdiCarrier(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceUseStatement":
				if let res = DeviceUseStatement(json: json, owner: owner, context: &context) as? T { return res }
			case "DeviceVersion":
				if let res = DeviceVersion(json: json, owner: owner, context: &context) as? T { return res }
			case "DiagnosticReport":
				if let res = DiagnosticReport(json: json, owner: owner, context: &context) as? T { return res }
			case "DiagnosticReportMedia":
				if let res = DiagnosticReportMedia(json: json, owner: owner, context: &context) as? T { return res }
			case "Distance":
				if let res = Distance(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentManifest":
				if let res = DocumentManifest(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentManifestRelated":
				if let res = DocumentManifestRelated(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentReference":
				if let res = DocumentReference(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentReferenceContent":
				if let res = DocumentReferenceContent(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentReferenceContext":
				if let res = DocumentReferenceContext(json: json, owner: owner, context: &context) as? T { return res }
			case "DocumentReferenceRelatesTo":
				if let res = DocumentReferenceRelatesTo(json: json, owner: owner, context: &context) as? T { return res }
			case "DomainResource":
				if let res = DomainResource(json: json, owner: owner, context: &context) as? T { return res }
			case "Dosage":
				if let res = Dosage(json: json, owner: owner, context: &context) as? T { return res }
			case "DosageDoseAndRate":
				if let res = DosageDoseAndRate(json: json, owner: owner, context: &context) as? T { return res }
			case "Duration":
				if let res = Duration(json: json, owner: owner, context: &context) as? T { return res }
			case "EffectEvidenceSynthesis":
				if let res = EffectEvidenceSynthesis(json: json, owner: owner, context: &context) as? T { return res }
			case "EffectEvidenceSynthesisCertainty":
				if let res = EffectEvidenceSynthesisCertainty(json: json, owner: owner, context: &context) as? T { return res }
			case "EffectEvidenceSynthesisCertaintyCertaintySubcomponent":
				if let res = EffectEvidenceSynthesisCertaintyCertaintySubcomponent(json: json, owner: owner, context: &context) as? T { return res }
			case "EffectEvidenceSynthesisEffectEstimate":
				if let res = EffectEvidenceSynthesisEffectEstimate(json: json, owner: owner, context: &context) as? T { return res }
			case "EffectEvidenceSynthesisEffectEstimatePrecisionEstimate":
				if let res = EffectEvidenceSynthesisEffectEstimatePrecisionEstimate(json: json, owner: owner, context: &context) as? T { return res }
			case "EffectEvidenceSynthesisResultsByExposure":
				if let res = EffectEvidenceSynthesisResultsByExposure(json: json, owner: owner, context: &context) as? T { return res }
			case "EffectEvidenceSynthesisSampleSize":
				if let res = EffectEvidenceSynthesisSampleSize(json: json, owner: owner, context: &context) as? T { return res }
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
			case "EventDefinition":
				if let res = EventDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "Evidence":
				if let res = Evidence(json: json, owner: owner, context: &context) as? T { return res }
			case "EvidenceVariable":
				if let res = EvidenceVariable(json: json, owner: owner, context: &context) as? T { return res }
			case "EvidenceVariableCharacteristic":
				if let res = EvidenceVariableCharacteristic(json: json, owner: owner, context: &context) as? T { return res }
			case "ExampleScenario":
				if let res = ExampleScenario(json: json, owner: owner, context: &context) as? T { return res }
			case "ExampleScenarioActor":
				if let res = ExampleScenarioActor(json: json, owner: owner, context: &context) as? T { return res }
			case "ExampleScenarioInstance":
				if let res = ExampleScenarioInstance(json: json, owner: owner, context: &context) as? T { return res }
			case "ExampleScenarioInstanceContainedInstance":
				if let res = ExampleScenarioInstanceContainedInstance(json: json, owner: owner, context: &context) as? T { return res }
			case "ExampleScenarioInstanceVersion":
				if let res = ExampleScenarioInstanceVersion(json: json, owner: owner, context: &context) as? T { return res }
			case "ExampleScenarioProcess":
				if let res = ExampleScenarioProcess(json: json, owner: owner, context: &context) as? T { return res }
			case "ExampleScenarioProcessStep":
				if let res = ExampleScenarioProcessStep(json: json, owner: owner, context: &context) as? T { return res }
			case "ExampleScenarioProcessStepAlternative":
				if let res = ExampleScenarioProcessStepAlternative(json: json, owner: owner, context: &context) as? T { return res }
			case "ExampleScenarioProcessStepOperation":
				if let res = ExampleScenarioProcessStepOperation(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefit":
				if let res = ExplanationOfBenefit(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitAccident":
				if let res = ExplanationOfBenefitAccident(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitAddItem":
				if let res = ExplanationOfBenefitAddItem(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitAddItemDetail":
				if let res = ExplanationOfBenefitAddItemDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitAddItemDetailSubDetail":
				if let res = ExplanationOfBenefitAddItemDetailSubDetail(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitBenefitBalance":
				if let res = ExplanationOfBenefitBenefitBalance(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitBenefitBalanceFinancial":
				if let res = ExplanationOfBenefitBenefitBalanceFinancial(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitCareTeam":
				if let res = ExplanationOfBenefitCareTeam(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitDiagnosis":
				if let res = ExplanationOfBenefitDiagnosis(json: json, owner: owner, context: &context) as? T { return res }
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
			case "ExplanationOfBenefitSupportingInfo":
				if let res = ExplanationOfBenefitSupportingInfo(json: json, owner: owner, context: &context) as? T { return res }
			case "ExplanationOfBenefitTotal":
				if let res = ExplanationOfBenefitTotal(json: json, owner: owner, context: &context) as? T { return res }
			case "Expression":
				if let res = Expression(json: json, owner: owner, context: &context) as? T { return res }
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
			case "HealthcareServiceEligibility":
				if let res = HealthcareServiceEligibility(json: json, owner: owner, context: &context) as? T { return res }
			case "HealthcareServiceNotAvailable":
				if let res = HealthcareServiceNotAvailable(json: json, owner: owner, context: &context) as? T { return res }
			case "HumanName":
				if let res = HumanName(json: json, owner: owner, context: &context) as? T { return res }
			case "Identifier":
				if let res = Identifier(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingStudy":
				if let res = ImagingStudy(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingStudySeries":
				if let res = ImagingStudySeries(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingStudySeriesInstance":
				if let res = ImagingStudySeriesInstance(json: json, owner: owner, context: &context) as? T { return res }
			case "ImagingStudySeriesPerformer":
				if let res = ImagingStudySeriesPerformer(json: json, owner: owner, context: &context) as? T { return res }
			case "Immunization":
				if let res = Immunization(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationEducation":
				if let res = ImmunizationEducation(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationEvaluation":
				if let res = ImmunizationEvaluation(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationPerformer":
				if let res = ImmunizationPerformer(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationProtocolApplied":
				if let res = ImmunizationProtocolApplied(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationReaction":
				if let res = ImmunizationReaction(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationRecommendation":
				if let res = ImmunizationRecommendation(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationRecommendationRecommendation":
				if let res = ImmunizationRecommendationRecommendation(json: json, owner: owner, context: &context) as? T { return res }
			case "ImmunizationRecommendationRecommendationDateCriterion":
				if let res = ImmunizationRecommendationRecommendationDateCriterion(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuide":
				if let res = ImplementationGuide(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideDefinition":
				if let res = ImplementationGuideDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideDefinitionGrouping":
				if let res = ImplementationGuideDefinitionGrouping(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideDefinitionPage":
				if let res = ImplementationGuideDefinitionPage(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideDefinitionParameter":
				if let res = ImplementationGuideDefinitionParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideDefinitionResource":
				if let res = ImplementationGuideDefinitionResource(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideDefinitionTemplate":
				if let res = ImplementationGuideDefinitionTemplate(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideDependsOn":
				if let res = ImplementationGuideDependsOn(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideGlobal":
				if let res = ImplementationGuideGlobal(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideManifest":
				if let res = ImplementationGuideManifest(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideManifestPage":
				if let res = ImplementationGuideManifestPage(json: json, owner: owner, context: &context) as? T { return res }
			case "ImplementationGuideManifestResource":
				if let res = ImplementationGuideManifestResource(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlan":
				if let res = InsurancePlan(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlanContact":
				if let res = InsurancePlanContact(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlanCoverage":
				if let res = InsurancePlanCoverage(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlanCoverageBenefit":
				if let res = InsurancePlanCoverageBenefit(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlanCoverageBenefitLimit":
				if let res = InsurancePlanCoverageBenefitLimit(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlanPlan":
				if let res = InsurancePlanPlan(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlanPlanGeneralCost":
				if let res = InsurancePlanPlanGeneralCost(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlanPlanSpecificCost":
				if let res = InsurancePlanPlanSpecificCost(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlanPlanSpecificCostBenefit":
				if let res = InsurancePlanPlanSpecificCostBenefit(json: json, owner: owner, context: &context) as? T { return res }
			case "InsurancePlanPlanSpecificCostBenefitCost":
				if let res = InsurancePlanPlanSpecificCostBenefitCost(json: json, owner: owner, context: &context) as? T { return res }
			case "Invoice":
				if let res = Invoice(json: json, owner: owner, context: &context) as? T { return res }
			case "InvoiceLineItem":
				if let res = InvoiceLineItem(json: json, owner: owner, context: &context) as? T { return res }
			case "InvoiceLineItemPriceComponent":
				if let res = InvoiceLineItemPriceComponent(json: json, owner: owner, context: &context) as? T { return res }
			case "InvoiceParticipant":
				if let res = InvoiceParticipant(json: json, owner: owner, context: &context) as? T { return res }
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
			case "LocationHoursOfOperation":
				if let res = LocationHoursOfOperation(json: json, owner: owner, context: &context) as? T { return res }
			case "LocationPosition":
				if let res = LocationPosition(json: json, owner: owner, context: &context) as? T { return res }
			case "MarketingStatus":
				if let res = MarketingStatus(json: json, owner: owner, context: &context) as? T { return res }
			case "Measure":
				if let res = Measure(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureGroup":
				if let res = MeasureGroup(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureGroupPopulation":
				if let res = MeasureGroupPopulation(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureGroupStratifier":
				if let res = MeasureGroupStratifier(json: json, owner: owner, context: &context) as? T { return res }
			case "MeasureGroupStratifierComponent":
				if let res = MeasureGroupStratifierComponent(json: json, owner: owner, context: &context) as? T { return res }
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
			case "MeasureReportGroupStratifierStratumComponent":
				if let res = MeasureReportGroupStratifierStratumComponent(json: json, owner: owner, context: &context) as? T { return res }
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
			case "MedicationBatch":
				if let res = MedicationBatch(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationDispense":
				if let res = MedicationDispense(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationDispensePerformer":
				if let res = MedicationDispensePerformer(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationDispenseSubstitution":
				if let res = MedicationDispenseSubstitution(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationIngredient":
				if let res = MedicationIngredient(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledge":
				if let res = MedicationKnowledge(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeAdministrationGuidelines":
				if let res = MedicationKnowledgeAdministrationGuidelines(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeAdministrationGuidelinesDosage":
				if let res = MedicationKnowledgeAdministrationGuidelinesDosage(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics":
				if let res = MedicationKnowledgeAdministrationGuidelinesPatientCharacteristics(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeCost":
				if let res = MedicationKnowledgeCost(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeDrugCharacteristic":
				if let res = MedicationKnowledgeDrugCharacteristic(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeIngredient":
				if let res = MedicationKnowledgeIngredient(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeKinetics":
				if let res = MedicationKnowledgeKinetics(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeMedicineClassification":
				if let res = MedicationKnowledgeMedicineClassification(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeMonitoringProgram":
				if let res = MedicationKnowledgeMonitoringProgram(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeMonograph":
				if let res = MedicationKnowledgeMonograph(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgePackaging":
				if let res = MedicationKnowledgePackaging(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeRegulatory":
				if let res = MedicationKnowledgeRegulatory(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeRegulatoryMaxDispense":
				if let res = MedicationKnowledgeRegulatoryMaxDispense(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeRegulatorySchedule":
				if let res = MedicationKnowledgeRegulatorySchedule(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeRegulatorySubstitution":
				if let res = MedicationKnowledgeRegulatorySubstitution(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationKnowledgeRelatedMedicationKnowledge":
				if let res = MedicationKnowledgeRelatedMedicationKnowledge(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationRequest":
				if let res = MedicationRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationRequestDispenseRequest":
				if let res = MedicationRequestDispenseRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationRequestDispenseRequestInitialFill":
				if let res = MedicationRequestDispenseRequestInitialFill(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationRequestSubstitution":
				if let res = MedicationRequestSubstitution(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicationStatement":
				if let res = MedicationStatement(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProduct":
				if let res = MedicinalProduct(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductAuthorization":
				if let res = MedicinalProductAuthorization(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductAuthorizationJurisdictionalAuthorization":
				if let res = MedicinalProductAuthorizationJurisdictionalAuthorization(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductAuthorizationProcedure":
				if let res = MedicinalProductAuthorizationProcedure(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductContraindication":
				if let res = MedicinalProductContraindication(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductContraindicationOtherTherapy":
				if let res = MedicinalProductContraindicationOtherTherapy(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductIndication":
				if let res = MedicinalProductIndication(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductIndicationOtherTherapy":
				if let res = MedicinalProductIndicationOtherTherapy(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductIngredient":
				if let res = MedicinalProductIngredient(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductIngredientSpecifiedSubstance":
				if let res = MedicinalProductIngredientSpecifiedSubstance(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductIngredientSpecifiedSubstanceStrength":
				if let res = MedicinalProductIngredientSpecifiedSubstanceStrength(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength":
				if let res = MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductIngredientSubstance":
				if let res = MedicinalProductIngredientSubstance(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductInteraction":
				if let res = MedicinalProductInteraction(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductInteractionInteractant":
				if let res = MedicinalProductInteractionInteractant(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductManufactured":
				if let res = MedicinalProductManufactured(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductManufacturingBusinessOperation":
				if let res = MedicinalProductManufacturingBusinessOperation(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductName":
				if let res = MedicinalProductName(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductNameCountryLanguage":
				if let res = MedicinalProductNameCountryLanguage(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductNameNamePart":
				if let res = MedicinalProductNameNamePart(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductPackaged":
				if let res = MedicinalProductPackaged(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductPackagedBatchIdentifier":
				if let res = MedicinalProductPackagedBatchIdentifier(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductPackagedPackageItem":
				if let res = MedicinalProductPackagedPackageItem(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductPharmaceutical":
				if let res = MedicinalProductPharmaceutical(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductPharmaceuticalCharacteristics":
				if let res = MedicinalProductPharmaceuticalCharacteristics(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductPharmaceuticalRouteOfAdministration":
				if let res = MedicinalProductPharmaceuticalRouteOfAdministration(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies":
				if let res = MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod":
				if let res = MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductSpecialDesignation":
				if let res = MedicinalProductSpecialDesignation(json: json, owner: owner, context: &context) as? T { return res }
			case "MedicinalProductUndesirableEffect":
				if let res = MedicinalProductUndesirableEffect(json: json, owner: owner, context: &context) as? T { return res }
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
			case "MolecularSequence":
				if let res = MolecularSequence(json: json, owner: owner, context: &context) as? T { return res }
			case "MolecularSequenceQuality":
				if let res = MolecularSequenceQuality(json: json, owner: owner, context: &context) as? T { return res }
			case "MolecularSequenceQualityRoc":
				if let res = MolecularSequenceQualityRoc(json: json, owner: owner, context: &context) as? T { return res }
			case "MolecularSequenceReferenceSeq":
				if let res = MolecularSequenceReferenceSeq(json: json, owner: owner, context: &context) as? T { return res }
			case "MolecularSequenceRepository":
				if let res = MolecularSequenceRepository(json: json, owner: owner, context: &context) as? T { return res }
			case "MolecularSequenceStructureVariant":
				if let res = MolecularSequenceStructureVariant(json: json, owner: owner, context: &context) as? T { return res }
			case "MolecularSequenceStructureVariantInner":
				if let res = MolecularSequenceStructureVariantInner(json: json, owner: owner, context: &context) as? T { return res }
			case "MolecularSequenceStructureVariantOuter":
				if let res = MolecularSequenceStructureVariantOuter(json: json, owner: owner, context: &context) as? T { return res }
			case "MolecularSequenceVariant":
				if let res = MolecularSequenceVariant(json: json, owner: owner, context: &context) as? T { return res }
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
			case "ObservationDefinition":
				if let res = ObservationDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "ObservationDefinitionQualifiedInterval":
				if let res = ObservationDefinitionQualifiedInterval(json: json, owner: owner, context: &context) as? T { return res }
			case "ObservationDefinitionQuantitativeDetails":
				if let res = ObservationDefinitionQuantitativeDetails(json: json, owner: owner, context: &context) as? T { return res }
			case "ObservationReferenceRange":
				if let res = ObservationReferenceRange(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationDefinition":
				if let res = OperationDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationDefinitionOverload":
				if let res = OperationDefinitionOverload(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationDefinitionParameter":
				if let res = OperationDefinitionParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationDefinitionParameterBinding":
				if let res = OperationDefinitionParameterBinding(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationDefinitionParameterReferencedFrom":
				if let res = OperationDefinitionParameterReferencedFrom(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationOutcome":
				if let res = OperationOutcome(json: json, owner: owner, context: &context) as? T { return res }
			case "OperationOutcomeIssue":
				if let res = OperationOutcomeIssue(json: json, owner: owner, context: &context) as? T { return res }
			case "Organization":
				if let res = Organization(json: json, owner: owner, context: &context) as? T { return res }
			case "OrganizationAffiliation":
				if let res = OrganizationAffiliation(json: json, owner: owner, context: &context) as? T { return res }
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
			case "Population":
				if let res = Population(json: json, owner: owner, context: &context) as? T { return res }
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
			case "ProdCharacteristic":
				if let res = ProdCharacteristic(json: json, owner: owner, context: &context) as? T { return res }
			case "ProductShelfLife":
				if let res = ProductShelfLife(json: json, owner: owner, context: &context) as? T { return res }
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
			case "QuestionnaireItemAnswerOption":
				if let res = QuestionnaireItemAnswerOption(json: json, owner: owner, context: &context) as? T { return res }
			case "QuestionnaireItemEnableWhen":
				if let res = QuestionnaireItemEnableWhen(json: json, owner: owner, context: &context) as? T { return res }
			case "QuestionnaireItemInitial":
				if let res = QuestionnaireItemInitial(json: json, owner: owner, context: &context) as? T { return res }
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
			case "RelatedArtifact":
				if let res = RelatedArtifact(json: json, owner: owner, context: &context) as? T { return res }
			case "RelatedPerson":
				if let res = RelatedPerson(json: json, owner: owner, context: &context) as? T { return res }
			case "RelatedPersonCommunication":
				if let res = RelatedPersonCommunication(json: json, owner: owner, context: &context) as? T { return res }
			case "RequestGroup":
				if let res = RequestGroup(json: json, owner: owner, context: &context) as? T { return res }
			case "RequestGroupAction":
				if let res = RequestGroupAction(json: json, owner: owner, context: &context) as? T { return res }
			case "RequestGroupActionCondition":
				if let res = RequestGroupActionCondition(json: json, owner: owner, context: &context) as? T { return res }
			case "RequestGroupActionRelatedAction":
				if let res = RequestGroupActionRelatedAction(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchDefinition":
				if let res = ResearchDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchElementDefinition":
				if let res = ResearchElementDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchElementDefinitionCharacteristic":
				if let res = ResearchElementDefinitionCharacteristic(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchStudy":
				if let res = ResearchStudy(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchStudyArm":
				if let res = ResearchStudyArm(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchStudyObjective":
				if let res = ResearchStudyObjective(json: json, owner: owner, context: &context) as? T { return res }
			case "ResearchSubject":
				if let res = ResearchSubject(json: json, owner: owner, context: &context) as? T { return res }
			case "Resource":
				if let res = Resource(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskAssessment":
				if let res = RiskAssessment(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskAssessmentPrediction":
				if let res = RiskAssessmentPrediction(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskEvidenceSynthesis":
				if let res = RiskEvidenceSynthesis(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskEvidenceSynthesisCertainty":
				if let res = RiskEvidenceSynthesisCertainty(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskEvidenceSynthesisCertaintyCertaintySubcomponent":
				if let res = RiskEvidenceSynthesisCertaintyCertaintySubcomponent(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskEvidenceSynthesisRiskEstimate":
				if let res = RiskEvidenceSynthesisRiskEstimate(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskEvidenceSynthesisRiskEstimatePrecisionEstimate":
				if let res = RiskEvidenceSynthesisRiskEstimatePrecisionEstimate(json: json, owner: owner, context: &context) as? T { return res }
			case "RiskEvidenceSynthesisSampleSize":
				if let res = RiskEvidenceSynthesisSampleSize(json: json, owner: owner, context: &context) as? T { return res }
			case "SampledData":
				if let res = SampledData(json: json, owner: owner, context: &context) as? T { return res }
			case "Schedule":
				if let res = Schedule(json: json, owner: owner, context: &context) as? T { return res }
			case "SearchParameter":
				if let res = SearchParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "SearchParameterComponent":
				if let res = SearchParameterComponent(json: json, owner: owner, context: &context) as? T { return res }
			case "ServiceRequest":
				if let res = ServiceRequest(json: json, owner: owner, context: &context) as? T { return res }
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
			case "SpecimenDefinition":
				if let res = SpecimenDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "SpecimenDefinitionTypeTested":
				if let res = SpecimenDefinitionTypeTested(json: json, owner: owner, context: &context) as? T { return res }
			case "SpecimenDefinitionTypeTestedContainer":
				if let res = SpecimenDefinitionTypeTestedContainer(json: json, owner: owner, context: &context) as? T { return res }
			case "SpecimenDefinitionTypeTestedContainerAdditive":
				if let res = SpecimenDefinitionTypeTestedContainerAdditive(json: json, owner: owner, context: &context) as? T { return res }
			case "SpecimenDefinitionTypeTestedHandling":
				if let res = SpecimenDefinitionTypeTestedHandling(json: json, owner: owner, context: &context) as? T { return res }
			case "SpecimenProcessing":
				if let res = SpecimenProcessing(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureDefinition":
				if let res = StructureDefinition(json: json, owner: owner, context: &context) as? T { return res }
			case "StructureDefinitionContext":
				if let res = StructureDefinitionContext(json: json, owner: owner, context: &context) as? T { return res }
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
			case "SubstanceAmount":
				if let res = SubstanceAmount(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceAmountReferenceRange":
				if let res = SubstanceAmountReferenceRange(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceIngredient":
				if let res = SubstanceIngredient(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceInstance":
				if let res = SubstanceInstance(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceNucleicAcid":
				if let res = SubstanceNucleicAcid(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceNucleicAcidSubunit":
				if let res = SubstanceNucleicAcidSubunit(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceNucleicAcidSubunitLinkage":
				if let res = SubstanceNucleicAcidSubunitLinkage(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceNucleicAcidSubunitSugar":
				if let res = SubstanceNucleicAcidSubunitSugar(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstancePolymer":
				if let res = SubstancePolymer(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstancePolymerMonomerSet":
				if let res = SubstancePolymerMonomerSet(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstancePolymerMonomerSetStartingMaterial":
				if let res = SubstancePolymerMonomerSetStartingMaterial(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstancePolymerRepeat":
				if let res = SubstancePolymerRepeat(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstancePolymerRepeatRepeatUnit":
				if let res = SubstancePolymerRepeatRepeatUnit(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation":
				if let res = SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstancePolymerRepeatRepeatUnitStructuralRepresentation":
				if let res = SubstancePolymerRepeatRepeatUnitStructuralRepresentation(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceProtein":
				if let res = SubstanceProtein(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceProteinSubunit":
				if let res = SubstanceProteinSubunit(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceReferenceInformation":
				if let res = SubstanceReferenceInformation(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceReferenceInformationClassification":
				if let res = SubstanceReferenceInformationClassification(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceReferenceInformationGene":
				if let res = SubstanceReferenceInformationGene(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceReferenceInformationGeneElement":
				if let res = SubstanceReferenceInformationGeneElement(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceReferenceInformationTarget":
				if let res = SubstanceReferenceInformationTarget(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSourceMaterial":
				if let res = SubstanceSourceMaterial(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSourceMaterialFractionDescription":
				if let res = SubstanceSourceMaterialFractionDescription(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSourceMaterialOrganism":
				if let res = SubstanceSourceMaterialOrganism(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSourceMaterialOrganismAuthor":
				if let res = SubstanceSourceMaterialOrganismAuthor(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSourceMaterialOrganismHybrid":
				if let res = SubstanceSourceMaterialOrganismHybrid(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSourceMaterialOrganismOrganismGeneral":
				if let res = SubstanceSourceMaterialOrganismOrganismGeneral(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSourceMaterialPartDescription":
				if let res = SubstanceSourceMaterialPartDescription(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecification":
				if let res = SubstanceSpecification(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationFHIRString":
				if let res = SubstanceSpecificationFHIRString(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationMoiety":
				if let res = SubstanceSpecificationMoiety(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationName":
				if let res = SubstanceSpecificationName(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationNameOfficial":
				if let res = SubstanceSpecificationNameOfficial(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationProperty":
				if let res = SubstanceSpecificationProperty(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationRelationship":
				if let res = SubstanceSpecificationRelationship(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationStructure":
				if let res = SubstanceSpecificationStructure(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationStructureIsotope":
				if let res = SubstanceSpecificationStructureIsotope(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationStructureIsotopeMolecularWeight":
				if let res = SubstanceSpecificationStructureIsotopeMolecularWeight(json: json, owner: owner, context: &context) as? T { return res }
			case "SubstanceSpecificationStructureRepresentation":
				if let res = SubstanceSpecificationStructureRepresentation(json: json, owner: owner, context: &context) as? T { return res }
			case "SupplyDelivery":
				if let res = SupplyDelivery(json: json, owner: owner, context: &context) as? T { return res }
			case "SupplyDeliverySuppliedItem":
				if let res = SupplyDeliverySuppliedItem(json: json, owner: owner, context: &context) as? T { return res }
			case "SupplyRequest":
				if let res = SupplyRequest(json: json, owner: owner, context: &context) as? T { return res }
			case "SupplyRequestParameter":
				if let res = SupplyRequestParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "Task":
				if let res = Task(json: json, owner: owner, context: &context) as? T { return res }
			case "TaskInput":
				if let res = TaskInput(json: json, owner: owner, context: &context) as? T { return res }
			case "TaskOutput":
				if let res = TaskOutput(json: json, owner: owner, context: &context) as? T { return res }
			case "TaskRestriction":
				if let res = TaskRestriction(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilities":
				if let res = TerminologyCapabilities(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesClosure":
				if let res = TerminologyCapabilitiesClosure(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesCodeSystem":
				if let res = TerminologyCapabilitiesCodeSystem(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesCodeSystemVersion":
				if let res = TerminologyCapabilitiesCodeSystemVersion(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesCodeSystemVersionFilter":
				if let res = TerminologyCapabilitiesCodeSystemVersionFilter(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesExpansion":
				if let res = TerminologyCapabilitiesExpansion(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesExpansionParameter":
				if let res = TerminologyCapabilitiesExpansionParameter(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesImplementation":
				if let res = TerminologyCapabilitiesImplementation(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesSoftware":
				if let res = TerminologyCapabilitiesSoftware(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesTranslation":
				if let res = TerminologyCapabilitiesTranslation(json: json, owner: owner, context: &context) as? T { return res }
			case "TerminologyCapabilitiesValidateCode":
				if let res = TerminologyCapabilitiesValidateCode(json: json, owner: owner, context: &context) as? T { return res }
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
			case "TestScriptSetup":
				if let res = TestScriptSetup(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupAction":
				if let res = TestScriptSetupAction(json: json, owner: owner, context: &context) as? T { return res }
			case "TestScriptSetupActionAssert":
				if let res = TestScriptSetupActionAssert(json: json, owner: owner, context: &context) as? T { return res }
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
			case "VerificationResult":
				if let res = VerificationResult(json: json, owner: owner, context: &context) as? T { return res }
			case "VerificationResultAttestation":
				if let res = VerificationResultAttestation(json: json, owner: owner, context: &context) as? T { return res }
			case "VerificationResultPrimarySource":
				if let res = VerificationResultPrimarySource(json: json, owner: owner, context: &context) as? T { return res }
			case "VerificationResultValidator":
				if let res = VerificationResultValidator(json: json, owner: owner, context: &context) as? T { return res }
			case "VisionPrescription":
				if let res = VisionPrescription(json: json, owner: owner, context: &context) as? T { return res }
			case "VisionPrescriptionLensSpecification":
				if let res = VisionPrescriptionLensSpecification(json: json, owner: owner, context: &context) as? T { return res }
			case "VisionPrescriptionLensSpecificationPrism":
				if let res = VisionPrescriptionLensSpecificationPrism(json: json, owner: owner, context: &context) as? T { return res }
			default:
				break
		}
		return T(json: json, owner: owner, context: &context)
	}
}
