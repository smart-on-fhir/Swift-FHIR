//
//  CodeSystems.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//


/**
A list of the base types defined by this version of the FHIR specification - types that are defined, but for which only
specializations actually are created.

URL: http://hl7.org/fhir/abstract-types
*/
public enum AbstractType: String {
	
	/// A place holder that means any kind of data type
	case type = "Type"
	
	/// A place holder that means any kind of resource
	case any = "Any"
}


/**
Indicates whether the account is available to be used.

URL: http://hl7.org/fhir/account-status
ValueSet: http://hl7.org/fhir/ValueSet/account-status
*/
public enum AccountStatus: String {
	
	/// This account is active and may be used.
	case active = "active"
	
	/// This account is inactive and should not be used to track financial information.
	case inactive = "inactive"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// This account is on hold.
	case onHold = "on-hold"
	
	/// The account status is unknown.
	case unknown = "unknown"
}


/**
Defines behavior for an action or a group for how many times that item may be repeated.

URL: http://hl7.org/fhir/action-cardinality-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-cardinality-behavior
*/
public enum ActionCardinalityBehavior: String {
	
	/// The action may only be selected one time.
	case single = "single"
	
	/// The action may be selected multiple times.
	case multiple = "multiple"
}


/**
Defines the kinds of conditions that can appear on actions.

URL: http://hl7.org/fhir/action-condition-kind
ValueSet: http://hl7.org/fhir/ValueSet/action-condition-kind
*/
public enum ActionConditionKind: String {
	
	/// The condition describes whether or not a given action is applicable.
	case applicability = "applicability"
	
	/// The condition is a starting condition for the action.
	case start = "start"
	
	/// The condition is a stop, or exit condition for the action.
	case stop = "stop"
}


/**
Defines organization behavior of a group.

URL: http://hl7.org/fhir/action-grouping-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-grouping-behavior
*/
public enum ActionGroupingBehavior: String {
	
	/// Any group marked with this behavior should be displayed as a visual group to the end user.
	case visualGroup = "visual-group"
	
	/// A group with this behavior logically groups its sub-elements, and may be shown as a visual group to the end
	/// user, but it is not required to do so.
	case logicalGroup = "logical-group"
	
	/// A group of related alternative actions is a sentence group if the target referenced by the action is the same in
	/// all the actions and each action simply constitutes a different variation on how to specify the details for the
	/// target. For example, two actions that could be in a SentenceGroup are "aspirin, 500 mg, 2 times per day" and
	/// "aspirin, 300 mg, 3 times per day". In both cases, aspirin is the target referenced by the action, and the two
	/// actions represent different options for how aspirin might be ordered for the patient. Note that a SentenceGroup
	/// would almost always have an associated selection behavior of "AtMostOne", unless it's a required action, in
	/// which case, it would be "ExactlyOne".
	case sentenceGroup = "sentence-group"
}


/**
The type of participant for the action.

URL: http://hl7.org/fhir/action-participant-type
ValueSet: http://hl7.org/fhir/ValueSet/action-participant-type
*/
public enum ActionParticipantType: String {
	
	/// The participant is the patient under evaluation.
	case patient = "patient"
	
	/// The participant is a practitioner involved in the patient's care.
	case practitioner = "practitioner"
	
	/// The participant is a person related to the patient.
	case relatedPerson = "related-person"
	
	/// The participant is a system or device used in the care of the patient.
	case device = "device"
}


/**
Defines selection frequency behavior for an action or group.

URL: http://hl7.org/fhir/action-precheck-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-precheck-behavior
*/
public enum ActionPrecheckBehavior: String {
	
	/// An action with this behavior is one of the most frequent action that is, or should be, included by an end user,
	/// for the particular context in which the action occurs. The system displaying the action to the end user should
	/// consider "pre-checking" such an action as a convenience for the user.
	case yes = "yes"
	
	/// An action with this behavior is one of the less frequent actions included by the end user, for the particular
	/// context in which the action occurs. The system displaying the actions to the end user would typically not "pre-
	/// check" such an action.
	case no = "no"
}


/**
Defines the types of relationships between actions.

URL: http://hl7.org/fhir/action-relationship-type
ValueSet: http://hl7.org/fhir/ValueSet/action-relationship-type
*/
public enum ActionRelationshipType: String {
	
	/// The action must be performed before the start of the related action.
	case beforeStart = "before-start"
	
	/// The action must be performed before the related action.
	case before = "before"
	
	/// The action must be performed before the end of the related action.
	case beforeEnd = "before-end"
	
	/// The action must be performed concurrent with the start of the related action.
	case concurrentWithStart = "concurrent-with-start"
	
	/// The action must be performed concurrent with the related action.
	case concurrent = "concurrent"
	
	/// The action must be performed concurrent with the end of the related action.
	case concurrentWithEnd = "concurrent-with-end"
	
	/// The action must be performed after the start of the related action.
	case afterStart = "after-start"
	
	/// The action must be performed after the related action.
	case after = "after"
	
	/// The action must be performed after the end of the related action.
	case afterEnd = "after-end"
}


/**
Defines expectations around whether an action or action group is required.

URL: http://hl7.org/fhir/action-required-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-required-behavior
*/
public enum ActionRequiredBehavior: String {
	
	/// An action with this behavior must be included in the actions processed by the end user; the end user SHALL NOT
	/// choose not to include this action.
	case must = "must"
	
	/// An action with this behavior may be included in the set of actions processed by the end user.
	case could = "could"
	
	/// An action with this behavior must be included in the set of actions processed by the end user, unless the end
	/// user provides documentation as to why the action was not included.
	case mustUnlessDocumented = "must-unless-documented"
}


/**
Defines selection behavior of a group.

URL: http://hl7.org/fhir/action-selection-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-selection-behavior
*/
public enum ActionSelectionBehavior: String {
	
	/// Any number of the actions in the group may be chosen, from zero to all.
	case any = "any"
	
	/// All the actions in the group must be selected as a single unit.
	case all = "all"
	
	/// All the actions in the group are meant to be chosen as a single unit: either all must be selected by the end
	/// user, or none may be selected.
	case allOrNone = "all-or-none"
	
	/// The end user must choose one and only one of the selectable actions in the group. The user SHALL NOT choose none
	/// of the actions in the group.
	case exactlyOne = "exactly-one"
	
	/// The end user may choose zero or at most one of the actions in the group.
	case atMostOne = "at-most-one"
	
	/// The end user must choose a minimum of one, and as many additional as desired.
	case oneOrMore = "one-or-more"
}


/**
The type of action to be performed.

URL: http://terminology.hl7.org/CodeSystem/action-type
ValueSet: http://hl7.org/fhir/ValueSet/action-type
*/
public enum ActionType: String {
	
	/// The action is to create a new resource.
	case create = "create"
	
	/// The action is to update an existing resource.
	case update = "update"
	
	/// The action is to remove an existing resource.
	case remove = "remove"
	
	/// The action is to fire a specific event.
	case fireEvent = "fire-event"
}


/**
High-level categorization of the type of activity.

URL: http://terminology.hl7.org/CodeSystem/activity-definition-category
ValueSet: http://hl7.org/fhir/ValueSet/activity-definition-category
*/
public enum ActivityDefinitionCategory: String {
	
	/// The activity is intended to provide or is related to treatment of the patient.
	case treatment = "treatment"
	
	/// The activity is intended to provide or is related to education of the patient.
	case education = "education"
	
	/// The activity is intended to perform or is related to assessment of the patient.
	case assessment = "assessment"
}


/**
This value set includes sample additional material type codes.

URL: http://hl7.org/fhir/additionalmaterials
ValueSet: http://hl7.org/fhir/ValueSet/additionalmaterials
*/
public enum AdditionalMaterialCodes: String {
	
	/// XRay
	case xray = "xray"
	
	/// Image
	case image = "image"
	
	/// Email
	case email = "email"
	
	/// Model
	case model = "model"
	
	/// Document
	case document = "document"
	
	/// Other
	case other = "other"
}


/**
The type of an address (physical / postal).

URL: http://hl7.org/fhir/address-type
ValueSet: http://hl7.org/fhir/ValueSet/address-type
*/
public enum AddressType: String {
	
	/// Mailing addresses - PO Boxes and care-of addresses.
	case postal = "postal"
	
	/// A physical address that can be visited.
	case physical = "physical"
	
	/// An address that is both physical and postal.
	case both = "both"
}


/**
The use of an address.

URL: http://hl7.org/fhir/address-use
ValueSet: http://hl7.org/fhir/ValueSet/address-use
*/
public enum AddressUse: String {
	
	/// A communication address at a home.
	case home = "home"
	
	/// An office address. First choice for business related contacts during business hours.
	case work = "work"
	
	/// A temporary address. The period can provide more detailed information.
	case temp = "temp"
	
	/// This address is no longer in use (or was never correct but retained for records).
	case old = "old"
	
	/// An address to be used to send bills, invoices, receipts etc.
	case billing = "billing"
}


/**
This value set includes smattering of Adjudication Reason codes.

URL: http://terminology.hl7.org/CodeSystem/adjudication-reason
ValueSet: http://hl7.org/fhir/ValueSet/adjudication-reason
*/
public enum AdjudicationReasonCodes: String {
	
	/// Not covered
	case ar001 = "ar001"
	
	/// Plan Limit Reached
	case ar002 = "ar002"
}


/**
This value set includes a smattering of Adjudication Value codes which includes codes to indicate the amounts eligible
under the plan, the amount of benefit, copays etc.

URL: http://terminology.hl7.org/CodeSystem/adjudication
ValueSet: http://hl7.org/fhir/ValueSet/adjudication
*/
public enum AdjudicationValueCodes: String {
	
	/// The total submitted amount for the claim or group or line item.
	case submitted = "submitted"
	
	/// Patient Co-Payment
	case copay = "copay"
	
	/// Amount of the change which is considered for adjudication.
	case eligible = "eligible"
	
	/// Amount deducted from the eligible amount prior to adjudication.
	case deductible = "deductible"
	
	/// The amount of deductible which could not allocated to other line items.
	case unallocdeduct = "unallocdeduct"
	
	/// Eligible Percentage.
	case eligpercent = "eligpercent"
	
	/// The amount of tax.
	case tax = "tax"
	
	/// Amount payable under the coverage
	case benefit = "benefit"
}


/**
The gender of a person used for administrative purposes.

URL: http://hl7.org/fhir/administrative-gender
ValueSet: http://hl7.org/fhir/ValueSet/administrative-gender
*/
public enum AdministrativeGender: String {
	
	/// Male.
	case male = "male"
	
	/// Female.
	case female = "female"
	
	/// Other.
	case other = "other"
	
	/// Unknown.
	case unknown = "unknown"
}


/**
This value set defines a set of codes that can be used to indicate from where the patient came in.

URL: http://terminology.hl7.org/CodeSystem/admit-source
ValueSet: http://hl7.org/fhir/ValueSet/encounter-admit-source
*/
public enum AdmitSource: String {
	
	/// The Patient has been transferred from another hospital for this encounter.
	case hospTrans = "hosp-trans"
	
	/// The patient has been transferred from the emergency department within the hospital. This is typically used in
	/// the transition to an inpatient encounter
	case emd = "emd"
	
	/// The patient has been transferred from an outpatient department within the hospital.
	case outp = "outp"
	
	/// The patient is a newborn and the encounter will track the baby related activities (as opposed to the Mothers
	/// encounter - that may be associated using the newborn encounters partof property)
	case born = "born"
	
	/// The patient has been admitted due to a referred from a General Practitioner.
	case gp = "gp"
	
	/// The patient has been admitted due to a referred from a Specialist (as opposed to a General Practitioner).
	case mp = "mp"
	
	/// The patient has been transferred from a nursing home.
	case nursing = "nursing"
	
	/// The patient has been transferred from a psychiatric facility.
	case psych = "psych"
	
	/// The patient has been transferred from a rehabilitation facility or clinic.
	case rehab = "rehab"
	
	/// The patient has been admitted from a source otherwise not specified here.
	case other = "other"
}


/**
Overall nature of the adverse event, e.g. real or potential.

URL: http://hl7.org/fhir/adverse-event-actuality
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-actuality
*/
public enum AdverseEventActuality: String {
	
	/// The adverse event actually happened regardless of whether anyone was affected or harmed.
	case actual = "actual"
	
	/// A potential adverse event.
	case potential = "potential"
}


/**
Overall categorization of the event, e.g. product-related or situational.

URL: http://terminology.hl7.org/CodeSystem/adverse-event-category
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-category
*/
public enum AdverseEventCategory: String {
	
	/// The adverse event pertains to a product problem.
	case productProblem = "product-problem"
	
	/// The adverse event pertains to product quality.
	case productQuality = "product-quality"
	
	/// The adverse event pertains to a product use error.
	case productUseError = "product-use-error"
	
	/// The adverse event pertains to a wrong dose.
	case wrongDose = "wrong-dose"
	
	/// The adverse event pertains to incorrect perscribing information.
	case incorrectPrescribingInformation = "incorrect-prescribing-information"
	
	/// The adverse event pertains to a wrong technique.
	case wrongTechnique = "wrong-technique"
	
	/// The adverse event pertains to a wrong route of administration.
	case wrongRouteOfAdministration = "wrong-route-of-administration"
	
	/// The adverse event pertains to a wrong rate.
	case wrongRate = "wrong-rate"
	
	/// The adverse event pertains to a wrong duration.
	case wrongDuration = "wrong-duration"
	
	/// The adverse event pertains to a wrong time.
	case wrongTime = "wrong-time"
	
	/// The adverse event pertains to an expired drug.
	case expiredDrug = "expired-drug"
	
	/// The adverse event pertains to a medical device use error.
	case medicalDeviceUseError = "medical-device-use-error"
	
	/// The adverse event pertains to a problem with a different manufacturer of the same medication.
	case problemDifferentManufacturer = "problem-different-manufacturer"
	
	/// The adverse event pertains to an unsafe physical environment.
	case unsafePhysicalEnvironment = "unsafe-physical-environment"
}


/**
Codes for the assessment of whether the entity caused the event.

URL: http://terminology.hl7.org/CodeSystem/adverse-event-causality-assess
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-causality-assess
*/
public enum AdverseEventCausalityAssessment: String {
	
	/// i) Event or laboratory test abnormality, with plausible time relationship to drug intake; ii) Cannot be
	/// explained by disease or other drugs; iii) Response to withdrawal plausible (pharmacologically, pathologically);
	/// iv) Event definitive pharmacologically or phenomenologically (i.e. an objective and specific medical disorder or
	/// a recognized pharmacological phenomenon); or v) Re-challenge satisfactory, if necessary.
	case certain = "Certain"
	
	/// i) Event or laboratory test abnormality, with reasonable time relationship to drug intake; ii) Unlikely to be
	/// attributed to disease or other drugs; iii) Response to withdrawal clinically reasonable; or iv) Re-challenge not
	/// required.
	case probablyLikely = "Probably-Likely"
	
	/// i) Event or laboratory test abnormality, with reasonable time relationship to drug intake; ii) Could also be
	/// explained by disease or other drugs; or iii) Information on drug withdrawal may be lacking or unclear.
	case possible = "Possible"
	
	/// i) Event or laboratory test abnormality, with a time to drug intake that makes a relationship improbable (but
	/// not impossible); or ii) Disease or other drugs provide plausible explanations.
	case unlikely = "Unlikely"
	
	/// i) Event or laboratory test abnormality; ii) More data for proper assessment needed; or iii) Additional data
	/// under examination.
	case conditionalClassified = "Conditional-Classified"
	
	/// i) Report suggesting an adverse reaction; ii) Cannot be judged because information is insufficient or
	/// contradictory; or iii) Data cannot be supplemented or verified.
	case unassessableUnclassifiable = "Unassessable-Unclassifiable"
}


/**
TODO.

URL: http://terminology.hl7.org/CodeSystem/adverse-event-causality-method
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-causality-method
*/
public enum AdverseEventCausalityMethod: String {
	
	/// probabilityScale
	case probabilityScale = "ProbabilityScale"
	
	/// bayesian
	case bayesian = "Bayesian"
	
	/// checklist
	case checklist = "Checklist"
}


/**
TODO (and should this be required?).

URL: http://terminology.hl7.org/CodeSystem/adverse-event-outcome
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-outcome
*/
public enum AdverseEventOutcome: String {
	
	/// resolved
	case resolved = "resolved"
	
	/// recovering
	case recovering = "recovering"
	
	/// ongoing
	case ongoing = "ongoing"
	
	/// resolvedWithSequelae
	case resolvedWithSequelae = "resolvedWithSequelae"
	
	/// fatal
	case fatal = "fatal"
	
	/// unknown
	case unknown = "unknown"
}


/**
Overall seriousness of this event for the patient.

URL: http://terminology.hl7.org/CodeSystem/adverse-event-seriousness
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-seriousness
*/
public enum AdverseEventSeriousness: String {
	
	/// Non-serious.
	case nonSerious = "Non-serious"
	
	/// Serious.
	case serious = "Serious"
	
	/// Results in death.
	case seriousResultsInDeath = "SeriousResultsInDeath"
	
	/// Is Life-threatening.
	case seriousIsLifeThreatening = "SeriousIsLifeThreatening"
	
	/// Requires inpatient hospitalization or causes prolongation of existing hospitalization.
	case seriousResultsInHospitalization = "SeriousResultsInHospitalization"
	
	/// Results in persistent or significant disability/incapacity.
	case seriousResultsInDisability = "SeriousResultsInDisability"
	
	/// Is a congenital anomaly/birth defect.
	case seriousIsBirthDefect = "SeriousIsBirthDefect"
	
	/// Requires intervention to prevent permanent impairment or damage (i.e., an important medical event that requires
	/// medical judgement).
	case seriousRequiresPreventImpairment = "SeriousRequiresPreventImpairment"
}


/**
The severity of the adverse event itself, in direct relation to the subject.

URL: http://terminology.hl7.org/CodeSystem/adverse-event-severity
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-severity
*/
public enum AdverseEventSeverity: String {
	
	/// mild
	case mild = "mild"
	
	/// moderate
	case moderate = "moderate"
	
	/// severe
	case severe = "severe"
}


/**
How resource references can be aggregated.

URL: http://hl7.org/fhir/resource-aggregation-mode
ValueSet: http://hl7.org/fhir/ValueSet/resource-aggregation-mode
*/
public enum AggregationMode: String {
	
	/// The reference is a local reference to a contained resource.
	case contained = "contained"
	
	/// The reference to a resource that has to be resolved externally to the resource that includes the reference.
	case referenced = "referenced"
	
	/// The resource the reference points to will be found in the same bundle as the resource that includes the
	/// reference.
	case bundled = "bundled"
}


/**
Category of an identified substance associated with allergies or intolerances.

URL: http://hl7.org/fhir/allergy-intolerance-category
ValueSet: http://hl7.org/fhir/ValueSet/allergy-intolerance-category
*/
public enum AllergyIntoleranceCategory: String {
	
	/// Any substance consumed to provide nutritional support for the body.
	case food = "food"
	
	/// Substances administered to achieve a physiological effect.
	case medication = "medication"
	
	/// Any substances that are encountered in the environment, including any substance not already classified as food,
	/// medication, or biologic.
	case environment = "environment"
	
	/// A preparation that is synthesized from living organisms or their products, especially a human or animal protein,
	/// such as a hormone or antitoxin, that is used as a diagnostic, preventive, or therapeutic agent. Examples of
	/// biologic medications include: vaccines; allergenic extracts, which are used for both diagnosis and treatment
	/// (for example, allergy shots); gene therapies; cellular therapies.  There are other biologic products, such as
	/// tissues, which are not typically associated with allergies.
	case biologic = "biologic"
}


/**
Statement about the degree of clinical certainty that a specific substance was the cause of the manifestation in a
reaction event.

URL: http://terminology.hl7.org/CodeSystem/reaction-event-certainty
ValueSet: http://hl7.org/fhir/ValueSet/reaction-event-certainty
*/
public enum AllergyIntoleranceCertainty: String {
	
	/// There is a low level of clinical certainty that the reaction was caused by the identified substance.
	case unlikely = "unlikely"
	
	/// There is a high level of clinical certainty that the reaction was caused by the identified substance.
	case likely = "likely"
	
	/// There is a very high level of clinical certainty that the reaction was due to the identified substance, which
	/// may include clinical evidence by testing or rechallenge.
	case confirmed = "confirmed"
	
	/// The clinical certainty that the reaction was caused by the identified substance is unknown.  It is an explicit
	/// assertion that certainty is not known.
	case unknown = "unknown"
}


/**
Preferred value set for AllergyIntolerance Clinical Status.

URL: http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
ValueSet: http://hl7.org/fhir/ValueSet/allergyintolerance-clinical
*/
public enum AllergyIntoleranceClinicalStatusCodes: String {
	
	/// The subject is currently experiencing, or is at risk of, a reaction to the identified substance.
	case active = "active"
	
	/// The subject is no longer at risk of a reaction to the identified substance.
	case inactive = "inactive"
	
	/// A reaction to the identified substance has been clinically reassessed by testing or re-exposure and is
	/// considered no longer to be present. Re-exposure could be accidental, unplanned, or outside of any clinical
	/// setting.
	case resolved = "resolved"
}


/**
Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.

URL: http://hl7.org/fhir/allergy-intolerance-criticality
ValueSet: http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality
*/
public enum AllergyIntoleranceCriticality: String {
	
	/// Worst case result of a future exposure is not assessed to be life-threatening or having high potential for organ
	/// system failure.
	case low = "low"
	
	/// Worst case result of a future exposure is assessed to be life-threatening or having high potential for organ
	/// system failure.
	case high = "high"
	
	/// Unable to assess the worst case result of a future exposure.
	case unableToAssess = "unable-to-assess"
}


/**
Clinical assessment of the severity of a reaction event as a whole, potentially considering multiple different
manifestations.

URL: http://hl7.org/fhir/reaction-event-severity
ValueSet: http://hl7.org/fhir/ValueSet/reaction-event-severity
*/
public enum AllergyIntoleranceSeverity: String {
	
	/// Causes mild physiological effects.
	case mild = "mild"
	
	/// Causes moderate physiological effects.
	case moderate = "moderate"
	
	/// Causes severe physiological effects.
	case severe = "severe"
}


/**
The risk of an adverse reaction (allergy or intolerance) for this patient upon exposure to the substance (including
pharmaceutical products).

URL: http://terminology.hl7.org/CodeSystem/allerg-intol-substance-exp-risk
ValueSet: http://hl7.org/fhir/ValueSet/allerg-intol-substance-exp-risk
*/
public enum AllergyIntoleranceSubstanceExposureRisk: String {
	
	/// Known risk of allergy or intolerance reaction upon exposure to the specified substance.
	case knownReactionRisk = "known-reaction-risk"
	
	/// No known risk of allergy or intolerance reaction upon exposure to the specified substance.
	case noKnownReactionRisk = "no-known-reaction-risk"
}


/**
Identification of the underlying physiological mechanism for a Reaction Risk.

URL: http://hl7.org/fhir/allergy-intolerance-type
ValueSet: http://hl7.org/fhir/ValueSet/allergy-intolerance-type
*/
public enum AllergyIntoleranceType: String {
	
	/// A propensity for hypersensitive reaction(s) to a substance.  These reactions are most typically type I
	/// hypersensitivity, plus other "allergy-like" reactions, including pseudoallergy.
	case allergy = "allergy"
	
	/// A propensity for adverse reactions to a substance that is not judged to be allergic or "allergy-like".  These
	/// reactions are typically (but not necessarily) non-immune.  They are to some degree idiosyncratic and/or patient-
	/// specific (i.e. are not a reaction that is expected to occur with most or all patients given similar
	/// circumstances).
	case intolerance = "intolerance"
}


/**
Preferred value set for AllergyIntolerance Verification Status.

URL: http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
ValueSet: http://hl7.org/fhir/ValueSet/allergyintolerance-verification
*/
public enum AllergyIntoleranceVerificationStatusCodes: String {
	
	/// A low level of certainty about the propensity for a reaction to the identified substance.
	case unconfirmed = "unconfirmed"
	
	/// A high level of certainty about the propensity for a reaction to the identified substance, which may include
	/// clinical evidence by testing or rechallenge.
	case confirmed = "confirmed"
	
	/// A propensity for a reaction to the identified substance has been disputed or disproven with a sufficient level
	/// of clinical certainty to justify invalidating the assertion. This might or might not include testing or
	/// rechallenge.
	case refuted = "refuted"
	
	/// The statement was entered in error and is not valid.
	case enteredInError = "entered-in-error"
}


/**
This example value set defines a set of codes that can be used to indicate species of animal patients.

URL: http://hl7.org/fhir/animal-species
*/
public enum AnimalSpecies: String {
	
	/// Canis lupus familiaris
	case canislf = "canislf"
	
	/// Ovis aries
	case ovisa = "ovisa"
	
	/// Serinus canaria domestica
	case serinuscd = "serinuscd"
}


/**
The free/busy status of an appointment.

URL: http://hl7.org/fhir/appointmentstatus
ValueSet: http://hl7.org/fhir/ValueSet/appointmentstatus
*/
public enum AppointmentStatus: String {
	
	/// None of the participant(s) have finalized their acceptance of the appointment request, and the start/end time
	/// might not be set yet.
	case proposed = "proposed"
	
	/// Some or all of the participant(s) have not finalized their acceptance of the appointment request.
	case pending = "pending"
	
	/// All participant(s) have been considered and the appointment is confirmed to go ahead at the date/times
	/// specified.
	case booked = "booked"
	
	/// The patient/patients has/have arrived and is/are waiting to be seen.
	case arrived = "arrived"
	
	/// The planning stages of the appointment are now complete, the encounter resource will exist and will track
	/// further status changes. Note that an encounter may exist before the appointment status is fulfilled for many
	/// reasons.
	case fulfilled = "fulfilled"
	
	/// The appointment has been cancelled.
	case cancelled = "cancelled"
	
	/// Some or all of the participant(s) have not/did not appear for the appointment (usually the patient).
	case noshow = "noshow"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// When checked in, all pre-encounter administrative work is complete, and the encounter may begin. (where multiple
	/// patients are involved, they are all present).
	case checkedIn = "checked-in"
	
	/// The appointment has been placed on a waitlist, to be scheduled/confirmed in the future when a slot/service is
	/// available.
	/// A specific time might or might not be pre-allocated.
	case waitlist = "waitlist"
}


/**
The type of direction to use for assertion.

URL: http://hl7.org/fhir/assert-direction-codes
ValueSet: http://hl7.org/fhir/ValueSet/assert-direction-codes
*/
public enum AssertionDirectionType: String {
	
	/// The assertion is evaluated on the response. This is the default value.
	case response = "response"
	
	/// The assertion is evaluated on the request.
	case request = "request"
}


/**
The type of operator to use for assertion.

URL: http://hl7.org/fhir/assert-operator-codes
ValueSet: http://hl7.org/fhir/ValueSet/assert-operator-codes
*/
public enum AssertionOperatorType: String {
	
	/// Default value. Equals comparison.
	case equals = "equals"
	
	/// Not equals comparison.
	case notEquals = "notEquals"
	
	/// Compare value within a known set of values.
	case `in` = "in"
	
	/// Compare value not within a known set of values.
	case notIn = "notIn"
	
	/// Compare value to be greater than a known value.
	case greaterThan = "greaterThan"
	
	/// Compare value to be less than a known value.
	case lessThan = "lessThan"
	
	/// Compare value is empty.
	case empty = "empty"
	
	/// Compare value is not empty.
	case notEmpty = "notEmpty"
	
	/// Compare value string contains a known value.
	case contains = "contains"
	
	/// Compare value string does not contain a known value.
	case notContains = "notContains"
	
	/// Evaluate the FHIRPath expression as a boolean condition.
	case eval = "eval"
}


/**
The type of response code to use for assertion.

URL: http://hl7.org/fhir/assert-response-code-types
ValueSet: http://hl7.org/fhir/ValueSet/assert-response-code-types
*/
public enum AssertionResponseTypes: String {
	
	/// Response code is 200.
	case okay = "okay"
	
	/// Response code is 201.
	case created = "created"
	
	/// Response code is 204.
	case noContent = "noContent"
	
	/// Response code is 304.
	case notModified = "notModified"
	
	/// Response code is 400.
	case bad = "bad"
	
	/// Response code is 403.
	case forbidden = "forbidden"
	
	/// Response code is 404.
	case notFound = "notFound"
	
	/// Response code is 405.
	case methodNotAllowed = "methodNotAllowed"
	
	/// Response code is 409.
	case conflict = "conflict"
	
	/// Response code is 410.
	case gone = "gone"
	
	/// Response code is 412.
	case preconditionFailed = "preconditionFailed"
	
	/// Response code is 422.
	case unprocessable = "unprocessable"
}


/**
Indicator for type of action performed during the event that generated the event.

URL: http://hl7.org/fhir/audit-event-action
ValueSet: http://hl7.org/fhir/ValueSet/audit-event-action
*/
public enum AuditEventAction: String {
	
	/// Create a new database object, such as placing an order.
	case C = "C"
	
	/// Display or print data, such as a doctor census.
	case R = "R"
	
	/// Update data, such as revise patient information.
	case U = "U"
	
	/// Delete items, such as a doctor master file record.
	case D = "D"
	
	/// Perform a system or application function such as log-on, program execution or use of an object's method, or
	/// perform a query/search operation.
	case E = "E"
}


/**
Event Types for Audit Events - defined by DICOM with some FHIR specific additions.

URL: http://terminology.hl7.org/CodeSystem/audit-event-type
*/
public enum AuditEventID: String {
	
	/// Audit Event: Execution of a RESTful operation as defined by FHIR.
	case rest = "rest"
}


/**
This value set defines codes for resources not yet supported by (or which will never be supported by) FHIR.  Many of the
codes listed here will eventually be turned into official resources.  However, there is no guarantee that any particular
resource will be created nor that the scope will be exactly as defined by the codes presented here.  Codes in this set
will be deprecated if/when formal resources are defined that encompass these concepts.

URL: http://terminology.hl7.org/CodeSystem/basic-resource-type
ValueSet: http://hl7.org/fhir/ValueSet/basic-resource-type
*/
public enum BasicResourceTypes: String {
	
	/// An assertion of permission for an activity or set of activities to occur, possibly subject to particular
	/// limitations; e.g. surgical consent, information disclosure consent, etc.
	case consent = "consent"
	
	/// A request that care of a particular type be provided to a patient.  Could involve the transfer of care, a
	/// consult, etc.
	case referral = "referral"
	
	/// An undesired reaction caused by exposure to some agent (e.g. a medication, immunization, food, or environmental
	/// agent).
	case advevent = "advevent"
	
	/// A request that a time be scheduled for a type of service for a specified patient, potentially subject to other
	/// constraints
	case aptmtreq = "aptmtreq"
	
	/// The transition of a patient or set of material from one location to another
	case transfer = "transfer"
	
	/// The specification of a set of food and/or other nutritional material to be delivered to a patient.
	case diet = "diet"
	
	/// An occurrence of a non-care-related event in the healthcare domain, such as approvals, reviews, etc.
	case adminact = "adminact"
	
	/// Record of a situation where a subject was exposed to a substance.  Usually of interest to public health.
	case exposure = "exposure"
	
	/// A formalized inquiry into the circumstances surrounding a particular unplanned event or potential event for the
	/// purposes of identifying possible causes and contributing factors for the event
	case investigation = "investigation"
	
	/// A financial instrument used to track costs, charges or other amounts.
	case account = "account"
	
	/// A request for payment for goods and/or services.  Includes the idea of a healthcare insurance claim.
	case invoice = "invoice"
	
	/// The determination of what will be paid against a particular invoice based on coverage, plan rules, etc.
	case adjudicat = "adjudicat"
	
	/// A request for a pre-determination of the cost that would be paid under an insurance plan for a hypothetical
	/// claim for goods or services
	case predetreq = "predetreq"
	
	/// An adjudication of what would be paid under an insurance plan for a hypothetical claim for goods or services
	case predetermine = "predetermine"
	
	/// An investigation to determine information about a particular therapy or product
	case study = "study"
	
	/// A set of (possibly conditional) steps to be taken to achieve some aim.  Includes study protocols, treatment
	/// protocols, emergency protocols, etc.
	case protocol_fhir = "protocol"
}


/**
Whether the cost applies to in-network or out-of-network providers.

URL: http://terminology.hl7.org/CodeSystem/applicability
ValueSet: http://hl7.org/fhir/ValueSet/insuranceplan-applicability
*/
public enum BenefitCostApplicability: String {
	
	/// Provider is contracted with the health insurance company to provide services to plan members for specific pre-
	/// negotiated rates
	case inNetwork = "in-network"
	
	/// Provider is  not contracted with the health insurance company to provide services to plan members for specific
	/// pre-negotiated rates
	case outOfNetwork = "out-of-network"
	
	/// Other applicability
	case other = "other"
}


/**
This value set includes a smattering of Benefit Term codes.

URL: http://terminology.hl7.org/CodeSystem/benefit-term
ValueSet: http://hl7.org/fhir/ValueSet/benefit-term
*/
public enum BenefitTermCodes: String {
	
	/// Annual, renewing on the anniversary
	case annual = "annual"
	
	/// Per day
	case day = "day"
	
	/// For the total term, lifetime, of the policy or coverage
	case lifetime = "lifetime"
}


/**
This value set includes a smattering of Benefit type codes.

URL: http://terminology.hl7.org/CodeSystem/benefit-type
ValueSet: http://hl7.org/fhir/ValueSet/benefit-type
*/
public enum BenefitTypeCodes: String {
	
	/// Maximum benefit allowable.
	case benefit = "benefit"
	
	/// Cost to be incurred before benefits are applied
	case deductible = "deductible"
	
	/// Service visit
	case visit = "visit"
	
	/// Type of room
	case room = "room"
	
	/// Copayment per service
	case copay = "copay"
	
	/// Copayment percentage per service
	case copayPercent = "copay-percent"
	
	/// Copayment maximum per service
	case copayMaximum = "copay-maximum"
	
	/// Vision Exam
	case visionExam = "vision-exam"
	
	/// Frames and lenses
	case visionGlasses = "vision-glasses"
	
	/// Contact Lenses
	case visionContacts = "vision-contacts"
	
	/// Medical Primary Health Coverage
	case medicalPrimarycare = "medical-primarycare"
	
	/// Pharmacy Dispense Coverage
	case pharmacyDispense = "pharmacy-dispense"
}


/**
Indication of the degree of conformance expectations associated with a binding.

URL: http://hl7.org/fhir/binding-strength
ValueSet: http://hl7.org/fhir/ValueSet/binding-strength
*/
public enum BindingStrength: String {
	
	/// To be conformant, the concept in this element SHALL be from the specified value set.
	case required = "required"
	
	/// To be conformant, the concept in this element SHALL be from the specified value set if any of the codes within
	/// the value set can apply to the concept being communicated.  If the value set does not cover the concept (based
	/// on human review), alternate codings (or, data type allowing, text) may be included instead.
	case extensible = "extensible"
	
	/// Instances are encouraged to draw from the specified codes for interoperability purposes but are not required to
	/// do so to be considered conformant.
	case preferred = "preferred"
	
	/// Instances are not expected or even encouraged to draw from the specified value set.  The value set merely
	/// provides examples of the types of concepts intended to be included.
	case example = "example"
}


/**
Biologically Derived Product Category.

URL: http://hl7.org/fhir/product-category
ValueSet: http://hl7.org/fhir/ValueSet/product-category
*/
public enum BiologicallyDerivedProductCategory: String {
	
	/// A collection of tissues joined in a structural unit to serve a common function.
	case organ = "organ"
	
	/// An ensemble of similar cells and their extracellular matrix from the same origin that together carry out a
	/// specific function.
	case tissue = "tissue"
	
	/// Body fluid.
	case fluid = "fluid"
	
	/// Collection of cells.
	case cells = "cells"
	
	/// Biological agent of unspecified type.
	case biologicalAgent = "biologicalAgent"
}


/**
Biologically Derived Product Status.

URL: http://hl7.org/fhir/product-status
ValueSet: http://hl7.org/fhir/ValueSet/product-status
*/
public enum BiologicallyDerivedProductStatus: String {
	
	/// Product is currently available for use.
	case available = "available"
	
	/// Product is not currently available for use.
	case unavailable = "unavailable"
}


/**
BiologicallyDerived Product Storage Scale.

URL: http://hl7.org/fhir/product-storage-scale
ValueSet: http://hl7.org/fhir/ValueSet/product-storage-scale
*/
public enum BiologicallyDerivedProductStorageScale: String {
	
	/// Fahrenheit temperature scale.
	case farenheit = "farenheit"
	
	/// Celsius or centigrade temperature scale.
	case celsius = "celsius"
	
	/// Kelvin absolute thermodynamic temperature scale.
	case kelvin = "kelvin"
}


/**
Indicates the purpose of a bundle - how it is intended to be used.

URL: http://hl7.org/fhir/bundle-type
ValueSet: http://hl7.org/fhir/ValueSet/bundle-type
*/
public enum BundleType: String {
	
	/// The bundle is a document. The first resource is a Composition.
	case document = "document"
	
	/// The bundle is a message. The first resource is a MessageHeader.
	case message = "message"
	
	/// The bundle is a transaction - intended to be processed by a server as an atomic commit.
	case transaction = "transaction"
	
	/// The bundle is a transaction response. Because the response is a transaction response, the transaction has
	/// succeeded, and all responses are error free.
	case transactionResponse = "transaction-response"
	
	/// The bundle is a set of actions - intended to be processed by a server as a group of independent actions.
	case batch = "batch"
	
	/// The bundle is a batch response. Note that as a batch, some responses may indicate failure and others success.
	case batchResponse = "batch-response"
	
	/// The bundle is a list of resources from a history interaction on a server.
	case history = "history"
	
	/// The bundle is a list of resources returned as a result of a search/query interaction, operation, or message.
	case searchset = "searchset"
	
	/// The bundle is a set of resources collected into a single package for ease of distribution that imposes no
	/// processing obligations or behavioral rules beyond persistence.
	case collection = "collection"
}


/**
Ability of the primary source to push updates/alerts

URL: http://terminology.hl7.org/CodeSystem/can-push-updates
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-can-push-updates
*/
public enum CanPushUpdates: String {
	
	/// yes
	case yes = "yes"
	
	/// no
	case no = "no"
	
	/// undetermined
	case undetermined = "undetermined"
}


/**
The master set of status codes used throughout FHIR. All status codes are mapped to one of these codes.

URL: http://hl7.org/fhir/resource-status
ValueSet: http://hl7.org/fhir/ValueSet/resource-status
*/
public enum CanonicalStatusCodesForFHIRResources: String {
	
	/// The resource was created in error, and should not be treated as valid (note: in many cases, for various data
	/// integrity related reasons, the information cannot be removed from the record)
	case error = "error"
	
	/// The resource describes an action or plan that is proposed, and not yet approved by the participants
	case proposed = "proposed"
	
	/// The resource describes a course of action that is planned and agreed/approved, but at the time of recording was
	/// still future
	case planned = "planned"
	
	/// The information in the resource is still being prepared and edited
	case draft = "draft"
	
	/// A fulfiller has been asked to perform this action, but it has not yet occurred
	case requested = "requested"
	
	/// The fulfiller has received the request, but not yet agreed to carry out the action
	case received = "received"
	
	/// The fulfiller chose not to perform the action
	case declined = "declined"
	
	/// The fulfiller has decided to perform the action, and plans are in train to do this in the future
	case accepted = "accepted"
	
	/// The pre-conditions for the action are all fulfilled, and it is imminent
	case arrived = "arrived"
	
	/// The resource describes information that is currently valid or a process that is presently occuring
	case active = "active"
	
	/// The process described/requested in this resource has been halted for some reason
	case suspended = "suspended"
	
	/// The process described/requested in the resource could not be completed, and no further action is planned
	case failed = "failed"
	
	/// The information in this resource has been replaced by information in another resource
	case replaced = "replaced"
	
	/// The process described/requested in the resource has been completed, and no further action is planned
	case complete = "complete"
	
	/// The resource describes information that is no longer valid or a process that is stopped occurring
	case inactive = "inactive"
	
	/// The process described/requested in the resource did not complete - usually due to some workflow error, and no
	/// further action is planned
	case abandoned = "abandoned"
	
	/// Authoring system does not know the status
	case unknown = "unknown"
	
	/// The information in this resource is not yet approved
	case unconfirmed = "unconfirmed"
	
	/// The information in this resource is approved
	case confirmed = "confirmed"
	
	/// The issue identified by this resource is no longer of concern
	case resolved = "resolved"
	
	/// This information has been ruled out by testing and evaluation
	case refuted = "refuted"
	
	/// Potentially true?
	case differential = "differential"
	
	/// This information is still being assembled
	case partial = "partial"
	
	/// not available at this time/location
	case busyUnavailable = "busy-unavailable"
	
	/// Free for scheduling
	case free = "free"
	
	/// Ready to act
	case onTarget = "on-target"
	
	/// Ahead of the planned timelines
	case aheadOfTarget = "ahead-of-target"
	
	/// behindTarget
	case behindTarget = "behind-target"
	
	/// Behind the planned timelines
	case notReady = "not-ready"
	
	/// The device transducer is disconnected
	case transducDiscon = "transduc-discon"
	
	/// The hardware is disconnected
	case hwDiscon = "hw-discon"
}


/**
How a capability statement is intended to be used.

URL: http://hl7.org/fhir/capability-statement-kind
ValueSet: http://hl7.org/fhir/ValueSet/capability-statement-kind
*/
public enum CapabilityStatementKind: String {
	
	/// The CapabilityStatement instance represents the present capabilities of a specific system instance.  This is the
	/// kind returned by /metadata for a FHIR server end-point.
	case instance = "instance"
	
	/// The CapabilityStatement instance represents the capabilities of a system or piece of software, independent of a
	/// particular installation.
	case capability = "capability"
	
	/// The CapabilityStatement instance represents a set of requirements for other systems to meet; e.g. as part of an
	/// implementation guide or 'request for proposal'.
	case requirements = "requirements"
}


/**
Codes that reflect the current state of a care plan activity within its overall life cycle.

URL: http://hl7.org/fhir/care-plan-activity-status
ValueSet: http://hl7.org/fhir/ValueSet/care-plan-activity-status
*/
public enum CarePlanActivityStatus: String {
	
	/// Care plan activity is planned but no action has yet been taken.
	case notStarted = "not-started"
	
	/// Appointment or other booking has occurred but activity has not yet begun.
	case scheduled = "scheduled"
	
	/// Care plan activity has been started but is not yet complete.
	case inProgress = "in-progress"
	
	/// Care plan activity was started but has temporarily ceased with an expectation of resumption at a future time.
	case onHold = "on-hold"
	
	/// Care plan activity has been completed (more or less) as planned.
	case completed = "completed"
	
	/// The planned care plan activity has been withdrawn.
	case cancelled = "cancelled"
	
	/// The planned care plan activity has been ended prior to completion after the activity was started.
	case stopped = "stopped"
	
	/// The current state of the care plan activity is not known.  Note: This concept is not to be used for "other" -
	/// one of the listed statuses is presumed to apply, but the authoring/source system does not know which one.
	case unknown = "unknown"
	
	/// Care plan activity was entered in error and voided.
	case enteredInError = "entered-in-error"
}


/**
Indicates the status of the care team.

URL: http://hl7.org/fhir/care-team-status
ValueSet: http://hl7.org/fhir/ValueSet/care-team-status
*/
public enum CareTeamStatus: String {
	
	/// The care team has been drafted and proposed, but not yet participating in the coordination and delivery of
	/// patient care.
	case proposed = "proposed"
	
	/// The care team is currently participating in the coordination and delivery of care.
	case active = "active"
	
	/// The care team is temporarily on hold or suspended and not participating in the coordination and delivery of
	/// care.
	case suspended = "suspended"
	
	/// The care team was, but is no longer, participating in the coordination and delivery of care.
	case inactive = "inactive"
	
	/// The care team should have never existed.
	case enteredInError = "entered-in-error"
}


/**
The type of relations between entries.

URL: http://hl7.org/fhir/relation-type
ValueSet: http://hl7.org/fhir/ValueSet/relation-type
*/
public enum CatalogEntryRelationType: String {
	
	/// the related entry represents an activity that may be triggered by the current item.
	case triggers = "triggers"
	
	/// the related entry represents an item that replaces the current retired item.
	case isReplacedBy = "is-replaced-by"
}


/**
The type of catalog.

URL: http://terminology.hl7.org/CodeSystem/catalogType
ValueSet: http://hl7.org/fhir/ValueSet/catalogType
*/
public enum CatalogType: String {
	
	/// Medication Catalog.
	case medication = "medication"
	
	/// Device Catalog.
	case device = "device"
	
	/// Protocol List.
	case protocol_fhir = "protocol"
}


/**
The quality rating of the subcomponent of a quality of evidence rating.

URL: http://terminology.hl7.org/CodeSystem/certainty-subcomponent-rating
ValueSet: http://hl7.org/fhir/ValueSet/certainty-subcomponent-rating
*/
public enum CertaintySubcomponentRating: String {
	
	/// no change to quality rating.
	case noChange = "no-change"
	
	/// reduce quality rating by 1.
	case downcode1 = "downcode1"
	
	/// reduce quality rating by 2.
	case downcode2 = "downcode2"
	
	/// reduce quality rating by 3.
	case downcode3 = "downcode3"
	
	/// increase quality rating by 1.
	case upcode1 = "upcode1"
	
	/// increase quality rating by 2.
	case upcode2 = "upcode2"
	
	/// no serious concern.
	case noConcern = "no-concern"
	
	/// serious concern.
	case seriousConcern = "serious-concern"
	
	/// critical concern.
	case criticalConcern = "critical-concern"
	
	/// possible reason for increasing quality rating was checked and found to bepresent.
	case present = "present"
	
	/// possible reason for increasing quality rating was checked and found to be absent.
	case absent = "absent"
}


/**
The subcomponent classification of quality of evidence rating systems.

URL: http://terminology.hl7.org/CodeSystem/certainty-subcomponent-type
ValueSet: http://hl7.org/fhir/ValueSet/certainty-subcomponent-type
*/
public enum CertaintySubcomponentType: String {
	
	/// methodologic concerns reducing internal validity.
	case riskOfBias = "RiskOfBias"
	
	/// concerns that findings are not similar enough to support certainty.
	case inconsistency = "Inconsistency"
	
	/// concerns reducing external validity.
	case indirectness = "Indirectness"
	
	/// High quality evidence.
	case imprecision = "Imprecision"
	
	/// likelihood that what is published misrepresents what is available to publish.
	case publicationBias = "PublicationBias"
	
	/// higher certainty due to dose response relationship.
	case doseResponseGradient = "DoseResponseGradient"
	
	/// higher certainty due to risk of bias in opposite direction.
	case plausibleConfounding = "PlausibleConfounding"
	
	/// higher certainty due to large effect size.
	case largeEffect = "LargeEffect"
}


/**
Codes identifying the lifecycle stage of a ChargeItem.

URL: http://hl7.org/fhir/chargeitem-status
ValueSet: http://hl7.org/fhir/ValueSet/chargeitem-status
*/
public enum ChargeItemStatus: String {
	
	/// The charge item has been entered, but the charged service is not  yet complete, so it shall not be billed yet
	/// but might be used in the context of pre-authorization.
	case planned = "planned"
	
	/// The charge item is ready for billing.
	case billable = "billable"
	
	/// The charge item has been determined to be not billable (e.g. due to rules associated with the billing code).
	case notBillable = "not-billable"
	
	/// The processing of the charge was aborted.
	case aborted = "aborted"
	
	/// The charge item has been billed (e.g. a billing engine has generated financial transactions by applying the
	/// associated ruled for the charge item to the context of the Encounter, and placed them into Claims/Invoices.
	case billed = "billed"
	
	/// The charge item has been entered in error and should not be processed for billing.
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies for this charge item  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}


/**
Direction in which lists of possible answers should be displayed.

URL: http://terminology.hl7.org/CodeSystem/choice-list-orientation
ValueSet: http://hl7.org/fhir/ValueSet/choice-list-orientation
*/
public enum ChoiceListOrientation: String {
	
	/// List choices along the horizontal axis.
	case horizontal = "horizontal"
	
	/// List choices down the vertical axis.
	case vertical = "vertical"
}


/**
This value set includes sample Claim Care Team Role codes.

URL: http://terminology.hl7.org/CodeSystem/claimcareteamrole
ValueSet: http://hl7.org/fhir/ValueSet/claim-careteamrole
*/
public enum ClaimCareTeamRoleCodes: String {
	
	/// The primary care provider.
	case primary = "primary"
	
	/// Assisting care provider.
	case assist = "assist"
	
	/// Supervising care provider.
	case supervisor = "supervisor"
	
	/// Other role on the care team.
	case other = "other"
}


/**
This value set includes sample Information Category codes.

URL: http://terminology.hl7.org/CodeSystem/claiminformationcategory
ValueSet: http://hl7.org/fhir/ValueSet/claim-informationcategory
*/
public enum ClaimInformationCategoryCodes: String {
	
	/// Codes conveying additional situation and condition information.
	case info = "info"
	
	/// Discharge status and discharge to locations.
	case discharge = "discharge"
	
	/// Period, start or end dates of aspects of the Condition.
	case onset = "onset"
	
	/// Nature and date of the related event e.g. Last exam, service, X-ray etc.
	case related = "related"
	
	/// Insurance policy exceptions.
	case exception = "exception"
	
	/// Materials being forwarded, e.g. Models, molds, images, documents.
	case material = "material"
	
	/// Materials attached such as images, documents and resources.
	case attachment = "attachment"
	
	/// Teeth which are missing for any reason, for example: prior extraction, never developed.
	case missingtooth = "missingtooth"
	
	/// The type of prosthesis and date of supply if a previously supplied prosthesis.
	case prosthesis = "prosthesis"
	
	/// Other information identified by the type.system.
	case other = "other"
	
	/// An indication that the patient was hospitalized, the period if known otherwise a Yes/No (boolean).
	case hospitalized = "hospitalized"
	
	/// An indication that the patient was unable to work, the period if known otherwise a Yes/No (boolean).
	case employmentimpacted = "employmentimpacted"
	
	/// The external cause of an illness or injury.
	case externalcause = "externalcause"
	
	/// The reason for the patient visit.
	case patientreasonforvisit = "patientreasonforvisit"
}


/**
This value set includes sample Item Type codes.

URL: http://hl7.org/fhir/ex-claimitemtype
ValueSet: http://hl7.org/fhir/ValueSet/fm-itemtype
*/
public enum ClaimItemTypeCodes: String {
	
	/// A group of products and/or Services, amount ar the summary or detail level products and services.
	case group = "group"
	
	/// A billed product line item.
	case product = "product"
	
	/// A billed service line item.
	case service = "service"
}


/**
The type of Claim payee Resource.

URL: http://terminology.hl7.org/CodeSystem/ex-payee-resource-type
ValueSet: http://hl7.org/fhir/ValueSet/ex-payee-resource-type
*/
public enum ClaimPayeeResourceType: String {
	
	/// Organization resource.
	case organization = "organization"
	
	/// Patient resource.
	case patient = "patient"
	
	/// Practitioner resource.
	case practitioner = "practitioner"
	
	/// RelatedPerson resource.
	case relatedperson = "relatedperson"
}


/**
This value set includes Claim Processing Outcome codes.

URL: http://hl7.org/fhir/remittance-outcome
ValueSet: http://hl7.org/fhir/ValueSet/remittance-outcome
*/
public enum ClaimProcessingCodes: String {
	
	/// The Claim/Pre-authorization/Pre-determination has been received but processing has not begun.
	case queued = "queued"
	
	/// The processing has completed without errors
	case complete = "complete"
	
	/// One or more errors have been detected in the Claim
	case error = "error"
	
	/// No errors have been detected in the Claim and some of the adjudication has been performed.
	case partial = "partial"
}


/**
This value set includes Claim Type codes.

URL: http://terminology.hl7.org/CodeSystem/claim-type
ValueSet: http://hl7.org/fhir/ValueSet/claim-type
*/
public enum ClaimTypeCodes: String {
	
	/// Hospital, clinic and typically inpatient claims.
	case institutional = "institutional"
	
	/// Dental, Denture and Hygiene claims.
	case oral = "oral"
	
	/// Pharmacy claims for goods and services.
	case pharmacy = "pharmacy"
	
	/// Typically, outpatient claims from Physician, Psychological, Chiropractor, Physiotherapy, Speech Pathology,
	/// rehabilitative, consulting.
	case professional = "professional"
	
	/// Vision claims for professional services and products such as glasses and contact lenses.
	case vision = "vision"
}


/**
The degree to which the server supports the code search parameter on ValueSet, if it is supported.

URL: http://hl7.org/fhir/code-search-support
ValueSet: http://hl7.org/fhir/ValueSet/code-search-support
*/
public enum CodeSearchSupport: String {
	
	/// The search for code on ValueSet only includes codes explicitly detailed on includes or expansions.
	case explicit = "explicit"
	
	/// The search for code on ValueSet only includes all codes based on the expansion of the value set.
	case all = "all"
}


/**
Indicates the type of use for which the code is defined.

URL: http://terminology.hl7.org/CodeSystem/codesystem-altcode-kind
ValueSet: http://hl7.org/fhir/ValueSet/codesystem-altcode-kind
*/
public enum CodeSystemAlternativeCodeKind: String {
	
	/// The code is an alternative code that can be used in any of the circumstances that the primary code can be used.
	case alternate = "alternate"
	
	/// The code should no longer be used, but was used in the past.
	case deprecated = "deprecated"
	
	/// The code is an alternative to be used when a case insensitive code is required (when the primary codes are case
	/// sensitive).
	case caseInsensitive = "case-insensitive"
	
	/// The code is an alternative to be used when a case sensitive code is required (when the primary codes are case
	/// insensitive).
	case caseSensitive = "case-sensitive"
	
	/// The code is an alternative for the primary code that is built using the expression grammar defined by the code
	/// system.
	case expression = "expression"
}


/**
The extent of the content of the code system (the concepts and codes it defines) are represented in a code system
resource.

URL: http://hl7.org/fhir/codesystem-content-mode
ValueSet: http://hl7.org/fhir/ValueSet/codesystem-content-mode
*/
public enum CodeSystemContentMode: String {
	
	/// None of the concepts defined by the code system are included in the code system resource.
	case notPresent = "not-present"
	
	/// A few representative concepts are included in the code system resource. There is no useful intent in the subset
	/// choice and there's no process to make it workable: it's not intended to be workable.
	case example = "example"
	
	/// A subset of the code system concepts are included in the code system resource. This is a curated subset released
	/// for a specific purpose under the governance of the code system steward, and that the intent, bounds and
	/// consequences of the fragmentation are clearly defined in the fragment or the code system documentation.
	/// Fragments are also known as partitions.
	case fragment = "fragment"
	
	/// All the concepts defined by the code system are included in the code system resource.
	case complete = "complete"
	
	/// The resource doesn't define any new concepts; it just provides additional designations and properties to another
	/// code system.
	case supplement = "supplement"
}


/**
The meaning of the hierarchy of concepts in a code system.

URL: http://hl7.org/fhir/codesystem-hierarchy-meaning
ValueSet: http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning
*/
public enum CodeSystemHierarchyMeaning: String {
	
	/// No particular relationship between the concepts can be assumed, except what can be determined by inspection of
	/// the definitions of the elements (possible reasons to use this: importing from a source where this is not
	/// defined, or where various parts of the hierarchy have different meanings).
	case groupedBy = "grouped-by"
	
	/// A hierarchy where the child concepts have an IS-A relationship with the parents - that is, all the properties of
	/// the parent are also true for its child concepts. Not that is-a is a property of the concepts, so additional
	/// subsumption relationships may be defined using properties or the [subsumes](extension-codesystem-subsumes.html)
	/// extension.
	case isA = "is-a"
	
	/// Child elements list the individual parts of a composite whole (e.g. body site).
	case partOf = "part-of"
	
	/// Child concepts in the hierarchy may have only one parent, and there is a presumption that the code system is a
	/// "closed world" meaning all things must be in the hierarchy. This results in concepts such as "not otherwise
	/// classified.".
	case classifiedWith = "classified-with"
}


/**
Common Tag Codes defined by FHIR project

URL: http://terminology.hl7.org/CodeSystem/common-tags
ValueSet: http://hl7.org/fhir/ValueSet/common-tags
*/
public enum CommonTags: String {
	
	/// This request is intended to be acted upon, not merely stored
	case actionable = "actionable"
}


/**
Codes for general categories of communications such as alerts, instructions, etc.

URL: http://terminology.hl7.org/CodeSystem/communication-category
ValueSet: http://hl7.org/fhir/ValueSet/communication-category
*/
public enum CommunicationCategory: String {
	
	/// The communication conveys an alert.
	case alert = "alert"
	
	/// The communication conveys a notification.
	case notification = "notification"
	
	/// The communication conveys a reminder.
	case reminder = "reminder"
	
	/// The communication conveys an instruction.
	case instruction = "instruction"
}


/**
Codes for the reason why a communication did not happen.

URL: http://terminology.hl7.org/CodeSystem/communication-not-done-reason
ValueSet: http://hl7.org/fhir/ValueSet/communication-not-done-reason
*/
public enum CommunicationNotDoneReason: String {
	
	/// The communication was not done due to an unknown reason.
	case unknown = "unknown"
	
	/// The communication was not done due to a system error.
	case systemError = "system-error"
	
	/// The communication was not done due to an invalid phone number.
	case invalidPhoneNumber = "invalid-phone-number"
	
	/// The communication was not done due to the recipient being unavailable.
	case recipientUnavailable = "recipient-unavailable"
	
	/// The communication was not done due to a family objection.
	case familyObjection = "family-objection"
	
	/// The communication was not done due to a patient objection.
	case patientObjection = "patient-objection"
}


/**
Codes describing the purpose or content of the communication.

URL: http://terminology.hl7.org/CodeSystem/communication-topic
ValueSet: http://hl7.org/fhir/ValueSet/communication-topic
*/
public enum CommunicationTopic: String {
	
	/// The purpose or content of the communication is a prescription refill request.
	case prescriptionRefillRequest = "prescription-refill-request"
	
	/// The purpose or content of the communication is a progress update.
	case progressUpdate = "progress-update"
	
	/// The purpose or content of the communication is to report labs.
	case reportLabs = "report-labs"
	
	/// The purpose or content of the communication is an appointment reminder.
	case appointmentReminder = "appointment-reminder"
	
	/// The purpose or content of the communication is a phone consult.
	case phoneConsult = "phone-consult"
	
	/// The purpose or content of the communication is a summary report.
	case summaryReport = "summary-report"
}


/**
Which type a compartment definition describes.

URL: http://hl7.org/fhir/compartment-type
ValueSet: http://hl7.org/fhir/ValueSet/compartment-type
*/
public enum CompartmentType: String {
	
	/// The compartment definition is for the patient compartment.
	case patient = "Patient"
	
	/// The compartment definition is for the encounter compartment.
	case encounter = "Encounter"
	
	/// The compartment definition is for the related-person compartment.
	case relatedPerson = "RelatedPerson"
	
	/// The compartment definition is for the practitioner compartment.
	case practitioner = "Practitioner"
	
	/// The compartment definition is for the device compartment.
	case device = "Device"
}


/**
The composite scoring method of the measure.

URL: http://terminology.hl7.org/CodeSystem/composite-measure-scoring
ValueSet: http://hl7.org/fhir/ValueSet/composite-measure-scoring
*/
public enum CompositeMeasureScoring: String {
	
	/// Opportunity scoring combines the scores from component measures by combining the numerators and denominators for
	/// each component.
	case opportunity = "opportunity"
	
	/// All-or-nothing scoring includes an individual in the numerator of the composite measure if they are in the
	/// numerators of all of the component measures in which they are in the denominator.
	case allOrNothing = "all-or-nothing"
	
	/// Linear scoring gives an individual a score based on the number of numerators in which they appear.
	case linear = "linear"
	
	/// Weighted scoring gives an individual a score based on a weighted factor for each component numerator in which
	/// they appear.
	case weighted = "weighted"
}


/**
Indicates the type of use for which the code is defined.

URL: http://terminology.hl7.org/CodeSystem/composition-altcode-kind
ValueSet: http://hl7.org/fhir/ValueSet/composition-altcode-kind
*/
public enum CompositionAlternativeCodeKind: String {
	
	/// The code is an alternative code that can be used in any of the circumstances that the primary code can be used.
	case alternate = "alternate"
	
	/// The code should no longer be used, but was used in the past.
	case deprecated = "deprecated"
	
	/// The code is an alternative to be used when a case insensitive code is required (when the primary codes are case
	/// sensitive).
	case caseInsensitive = "case-insensitive"
	
	/// The code is an alternative to be used when a case sensitive code is required (when the primary codes are case
	/// insensitive).
	case caseSensitive = "case-sensitive"
	
	/// The code is an alternative for the primary code that is built using the expression grammar defined by the code
	/// system.
	case expression = "expression"
}


/**
The way in which a person authenticated a composition.

URL: http://hl7.org/fhir/composition-attestation-mode
ValueSet: http://hl7.org/fhir/ValueSet/composition-attestation-mode
*/
public enum CompositionAttestationMode: String {
	
	/// The person authenticated the content in their personal capacity.
	case personal = "personal"
	
	/// The person authenticated the content in their professional capacity.
	case professional = "professional"
	
	/// The person authenticated the content and accepted legal responsibility for its content.
	case legal = "legal"
	
	/// The organization authenticated the content as consistent with their policies and procedures.
	case official = "official"
}


/**
The workflow/clinical status of the composition.

URL: http://hl7.org/fhir/composition-status
ValueSet: http://hl7.org/fhir/ValueSet/composition-status
*/
public enum CompositionStatus: String {
	
	/// This is a preliminary composition or document (also known as initial or interim). The content may be incomplete
	/// or unverified.
	case preliminary = "preliminary"
	
	/// This version of the composition is complete and verified by an appropriate person and no further work is
	/// planned. Any subsequent updates would be on a new version of the composition.
	case final = "final"
	
	/// The composition content or the referenced resources have been modified (edited or added to) subsequent to being
	/// released as "final" and the composition is complete and verified by an authorized person.
	case amended = "amended"
	
	/// The composition or document was originally created/issued in error, and this is an amendment that marks that the
	/// entire series should not be considered as valid.
	case enteredInError = "entered-in-error"
}


/**
The degree of equivalence between concepts.

URL: http://hl7.org/fhir/concept-map-equivalence
ValueSet: http://hl7.org/fhir/ValueSet/concept-map-equivalence
*/
public enum ConceptMapEquivalence: String {
	
	/// The concepts are related to each other, and have at least some overlap in meaning, but the exact relationship is
	/// not known.
	case relatedto = "relatedto"
	
	/// The definitions of the concepts mean the same thing (including when structural implications of meaning are
	/// considered) (i.e. extensionally identical).
	case equivalent = "equivalent"
	
	/// The definitions of the concepts are exactly the same (i.e. only grammatical differences) and structural
	/// implications of meaning are identical or irrelevant (i.e. intentionally identical).
	case equal = "equal"
	
	/// The target mapping is wider in meaning than the source concept.
	case wider = "wider"
	
	/// The target mapping subsumes the meaning of the source concept (e.g. the source is-a target).
	case subsumes = "subsumes"
	
	/// The target mapping is narrower in meaning than the source concept. The sense in which the mapping is narrower
	/// SHALL be described in the comments in this case, and applications should be careful when attempting to use these
	/// mappings operationally.
	case narrower = "narrower"
	
	/// The target mapping specializes the meaning of the source concept (e.g. the target is-a source).
	case specializes = "specializes"
	
	/// The target mapping overlaps with the source concept, but both source and target cover additional meaning, or the
	/// definitions are imprecise and it is uncertain whether they have the same boundaries to their meaning. The sense
	/// in which the mapping is inexact SHALL be described in the comments in this case, and applications should be
	/// careful when attempting to use these mappings operationally.
	case inexact = "inexact"
	
	/// There is no match for this concept in the target code system.
	case unmatched = "unmatched"
	
	/// This is an explicit assertion that there is no mapping between the source and target concept.
	case disjoint = "disjoint"
}


/**
Defines which action to take if there is no match in the group.

URL: http://hl7.org/fhir/conceptmap-unmapped-mode
ValueSet: http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode
*/
public enum ConceptMapGroupUnmappedMode: String {
	
	/// Use the code as provided in the $translate request.
	case provided = "provided"
	
	/// Use the code explicitly provided in the group.unmapped.
	case fixed = "fixed"
	
	/// Use the map identified by the canonical URL in the url element.
	case otherMap = "other-map"
}


/**
The subsumption relationship between code/Coding "A" and code/Coding "B". There are 4 possible codes to be returned:
equivalent, subsumes, subsumed-by, and not-subsumed. If the server is unable to determine the relationship between the
codes/Codings, then it returns an error (i.e. an OperationOutcome).

URL: http://hl7.org/fhir/concept-subsumption-outcome
ValueSet: http://hl7.org/fhir/ValueSet/concept-subsumption-outcome
*/
public enum ConceptSubsumptionOutcome: String {
	
	/// The two concepts are equivalent (have the same properties).
	case equivalent = "equivalent"
	
	/// Coding/code "A" subsumes Coding/code "B" (e.g. B has all the properties A has, and some of it's own).
	case subsumes = "subsumes"
	
	/// Coding/code "A" is subsumed by Coding/code "B" (e.g. A has all the properties B has, and some of it's own).
	case subsumedBy = "subsumed-by"
	
	/// Coding/code "A" and Coding/code "B" are disjoint (e.g. each has propeties that the other doesn't have).
	case notSubsumed = "not-subsumed"
}


/**
Preferred value set for Condition Categories.

URL: http://terminology.hl7.org/CodeSystem/condition-category
ValueSet: http://hl7.org/fhir/ValueSet/condition-category
*/
public enum ConditionCategoryCodes: String {
	
	/// An item on a problem list that can be managed over time and can be expressed by a practitioner (e.g. physician,
	/// nurse), patient, or related person.
	case problemListItem = "problem-list-item"
	
	/// A point in time diagnosis (e.g. from a physician or nurse) in context of an encounter.
	case encounterDiagnosis = "encounter-diagnosis"
}


/**
Preferred value set for Condition Clinical Status.

URL: http://terminology.hl7.org/CodeSystem/condition-clinical
ValueSet: http://hl7.org/fhir/ValueSet/condition-clinical
*/
public enum ConditionClinicalStatusCodes: String {
	
	/// The subject is currently experiencing the symptoms of the condition or there is evidence of the condition.
	case active = "active"
	
	/// The subject is experiencing a re-occurence or repeating of a previously resolved condition, e.g. urinary tract
	/// infection, pancreatitis, cholangitis, conjunctivitis.
	case recurrence = "recurrence"
	
	/// The subject is experiencing a return of a condition, or signs and symptoms after a period of improvement or
	/// remission, e.g. relapse of cancer, multiple sclerosis, rheumatoid arthritis, systemic lupus erythematosus,
	/// bipolar disorder, [psychotic relapse of] schizophrenia, etc.
	case relapse = "relapse"
	
	/// The subject is no longer experiencing the symptoms of the condition or there is no longer evidence of the
	/// condition.
	case inactive = "inactive"
	
	/// The subject is no longer experiencing the symptoms of the condition, but there is a risk of the symptoms
	/// returning.
	case remission = "remission"
	
	/// The subject is no longer experiencing the symptoms of the condition and there is a negligible perceived risk of
	/// the symptoms returning.
	case resolved = "resolved"
}


/**
Enumeration indicating whether the condition is currently active, inactive, or has been resolved.

URL: http://terminology.hl7.org/CodeSystem/condition-state
ValueSet: http://hl7.org/fhir/ValueSet/condition-state
*/
public enum ConditionState: String {
	
	/// The condition is active.
	case active = "active"
	
	/// The condition is inactive, but not resolved.
	case inactive = "inactive"
	
	/// The condition is resolved.
	case resolved = "resolved"
}


/**
The verification status to support or decline the clinical status of the condition or diagnosis.

URL: http://terminology.hl7.org/CodeSystem/condition-ver-status
ValueSet: http://hl7.org/fhir/ValueSet/condition-ver-status
*/
public enum ConditionVerificationStatus: String {
	
	/// There is not sufficient diagnostic and/or clinical evidence to treat this as a confirmed condition.
	case unconfirmed = "unconfirmed"
	
	/// This is a tentative diagnosis - still a candidate that is under consideration.
	case provisional = "provisional"
	
	/// One of a set of potential (and typically mutually exclusive) diagnoses asserted to further guide the diagnostic
	/// process and preliminary treatment.
	case differential = "differential"
	
	/// There is sufficient diagnostic and/or clinical evidence to treat this as a confirmed condition.
	case confirmed = "confirmed"
	
	/// This condition has been ruled out by diagnostic and clinical evidence.
	case refuted = "refuted"
	
	/// The statement was entered in error and is not valid.
	case enteredInError = "entered-in-error"
}


/**
A code that indicates how the server supports conditional delete.

URL: http://hl7.org/fhir/conditional-delete-status
ValueSet: http://hl7.org/fhir/ValueSet/conditional-delete-status
*/
public enum ConditionalDeleteStatus: String {
	
	/// No support for conditional deletes.
	case notSupported = "not-supported"
	
	/// Conditional deletes are supported, but only single resources at a time.
	case single = "single"
	
	/// Conditional deletes are supported, and multiple resources can be deleted in a single interaction.
	case multiple = "multiple"
}


/**
A code that indicates how the server supports conditional read.

URL: http://hl7.org/fhir/conditional-read-status
ValueSet: http://hl7.org/fhir/ValueSet/conditional-read-status
*/
public enum ConditionalReadStatus: String {
	
	/// No support for conditional reads.
	case notSupported = "not-supported"
	
	/// Conditional reads are supported, but only with the If-Modified-Since HTTP Header.
	case modifiedSince = "modified-since"
	
	/// Conditional reads are supported, but only with the If-None-Match HTTP Header.
	case notMatch = "not-match"
	
	/// Conditional reads are supported, with both If-Modified-Since and If-None-Match HTTP Headers.
	case fullSupport = "full-support"
}


/**
Indicates the degree of adherence to a specified behavior or capability expected for a system to be deemed conformant
with a specification.

URL: http://terminology.hl7.org/CodeSystem/conformance-expectation
ValueSet: http://hl7.org/fhir/ValueSet/conformance-expectation
*/
public enum ConformanceExpectation: String {
	
	/// Support for the specified capability is required to be considered conformant.
	case SHALL = "SHALL"
	
	/// Support for the specified capability is strongly encouraged, and failure to support it should only occur after
	/// careful consideration.
	case SHOULD = "SHOULD"
	
	/// Support for the specified capability is not necessary to be considered conformant, and the requirement should be
	/// considered strictly optional.
	case MAY = "MAY"
	
	/// Support for the specified capability is strongly discouraged and should occur only after careful consideration.
	case SHOULDNOT = "SHOULD-NOT"
}


/**
This value set includes sample Consent Action codes.

URL: http://terminology.hl7.org/CodeSystem/consentaction
ValueSet: http://hl7.org/fhir/ValueSet/consent-action
*/
public enum ConsentActionCodes: String {
	
	/// Gather retrieved information for storage
	case collect = "collect"
	
	/// Retrieval without permitting collection, use or disclosure. e.g., no screen-scraping for collection, use or
	/// disclosure (view-only access)
	case access = "access"
	
	/// Utilize the retrieved information
	case use = "use"
	
	/// Transfer retrieved information
	case disclose = "disclose"
	
	/// Allow retrieval of a patient's information for the purpose of update or rectify
	case correct = "correct"
}


/**
This value set includes sample Consent Directive Type codes, including several consent directive related LOINC codes;
HL7 VALUE SET: ActConsentType(2.16.840.1.113883.1.11.19897); examples of US realm consent directive legal descriptions
and references to online and/or downloadable forms such as the SSA-827 Authorization to Disclose Information to the
Social Security Administration; and other anticipated consent directives related to participation in a clinical trial,
medical procedures, reproductive procedures; health care directive (Living Will); advance directive, do not resuscitate
(DNR); Physician Orders for Life-Sustaining Treatment (POLST)

URL: http://terminology.hl7.org/CodeSystem/consentcategorycodes
*/
public enum ConsentCategoryCodes: String {
	
	/// Any instructions, written or given verbally by a patient to a health care provider in anticipation of potential
	/// need for medical treatment. [2005 Honor My Wishes]
	case acd = "acd"
	
	/// A legal document, signed by both the patient and their provider, stating a desire not to have CPR initiated in
	/// case of a cardiac event. Note: This form was replaced in 2003 with the Physician Orders for Life-Sustaining
	/// Treatment [POLST].
	case dnr = "dnr"
	
	/// Opt-in to disclosure of health information for emergency only consent directive. Comment: This general consent
	/// directive specifically limits disclosure of health information for purpose of emergency treatment. Additional
	/// parameters may further limit the disclosure to specific users, roles, duration, types of information, and impose
	/// uses obligations. [ActConsentDirective (2.16.840.1.113883.1.11.20425)]
	case emrgonly = "emrgonly"
	
	/// Patient's document telling patient's health care provider what the patient wants or does not want if the patient
	/// is diagnosed as being terminally ill and in a persistent vegetative state or in a permanently unconscious
	/// condition.[2005 Honor My Wishes]
	case hcd = "hcd"
	
	/// Acknowledgement of custodian notice of privacy practices. Usage Notes: This type of consent directive
	/// acknowledges a custodian's notice of privacy practices including its permitted collection, access, use and
	/// disclosure of health information to users and for purposes of use specified. [ActConsentDirective
	/// (2.16.840.1.113883.1.11.20425)]
	case npp = "npp"
	
	/// The Physician Order for Life-Sustaining Treatment form records a person's health care wishes for end of life
	/// emergency treatment and translates them into an order by the physician. It must be reviewed and signed by both
	/// the patient and the physician, Advanced Registered Nurse Practitioner or Physician Assistant. [2005 Honor My
	/// Wishes] Comment: Opt-in Consent Directive with restrictions.
	case polst = "polst"
	
	/// Consent to have healthcare information in an electronic health record accessed for research purposes. [VALUE
	/// SET: ActConsentType (2.16.840.1.113883.1.11.19897)]
	case research = "research"
	
	/// Consent to have de-identified healthcare information in an electronic health record that is accessed for
	/// research purposes, but without consent to re-identify the information under any circumstance. [VALUE SET:
	/// ActConsentType (2.16.840.1.113883.1.11.19897)
	case rsdid = "rsdid"
	
	/// Consent to have de-identified healthcare information in an electronic health record that is accessed for
	/// research purposes re-identified under specific circumstances outlined in the consent. [VALUE SET: ActConsentType
	/// (2.16.840.1.113883.1.11.19897)]
	case rsreid = "rsreid"
}


/**
How a resource reference is interpreted when testing consent restrictions.

URL: http://hl7.org/fhir/consent-data-meaning
ValueSet: http://hl7.org/fhir/ValueSet/consent-data-meaning
*/
public enum ConsentDataMeaning: String {
	
	/// The consent applies directly to the instance of the resource.
	case instance = "instance"
	
	/// The consent applies directly to the instance of the resource and instances it refers to.
	case related = "related"
	
	/// The consent applies directly to the instance of the resource and instances that refer to it.
	case dependents = "dependents"
	
	/// The consent applies to instances of resources that are authored by.
	case authoredby = "authoredby"
}


/**
This value set includes sample Regulatory consent policy types from the US and other regions.

URL: http://terminology.hl7.org/CodeSystem/consentpolicycodes
ValueSet: http://hl7.org/fhir/ValueSet/consent-policy
*/
public enum ConsentPolicyRuleCodes: String {
	
	/// 45 CFR part 46 §46.116 General requirements for informed consent; and §46.117 Documentation of informed consent.
	/// https://www.gpo.gov/fdsys/pkg/FR-2017-01-19/pdf/2017-01058.pdf
	case cric = "cric"
	
	/// The consent to the performance of a medical or surgical procedure by a physician licensed to practice medicine
	/// and surgery, a licensed advanced practice nurse, or a licensed physician assistant executed by a married person
	/// who is a minor, by a parent who is a minor, by a pregnant woman who is a minor, or by any person 18 years of age
	/// or older, is not voidable because of such minority, and, for such purpose, a married person who is a minor, a
	/// parent who is a minor, a pregnant woman who is a minor, or any person 18 years of age or older, is deemed to
	/// have the same legal capacity to act and has the same powers and obligations as has a person of legal age.
	/// Consent by Minors to Medical Procedures Act. (410 ILCS 210/0.01) (from Ch. 111, par. 4500) Sec. 0.01. Short
	/// title. This Act may be cited as the Consent by Minors to Medical Procedures Act. (Source: P.A. 86-1324.)
	/// http://www.ilga.gov/legislation/ilcs/ilcs3.asp?ActID=1539&ChapterID=35
	case illinoisMinorProcedure = "illinois-minor-procedure"
	
	/// HIPAA 45 CFR Section 164.508 Uses and disclosures for which an authorization is required. (a) Standard:
	/// Authorizations for uses and disclosures. (1) Authorization required: General rule. Except as otherwise permitted
	/// or required by this subchapter, a covered entity SHALL not use or disclose protected health information without
	/// an authorization that is valid under this section. When a covered entity obtains or receives a valid
	/// authorization for its use or disclosure of protected health information, such use or disclosure must be
	/// consistent with such authorization. Usage Note: Authorizations governed under this regulation meet the
	/// definition of an opt in class of consent directive.
	case hipaaAuth = "hipaa-auth"
	
	/// 164.520  Notice of privacy practices for protected health information. (1) Right to notice. Except as provided
	/// by paragraph (a)(2) or (3) of this section, an individual has a right to adequate notice of the uses and
	/// disclosures of protected health information that may be made by the covered entity, and of the individual's
	/// rights and the covered entity's legal duties with respect to protected health information. Usage Note:
	/// Restrictions governed under this regulation meet the definition of an implied with an opportunity to dissent
	/// class of consent directive.
	case hipaaNpp = "hipaa-npp"
	
	/// HIPAA 45 CFR 164.510 - Uses and disclosures requiring an opportunity for the individual to agree or to object. A
	/// covered entity may use or disclose protected health information, provided that the individual is informed in
	/// advance of the use or disclosure and has the opportunity to agree to or prohibit or restrict the use or
	/// disclosure, in accordance with the applicable requirements of this section. The covered entity may orally inform
	/// the individual of and obtain the individual's oral agreement or objection to a use or disclosure permitted by
	/// this section. Usage Note: Restrictions governed under this regulation meet the definition of an opt out with
	/// exception class of consent directive.
	case hipaaRestrictions = "hipaa-restrictions"
	
	/// HIPAA 45 CFR 164.508 - Uses and disclosures for which an authorization is required. (a) Standard: Authorizations
	/// for uses and disclosures. (3) Compound authorizations. An authorization for use or disclosure of protected
	/// health information SHALL NOT be combined with any other document to create a compound authorization, except as
	/// follows: (i) An authorization for the use or disclosure of protected health information for a research study may
	/// be combined with any other type of written permission for the same or another research study. This exception
	/// includes combining an authorization for the use or disclosure of protected health information for a research
	/// study with another authorization for the same research study, with an authorization for the creation or
	/// maintenance of a research database or repository, or with a consent to participate in research. Where a covered
	/// health care provider has conditioned the provision of research-related treatment on the provision of one of the
	/// authorizations, as permitted under paragraph (b)(4)(i) of this section, any compound authorization created under
	/// this paragraph must clearly differentiate between the conditioned and unconditioned components and provide the
	/// individual with an opportunity to opt in to the research activities described in the unconditioned
	/// authorization. Usage Notes: See HHS http://www.hhs.gov/hipaa/for-professionals/special-
	/// topics/research/index.html and OCR http://www.hhs.gov/hipaa/for-professionals/special-topics/research/index.html
	case hipaaResearch = "hipaa-research"
	
	/// HIPAA 45 CFR 164.522(a) Right To Request a Restriction of Uses and Disclosures. (vi) A covered entity must agree
	/// to the request of an individual to restrict disclosure of protected health information about the individual to a
	/// health plan if: (A) The disclosure is for the purpose of carrying out payment or health care operations and is
	/// not otherwise required by law; and (B) The protected health information pertains solely to a health care item or
	/// service for which the individual, or person other than the health plan on behalf of the individual, has paid the
	/// covered entity in full. Usage Note: Restrictions governed under this regulation meet the definition of an opt
	/// out with exception class of consent directive. Opt out is limited to disclosures to a payer for payment and
	/// operations purpose of use. See HL7 HIPAA Self-Pay code in ActPrivacyLaw (2.16.840.1.113883.1.11.20426).
	case hipaaSelfPay = "hipaa-self-pay"
	
	/// On January 1, 2015, the Michigan Department of Health and Human Services (MDHHS) released a standard consent
	/// form for the sharing of health information specific to behavioral health and substance use treatment in
	/// accordance with Public Act 129 of 2014. In Michigan, while providers are not required to use this new standard
	/// form (MDHHS-5515), they are required to accept it. Note: Form is available at http://www.michigan.gov/documents/
	/// mdhhs/Consent_to_Share_Behavioral_Health_Information_for_Care_Coordination_Purposes_548835_7.docx For more
	/// information see
	/// http://www.michigan.gov/documents/mdhhs/Behavioral_Health_Consent_Form_Background_Information_548864_7.pdf
	case mdhhs5515 = "mdhhs-5515"
	
	/// The New York State Surgical and Invasive Procedure Protocol (NYSSIPP) applies to all operative and invasive
	/// procedures including endoscopy, general surgery or interventional radiology. Other procedures that involve
	/// puncture or incision of the skin, or insertion of an instrument or foreign material into the body are within the
	/// scope of the protocol. This protocol also applies to those anesthesia procedures either prior to a surgical
	/// procedure or independent of a surgical procedure such as spinal facet blocks. Example: Certain 'minor'
	/// procedures such as venipuncture, peripheral IV placement, insertion of nasogastric tube and foley catheter
	/// insertion are not within the scope of the protocol. From
	/// http://www.health.ny.gov/professionals/protocols_and_guidelines/surgical_and_invasive_procedure/nyssipp_faq.htm
	/// Note: HHC 100B-1 Form is available at
	/// http://www.downstate.edu/emergency_medicine/documents/Consent_CT_with_contrast.pdf
	case nyssipp = "nyssipp"
	
	/// VA Form 10-0484 Revocation for Release of Individually-Identifiable Health Information enables a veteran to
	/// revoke authorization for the VA to release specified copies of individually-identifiable health information with
	/// the non-VA health care provider organizations participating in the eHealth Exchange and partnering with VA.
	/// Comment: Opt-in Consent Directive with status = rescinded (aka 'revoked'). Note: Form is available at
	/// http://www.va.gov/vaforms/medical/pdf/vha-10-0484-fill.pdf
	case va100484 = "va-10-0484"
	
	/// VA Form 10-0485 Request for and Authorization to Release Protected Health Information to eHealth Exchange
	/// enables a veteran to request and authorize a VA health care facility to release protected health information
	/// (PHI) for treatment purposes only to the communities that are participating in the eHealth Exchange, VLER
	/// Directive, and other Health Information Exchanges with who VA has an agreement. This information may consist of
	/// the diagnosis of Sickle Cell Anemia, the treatment of or referral for Drug Abuse, treatment of or referral for
	/// Alcohol Abuse or the treatment of or testing for infection with Human Immunodeficiency Virus. This authorization
	/// covers the diagnoses that I may have upon signing of the authorization and the diagnoses that I may acquire in
	/// the future including those protected by 38 U.S.C. 7332. Comment: Opt-in Consent Directive. Note: Form is
	/// available at http://www.va.gov/vaforms/medical/pdf/10-0485-fill.pdf
	case va100485 = "va-10-0485"
	
	/// VA Form 10-5345 Request for and Authorization to Release Medical Records or Health Information enables a veteran
	/// to request and authorize the VA to release specified copies of protected health information (PHI), such as
	/// hospital summary or outpatient treatment notes, which may include information about conditions governed under
	/// Title 38 Section 7332 (drug abuse, alcoholism or alcohol abuse, testing for or infection with HIV, and sickle
	/// cell anemia). Comment: Opt-in Consent Directive. Note: Form is available at
	/// http://www.va.gov/vaforms/medical/pdf/vha-10-5345-fill.pdf
	case va105345 = "va-10-5345"
	
	/// VA Form 10-5345a Individuals' Request for a Copy of Their Own Health Information enables a veteran to request
	/// and authorize the VA to release specified copies of protected health information (PHI), such as hospital summary
	/// or outpatient treatment notes. Note: Form is available at
	/// http://www.va.gov/vaforms/medical/pdf/vha-10-5345a-fill.pdf
	case va105345a = "va-10-5345a"
	
	/// VA Form 10-5345a-MHV Individual's Request for a Copy of their own health information from MyHealtheVet enables a
	/// veteran to receive a copy of all available personal health information to be delivered through the veteran's My
	/// HealtheVet account. Note: Form is available at http://www.va.gov/vaforms/medical/pdf/vha-10-5345a-MHV-fill.pdf
	case va105345aMhv = "va-10-5345a-mhv"
	
	/// VA Form 10-10116 Revocation of Authorization for Use and Release of Individually Identifiable Health Information
	/// for Veterans Health Administration Research. Comment: Opt-in with Restriction Consent Directive with status =
	/// 'completed'. Note: Form is available at
	/// http://www.northerncalifornia.va.gov/northerncalifornia/services/rnd/docs/vha-10-10116.pdf
	case va1010116 = "va-10-10116"
	
	/// VA Form 21-4142 (Authorization and Consent to Release Information to the Department of Veterans Affairs (VA)
	/// enables a veteran to authorize the US Veterans Administration [VA] to request veteran's health information from
	/// non-VA providers. Aka VA Compensation Application Note: Form is available at
	/// http://www.vba.va.gov/pubs/forms/VBA-21-4142-ARE.pdf . For additional information regarding VA Form 21-4142,
	/// refer to the following website: www.benefits.va.gov/compensation/consent_privateproviders
	case va214142 = "va-21-4142"
	
	/// SA Form SSA-827 (Authorization to Disclose Information to the Social Security Administration (SSA)). Form is
	/// available at https://www.socialsecurity.gov/forms/ssa-827-inst-sp.pdf
	case ssa827 = "ssa-827"
	
	/// Michigan DCH-3927 Consent to Share Behavioral Health Information for Care Coordination Purposes, which combines
	/// 42 CFR Part 2 and Michigan Mental Health Code, Act 258 of 1974. Form is available at
	/// http://www.michigan.gov/documents/mdch/DCH-3927_Consent_to_Share_Health_Information_477005_7.docx
	case dch3927 = "dch-3927"
	
	/// Squaxin Indian HIPAA and 42 CFR Part 2 Consent for Release and Exchange of Confidential Information, which
	/// permits consenter to select healthcare record type and types of treatment purposes.  This consent requires
	/// disclosers and recipients to comply with 42 C.F.R. Part 2, and HIPAA 45 C.F.R. parts 160 and 164. It includes
	/// patient notice of the refrain policy not to disclose without consent, and revocation rights.
	/// https://www.ncsacw.samhsa.gov/files/SI_ConsentForReleaseAndExchange.PDF
	case squaxin = "squaxin"
	
	/// LSP (National Exchange Point) requires that providers, hospitals and pharmacy obtain explicit permission [opt-
	/// in] from healthcare consumers to submit and retrieve all or only some of a subject of care’s health information
	/// collected by the LSP for purpose of treatment, which can be revoked.  Without permission, a provider cannot
	/// access LSP information even in an emergency. The LSP provides healthcare consumers with accountings of
	/// disclosures. https://www.vzvz.nl/uploaded/FILES/htmlcontent/Formulieren/TOESTEMMINGSFORMULIER.pdf,
	/// https://www.ikgeeftoestemming.nl/en, https://www.ikgeeftoestemming.nl/en/registration/find-healthcare-provider
	case nlLsp = "nl-lsp"
	
	/// Pursuant to Sec. 2 no. 9 Health Telematics Act 2012, ELGA Health Data ( “ELGA-Gesundheitsdaten”) = Medical
	/// documents. Austria opted for an opt-out approach. This means that a person is by default ‘ELGA participant’
	/// unless he/she objects. ELGA participants have the following options: General opt out: No participation in ELGA,
	/// Partial opt-out: No participation in a particular ELGA application, e.g. eMedication and Case-specific opt-out:
	/// No participation in ELGA only regarding a particular case/treatment. There is the possibility to opt-in again.
	/// ELGA participants can also exclude the access of a particular ELGA healthcare provider to a particular piece of
	/// or all of their ELGA data. http://ec.europa.eu/health/ehealth/docs/laws_austria_en.pdf
	case atElga = "at-elga"
	
	/// Guidance and template form https://privacyruleandresearch.nih.gov/pdf/authorization.pdf
	case nihHipaa = "nih-hipaa"
	
	/// see http://ctep.cancer.gov/protocolDevelopment/docs/Informed_Consent_Template.docx
	case nci = "nci"
	
	/// Global Rare Disease Patient Registry and Data Repository (GRDR) consent is an agreement of a healthcare consumer
	/// to permit collection, access, use and disclosure of de-identified rare disease information and collection of
	/// bio-specimens, medical information, family history and other related information from patients to permit the
	/// registry collection of health and genetic information, and specimens for pseudonymized disclosure for research
	/// purpose of use. https://rarediseases.info.nih.gov/files/informed_consent_template.pdf
	case nihGrdr = "nih-grdr"
	
	/// NIH Authorization for the Release of Medical Information is a patient’s consent for the National Institutes of
	/// Health Clinical Center to release medical information to care providers, which can be revoked. Note: Consent
	/// Form available @ http://cc.nih.gov/participate/_pdf/NIH-527.pdf
	case nih527 = "nih-527"
	
	/// Global Alliance for Genomic Health Data Sharing Consent Form is an example of the GA4GH Population origins and
	/// ancestry research consent form. Consenters agree to permitting a specified research project to collect ancestry
	/// and genetic information in controlled-access databases, and to allow other researchers to use deidentified
	/// information from those databases.
	/// http://www.commonaccord.org/index.php?action=doc&file=Wx/org/genomicsandhealth/REWG/Demo/Roberta_Robinson_US
	case ga4gh = "ga4gh"
}


/**
How a rule statement is applied, such as adding additional consent or removing consent.

URL: http://hl7.org/fhir/consent-provision-type
ValueSet: http://hl7.org/fhir/ValueSet/consent-provision-type
*/
public enum ConsentProvisionType: String {
	
	/// Consent is denied for actions meeting these rules.
	case deny = "deny"
	
	/// Consent is provided for actions meeting these rules.
	case permit = "permit"
}


/**
This value set includes the four Consent scope codes.

URL: http://terminology.hl7.org/CodeSystem/consentscope
ValueSet: http://hl7.org/fhir/ValueSet/consent-scope
*/
public enum ConsentScopeCodes: String {
	
	/// Actions to be taken if they are no longer able to make decisions for themselves
	case adr = "adr"
	
	/// Consent to participate in research protocol and information sharing required
	case research = "research"
	
	/// Agreement to collect, access, use or disclose (share) information
	case patientPrivacy = "patient-privacy"
	
	/// Consent to undergo a specific treatment
	case treatment = "treatment"
}


/**
Indicates the state of the consent.

URL: http://hl7.org/fhir/consent-state-codes
ValueSet: http://hl7.org/fhir/ValueSet/consent-state-codes
*/
public enum ConsentState: String {
	
	/// The consent is in development or awaiting use but is not yet intended to be acted upon.
	case draft = "draft"
	
	/// The consent has been proposed but not yet agreed to by all parties. The negotiation stage.
	case proposed = "proposed"
	
	/// The consent is to be followed and enforced.
	case active = "active"
	
	/// The consent has been rejected by one or more of the parties.
	case rejected = "rejected"
	
	/// The consent is terminated or replaced.
	case inactive = "inactive"
	
	/// The consent was created wrongly (e.g. wrong patient) and should be ignored.
	case enteredInError = "entered-in-error"
}


/**
SHALL applications comply with this constraint?

URL: http://hl7.org/fhir/constraint-severity
ValueSet: http://hl7.org/fhir/ValueSet/constraint-severity
*/
public enum ConstraintSeverity: String {
	
	/// If the constraint is violated, the resource is not conformant.
	case error = "error"
	
	/// If the constraint is violated, the resource is conformant, but it is not necessarily following best practice.
	case warning = "warning"
}


/**
This example value set defines a set of codes that can be used to indicate the purpose for which you would contact a
contact party.

URL: http://terminology.hl7.org/CodeSystem/contactentity-type
ValueSet: http://hl7.org/fhir/ValueSet/contactentity-type
*/
public enum ContactEntityType: String {
	
	/// Contact details for information regarding to billing/general finance enquiries.
	case BILL = "BILL"
	
	/// Contact details for administrative enquiries.
	case ADMIN = "ADMIN"
	
	/// Contact details for issues related to Human Resources, such as staff matters, OH&S etc.
	case HR = "HR"
	
	/// Contact details for dealing with issues related to insurance claims/adjudication/payment.
	case PAYOR = "PAYOR"
	
	/// Generic information contact for patients.
	case PATINF = "PATINF"
	
	/// Dedicated contact point for matters relating to press enquiries.
	case PRESS = "PRESS"
}


/**
Telecommunications form for contact point.

URL: http://hl7.org/fhir/contact-point-system
ValueSet: http://hl7.org/fhir/ValueSet/contact-point-system
*/
public enum ContactPointSystem: String {
	
	/// The value is a telephone number used for voice calls. Use of full international numbers starting with + is
	/// recommended to enable automatic dialing support but not required.
	case phone = "phone"
	
	/// The value is a fax machine. Use of full international numbers starting with + is recommended to enable automatic
	/// dialing support but not required.
	case fax = "fax"
	
	/// The value is an email address.
	case email = "email"
	
	/// The value is a pager number. These may be local pager numbers that are only usable on a particular pager system.
	case pager = "pager"
	
	/// A contact that is not a phone, fax, pager or email address and is expressed as a URL.  This is intended for
	/// various institutional or personal contacts including web sites, blogs, Skype, Twitter, Facebook, etc. Do not use
	/// for email addresses.
	case url = "url"
	
	/// A contact that can be used for sending an sms message (e.g. mobile phones, some landlines).
	case sms = "sms"
	
	/// A contact that is not a phone, fax, page or email address and is not expressible as a URL.  E.g. Internal mail
	/// address.  This SHOULD NOT be used for contacts that are expressible as a URL (e.g. Skype, Twitter, Facebook,
	/// etc.)  Extensions may be used to distinguish "other" contact types.
	case other = "other"
}


/**
Use of contact point.

URL: http://hl7.org/fhir/contact-point-use
ValueSet: http://hl7.org/fhir/ValueSet/contact-point-use
*/
public enum ContactPointUse: String {
	
	/// A communication contact point at a home; attempted contacts for business purposes might intrude privacy and
	/// chances are one will contact family or other household members instead of the person one wishes to call.
	/// Typically used with urgent cases, or if no other contacts are available.
	case home = "home"
	
	/// An office contact point. First choice for business related contacts during business hours.
	case work = "work"
	
	/// A temporary contact point. The period can provide more detailed information.
	case temp = "temp"
	
	/// This contact point is no longer in use (or was never correct, but retained for records).
	case old = "old"
	
	/// A telecommunication device that moves and stays with its owner. May have characteristics of all other use codes,
	/// suitable for urgent matters, not the first choice for routine business.
	case mobile = "mobile"
}


/**
Color of the container cap.

URL: http://terminology.hl7.org/CodeSystem/container-cap
ValueSet: http://hl7.org/fhir/ValueSet/container-cap
*/
public enum ContainerCap: String {
	
	/// red cap.
	case red = "red"
	
	/// yellow cap.
	case yellow = "yellow"
	
	/// dark yellow cap.
	case darkYellow = "dark-yellow"
	
	/// grey cap.
	case grey = "grey"
	
	/// light blue cap.
	case lightBlue = "light-blue"
	
	/// black cap.
	case black = "black"
	
	/// green cap.
	case green = "green"
	
	/// light green cap.
	case lightGreen = "light-green"
	
	/// lavender cap.
	case lavender = "lavender"
	
	/// brown cap.
	case brown = "brown"
	
	/// white cap.
	case white = "white"
	
	/// pink cap.
	case pink = "pink"
}


/**
This value set includes sample Contract Action codes.

URL: http://terminology.hl7.org/CodeSystem/contractaction
ValueSet: http://hl7.org/fhir/ValueSet/contract-action
*/
public enum ContractActionCodes: String {
	
	/// Definition for Action A
	case actionA = "action-a"
	
	/// Definition for Action B
	case actionB = "action-b"
}


/**
This value set includes sample Contract Actor Role codes.

URL: http://terminology.hl7.org/CodeSystem/contractactorrole
ValueSet: http://hl7.org/fhir/ValueSet/contract-actorrole
*/
public enum ContractActorRoleCodes: String {
	
	/// Someone who provides health care related services to people or animals including both clinical and support
	/// services.
	case practitioner = "practitioner"
	
	/// A receiver, human or animal, of health care related goods and services.
	case patient = "patient"
}


/**
This is an example set of Content Derivative type codes, which represent the minimal content derived from the basal
information source at a specific stage in its lifecycle, which is sufficient to manage that source information, for
example, in a repository, registry, processes and workflows, for making access control decisions, and providing query
responses.

URL: http://terminology.hl7.org/CodeSystem/contract-content-derivative
ValueSet: http://hl7.org/fhir/ValueSet/contract-content-derivative
*/
public enum ContractContentDerivationCodes: String {
	
	/// Content derivative that conveys sufficient information needed to register the source basal content from which it
	/// is derived.  This derivative content may be used to register the basal content as it changes status in its
	/// lifecycle.  For example, content registration may occur when the basal content is created, updated, inactive, or
	/// deleted.
	case registration = "registration"
	
	/// A content derivative that conveys sufficient information to locate and retrieve the content.
	case retrieval = "retrieval"
	
	/// Content derivative that has less than full fidelity to the basal information source from which it was
	/// 'transcribed'. It provides recipients with the full content representation they may require for compliance
	/// purposes, and typically include a reference to or an attached unstructured representation for recipients needing
	/// an exact copy of the legal agreement.
	case statement = "statement"
	
	/// A Content Derivative that conveys sufficient information to determine the authorized entities with which the
	/// content may be shared.
	case shareable = "shareable"
}


/**
How a resource reference is interpreted when evaluating contract offers.

URL: http://terminology.hl7.org/CodeSystem/contract-data-meaning
ValueSet: http://hl7.org/fhir/ValueSet/contract-data-meaning
*/
public enum ContractDataMeaning: String {
	
	/// The consent applies directly to the instance of the resource.
	case instance = "instance"
	
	/// The consent applies directly to the instance of the resource and instances it refers to.
	case related = "related"
	
	/// The consent applies directly to the instance of the resource and instances that refer to it.
	case dependents = "dependents"
	
	/// The consent applies to instances of resources that are authored by.
	case authoredby = "authoredby"
}


/**
This value set contract specific codes for action status.

URL: http://hl7.org/fhir/contract-action-status
ValueSet: http://hl7.org/fhir/ValueSet/contract-actionstatus
*/
public enum ContractResourceActionStatusCodes: String {
	
	/// To be completed
	case complete = "complete"
}


/**
This value set has asset availability codes.

URL: http://hl7.org/fhir/asset-availability
ValueSet: http://hl7.org/fhir/ValueSet/asset-availability
*/
public enum ContractResourceAssetAvailiabilityCodes: String {
	
	/// To be completed
	case lease = "lease"
}


/**
This value set contract specific codes for asset context.

URL: http://hl7.org/fhir/contract-asset-context
ValueSet: http://hl7.org/fhir/ValueSet/contract-assetcontext
*/
public enum ContractResourceAssetContextCodes: String {
	
	/// To be completed
	case custodian = "custodian"
}


/**
This value set contract specific codes for asset scope.

URL: http://hl7.org/fhir/contract-asset-scope
ValueSet: http://hl7.org/fhir/ValueSet/contract-assetscope
*/
public enum ContractResourceAssetScopeCodes: String {
	
	/// To be completed
	case thing = "thing"
}


/**
This value set contract specific codes for asset subtype.

URL: http://hl7.org/fhir/contract-asset-subtype
ValueSet: http://hl7.org/fhir/ValueSet/contract-assetsubtype
*/
public enum ContractResourceAssetSubTypeCodes: String {
	
	/// To be completed
	case participation = "participation"
}


/**
This value set contract specific codes for asset type.

URL: http://hl7.org/fhir/contract-asset-type
ValueSet: http://hl7.org/fhir/ValueSet/contract-assettype
*/
public enum ContractResourceAssetTypeCodes: String {
	
	/// To be completed
	case participation = "participation"
}


/**
This value set contract specific codes for decision modes.

URL: http://hl7.org/fhir/contract-decision-mode
ValueSet: http://hl7.org/fhir/ValueSet/contract-decision-mode
*/
public enum ContractResourceDecisionModeCodes: String {
	
	/// To be completed
	case policy = "policy"
}


/**
This value set contract specific codes for status.

URL: http://hl7.org/fhir/contract-definition-subtype
ValueSet: http://hl7.org/fhir/ValueSet/contract-definition-subtype
*/
public enum ContractResourceDefinitionSubtypeCodes: String {
	
	/// To be completed
	case temp = "temp"
}


/**
This value set contract specific codes for status.

URL: http://hl7.org/fhir/contract-definition-type
ValueSet: http://hl7.org/fhir/ValueSet/contract-definition-type
*/
public enum ContractResourceDefinitionTypeCodes: String {
	
	/// To be completed
	case temp = "temp"
}


/**
This value set contract specific codes for status.

URL: http://hl7.org/fhir/contract-expiration-type
ValueSet: http://hl7.org/fhir/ValueSet/contract-expiration-type
*/
public enum ContractResourceExpirationTypeCodes: String {
	
	/// To be completed
	case breach = "breach"
}


/**
This value set contract specific codes for status.

URL: http://hl7.org/fhir/contract-legalstate
ValueSet: http://hl7.org/fhir/ValueSet/contract-legalstate
*/
public enum ContractResourceLegalStateCodes: String {
	
	/// Contract is augmented with additional information to correct errors in a predecessor or to updated values in a
	/// predecessor. Usage: Contract altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status
	/// codes: revised; replaced.
	case amended = "amended"
	
	/// Contract is augmented with additional information that was missing from a predecessor Contract. Usage: Contract
	/// altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status codes: updated, replaced.
	case appended = "appended"
	
	/// Contract is terminated due to failure of the Grantor and/or the Grantee to fulfil one or more contract
	/// provisions. Usage: Abnormal contract termination. Precedence Order = 10. Comparable FHIR and v.3 status codes:
	/// stopped; failed; aborted.
	case cancelled = "cancelled"
	
	/// Contract is pended to rectify failure of the Grantor or the Grantee to fulfil contract provision(s). E.g.,
	/// Grantee complaint about Grantor's failure to comply with contract provisions. Usage: Contract pended. Precedence
	/// Order = 7. Comparable FHIR and v.3 status codes: on hold; pended; suspended.
	case disputed = "disputed"
	
	/// Contract was created in error. No Precedence Order.  Status may be applied to a Contract with any status.
	case enteredInError = "entered-in-error"
	
	/// Contract execution pending; may be executed when either the Grantor or the Grantee accepts the contract
	/// provisions by signing. I.e., where either the Grantor or the Grantee has signed, but not both. E.g., when an
	/// insurance applicant signs the insurers application, which references the policy. Usage: Optional first step of
	/// contract execution activity.  May be skipped and contracting activity moves directly to executed state.
	/// Precedence Order = 3. Comparable FHIR and v.3 status codes: draft; preliminary; planned; intended; active.
	case executable = "executable"
	
	/// Contract is activated for period stipulated when both the Grantor and Grantee have signed it. Usage: Required
	/// state for normal completion of contracting activity.  Precedence Order = 6. Comparable FHIR and v.3 status
	/// codes: accepted; completed.
	case executed = "executed"
	
	/// Contract execution is suspended while either or both the Grantor and Grantee propose and consider new or revised
	/// contract provisions. I.e., where the party which has not signed proposes changes to the terms.  E .g., a life
	/// insurer declines to agree to the signed application because the life insurer has evidence that the applicant,
	/// who asserted to being younger or a non-smoker to get a lower premium rate - but offers instead to agree to a
	/// higher premium based on the applicants actual age or smoking status. Usage: Optional contract activity between
	/// executable and executed state. Precedence Order = 4. Comparable FHIR and v.3 status codes: in progress; review;
	/// held.
	case negotiable = "negotiable"
	
	/// Contract is a proposal by either the Grantor or the Grantee. Aka - A Contract hard copy or electronic
	/// 'template', 'form' or 'application'. E.g., health insurance application; consent directive form. Usage:
	/// Beginning of contract negotiation, which may have been completed as a precondition because used for 0..*
	/// contracts. Precedence Order = 2. Comparable FHIR and v.3 status codes: requested; new.
	case offered = "offered"
	
	/// Contract template is available as the basis for an application or offer by the Grantor or Grantee. E.g., health
	/// insurance policy; consent directive policy.  Usage: Required initial contract activity, which may have been
	/// completed as a precondition because used for 0..* contracts. Precedence Order = 1. Comparable FHIR and v.3
	/// status codes: proposed; intended.
	case policy = "policy"
	
	///  Execution of the Contract is not completed because either or both the Grantor and Grantee decline to accept
	/// some or all of the contract provisions. Usage: Optional contract activity between executable and abnormal
	/// termination. Precedence Order = 5. Comparable FHIR and v.3 status codes:  stopped; cancelled.
	case rejected = "rejected"
	
	/// Beginning of a successor Contract at the termination of predecessor Contract lifecycle. Usage: Follows
	/// termination of a preceding Contract that has reached its expiry date. Precedence Order = 13. Comparable FHIR and
	/// v.3 status codes: superseded.
	case renewed = "renewed"
	
	/// A Contract that is rescinded.  May be required prior to replacing with an updated Contract. Comparable FHIR and
	/// v.3 status codes: nullified.
	case revoked = "revoked"
	
	/// Contract is reactivated after being pended because of faulty execution. *E.g., competency of the signer(s), or
	/// where the policy is substantially different from and did not accompany the application/form so that the
	/// applicant could not compare them. Aka - ''reactivated''. Usage: Optional stage where a pended contract is
	/// reactivated. Precedence Order = 8. Comparable FHIR and v.3 status codes: reactivated.
	case resolved = "resolved"
	
	/// Contract reaches its expiry date. It might or might not be renewed or renegotiated. Usage: Normal end of
	/// contract period. Precedence Order = 12. Comparable FHIR and v.3 status codes: Obsoleted.
	case terminated = "terminated"
}


/**
This value set contract specific codes for offer party participation.

URL: http://hl7.org/fhir/contract-party-role
ValueSet: http://hl7.org/fhir/ValueSet/contract-party-role
*/
public enum ContractResourcePartyRoleCodes: String {
	
	/// To be completed
	case flunky = "flunky"
}


/**
This value set contract specific codes for status.

URL: http://hl7.org/fhir/contract-publicationstatus
ValueSet: http://hl7.org/fhir/ValueSet/contract-publicationstatus
*/
public enum ContractResourcePublicationStatusCodes: String {
	
	/// Contract is augmented with additional information to correct errors in a predecessor or to updated values in a
	/// predecessor. Usage: Contract altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status
	/// codes: revised; replaced.
	case amended = "amended"
	
	/// Contract is augmented with additional information that was missing from a predecessor Contract. Usage: Contract
	/// altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status codes: updated, replaced.
	case appended = "appended"
	
	/// Contract is terminated due to failure of the Grantor and/or the Grantee to fulfil one or more contract
	/// provisions. Usage: Abnormal contract termination. Precedence Order = 10. Comparable FHIR and v.3 status codes:
	/// stopped; failed; aborted.
	case cancelled = "cancelled"
	
	/// Contract is pended to rectify failure of the Grantor or the Grantee to fulfil contract provision(s). E.g.,
	/// Grantee complaint about Grantor's failure to comply with contract provisions. Usage: Contract pended. Precedence
	/// Order = 7. Comparable FHIR and v.3 status codes: on hold; pended; suspended.
	case disputed = "disputed"
	
	/// Contract was created in error. No Precedence Order.  Status may be applied to a Contract with any status.
	case enteredInError = "entered-in-error"
	
	/// Contract execution pending; may be executed when either the Grantor or the Grantee accepts the contract
	/// provisions by signing. I.e., where either the Grantor or the Grantee has signed, but not both. E.g., when an
	/// insurance applicant signs the insurers application, which references the policy. Usage: Optional first step of
	/// contract execution activity.  May be skipped and contracting activity moves directly to executed state.
	/// Precedence Order = 3. Comparable FHIR and v.3 status codes: draft; preliminary; planned; intended; active.
	case executable = "executable"
	
	/// Contract is activated for period stipulated when both the Grantor and Grantee have signed it. Usage: Required
	/// state for normal completion of contracting activity.  Precedence Order = 6. Comparable FHIR and v.3 status
	/// codes: accepted; completed.
	case executed = "executed"
	
	/// Contract execution is suspended while either or both the Grantor and Grantee propose and consider new or revised
	/// contract provisions. I.e., where the party which has not signed proposes changes to the terms.  E .g., a life
	/// insurer declines to agree to the signed application because the life insurer has evidence that the applicant,
	/// who asserted to being younger or a non-smoker to get a lower premium rate - but offers instead to agree to a
	/// higher premium based on the applicants actual age or smoking status. Usage: Optional contract activity between
	/// executable and executed state. Precedence Order = 4. Comparable FHIR and v.3 status codes: in progress; review;
	/// held.
	case negotiable = "negotiable"
	
	/// Contract is a proposal by either the Grantor or the Grantee. Aka - A Contract hard copy or electronic
	/// 'template', 'form' or 'application'. E.g., health insurance application; consent directive form. Usage:
	/// Beginning of contract negotiation, which may have been completed as a precondition because used for 0..*
	/// contracts. Precedence Order = 2. Comparable FHIR and v.3 status codes: requested; new.
	case offered = "offered"
	
	/// Contract template is available as the basis for an application or offer by the Grantor or Grantee. E.g., health
	/// insurance policy; consent directive policy.  Usage: Required initial contract activity, which may have been
	/// completed as a precondition because used for 0..* contracts. Precedence Order = 1. Comparable FHIR and v.3
	/// status codes: proposed; intended.
	case policy = "policy"
	
	///  Execution of the Contract is not completed because either or both the Grantor and Grantee decline to accept
	/// some or all of the contract provisions. Usage: Optional contract activity between executable and abnormal
	/// termination. Precedence Order = 5. Comparable FHIR and v.3 status codes:  stopped; cancelled.
	case rejected = "rejected"
	
	/// Beginning of a successor Contract at the termination of predecessor Contract lifecycle. Usage: Follows
	/// termination of a preceding Contract that has reached its expiry date. Precedence Order = 13. Comparable FHIR and
	/// v.3 status codes: superseded.
	case renewed = "renewed"
	
	/// A Contract that is rescinded.  May be required prior to replacing with an updated Contract. Comparable FHIR and
	/// v.3 status codes: nullified.
	case revoked = "revoked"
	
	/// Contract is reactivated after being pended because of faulty execution. *E.g., competency of the signer(s), or
	/// where the policy is substantially different from and did not accompany the application/form so that the
	/// applicant could not compare them. Aka - ''reactivated''. Usage: Optional stage where a pended contract is
	/// reactivated. Precedence Order = 8. Comparable FHIR and v.3 status codes: reactivated.
	case resolved = "resolved"
	
	/// Contract reaches its expiry date. It might or might not be renewed or renegotiated. Usage: Normal end of
	/// contract period. Precedence Order = 12. Comparable FHIR and v.3 status codes: Obsoleted.
	case terminated = "terminated"
}


/**
This value set contract specific codes for scope.

URL: http://hl7.org/fhir/contract-scope
ValueSet: http://hl7.org/fhir/ValueSet/contract-scope
*/
public enum ContractResourceScopeCodes: String {
	
	/// To be completed
	case policy = "policy"
}


/**
This value set contract specific codes for security category.

URL: http://hl7.org/fhir/contract-security-category
ValueSet: http://hl7.org/fhir/ValueSet/contract-security-category
*/
public enum ContractResourceSecurityCategoryCodes: String {
	
	/// To be completed
	case policy = "policy"
}


/**
This value set contract specific codes for security classification.

URL: http://hl7.org/fhir/contract-security-classification
ValueSet: http://hl7.org/fhir/ValueSet/contract-security-classification
*/
public enum ContractResourceSecurityClassificationCodes: String {
	
	/// To be completed
	case policy = "policy"
}


/**
This value set contract specific codes for security control.

URL: http://hl7.org/fhir/contract-security-control
ValueSet: http://hl7.org/fhir/ValueSet/contract-security-control
*/
public enum ContractResourceSecurityControlCodes: String {
	
	/// To be completed
	case policy = "policy"
}


/**
This value set contract specific codes for status.

URL: http://hl7.org/fhir/contract-status
ValueSet: http://hl7.org/fhir/ValueSet/contract-status
*/
public enum ContractResourceStatusCodes: String {
	
	/// Contract is augmented with additional information to correct errors in a predecessor or to updated values in a
	/// predecessor. Usage: Contract altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status
	/// codes: revised; replaced.
	case amended = "amended"
	
	/// Contract is augmented with additional information that was missing from a predecessor Contract. Usage: Contract
	/// altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status codes: updated, replaced.
	case appended = "appended"
	
	/// Contract is terminated due to failure of the Grantor and/or the Grantee to fulfil one or more contract
	/// provisions. Usage: Abnormal contract termination. Precedence Order = 10. Comparable FHIR and v.3 status codes:
	/// stopped; failed; aborted.
	case cancelled = "cancelled"
	
	/// Contract is pended to rectify failure of the Grantor or the Grantee to fulfil contract provision(s). E.g.,
	/// Grantee complaint about Grantor's failure to comply with contract provisions. Usage: Contract pended. Precedence
	/// Order = 7. Comparable FHIR and v.3 status codes: on hold; pended; suspended.
	case disputed = "disputed"
	
	/// Contract was created in error. No Precedence Order.  Status may be applied to a Contract with any status.
	case enteredInError = "entered-in-error"
	
	/// Contract execution pending; may be executed when either the Grantor or the Grantee accepts the contract
	/// provisions by signing. I.e., where either the Grantor or the Grantee has signed, but not both. E.g., when an
	/// insurance applicant signs the insurers application, which references the policy. Usage: Optional first step of
	/// contract execution activity.  May be skipped and contracting activity moves directly to executed state.
	/// Precedence Order = 3. Comparable FHIR and v.3 status codes: draft; preliminary; planned; intended; active.
	case executable = "executable"
	
	/// Contract is activated for period stipulated when both the Grantor and Grantee have signed it. Usage: Required
	/// state for normal completion of contracting activity.  Precedence Order = 6. Comparable FHIR and v.3 status
	/// codes: accepted; completed.
	case executed = "executed"
	
	/// Contract execution is suspended while either or both the Grantor and Grantee propose and consider new or revised
	/// contract provisions. I.e., where the party which has not signed proposes changes to the terms.  E .g., a life
	/// insurer declines to agree to the signed application because the life insurer has evidence that the applicant,
	/// who asserted to being younger or a non-smoker to get a lower premium rate - but offers instead to agree to a
	/// higher premium based on the applicants actual age or smoking status. Usage: Optional contract activity between
	/// executable and executed state. Precedence Order = 4. Comparable FHIR and v.3 status codes: in progress; review;
	/// held.
	case negotiable = "negotiable"
	
	/// Contract is a proposal by either the Grantor or the Grantee. Aka - A Contract hard copy or electronic
	/// 'template', 'form' or 'application'. E.g., health insurance application; consent directive form. Usage:
	/// Beginning of contract negotiation, which may have been completed as a precondition because used for 0..*
	/// contracts. Precedence Order = 2. Comparable FHIR and v.3 status codes: requested; new.
	case offered = "offered"
	
	/// Contract template is available as the basis for an application or offer by the Grantor or Grantee. E.g., health
	/// insurance policy; consent directive policy.  Usage: Required initial contract activity, which may have been
	/// completed as a precondition because used for 0..* contracts. Precedence Order = 1. Comparable FHIR and v.3
	/// status codes: proposed; intended.
	case policy = "policy"
	
	///  Execution of the Contract is not completed because either or both the Grantor and Grantee decline to accept
	/// some or all of the contract provisions. Usage: Optional contract activity between executable and abnormal
	/// termination. Precedence Order = 5. Comparable FHIR and v.3 status codes:  stopped; cancelled.
	case rejected = "rejected"
	
	/// Beginning of a successor Contract at the termination of predecessor Contract lifecycle. Usage: Follows
	/// termination of a preceding Contract that has reached its expiry date. Precedence Order = 13. Comparable FHIR and
	/// v.3 status codes: superseded.
	case renewed = "renewed"
	
	/// A Contract that is rescinded.  May be required prior to replacing with an updated Contract. Comparable FHIR and
	/// v.3 status codes: nullified.
	case revoked = "revoked"
	
	/// Contract is reactivated after being pended because of faulty execution. *E.g., competency of the signer(s), or
	/// where the policy is substantially different from and did not accompany the application/form so that the
	/// applicant could not compare them. Aka - ''reactivated''. Usage: Optional stage where a pended contract is
	/// reactivated. Precedence Order = 8. Comparable FHIR and v.3 status codes: reactivated.
	case resolved = "resolved"
	
	/// Contract reaches its expiry date. It might or might not be renewed or renegotiated. Usage: Normal end of
	/// contract period. Precedence Order = 12. Comparable FHIR and v.3 status codes: Obsoleted.
	case terminated = "terminated"
}


/**
This value set includes sample Contract Signer Type codes.

URL: http://terminology.hl7.org/CodeSystem/contractsignertypecodes
ValueSet: http://hl7.org/fhir/ValueSet/contract-signer-type
*/
public enum ContractSignerTypeCodes: String {
	
	/// A person who has corrected, edited, or amended pre-existing information.
	case AMENDER = "AMENDER"
	
	/// A person in the role of verifier who attests to the accuracy of an act, but who does not have privileges to
	/// legally authenticate information content. An example would be a resident physician who sees a patient and
	/// dictates a note, then later signs it. The resident's signature constitutes an authentication.
	case AUTHN = "AUTHN"
	
	/// An entity that authored specific content. There can be multiple authors of content, which may take such forms as
	/// a contract, a healthcare record entry or document, a policy, or a consent directive.
	case AUT = "AUT"
	
	/// An entity that has a business or professional relationship with another entity in accordance with an agreement.
	case AFFL = "AFFL"
	
	/// An entity that acts or is authorized to act on behalf of another entity in accordance with an agreement.
	case AGNT = "AGNT"
	
	/// An agent role in which the agent is an Entity acting in the employ of an organization. The focus is on
	/// functional role on behalf of the organization, unlike the Employee role where the focus is on the 'Human
	/// Resources' relationship between the employee and the organization.
	case ASSIGNED = "ASSIGNED"
	
	/// The member of a jurisdiction afforded certain rights and encumbered with certain obligation in accordance with
	/// jurisdictional policy.
	case CIT = "CIT"
	
	/// A party that makes a claim for coverage under a policy.
	case CLAIMANT = "CLAIMANT"
	
	/// The entity that co-authored content. There can be multiple co-authors of content, which may take such forms as a
	/// contract, a healthcare record entry or document, a policy, or a consent directive.
	case COAUTH = "COAUTH"
	
	/// A patient or patient representative who is the grantee in a healthcare related agreement such as a consent for
	/// healthcare services, advanced directive, or a privacy consent directive in accordance with jurisdictional,
	/// organizational, or patient policy.
	case CONSENTER = "CONSENTER"
	
	/// A person who has witnessed and attests to observing a patient being counseled about a healthcare related
	/// agreement such as a consent for healthcare services, advanced directive, or a privacy consent directive.
	case CONSWIT = "CONSWIT"
	
	/// A person or an organization that provides or receives information regarding another entity. Examples; patient
	/// NOK and emergency contacts; guarantor contact; employer contact.
	case CONT = "CONT"
	
	/// A person who participates in the generation of and attest to veracity of content but is not an author or co-
	/// author. For example, a surgeon who is required by institutional, regulatory, or legal rules to sign an operative
	/// report, but who was not involved in the authorship of that report.
	case COPART = "COPART"
	
	/// An entity, which is the insured, that receives benefits such as healthcare services, reimbursement for out-of-
	/// pocket expenses, or compensation for losses through coverage under the terms of an insurance policy. The
	/// underwriter of that policy is the scoping entity. The covered party receives coverage because of some
	/// contractual or other relationship with the holder of that policy. Note that a particular policy may cover
	/// several individuals one of whom may be, but need not be, the policy holder. Thus the notion of covered party is
	/// a role that is distinct from that of the policy holder.
	case COVPTY = "COVPTY"
	
	/// A party to whom some right or authority is delegated by a delegator.
	case DELEGATEE = "DELEGATEE"
	
	/// A party that delegates a right or authority to another party.
	case delegator = "delegator"
	
	/// A person covered under an insurance policy or program based on an association with a subscriber, which is
	/// recognized by the policy holder. The dependent has an association with the subscriber such as a financial
	/// dependency or personal relationship such as that of a spouse, or a natural or adopted child. The policy holder
	/// may be required by law to recognize certain associations or may have discretion about the associations. For
	/// example, a policy holder may dictate the criteria for the dependent status of adult children who are students,
	/// such as requiring full time enrollment, or may recognize domestic partners as dependents. Under certain
	/// circumstances, the dependent may be under the indirect authority of a responsible party acting as a surrogate
	/// for the subscriber, for example, if the subscriber is differently-abled or deceased, a guardian ad lidem or
	/// estate executor may be appointed to assume the subscriber's legal standing in the relationship with the
	/// dependent.
	case DEPEND = "DEPEND"
	
	/// A person who has been granted the authority to represent or act on another's behalf generally in a manner which
	/// is a legally binding upon the person giving such authority as if he or she personally were to do the acts.
	/// Unlike ordinary powers of attorney, durable powers can survive for long periods of time, and again, unlike
	/// standard powers of attorney, durable powers can continue after incompetency.
	case DPOWATT = "DPOWATT"
	
	/// An entity to be contacted in the event of an emergency
	case EMGCON = "EMGCON"
	
	/// A person who attests to observing an occurrence.  For example, the witness has observed a procedure and is
	/// attesting to this fact.
	case EVTWIT = "EVTWIT"
	
	/// A person who has been granted the authority to act as an estate executor for a deceased person who was the
	/// responsible party.
	case EXCEST = "EXCEST"
	
	/// A person who grants to another person the authority to represent or act on that person's behalf.  Examples
	/// include (1) exercising specific rights belonging to the grantee; (2) performing specific duties on behalf of a
	/// grantee; and (3) making specific decisions concerning a grantee.
	case GRANTEE = "GRANTEE"
	
	/// A person who has been granted the authority to represent or act on another's behalf. Examples include (1)
	/// exercising specific rights belonging to the grantee; (2) performing specific duties on behalf of a grantee; and
	/// (3) making specific decisions concerning a grantee.
	case GRANTOR = "GRANTOR"
	
	/// A person or organization contractually recognized by the issuer as an entity that has assumed fiscal
	/// responsibility (e.g., by making or giving a promise, assurance, or pledge) for another entity's financial
	/// obligations by guaranteeing to pay for amounts owed to a particular account.  In a healthcare context, the
	/// account may be a patient's billing account for services rendered by a provider or a health plan premium account.
	case GUAR = "GUAR"
	
	/// A person or organization legally empowered with responsibility for the care of a ward.
	case GUARD = "GUARD"
	
	/// A person appointed by the court to look out for the best interests of a minor child during the course of legal
	/// proceedings.
	case GUADLTM = "GUADLTM"
	
	/// An entity that is the source of reported information (e.g., a next of kin who answers questions about the
	/// patient's history). For history questions, the patient is logically an informant, yet the informant of history
	/// questions is implicitly the subject.
	case INF = "INF"
	
	/// A person who converts spoken or written language into the language of key participants in an event such as when
	/// a provider is obtaining a patient's consent to treatment or permission to disclose information.
	case INTPRT = "INTPRT"
	
	/// An entity that is the subject of an investigation. This role is scoped by the party responsible for the
	/// investigation.
	case INSBJ = "INSBJ"
	
	/// A person who has been granted the authority to represent or act on another's behalf for healthcare related
	/// matters in a manner which is a legally binding upon the person giving such authority as if he or she personally
	/// were to do the acts. Examples include (1) exercising specific healthcare legal rights belonging to the grantee
	/// such as signing a consent directive; (2) performing specific healthcare related legal duties on behalf of a
	/// grantee such as claims payment; and (3) making specific healthcare legal decisions concerning a grantee such as
	/// consenting to healthcare services.
	case HPOWATT = "HPOWATT"
	
	/// An entity that is authorized to provide health care services by an authorizing organization or jurisdiction.
	case HPROV = "HPROV"
	
	/// A person in the role of verifier who attests to the accuracy of information content, and who has privileges to
	/// certify the legal authenticity of that content with a signature that constitutes a legal authentication.  For
	/// example, a licensed physician who signs a consult authored by a resident physician who authenticated it.
	case LEGAUTHN = "LEGAUTHN"
	
	/// A party to an insurance policy under which the insurer agrees to indemnify for losses, provides benefits for, or
	/// renders services. A named insured may be either a person, non-person living subject, or an organization, or a
	/// group of persons, non-person living subject that is the named insured under a comprehensive automobile,
	/// disability, or property and casualty policy.  The named insured and might or might not be the policy holder.
	case NMDINS = "NMDINS"
	
	/// A person, who is a type of contact, designated to receive notifications on behalf of another person who is a
	/// relative.
	case NOK = "NOK"
	
	/// The party credentialed to legally attest to the contract binding by verifying the identity and capacity of the
	/// grantor and grantee, and witnessing their signing of the contract or agreement such as a real estate
	/// transaction, pre-nuptial agreement, or a will.
	case NOTARY = "NOTARY"
	
	/// A person, animal, or other living subject that is the actual or potential recipient of health care services.
	case PAT = "PAT"
	
	/// A person who has been granted the authority to represent or act on another's behalf generally in a manner which
	/// is a legally binding upon the person giving such authority as if he or she personally were to do the acts.
	/// Examples include (1) exercising specific legal rights belonging to the grantee such as signing a contract; (2)
	/// performing specific legal duties on behalf of a grantee such as making loan payments; and (3) making specific
	/// legal decisions concerning a grantee such as financial investment decisions.
	case POWATT = "POWATT"
	
	/// An entity that is the primary or sole author of information content.  In the healthcare context, there can be
	/// only one primary author of health information content in a record entry or document.
	case PRIMAUTH = "PRIMAUTH"
	
	/// An entity that may, should receive, or has received information or an object to which it was primarily
	/// addressed.
	case PRIRECIP = "PRIRECIP"
	
	/// An entity that may, should receive, or has received information or an object, which might not have been
	/// primarily addressed to it. For example, the staff of a provider, a clearinghouse, or other intermediary.
	case RECIP = "RECIP"
	
	/// An entity that has legal responsibility for another party.
	case RESPRSN = "RESPRSN"
	
	/// A person, device, or algorithm that has used approved criteria for filtered data for inclusion into the patient
	/// record.  Examples: (1) a medical records clerk who scans a document for inclusion in the medical record, enters
	/// header information, or catalogues and classifies the data, or a combination thereof; (2) a gateway that receives
	/// data from another computer system and interprets that data or changes its format, or both, before entering it
	/// into the patient record.
	case REVIEWER = "REVIEWER"
	
	/// An entity entering the data into the originating system. This includes the transcriptionist for dictated text
	/// transcribed into electronic form.
	case TRANS = "TRANS"
	
	/// An automated data source that generates a signature along with content. Examples: (1) the signature for an image
	/// that is generated by a device for inclusion in the patient record; (2) the signature for an ECG derived by an
	/// ECG system for inclusion in the patient record; (3) the data from a biomedical monitoring device or system that
	/// is for inclusion in the patient record.
	case SOURCE = "SOURCE"
	
	/// A person who has been granted the authority to represent or act on another's behalf for a limited set of
	/// specific matters in a manner which is a legally binding upon the person giving such authority as if he or she
	/// personally were to do the acts. Examples include (1) exercising specific legal rights belonging to the grantee
	/// such as drafting a will; (2) performing specific legal duties on behalf of a grantee such as making a reversible
	/// mortgage to pay for end of life expenses; and (3) making specific legal decisions concerning a grantee such as
	/// managing a trust.
	case SPOWATT = "SPOWATT"
	
	/// A person who validates a health information document for inclusion in the patient record. For example, a medical
	/// student or resident is credentialed to perform history or physical examinations and to write progress notes. The
	/// attending physician signs the history and physical examination to validate the entry for inclusion in the
	/// patient's medical record.
	case VALID = "VALID"
	
	/// A person who asserts the correctness and appropriateness of an act or the recording of the act, and is
	/// accountable for the assertion that the act or the recording of the act complies with jurisdictional or
	/// organizational policy. For example, a physician is required to countersign a verbal order that has previously
	/// been recorded in the medical record by a registered nurse who has carried out the verbal order.
	case VERF = "VERF"
	
	/// A person witnessing the signature of another party. A witness is not knowledgeable about the content being
	/// signed, much less approves of anything stated in the content. For example, an advanced directive witness or a
	/// witness that a party to a contract signed that certain demographic or financial information is truthful.
	case WIT = "WIT"
}


/**
This value set includes sample Contract Subtype codes.

URL: http://terminology.hl7.org/CodeSystem/contractsubtypecodes
ValueSet: http://hl7.org/fhir/ValueSet/contract-subtype
*/
public enum ContractSubtypeCodes: String {
	
	/// Canadian health information disclosure policy.
	case disclosureCa = "disclosure-ca"
	
	/// United States health information disclosure policy.
	case disclosureUs = "disclosure-us"
}


/**
This value set includes sample Contract Term SubType codes.

URL: http://terminology.hl7.org/CodeSystem/contracttermsubtypecodes
ValueSet: http://hl7.org/fhir/ValueSet/contract-term-subtype
*/
public enum ContractTermSubtypeCodes: String {
	
	/// Terms that go to the very root of a contract.
	case condition = "condition"
	
	/// Less imperative than a condition, so the contract will survive a breach
	case warranty = "warranty"
	
	/// Breach of which might or might not go to the root of the contract depending upon the nature of the breach
	case innominate = "innominate"
}


/**
This value set includes sample Contract Term Type codes.

URL: http://terminology.hl7.org/CodeSystem/contracttermtypecodes
ValueSet: http://hl7.org/fhir/ValueSet/contract-term-type
*/
public enum ContractTermTypeCodes: String {
	
	/// Based on specialized statutes that deal with particular subjects.
	case statutory = "statutory"
	
	/// Execution of the term in the contract is conditional on the execution of other actions.
	case subjectTo = "subject-to"
}


/**
This value set includes sample Contract Type codes.

URL: http://terminology.hl7.org/CodeSystem/contract-type
ValueSet: http://hl7.org/fhir/ValueSet/contract-type
*/
public enum ContractTypeCodes: String {
	
	/// Privacy policy.
	case privacy = "privacy"
	
	/// Information disclosure policy.
	case disclosure = "disclosure"
	
	/// Health Insurance policy.
	case healthinsurance = "healthinsurance"
	
	/// Contract to supply goods or services.
	case supply = "supply"
	
	/// Consent Directive.
	case consent = "consent"
}


/**
The type of contributor.

URL: http://hl7.org/fhir/contributor-type
ValueSet: http://hl7.org/fhir/ValueSet/contributor-type
*/
public enum ContributorType: String {
	
	/// An author of the content of the module.
	case author = "author"
	
	/// An editor of the content of the module.
	case editor = "editor"
	
	/// A reviewer of the content of the module.
	case reviewer = "reviewer"
	
	/// An endorser of the content of the module.
	case endorser = "endorser"
}


/**
Copy Number Event.

URL: http://terminology.hl7.org/CodeSystem/copy-number-event
ValueSet: http://hl7.org/fhir/ValueSet/copy-number-event
*/
public enum CopyNumberEvent: String {
	
	/// amplification.
	case amp = "amp"
	
	/// deletion.
	case del = "del"
	
	/// loss of function.
	case lof = "lof"
}


/**
This value set includes Coverage Class codes.

URL: http://terminology.hl7.org/CodeSystem/coverage-class
ValueSet: http://hl7.org/fhir/ValueSet/coverage-class
*/
public enum CoverageClassCodes: String {
	
	/// An employee group
	case group = "group"
	
	/// A sub-group of an employee group
	case subgroup = "subgroup"
	
	/// A specific suite of benefits.
	case plan = "plan"
	
	/// A subset of a specific suite of benefits.
	case subplan = "subplan"
	
	/// A class of benefits.
	case `class` = "class"
	
	/// A subset of a class of benefits.
	case subclass = "subclass"
	
	/// A sequence number associated with a short-term continuance of the coverage.
	case sequence = "sequence"
	
	/// Pharmacy benefit manager's Business Identification Number.
	case rxbin = "rxbin"
	
	/// A Pharmacy Benefit Manager specified Processor Control Number.
	case rxpcn = "rxpcn"
	
	/// A Pharmacy Benefit Manager specified Member ID.
	case rxid = "rxid"
	
	/// A Pharmacy Benefit Manager specified Group number.
	case rxgroup = "rxgroup"
}


/**
This value set includes sample Coverage Copayment Type codes.

URL: http://terminology.hl7.org/CodeSystem/coverage-copay-type
ValueSet: http://hl7.org/fhir/ValueSet/coverage-copay-type
*/
public enum CoverageCopayTypeCodes: String {
	
	/// An office visit for a general practitioner of a discipline.
	case gpvisit = "gpvisit"
	
	/// An office visit for a specialist practitioner of a discipline
	case spvisit = "spvisit"
	
	/// An episode in an emergency department.
	case emergency = "emergency"
	
	/// An episode of an Inpatient hospital stay.
	case inpthosp = "inpthosp"
	
	/// A visit held where the patient is remote relative to the practitioner, e.g. by phone, computer or video
	/// conference.
	case televisit = "televisit"
	
	/// A visit to an urgent care facility - typically a community care clinic.
	case urgentcare = "urgentcare"
	
	/// A standard percentage applied to all classes or service or product not otherwise specified.
	case copaypct = "copaypct"
	
	/// A standard fixed currency amount applied to all classes or service or product not otherwise specified.
	case copay = "copay"
	
	/// The accumulated amount of patient payment before the coverage begins to pay for services.
	case deductible = "deductible"
	
	/// The maximum amout of payment for services which a patient, or family, is expected to incur - typically annually.
	case maxoutofpocket = "maxoutofpocket"
}


/**
This value set includes CoverageEligibilityResponse Auth Support codes.

URL: http://terminology.hl7.org/CodeSystem/coverageeligibilityresponse-ex-auth-support
ValueSet: http://hl7.org/fhir/ValueSet/coverageeligibilityresponse-ex-auth-support
*/
public enum CoverageEligibilityResponseAuthSupportCodes: String {
	
	/// A request or authorization for laboratory diagnostic tests.
	case laborder = "laborder"
	
	/// A report on laboratory diagnostic test(s).
	case labreport = "labreport"
	
	/// A request or authorization for diagnostic imaging.
	case diagnosticimageorder = "diagnosticimageorder"
	
	/// A report on diagnostic image(s).
	case diagnosticimagereport = "diagnosticimagereport"
	
	/// A report from a licensed professional regarding the siutation, condition or proposed treatment.
	case professionalreport = "professionalreport"
	
	/// A formal accident report as would be filed with police or a simlar official body.
	case accidentreport = "accidentreport"
	
	/// A physical model of the affected area.
	case model = "model"
	
	/// A photograph of the affected area.
	case picture = "picture"
}


/**
This value set includes Coverage SelfPay codes.

URL: http://terminology.hl7.org/CodeSystem/coverage-selfpay
ValueSet: http://hl7.org/fhir/ValueSet/coverage-selfpay
*/
public enum CoverageSelfPayCodes: String {
	
	/// An individual or organization is paying directly for goods and services.
	case pay = "pay"
}


/**
Used to specify why the normally expected content of the data element is missing.

URL: http://terminology.hl7.org/CodeSystem/data-absent-reason
ValueSet: http://hl7.org/fhir/ValueSet/data-absent-reason
*/
public enum DataAbsentReason: String {
	
	/// The value is expected to exist but is not known.
	case unknown = "unknown"
	
	/// The source was asked but does not know the value.
	case askedUnknown = "asked-unknown"
	
	/// There is reason to expect (from the workflow) that the value may become known.
	case tempUnknown = "temp-unknown"
	
	/// The workflow didn't lead to this value being known.
	case notAsked = "not-asked"
	
	/// The source was asked but declined to answer.
	case askedDeclined = "asked-declined"
	
	/// The information is not available due to security, privacy or related reasons.
	case masked = "masked"
	
	/// There is no proper value for this element (e.g. last menstrual period for a male).
	case notApplicable = "not-applicable"
	
	/// The source system wasn't capable of supporting this element.
	case unsupported = "unsupported"
	
	/// The content of the data is represented in the resource narrative.
	case asText = "as-text"
	
	/// Some system or workflow process error means that the information is not available.
	case error = "error"
	
	/// The numeric value is undefined or unrepresentable due to a floating point processing error.
	case notANumber = "not-a-number"
	
	/// The numeric value is excessively low and unrepresentable due to a floating point processing error.
	case negativeInfinity = "negative-infinity"
	
	/// The numeric value is excessively high and unrepresentable due to a floating point processing error.
	case positiveInfinity = "positive-infinity"
	
	/// The value is not available because the observation procedure (test, etc.) was not performed.
	case notPerformed = "not-performed"
	
	/// The value is not permitted in this context (e.g. due to profiles, or the base data types).
	case notPermitted = "not-permitted"
}


/**
A version specific list of the data types defined by the FHIR specification for use as an element  type (any of the FHIR
defined data types).

URL: http://hl7.org/fhir/data-types
*/
public enum DataType: String {
	
	/// An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This
	/// data type may be used to convey addresses for use in delivering mail as well as for visiting locations which
	/// might not be valid for mail delivery.  There are a variety of postal address formats defined around the world.
	case address = "Address"
	
	/// A duration of time during which an organism (or a process) has existed.
	case age = "Age"
	
	/// A  text note which also  contains information about who made the statement and when.
	case annotation = "Annotation"
	
	/// For referring to data content defined in other formats.
	case attachment = "Attachment"
	
	/// Base definition for all elements that are defined inside a resource - but not those in a data type.
	case backboneElement = "BackboneElement"
	
	/// A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
	case codeableConcept = "CodeableConcept"
	
	/// A reference to a code defined by a terminology system.
	case coding = "Coding"
	
	/// Specifies contact information for a person or organization.
	case contactDetail = "ContactDetail"
	
	/// Details for all kinds of technology mediated contact points for a person or organization, including telephone,
	/// email, etc.
	case contactPoint = "ContactPoint"
	
	/// A contributor to the content of a knowledge asset, including authors, editors, reviewers, and endorsers.
	case contributor = "Contributor"
	
	/// A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts
	/// that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
	case count = "Count"
	
	/// Describes a required data item for evaluation in terms of the type of data, and optional code or date-based
	/// filters of the data.
	case dataRequirement = "DataRequirement"
	
	/// A length - a value with a unit that is a physical distance.
	case distance = "Distance"
	
	/// Indicates how the medication is/was taken or should be taken by the patient.
	case dosage = "Dosage"
	
	/// A length of time.
	case duration = "Duration"
	
	/// Base definition for all elements in a resource.
	case element = "Element"
	
	/// Captures constraints on each element within the resource, profile, or extension.
	case elementDefinition = "ElementDefinition"
	
	/// A expression that is evaluated in a specified context and returns a value. The context of use of the expression
	/// must specify the context in which the expression is evaluated, and how the result of the expression is used.
	case expression = "Expression"
	
	/// Optional Extension Element - found in all resources.
	case extension_fhir = "Extension"
	
	/// A human's name with the ability to identify parts and usage.
	case humanName = "HumanName"
	
	/// An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business
	/// identifiers.
	case identifier = "Identifier"
	
	/// The marketing status describes the date when a medicinal product is actually put on the market or the date as of
	/// which it is no longer available.
	case marketingStatus = "MarketingStatus"
	
	/// The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes
	/// to the content might not always be associated with version changes to the resource.
	case meta = "Meta"
	
	/// An amount of economic utility in some recognized currency.
	case money = "Money"
	
	/// moneyQuantity
	case moneyQuantity = "MoneyQuantity"
	
	/// A human-readable summary of the resource conveying the essential clinical and business information for the
	/// resource.
	case narrative = "Narrative"
	
	/// The parameters to the module. This collection specifies both the input and output parameters. Input parameters
	/// are provided by the caller as part of the $evaluate operation. Output parameters are included in the
	/// GuidanceResponse.
	case parameterDefinition = "ParameterDefinition"
	
	/// A time period defined by a start and end date and optionally time.
	case period = "Period"
	
	/// A populatioof people with some set of grouping criteria.
	case population = "Population"
	
	/// The marketing status describes the date when a medicinal product is actually put on the market or the date as of
	/// which it is no longer available.
	case prodCharacteristic = "ProdCharacteristic"
	
	/// The shelf-life and storage information for a medicinal product item or container can be described using this
	/// class.
	case productShelfLife = "ProductShelfLife"
	
	/// A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts
	/// that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
	case quantity = "Quantity"
	
	/// A set of ordered Quantities defined by a low and high limit.
	case range = "Range"
	
	/// A relationship of two Quantity values - expressed as a numerator and a denominator.
	case ratio = "Ratio"
	
	/// A reference from one resource to another.
	case reference = "Reference"
	
	/// Related artifacts such as additional documentation, justification, or bibliographic references.
	case relatedArtifact = "RelatedArtifact"
	
	/// A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in
	/// the data.
	case sampledData = "SampledData"
	
	/// A signature along with supporting context. The signature may be a digital signature that is cryptographic in
	/// nature, or some other signature acceptable to the domain. This other signature may be as simple as a graphical
	/// image representing a hand-written signature, or a signature ceremony Different signature approaches have
	/// different utilities.
	case signature = "Signature"
	
	/// simpleQuantity
	case simpleQuantity = "SimpleQuantity"
	
	/// Chemical substances are a single substance type whose primary defining element is the molecular structure.
	/// Chemical substances shall be defined on the basis of their complete covalent molecular structure; the presence
	/// of a salt (counter-ion) and/or solvates (water, alcohols) is also captured. Purity, grade, physical form or
	/// particle size are not taken into account in the definition of a chemical substance or in the assignment of a
	/// Substance ID.
	case substanceAmount = "SubstanceAmount"
	
	/// Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned,
	/// expected or requested to occur. The most common usage is in dosage instructions for medications. They are also
	/// used when planning care of various kinds, and may be used for reporting the schedule to which past regular
	/// activities were carried out.
	case timing = "Timing"
	
	/// A description of a triggering event. Triggering events can be named events, data events, or periodic, as
	/// determined by the type element.
	case triggerDefinition = "TriggerDefinition"
	
	/// Specifies clinical/business/etc. metadata that can be used to retrieve, index and/or categorize an artifact.
	/// This metadata can either be specific to the applicable population (e.g., age category, DRG) or the specific
	/// context of care (e.g., venue, care setting, provider of care).
	case usageContext = "UsageContext"
	
	/// A stream of bytes
	case base64Binary = "base64Binary"
	
	/// Value of "true" or "false"
	case boolean = "boolean"
	
	/// A URI that is a reference to a canonical URL on a FHIR resource
	case canonical = "canonical"
	
	/// A string which has at least one character and no leading or trailing whitespace and where there is no whitespace
	/// other than single spaces in the contents
	case code = "code"
	
	/// A date or partial date (e.g. just year or year + month). There is no time zone. The format is a union of the
	/// schema types gYear, gYearMonth and date.  Dates SHALL be valid dates.
	case date = "date"
	
	/// A date, date-time or partial date (e.g. just year or year + month).  If hours and minutes are specified, a time
	/// zone SHALL be populated. The format is a union of the schema types gYear, gYearMonth, date and dateTime. Seconds
	/// must be provided due to schema type constraints but may be zero-filled and may be ignored.                 Dates
	/// SHALL be valid dates.
	case dateTime = "dateTime"
	
	/// A rational number with implicit precision
	case decimal = "decimal"
	
	/// Any combination of letters, numerals, "-" and ".", with a length limit of 64 characters.  (This might be an
	/// integer, an unprefixed OID, UUID or any other identifier pattern that meets these constraints.)  Ids are case-
	/// insensitive.
	case id = "id"
	
	/// An instant in time - known at least to the second
	case instant = "instant"
	
	/// A whole number
	case integer = "integer"
	
	/// A string that may contain Github Flavored Markdown syntax for optional processing by a mark down presentation
	/// engine
	case markdown = "markdown"
	
	/// An OID represented as a URI
	case oid = "oid"
	
	/// An integer with a value that is positive (e.g. >0)
	case positiveInt = "positiveInt"
	
	/// A sequence of Unicode characters
	case string = "string"
	
	/// A time during the day, with no date specified
	case time = "time"
	
	/// An integer with a value that is not negative (e.g. >= 0)
	case unsignedInt = "unsignedInt"
	
	/// String of characters used to identify a name or a resource
	case uri = "uri"
	
	/// A URI that is a literal reference
	case url = "url"
	
	/// A UUID, represented as a URI
	case uuid = "uuid"
	
	/// XHTML format, as defined by W3C, but restricted usage (mainly, no active content)
	case xhtml = "xhtml"
}


/**
The days of the week.

URL: http://hl7.org/fhir/days-of-week
ValueSet: http://hl7.org/fhir/ValueSet/days-of-week
*/
public enum DaysOfWeek: String {
	
	/// Monday.
	case mon = "mon"
	
	/// Tuesday.
	case tue = "tue"
	
	/// Wednesday.
	case wed = "wed"
	
	/// Thursday.
	case thu = "thu"
	
	/// Friday.
	case fri = "fri"
	
	/// Saturday.
	case sat = "sat"
	
	/// Sunday.
	case sun = "sun"
}


/**
A list of all the definition resource types defined in this version of the FHIR specification.

URL: http://hl7.org/fhir/definition-resource-types
ValueSet: http://hl7.org/fhir/ValueSet/definition-resource-types
*/
public enum DefinitionResourceType: String {
	
	/// This resource allows for the definition of some activity to be performed, independent of a particular patient,
	/// practitioner, or other performance context.
	case activityDefinition = "ActivityDefinition"
	
	/// The EventDefinition resource provides a reusable description of when a particular event can occur.
	case eventDefinition = "EventDefinition"
	
	/// The Measure resource provides the definition of a quality measure.
	case measure = "Measure"
	
	/// A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
	/// interaction).
	case operationDefinition = "OperationDefinition"
	
	/// This resource allows for the definition of various types of plans as a sharable, consumable, and executable
	/// artifact. The resource is general enough to support the description of a broad range of clinical artifacts such
	/// as clinical decision support rules, order sets and protocols.
	case planDefinition = "PlanDefinition"
	
	/// A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide
	/// detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data
	/// collection.
	case questionnaire = "Questionnaire"
}


/**
Codes identifying the lifecycle stage of a definition.

URL: http://terminology.hl7.org/CodeSystem/definition-status
ValueSet: http://hl7.org/fhir/ValueSet/definition-status
*/
public enum DefinitionStatus: String {
	
	/// The definition is in the design stage and is not yet considered to be "ready for use".
	case draft = "draft"
	
	/// The definition is considered ready for use.
	case active = "active"
	
	/// The definition should no longer be used.
	case withdrawn = "withdrawn"
	
	/// The authoring/source system does not know which of the status values currently applies for this resource.  Note:
	/// This concept is not to be used for "other" - one of the listed statuses is presumed to apply,  but the
	/// authoring/source system does not know which.
	case unknown = "unknown"
}


/**
High-level categorization of the definition, used for searching, sorting, and filtering.

URL: http://terminology.hl7.org/CodeSystem/definition-topic
ValueSet: http://hl7.org/fhir/ValueSet/definition-topic
*/
public enum DefinitionTopic: String {
	
	/// The definition is related to treatment of the patient.
	case treatment = "treatment"
	
	/// The definition is related to education of the patient.
	case education = "education"
	
	/// The definition is related to assessment of the patient.
	case assessment = "assessment"
}


/**
Structure Definition Use Codes / Keywords

URL: http://terminology.hl7.org/CodeSystem/definition-use
ValueSet: http://hl7.org/fhir/ValueSet/definition-use
*/
public enum DefinitionUseCodes: String {
	
	/// This structure is defined as part of the base FHIR Specification
	case fhirStructure = "fhir-structure"
	
	/// This structure is intended to be treated like a FHIR resource (e.g. on the FHIR API)
	case customResource = "custom-resource"
	
	/// This structure captures an analysis of a domain
	case dam = "dam"
	
	/// This structure represents and existing structure (e.g. CDA, HL7 v2)
	case wireFormat = "wire-format"
	
	/// This structure captures an analysis of a domain
	case archetype = "archetype"
	
	/// This structure is a template (n.b: 'template' has many meanings)
	case template = "template"
}


/**
Indicates the potential degree of impact of the identified issue on the patient.

URL: http://hl7.org/fhir/detectedissue-severity
ValueSet: http://hl7.org/fhir/ValueSet/detectedissue-severity
*/
public enum DetectedIssueSeverity: String {
	
	/// Indicates the issue may be life-threatening or has the potential to cause permanent injury.
	case high = "high"
	
	/// Indicates the issue may result in noticeable adverse consequences but is unlikely to be life-threatening or
	/// cause permanent injury.
	case moderate = "moderate"
	
	/// Indicates the issue may result in some adverse consequences but is unlikely to substantially affect the
	/// situation of the subject.
	case low = "low"
}


/**
Codes identifying groupings of parameters; e.g. Cardiovascular.

URL: http://terminology.hl7.org/CodeSystem/parameter-group
ValueSet: http://hl7.org/fhir/ValueSet/parameter-group
*/
public enum DeviceDefinitionParameterGroup: String {
	
	/// Haemodynamic Parameter Group - MDC_PGRP_HEMO.
	case haemodynamic = "haemodynamic"
	
	/// ECG Parameter Group - MDC_PGRP_ECG.
	case ecg = "ecg"
	
	/// Respiratory Parameter Group - MDC_PGRP_RESP.
	case respiratory = "respiratory"
	
	/// Ventilation Parameter Group - MDC_PGRP_VENT.
	case ventilation = "ventilation"
	
	/// Neurological Parameter Group - MDC_PGRP_NEURO.
	case neurological = "neurological"
	
	/// Drug Delivery Parameter Group - MDC_PGRP_DRUG.
	case drugDelivery = "drug-delivery"
	
	/// Fluid Chemistry Parameter Group - MDC_PGRP_FLUID.
	case fluidChemistry = "fluid-chemistry"
	
	/// Blood Chemistry Parameter Group - MDC_PGRP_BLOOD_CHEM.
	case bloodChemistry = "blood-chemistry"
	
	/// Miscellaneous Parameter Group - MDC_PGRP_MISC.
	case miscellaneous = "miscellaneous"
}


/**
Codes representing the current status of the device - on, off, suspended, etc.

URL: http://hl7.org/fhir/device-definition-status
ValueSet: http://hl7.org/fhir/ValueSet/device-definition-status
*/
public enum DeviceDefinitionStatusCodes: String {
	
	/// The device is available for use.  Note: For *implanted devices*  this means that the device is implanted in the
	/// patient.
	case active = "active"
	
	/// The device is no longer available for use (e.g. lost, expired, damaged).  Note: For *implanted devices*  this
	/// means that the device has been removed from the patient.
	case inactive = "inactive"
	
	/// The device was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// The status of the device has not been determined.
	case unknown = "unknown"
}


/**
Describes the state of a metric calibration.

URL: http://hl7.org/fhir/metric-calibration-state
ValueSet: http://hl7.org/fhir/ValueSet/metric-calibration-state
*/
public enum DeviceMetricCalibrationState: String {
	
	/// The metric has not been calibrated.
	case notCalibrated = "not-calibrated"
	
	/// The metric needs to be calibrated.
	case calibrationRequired = "calibration-required"
	
	/// The metric has been calibrated.
	case calibrated = "calibrated"
	
	/// The state of calibration of this metric is unspecified.
	case unspecified = "unspecified"
}


/**
Describes the type of a metric calibration.

URL: http://hl7.org/fhir/metric-calibration-type
ValueSet: http://hl7.org/fhir/ValueSet/metric-calibration-type
*/
public enum DeviceMetricCalibrationType: String {
	
	/// Metric calibration method has not been identified.
	case unspecified = "unspecified"
	
	/// Offset metric calibration method.
	case offset = "offset"
	
	/// Gain metric calibration method.
	case gain = "gain"
	
	/// Two-point metric calibration method.
	case twoPoint = "two-point"
}


/**
Describes the category of the metric.

URL: http://hl7.org/fhir/metric-category
ValueSet: http://hl7.org/fhir/ValueSet/metric-category
*/
public enum DeviceMetricCategory: String {
	
	/// DeviceObservations generated for this DeviceMetric are measured.
	case measurement = "measurement"
	
	/// DeviceObservations generated for this DeviceMetric is a setting that will influence the behavior of the Device.
	case setting = "setting"
	
	/// DeviceObservations generated for this DeviceMetric are calculated.
	case calculation = "calculation"
	
	/// The category of this DeviceMetric is unspecified.
	case unspecified = "unspecified"
}


/**
Describes the typical color of representation.

URL: http://hl7.org/fhir/metric-color
ValueSet: http://hl7.org/fhir/ValueSet/metric-color
*/
public enum DeviceMetricColor: String {
	
	/// Color for representation - black.
	case black = "black"
	
	/// Color for representation - red.
	case red = "red"
	
	/// Color for representation - green.
	case green = "green"
	
	/// Color for representation - yellow.
	case yellow = "yellow"
	
	/// Color for representation - blue.
	case blue = "blue"
	
	/// Color for representation - magenta.
	case magenta = "magenta"
	
	/// Color for representation - cyan.
	case cyan = "cyan"
	
	/// Color for representation - white.
	case white = "white"
}


/**
Describes the operational status of the DeviceMetric.

URL: http://hl7.org/fhir/metric-operational-status
ValueSet: http://hl7.org/fhir/ValueSet/metric-operational-status
*/
public enum DeviceMetricOperationalStatus: String {
	
	/// The DeviceMetric is operating and will generate DeviceObservations.
	case on = "on"
	
	/// The DeviceMetric is not operating.
	case off = "off"
	
	/// The DeviceMetric is operating, but will not generate any DeviceObservations.
	case standby = "standby"
	
	/// The DeviceMetric was entered in error.
	case enteredInError = "entered-in-error"
}


/**
The type of name the device is referred by.

URL: http://hl7.org/fhir/device-nametype
ValueSet: http://hl7.org/fhir/ValueSet/device-nametype
*/
public enum DeviceNameType: String {
	
	/// UDI Label name.
	case udiLabelName = "udi-label-name"
	
	/// User Friendly name.
	case userFriendlyName = "user-friendly-name"
	
	/// Patient Reported name.
	case patientReportedName = "patient-reported-name"
	
	/// Manufacturer name.
	case manufacturerName = "manufacturer-name"
	
	/// Model name.
	case modelName = "model-name"
	
	/// other.
	case other = "other"
}


/**
A coded concept indicating the current status of the Device Usage.

URL: http://hl7.org/fhir/device-statement-status
ValueSet: http://hl7.org/fhir/ValueSet/device-statement-status
*/
public enum DeviceUseStatementStatus: String {
	
	/// The device is still being used.
	case active = "active"
	
	/// The device is no longer being used.
	case completed = "completed"
	
	/// The statement was recorded incorrectly.
	case enteredInError = "entered-in-error"
	
	/// The device may be used at some time in the future.
	case intended = "intended"
	
	/// Actions implied by the statement have been permanently halted, before all of them occurred.
	case stopped = "stopped"
	
	/// Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be
	/// called "suspended".
	case onHold = "on-hold"
}


/**
This value set defines a set of codes that can be used to express the role of a diagnosis on the Encounter or
EpisodeOfCare record.

URL: http://terminology.hl7.org/CodeSystem/diagnosis-role
ValueSet: http://hl7.org/fhir/ValueSet/diagnosis-role
*/
public enum DiagnosisRole: String {
	
	/// AD
	case AD = "AD"
	
	/// DD
	case DD = "DD"
	
	/// CC
	case CC = "CC"
	
	/// CM
	case CM = "CM"
	
	/// preOp
	case preOp = "pre-op"
	
	/// postOp
	case postOp = "post-op"
	
	/// billing
	case billing = "billing"
}


/**
The status of the diagnostic report.

URL: http://hl7.org/fhir/diagnostic-report-status
ValueSet: http://hl7.org/fhir/ValueSet/diagnostic-report-status
*/
public enum DiagnosticReportStatus: String {
	
	/// The existence of the report is registered, but there is nothing yet available.
	case registered = "registered"
	
	/// This is a partial (e.g. initial, interim or preliminary) report: data in the report may be incomplete or
	/// unverified.
	case partial = "partial"
	
	/// Verified early results are available, but not all  results are final.
	case preliminary = "preliminary"
	
	/// The report is complete and verified by an authorized person.
	case final = "final"
	
	/// Subsequent to being final, the report has been modified.  This includes any change in the results, diagnosis,
	/// narrative text, or other content of a report that has been issued.
	case amended = "amended"
	
	/// Subsequent to being final, the report has been modified  to correct an error in the report or referenced
	/// results.
	case corrected = "corrected"
	
	/// Subsequent to being final, the report has been modified by adding new content. The existing content is
	/// unchanged.
	case appended = "appended"
	
	/// The report is unavailable because the measurement was not started or not completed (also sometimes called
	/// "aborted").
	case cancelled = "cancelled"
	
	/// The report has been withdrawn following a previous final release.  This electronic record should never have
	/// existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred,
	/// the status should be "cancelled" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
	
	/// The authoring/source system does not know which of the status values currently applies for this observation.
	/// Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the
	/// authoring/source system does not know which.
	case unknown = "unknown"
}


/**
This value set defines a set of codes that can be used to indicate dietary preferences or restrictions a patient may
have.

URL: http://terminology.hl7.org/CodeSystem/diet
ValueSet: http://hl7.org/fhir/ValueSet/encounter-diet
*/
public enum Diet: String {
	
	/// Food without meat, poultry or seafood.
	case vegetarian = "vegetarian"
	
	/// Excludes dairy products.
	case dairyFree = "dairy-free"
	
	/// Excludes ingredients containing nuts.
	case nutFree = "nut-free"
	
	/// Excludes ingredients containing gluten.
	case glutenFree = "gluten-free"
	
	/// Food without meat, poultry, seafood, eggs, dairy products and other animal-derived substances.
	case vegan = "vegan"
	
	/// Foods that conform to Islamic law.
	case halal = "halal"
	
	/// Foods that conform to Jewish dietary law.
	case kosher = "kosher"
}


/**
This value set defines a set of codes that can be used to where the patient left the hospital.

URL: http://terminology.hl7.org/CodeSystem/discharge-disposition
ValueSet: http://hl7.org/fhir/ValueSet/encounter-discharge-disposition
*/
public enum DischargeDisposition: String {
	
	/// The patient was dicharged and has indicated that they are going to return home afterwards.
	case home = "home"
	
	/// The patient was discharged and has indicated that they are going to return home afterwards, but not the
	/// patient's home - e.g. a family member's home.
	case altHome = "alt-home"
	
	/// The patient was transferred to another healthcare facility.
	case otherHcf = "other-hcf"
	
	/// The patient has been discharged into palliative care.
	case hosp = "hosp"
	
	/// The patient has been discharged into long-term care where is likely to be monitored through an ongoing episode-
	/// of-care.
	case long = "long"
	
	/// The patient self discharged against medical advice.
	case aadvice = "aadvice"
	
	/// The patient has deceased during this encounter.
	case exp = "exp"
	
	/// The patient has been transferred to a psychiatric facility.
	case psy = "psy"
	
	/// The patient was discharged and is to receive post acute care rehabilitation services.
	case rehab = "rehab"
	
	/// The patient has been discharged to a skilled nursing facility for the patient to receive additional care.
	case snf = "snf"
	
	/// The discharge disposition has not otherwise defined.
	case oth = "oth"
}


/**
How an element value is interpreted when discrimination is evaluated.

URL: http://hl7.org/fhir/discriminator-type
ValueSet: http://hl7.org/fhir/ValueSet/discriminator-type
*/
public enum DiscriminatorType: String {
	
	/// The slices have different values in the nominated element.
	case value = "value"
	
	/// The slices are differentiated by the presence or absence of the nominated element.
	case exists = "exists"
	
	/// The slices have different values in the nominated element, as determined by testing them against the applicable
	/// ElementDefinition.pattern[x].
	case pattern = "pattern"
	
	/// The slices are differentiated by type of the nominated element.
	case type = "type"
	
	/// The slices are differentiated by conformance of the nominated element to a specified profile. Note that if the
	/// path specifies .resolve() then the profile is the target profile on the reference. In this case, validation by
	/// the possible profiles is required to differentiate the slices.
	case profile = "profile"
}


/**
Whether the application produces or consumes documents.

URL: http://hl7.org/fhir/document-mode
ValueSet: http://hl7.org/fhir/ValueSet/document-mode
*/
public enum DocumentMode: String {
	
	/// The application produces documents of the specified type.
	case producer = "producer"
	
	/// The application consumes documents of the specified type.
	case consumer = "consumer"
}


/**
The status of the document reference.

URL: http://hl7.org/fhir/document-reference-status
ValueSet: http://hl7.org/fhir/ValueSet/document-reference-status
*/
public enum DocumentReferenceStatus: String {
	
	/// This is the current reference for this document.
	case current = "current"
	
	/// This reference has been superseded by another reference.
	case superseded = "superseded"
	
	/// This reference was created in error.
	case enteredInError = "entered-in-error"
}


/**
The type of relationship between documents.

URL: http://hl7.org/fhir/document-relationship-type
ValueSet: http://hl7.org/fhir/ValueSet/document-relationship-type
*/
public enum DocumentRelationshipType: String {
	
	/// This document logically replaces or supersedes the target document.
	case replaces = "replaces"
	
	/// This document was generated by transforming the target document (e.g. format or language conversion).
	case transforms = "transforms"
	
	/// This document is a signature of the target document.
	case signs = "signs"
	
	/// This document adds additional information to the target document.
	case appends = "appends"
}


/**
The kind of dose or rate specified.

URL: http://terminology.hl7.org/CodeSystem/dose-rate-type
ValueSet: http://hl7.org/fhir/ValueSet/dose-rate-type
*/
public enum DoseAndRateType: String {
	
	/// The dose specified is calculated by the prescriber or the system.
	case calculated = "calculated"
	
	/// The dose specified is as ordered by the prescriber.
	case ordered = "ordered"
}


/**
Whether the effect estimate is an absolute effect estimate (absolute difference) or a relative effect estimate (relative
difference), and the specific type of effect estimate (eg relative risk or median difference).

URL: http://terminology.hl7.org/CodeSystem/effect-estimate-type
ValueSet: http://hl7.org/fhir/ValueSet/effect-estimate-type
*/
public enum EffectEstimateType: String {
	
	/// relative risk (a type of relative effect estimate).
	case relativeRR = "relative-RR"
	
	/// odds ratio (a type of relative effect estimate).
	case relativeOR = "relative-OR"
	
	/// hazard ratio (a type of relative effect estimate).
	case relativeHR = "relative-HR"
	
	/// absolute risk difference (a type of absolute effect estimate).
	case absoluteARD = "absolute-ARD"
	
	/// mean difference (a type of absolute effect estimate).
	case absoluteMeanDiff = "absolute-MeanDiff"
	
	/// standardized mean difference (a type of absolute effect estimate).
	case absoluteSMD = "absolute-SMD"
	
	/// median difference (a type of absolute effect estimate).
	case absoluteMedianDiff = "absolute-MedianDiff"
}


/**
A code specifying the types of information being requested.

URL: http://hl7.org/fhir/eligibilityrequest-purpose
ValueSet: http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose
*/
public enum EligibilityRequestPurpose: String {
	
	/// The prior authorization requirements for the listed, or discovered if specified, converages for the categories
	/// of service and/or specifed biling codes are requested.
	case authRequirements = "auth-requirements"
	
	/// The plan benefits and optionally benefits consumed  for the listed, or discovered if specified, converages are
	/// requested.
	case benefits = "benefits"
	
	/// The insurer is requested to report on any coverages which they are aware of in addition to any specifed.
	case discovery = "discovery"
	
	/// A check that the specified coverages are in-force is requested.
	case validation = "validation"
}


/**
A code specifying the types of information being requested.

URL: http://hl7.org/fhir/eligibilityresponse-purpose
ValueSet: http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose
*/
public enum EligibilityResponsePurpose: String {
	
	/// The prior authorization requirements for the listed, or discovered if specified, converages for the categories
	/// of service and/or specifed biling codes are requested.
	case authRequirements = "auth-requirements"
	
	/// The plan benefits and optionally benefits consumed  for the listed, or discovered if specified, converages are
	/// requested.
	case benefits = "benefits"
	
	/// The insurer is requested to report on any coverages which they are aware of in addition to any specifed.
	case discovery = "discovery"
	
	/// A check that the specified coverages are in-force is requested.
	case validation = "validation"
}


/**
Controls how multiple enableWhen values are interpreted -  whether all or any must be true.

URL: http://hl7.org/fhir/questionnaire-enable-behavior
ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior
*/
public enum EnableWhenBehavior: String {
	
	/// Enable the question when all the enableWhen criteria are satisfied.
	case all = "all"
	
	/// Enable the question when any of the enableWhen criteria are satisfied.
	case any = "any"
}


/**
The status of the location.

URL: http://hl7.org/fhir/encounter-location-status
ValueSet: http://hl7.org/fhir/ValueSet/encounter-location-status
*/
public enum EncounterLocationStatus: String {
	
	/// The patient is planned to be moved to this location at some point in the future.
	case planned = "planned"
	
	/// The patient is currently at this location, or was between the period specified.
	/// 
	/// A system may update these records when the patient leaves the location to either reserved, or completed.
	case active = "active"
	
	/// This location is held empty for this patient.
	case reserved = "reserved"
	
	/// The patient was at this location during the period specified.
	/// 
	/// Not to be used when the patient is currently at the location.
	case completed = "completed"
}


/**
Current state of the encounter.

URL: http://hl7.org/fhir/encounter-status
ValueSet: http://hl7.org/fhir/ValueSet/encounter-status
*/
public enum EncounterStatus: String {
	
	/// The Encounter has not yet started.
	case planned = "planned"
	
	/// The Patient is present for the encounter, however is not currently meeting with a practitioner.
	case arrived = "arrived"
	
	/// The patient has been assessed for the priority of their treatment based on the severity of their condition.
	case triaged = "triaged"
	
	/// The Encounter has begun and the patient is present / the practitioner and the patient are meeting.
	case inProgress = "in-progress"
	
	/// The Encounter has begun, but the patient is temporarily on leave.
	case onleave = "onleave"
	
	/// The Encounter has ended.
	case finished = "finished"
	
	/// The Encounter has ended before it has begun.
	case cancelled = "cancelled"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// The encounter status is unknown. Note that "unknown" is a value of last resort and every attempt should be made
	/// to provide a meaningful value other than "unknown".
	case unknown = "unknown"
}


/**
This example value set defines a set of codes that can be used to indicate the type of encounter: a specific code
indicating type of service provided.

URL: http://terminology.hl7.org/CodeSystem/encounter-type
ValueSet: http://hl7.org/fhir/ValueSet/encounter-type
*/
public enum EncounterType: String {
	
	/// ADMS
	case ADMS = "ADMS"
	
	/// bDBMClin
	case bDBMClin = "BD/BM-clin"
	
	/// CCS60
	case CCS60 = "CCS60"
	
	/// OKI
	case OKI = "OKI"
}


/**
This is an example value set defined by the FHIR project, that could be used to represent possible connection type
profile values.

URL: http://terminology.hl7.org/CodeSystem/endpoint-connection-type
ValueSet: http://hl7.org/fhir/ValueSet/endpoint-connection-type
*/
public enum EndpointConnectionType: String {
	
	/// IHE Cross Community Patient Discovery Profile (XCPD) - http://wiki.ihe.net/index.php/Cross-
	/// Community_Patient_Discovery
	case iheXcpd = "ihe-xcpd"
	
	/// IHE Cross Community Access Profile (XCA) - http://wiki.ihe.net/index.php/Cross-Community_Access
	case iheXca = "ihe-xca"
	
	/// IHE Cross-Enterprise Document Reliable Exchange (XDR) - http://wiki.ihe.net/index.php/Cross-
	/// enterprise_Document_Reliable_Interchange
	case iheXdr = "ihe-xdr"
	
	/// IHE Cross-Enterprise Document Sharing (XDS) - http://wiki.ihe.net/index.php/Cross-Enterprise_Document_Sharing
	case iheXds = "ihe-xds"
	
	/// IHE Invoke Image Display (IID) - http://wiki.ihe.net/index.php/Invoke_Image_Display
	case iheIid = "ihe-iid"
	
	/// DICOMweb RESTful Image Retrieve - http://dicom.nema.org/medical/dicom/current/output/chtml/part18/sect_6.5.html
	case dicomWadoRs = "dicom-wado-rs"
	
	/// DICOMweb RESTful Image query - http://dicom.nema.org/medical/dicom/current/output/chtml/part18/sect_6.7.html
	case dicomQidoRs = "dicom-qido-rs"
	
	/// DICOMweb RESTful image sending and storage -
	/// http://dicom.nema.org/medical/dicom/current/output/chtml/part18/sect_6.6.html
	case dicomStowRs = "dicom-stow-rs"
	
	/// DICOMweb Image Retrieve - http://dicom.nema.org/dicom/2013/output/chtml/part18/sect_6.3.html
	case dicomWadoUri = "dicom-wado-uri"
	
	/// Interact with the server interface using FHIR's RESTful interface. For details on its version/capabilities you
	/// should connect the value in Endpoint.address and retrieve the FHIR CapabilityStatement.
	case hl7FhirRest = "hl7-fhir-rest"
	
	/// Use the servers FHIR Messaging interface. Details can be found on the messaging.html page in the FHIR
	/// Specification. The FHIR server's base address is specified in the Endpoint.address property.
	case hl7FhirMsg = "hl7-fhir-msg"
	
	/// HL7v2 messages over an LLP TCP connection
	case hl7v2Mllp = "hl7v2-mllp"
	
	/// Email delivery using a digital certificate to encrypt the content using the public key, receiver must have the
	/// private key to decrypt the content
	case secureEmail = "secure-email"
	
	/// Direct Project information - http://wiki.directproject.org/
	case directProject = "direct-project"
}


/**
This is an example value set defined by the FHIR project, that could be used to represent possible payload document
types.

URL: http://terminology.hl7.org/CodeSystem/endpoint-payload-type
*/
public enum EndpointPayloadType: String {
	
	/// Any payload type can be used with this endpoint, it is either a payload agnostic infrastructure (such as a
	/// storage repository), or some other type of endpoint where payload considerations are internally handled, and not
	/// available
	case any = "any"
	
	/// This endpoint does not require any content to be sent; simply connecting to the endpoint is enough notification.
	/// This can be used as a 'ping' to wakeup a service to retrieve content, which could be to ensure security
	/// considerations are correctly handled
	case none = "none"
}


/**
The status of the endpoint.

URL: http://hl7.org/fhir/endpoint-status
ValueSet: http://hl7.org/fhir/ValueSet/endpoint-status
*/
public enum EndpointStatus: String {
	
	/// This endpoint is expected to be active and can be used.
	case active = "active"
	
	/// This endpoint is temporarily unavailable.
	case suspended = "suspended"
	
	/// This endpoint has exceeded connectivity thresholds and is considered in an error state and should no longer be
	/// attempted to connect to until corrective action is taken.
	case error = "error"
	
	/// This endpoint is no longer to be used.
	case off = "off"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// This endpoint is not intended for production usage.
	case test = "test"
}


/**
EnteralFormulaAdditiveType: Codes for the type of modular component such as protein, carbohydrate or fiber to be
provided in addition to or mixed with the base formula. This value set is provided as a suggestive example.

URL: http://terminology.hl7.org/CodeSystem/entformula-additive
ValueSet: http://hl7.org/fhir/ValueSet/entformula-additive
*/
public enum EnteralFormulaAdditiveTypeCode: String {
	
	/// Modular lipid enteral formula component
	case lipid = "lipid"
	
	/// Modular protein enteral formula component
	case protein = "protein"
	
	/// Modular carbohydrate enteral formula component
	case carbohydrate = "carbohydrate"
	
	/// Modular fiber enteral formula component
	case fiber = "fiber"
	
	/// Added water
	case water = "water"
}


/**
The status of the episode of care.

URL: http://hl7.org/fhir/episode-of-care-status
ValueSet: http://hl7.org/fhir/ValueSet/episode-of-care-status
*/
public enum EpisodeOfCareStatus: String {
	
	/// This episode of care is planned to start at the date specified in the period.start. During this status, an
	/// organization may perform assessments to determine if the patient is eligible to receive services, or be
	/// organizing to make resources available to provide care services.
	case planned = "planned"
	
	/// This episode has been placed on a waitlist, pending the episode being made active (or cancelled).
	case waitlist = "waitlist"
	
	/// This episode of care is current.
	case active = "active"
	
	/// This episode of care is on hold; the organization has limited responsibility for the patient (such as while on
	/// respite).
	case onhold = "onhold"
	
	/// This episode of care is finished and the organization is not expecting to be providing further care to the
	/// patient. Can also be known as "closed", "completed" or other similar terms.
	case finished = "finished"
	
	/// The episode of care was cancelled, or withdrawn from service, often selected during the planned stage as the
	/// patient may have gone elsewhere, or the circumstances have changed and the organization is unable to provide the
	/// care. It indicates that services terminated outside the planned/expected workflow.
	case cancelled = "cancelled"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
}


/**
This example value set defines a set of codes that can be used to express the usage type of an EpisodeOfCare record.

URL: http://terminology.hl7.org/CodeSystem/episodeofcare-type
ValueSet: http://hl7.org/fhir/ValueSet/episodeofcare-type
*/
public enum EpisodeOfCareType: String {
	
	/// hacc
	case hacc = "hacc"
	
	/// pac
	case pac = "pac"
	
	/// diab
	case diab = "diab"
	
	/// da
	case da = "da"
	
	/// cacp
	case cacp = "cacp"
}


/**
The mode of a message capability statement.

URL: http://hl7.org/fhir/event-capability-mode
ValueSet: http://hl7.org/fhir/ValueSet/event-capability-mode
*/
public enum EventCapabilityMode: String {
	
	/// The application sends requests and receives responses.
	case sender = "sender"
	
	/// The application receives requests and sends responses.
	case receiver = "receiver"
}


/**
A list of all the event resource types defined in this version of the FHIR specification.

URL: http://hl7.org/fhir/event-resource-types
ValueSet: http://hl7.org/fhir/ValueSet/event-resource-types
*/
public enum EventResourceType: String {
	
	/// Item containing charge code(s) associated with the provision of healthcare provider products.
	case chargeItem = "ChargeItem"
	
	/// Remittance resource.
	case claimResponse = "ClaimResponse"
	
	/// A clinical assessment performed when planning treatments and management strategies for a patient.
	case clinicalImpression = "ClinicalImpression"
	
	/// A record of information transmitted from a sender to a receiver.
	case communication = "Communication"
	
	/// A set of resources composed into a single coherent clinical statement with clinical attestation.
	case composition = "Composition"
	
	/// Detailed information about conditions, problems or diagnoses.
	case condition = "Condition"
	
	/// A healthcare consumer's policy choices to permits or denies recipients or roles to perform actions for specific
	/// purposes and periods of time.
	case consent = "Consent"
	
	/// Insurance or medical plan or a payment agreement.
	case coverage = "Coverage"
	
	/// Record of use of a device.
	case deviceUseStatement = "DeviceUseStatement"
	
	/// A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as
	/// formatted reports.
	case diagnosticReport = "DiagnosticReport"
	
	/// A list that defines a set of documents.
	case documentManifest = "DocumentManifest"
	
	/// A reference to a document.
	case documentReference = "DocumentReference"
	
	/// An interaction during which services are provided to the patient.
	case encounter = "Encounter"
	
	/// EnrollmentResponse resource.
	case enrollmentResponse = "EnrollmentResponse"
	
	/// An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the
	/// Organization assumes some level of responsibility.
	case episodeOfCare = "EpisodeOfCare"
	
	/// Explanation of Benefit resource.
	case explanationOfBenefit = "ExplanationOfBenefit"
	
	/// Information about patient's relatives, relevant for patient.
	case familyMemberHistory = "FamilyMemberHistory"
	
	/// The formal response to a guidance request.
	case guidanceResponse = "GuidanceResponse"
	
	/// A set of images produced in single study (one or more series of references images).
	case imagingStudy = "ImagingStudy"
	
	/// Immunization event information.
	case immunization = "Immunization"
	
	/// Results of a measure evaluation.
	case measureReport = "MeasureReport"
	
	/// A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided
	/// by direct reference.
	case media = "Media"
	
	/// Administration of medication to a patient.
	case medicationAdministration = "MedicationAdministration"
	
	/// Dispensing a medication to a named patient.
	case medicationDispense = "MedicationDispense"
	
	/// Record of medication being taken by a patient.
	case medicationStatement = "MedicationStatement"
	
	/// Measurements and simple assertions.
	case observation = "Observation"
	
	/// PaymentNotice request.
	case paymentNotice = "PaymentNotice"
	
	/// PaymentReconciliation resource.
	case paymentReconciliation = "PaymentReconciliation"
	
	/// An action that is being or was performed on a patient.
	case procedure = "Procedure"
	
	/// ProcessResponse resource.
	case processResponse = "ProcessResponse"
	
	/// A structured set of questions and their answers.
	case questionnaireResponse = "QuestionnaireResponse"
	
	/// Potential outcomes for a subject with likelihood.
	case riskAssessment = "RiskAssessment"
	
	/// Delivery of bulk Supplies.
	case supplyDelivery = "SupplyDelivery"
	
	/// A task to be performed.
	case task = "Task"
}


/**
Codes identifying the lifecycle stage of an event.

URL: http://hl7.org/fhir/event-status
ValueSet: http://hl7.org/fhir/ValueSet/event-status
*/
public enum EventStatus: String {
	
	/// The core event has not started yet, but some staging activities have begun (e.g. surgical suite preparation).
	/// Preparation stages may be tracked for billing purposes.
	case preparation = "preparation"
	
	/// The event is currently occurring.
	case inProgress = "in-progress"
	
	/// The event was terminated prior to any activity beyond preparation.  I.e. The 'main' activity has not yet begun.
	/// The boundary between preparatory and the 'main' activity is context-specific.
	case notDone = "not-done"
	
	/// The event has been temporarily stopped but is expected to resume in the future.
	case onHold = "on-hold"
	
	/// The event was terminated prior to the full completion of the intended activity but after at least some of the
	/// 'main' activity (beyond preparation) has occurred.
	case stopped = "stopped"
	
	/// The event has now concluded.
	case completed = "completed"
	
	/// This electronic record should never have existed, though it is possible that real-world decisions were based on
	/// it.  (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
	
	/// The authoring/source system does not know which of the status values currently applies for this event.  Note:
	/// This concept is not to be used for "other" - one of the listed statuses is presumed to apply,  but the
	/// authoring/source system does not know which.
	case unknown = "unknown"
}


/**
Real world event relating to the schedule.

URL: http://hl7.org/fhir/event-timing
*/
public enum EventTiming: String {
	
	/// Event occurs during the morning. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case MORN = "MORN"
	
	/// Event occurs during the early morning. The exact time is unspecified and established by institution convention
	/// or patient interpretation.
	case mORNEarly = "MORN.early"
	
	/// Event occurs during the late morning. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case mORNLate = "MORN.late"
	
	/// Event occurs around 12:00pm. The exact time is unspecified and established by institution convention or patient
	/// interpretation.
	case NOON = "NOON"
	
	/// Event occurs during the afternoon. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case AFT = "AFT"
	
	/// Event occurs during the early afternoon. The exact time is unspecified and established by institution convention
	/// or patient interpretation.
	case aFTEarly = "AFT.early"
	
	/// Event occurs during the late afternoon. The exact time is unspecified and established by institution convention
	/// or patient interpretation.
	case aFTLate = "AFT.late"
	
	/// Event occurs during the evening. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case EVE = "EVE"
	
	/// Event occurs during the early evening. The exact time is unspecified and established by institution convention
	/// or patient interpretation.
	case eVEEarly = "EVE.early"
	
	/// Event occurs during the late evening. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case eVELate = "EVE.late"
	
	/// Event occurs during the night. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case NIGHT = "NIGHT"
	
	/// Event occurs [offset] after subject goes to sleep. The exact time is unspecified and established by institution
	/// convention or patient interpretation.
	case PHS = "PHS"
}


/**
The possible types of variables for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).

URL: http://hl7.org/fhir/variable-type
ValueSet: http://hl7.org/fhir/ValueSet/variable-type
*/
public enum EvidenceVariableType: String {
	
	/// The variable is dichotomous, such as present or absent.
	case dichotomous = "dichotomous"
	
	/// The variable is a continuous result such as a quantity.
	case continuous = "continuous"
	
	/// The variable is described narratively rather than quantitatively.
	case descriptive = "descriptive"
}


/**
Used for results by exposure in variant states such as low-risk, medium-risk and high-risk states.

URL: http://terminology.hl7.org/CodeSystem/evidence-variant-state
ValueSet: http://hl7.org/fhir/ValueSet/evidence-variant-state
*/
public enum EvidenceVariantState: String {
	
	/// low risk estimate.
	case lowRisk = "low-risk"
	
	/// medium risk estimate.
	case mediumRisk = "medium-risk"
	
	/// high risk estimate.
	case highRisk = "high-risk"
}


/**
This value set includes sample Claim SubType codes which are used to distinguish the claim types for example within type
institutional there may be subtypes for emergency services, bed stay and transportation.

URL: http://terminology.hl7.org/CodeSystem/ex-claimsubtype
ValueSet: http://hl7.org/fhir/ValueSet/claim-subtype
*/
public enum ExampleClaimSubTypeCodes: String {
	
	/// A claim for Orthodontic Services.
	case ortho = "ortho"
	
	/// A claim for emergency services.
	case emergency = "emergency"
}


/**
This value set includes Example Coverage Financial Exception Codes.

URL: http://terminology.hl7.org/CodeSystem/ex-coverage-financial-exception
ValueSet: http://hl7.org/fhir/ValueSet/coverage-financial-exception
*/
public enum ExampleCoverageFinancialExceptionCodes: String {
	
	/// Retired persons have all copays and deductibles reduced.
	case retired = "retired"
	
	/// Children in the foster care have all copays and deductibles waived.
	case foster = "foster"
}


/**
This value set includes example Diagnosis on Admission codes.

URL: http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission
ValueSet: http://hl7.org/fhir/ValueSet/ex-diagnosis-on-admission
*/
public enum ExampleDiagnosisOnAdmissionCodes: String {
	
	/// Diagnosis was present at time of inpatient admission.
	case Y = "y"
	
	/// Diagnosis was not present at time of inpatient admission.
	case N = "n"
	
	/// Documentation insufficient to determine if condition was present at the time of inpatient admission.
	case U = "u"
	
	/// Clinically undetermined. Provider unable to clinically determine whether the condition was present at the time
	/// of inpatient admission.
	case W = "w"
}


/**
This value set includes example Diagnosis Type codes.

URL: http://terminology.hl7.org/CodeSystem/ex-diagnosistype
ValueSet: http://hl7.org/fhir/ValueSet/ex-diagnosistype
*/
public enum ExampleDiagnosisTypeCodes: String {
	
	/// The diagnosis given as the reason why the patient was admitted to the hospital.
	case admitting = "admitting"
	
	/// A diagnosis made on the basis of medical signs and patient-reported symptoms, rather than diagnostic tests.
	case clinical = "clinical"
	
	/// One of a set of the possible diagnoses that could be connected to the signs, symptoms, and lab findings.
	case differential = "differential"
	
	/// The diagnosis given when the patient is discharged from the hospital.
	case discharge = "discharge"
	
	/// A diagnosis based significantly on laboratory reports or test results, rather than the physical examination of
	/// the patient.
	case laboratory = "laboratory"
	
	/// A diagnosis which identifies people's responses to situations in their lives, such as a readiness to change or a
	/// willingness to accept assistance.
	case nursing = "nursing"
	
	/// A diagnosis determined prior to birth.
	case prenatal = "prenatal"
	
	/// The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment.
	case principal = "principal"
	
	/// A diagnosis based primarily on the results from medical imaging studies.
	case radiology = "radiology"
	
	/// A diagnosis determined using telemedicine techniques.
	case remote = "remote"
	
	/// The labeling of an illness in a specific historical event using modern knowledge, methods and disease
	/// classifications.
	case retrospective = "retrospective"
	
	/// A diagnosis determined by the patient.
	case `self` = "self"
}


/**
Example Message Reasons. These are the set of codes that might be used an updating an encounter using admin-update.

URL: http://terminology.hl7.org/CodeSystem/message-reasons-encounter
ValueSet: http://hl7.org/fhir/ValueSet/message-reason-encounter
*/
public enum ExampleMessageReasonCodes: String {
	
	/// The patient has been admitted.
	case admit = "admit"
	
	/// The patient has been discharged.
	case discharge = "discharge"
	
	/// The patient has temporarily left the institution.
	case absent = "absent"
	
	/// The patient has returned from a temporary absence.
	case `return` = "return"
	
	/// The patient has been moved to a new location.
	case moved = "moved"
	
	/// Encounter details have been updated (e.g. to correct a coding error).
	case edit = "edit"
}


/**
This value set includes example Onset Type codes which are used to identify the event for which the onset, starting
date, is required.

URL: http://hl7.org/fhir/ex-onsettype
ValueSet: http://hl7.org/fhir/ValueSet/ex-onsettype
*/
public enum ExampleOnsetTypeReasonCodes: String {
	
	/// Date of last examination.
	case lxm = "lxm"
	
	/// Date when symptoms were first noticed.
	case sym = "sym"
	
	/// Start date of last menstruation.
	case lmn = "lmn"
}


/**
This value set includes example Payment Type codes.

URL: http://terminology.hl7.org/CodeSystem/ex-paymenttype
ValueSet: http://hl7.org/fhir/ValueSet/ex-paymenttype
*/
public enum ExamplePaymentTypeCodes: String {
	
	/// Complete (final) payment of the benefit under the Claim less any adjustments.
	case complete = "complete"
	
	/// Partial payment of the benefit under the Claim less any adjustments.
	case partial = "partial"
}


/**
This value set includes a smattering of Pharmacy Service codes.

URL: http://hl7.org/fhir/ex-pharmaservice
ValueSet: http://hl7.org/fhir/ValueSet/service-pharmacy
*/
public enum ExamplePharmacyServiceCodes: String {
	
	/// Smoking cessation
	case smokecess = "smokecess"
	
	/// Flu Shot
	case flushot = "flushot"
	
	/// The wholesale price of the medication.
	case drugcost = "drugcost"
	
	/// The additional cost assessed on the drug.
	case markup = "markup"
	
	/// The professional fee charged for dispensing the product or service.
	case dispensefee = "dispensefee"
	
	/// The professional fee charged for compounding the medication.
	case compoundfee = "compoundfee"
}


/**
This value set includes example Procedure Type codes.

URL: http://terminology.hl7.org/CodeSystem/ex-procedure-type
ValueSet: http://hl7.org/fhir/ValueSet/ex-procedure-type
*/
public enum ExampleProcedureTypeCodes: String {
	
	/// The first procedure in a series required to produce and overall patient outcome.
	case primary = "primary"
	
	/// The second procedure in a series required to produce and overall patient outcome.
	case secondary = "secondary"
}


/**
This value set includes sample Program Reason Span codes.

URL: http://terminology.hl7.org/CodeSystem/ex-programcode
ValueSet: http://hl7.org/fhir/ValueSet/ex-program-code
*/
public enum ExampleProgramReasonCodes: String {
	
	/// Child Asthma Program
	case `as` = "as"
	
	/// Hemodialysis Program.
	case hd = "hd"
	
	/// Autism Screening Program.
	case auscr = "auscr"
	
	/// No program code applies.
	case none = "none"
}


/**
This value set includes sample Related Claim Relationship codes.

URL: http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship
ValueSet: http://hl7.org/fhir/ValueSet/related-claim-relationship
*/
public enum ExampleRelatedClaimRelationshipCodes: String {
	
	/// A prior claim instance for the same intended suite of services.
	case prior = "prior"
	
	/// A claim for a different suite of services which is related the suite claimed here.
	case associated = "associated"
}


/**
The type of actor - system or human.

URL: http://hl7.org/fhir/examplescenario-actor-type
ValueSet: http://hl7.org/fhir/ValueSet/examplescenario-actor-type
*/
public enum ExampleScenarioActorType: String {
	
	/// A person.
	case person = "person"
	
	/// A system.
	case entity = "entity"
}


/**
This value set includes sample Service Modifier codes which may support differential payment.

URL: http://hl7.org/fhir/ex-servicemodifier
ValueSet: http://hl7.org/fhir/ValueSet/service-modifiers
*/
public enum ExampleServiceModifierCodes: String {
	
	/// Services provided on the side of the road or such other non-conventional setting.
	case sr = "sr"
	
	/// Services provided outside or normal business hours.
	case ah = "ah"
}


/**
This value set includes a smattering of Service/Product codes.

URL: http://hl7.org/fhir/ex-serviceproduct
ValueSet: http://hl7.org/fhir/ValueSet/service-product
*/
public enum ExampleServiceProductCodes: String {
	
	/// Exam
	case exam = "exam"
	
	/// Flu shot
	case flushot = "flushot"
}


/**
Example use codes for the List resource - typical kinds of use.

URL: http://terminology.hl7.org/CodeSystem/list-example-use-codes
ValueSet: http://hl7.org/fhir/ValueSet/list-example-codes
*/
public enum ExampleUseCodesForList: String {
	
	/// A list of alerts for the patient.
	case alerts = "alerts"
	
	/// A list of part adverse reactions.
	case adverserxns = "adverserxns"
	
	/// A list of Allergies for the patient.
	case allergies = "allergies"
	
	/// A list of medication statements for the patient.
	case medications = "medications"
	
	/// A list of problems that the patient is known of have (or have had in the past).
	case problems = "problems"
	
	/// A list of items that constitute a set of work to be performed (typically this code would be specialized for more
	/// specific uses, such as a ward round list).
	case worklist = "worklist"
	
	/// A list of items waiting for an event (perhaps a surgical patient waiting list).
	case waiting = "waiting"
	
	/// A set of protocols to be followed.
	case protocols = "protocols"
	
	/// A set of care plans that apply in a particular context of care.
	case plans = "plans"
}


/**
This value set includes a smattering of Prescription Product codes.

URL: http://terminology.hl7.org/CodeSystem/ex-visionprescriptionproduct
ValueSet: http://hl7.org/fhir/ValueSet/vision-product
*/
public enum ExampleVisionPrescriptionProductCodes: String {
	
	/// A lens to be fitted to a frame to comprise a pair of glasses.
	case lens = "lens"
	
	/// A lens to be fitted for wearing directly on an eye.
	case contact = "contact"
}


/**
This value set includes sample Exception codes.

URL: http://terminology.hl7.org/CodeSystem/claim-exception
ValueSet: http://hl7.org/fhir/ValueSet/claim-exception
*/
public enum ExceptionCodes: String {
	
	/// Fulltime Student
	case student = "student"
	
	/// Disabled
	case disabled = "disabled"
}


/**
Declares what the source of a parameter is.

URL: http://terminology.hl7.org/CodeSystem/expansion-parameter-source
ValueSet: http://hl7.org/fhir/ValueSet/expansion-parameter-source
*/
public enum ExpansionParameterSource: String {
	
	/// The parameter was supplied by the client in the $expand request.
	case input = "input"
	
	/// The parameter was added by the expansion engine on the server.
	case server = "server"
	
	/// The parameter was added from one the code systems used in the $expand operation.
	case codesystem = "codesystem"
}


/**
Defines how concepts are processed into the expansion when it's for UI presentation.

URL: http://terminology.hl7.org/CodeSystem/expansion-processing-rule
ValueSet: http://hl7.org/fhir/ValueSet/expansion-processing-rule
*/
public enum ExpansionProcessingRule: String {
	
	/// The expansion (when in UI mode) includes all codes *and* any defined groups (in extensions).
	case allCodes = "all-codes"
	
	/// The expanion (when in UI mode) lists the groups, and then any codes that have not been included in a group.
	case ungrouped = "ungrouped"
	
	/// The expansion (when in UI mode) only includes the defined groups.
	case groupsOnly = "groups-only"
}


/**
A code specifying the state of the resource instance.

URL: http://hl7.org/fhir/explanationofbenefit-status
ValueSet: http://hl7.org/fhir/ValueSet/explanationofbenefit-status
*/
public enum ExplanationOfBenefitStatus: String {
	
	/// The resource instance is currently in-force.
	case active = "active"
	
	/// The resource instance is withdrawn, rescinded or reversed.
	case cancelled = "cancelled"
	
	/// A new resource instance the contents of which is not complete.
	case draft = "draft"
	
	/// The resource instance was entered in error.
	case enteredInError = "entered-in-error"
}


/**
Whether the results by exposure is describing the results for the primary exposure of interest (exposure) or the
alternative state (exposureAlternative).

URL: http://hl7.org/fhir/exposure-state
ValueSet: http://hl7.org/fhir/ValueSet/exposure-state
*/
public enum ExposureState: String {
	
	/// used when the results by exposure is describing the results for the primary exposure of interest.
	case exposure = "exposure"
	
	/// used when the results by exposure is describing the results for the alternative exposure state, control state or
	/// comparator state.
	case exposureAlternative = "exposure-alternative"
}


/**
The media type of the expression language.

URL: http://hl7.org/fhir/expression-language
ValueSet: http://hl7.org/fhir/ValueSet/expression-language
*/
public enum ExpressionLanguage: String {
	
	/// Clinical Quality Language.
	case textCql = "text/cql"
	
	/// FHIRPath.
	case textFhirpath = "text/fhirpath"
	
	/// FHIR's RESTful query syntax - typically independent of base URL.
	case applicationXFhirQuery = "application/x-fhir-query"
}


/**
How an extension context is interpreted.

URL: http://hl7.org/fhir/extension-context-type
ValueSet: http://hl7.org/fhir/ValueSet/extension-context-type
*/
public enum ExtensionContextType: String {
	
	/// The context is all elements that match the FHIRPath query found in the expression.
	case fhirpath = "fhirpath"
	
	/// The context is any element that has an ElementDefinition.id that matches that found in the expression. This
	/// includes ElementDefinition Ids that have slicing identifiers. The full path for the element is
	/// [url]#[elementid]. If there is no #, the Element id is one defined in the base specification.
	case element = "element"
	
	/// The context is a particular extension from a particular StructureDefinition, and the expression is just a uri
	/// that identifies the extension.
	case extension_fhir = "extension"
}


/**
A set of common concept properties for use on coded systems throughout the FHIR eco-system.

URL: http://hl7.org/fhir/concept-properties
ValueSet: http://hl7.org/fhir/ValueSet/concept-properties
*/
public enum FHIRDefinedConceptProperties: String {
	
	/// True if the concept is not considered active - e.g. not a valid concept any more. Property type is boolean,
	/// default value is false
	case inactive = "inactive"
	
	/// The date at which a concept was deprecated. Concepts that are deprecated but not inactive can still be used, but
	/// their use is discouraged, and they should be expected to be made inactive in a future release. Property type is
	/// dateTime
	case deprecated = "deprecated"
	
	/// The concept is not intended to be chosen by the user - only intended to be used as a selector for other
	/// concepts. Note, though, that the interpretation of this is highly contextual; all concepts are selectable in
	/// some context. Property type is boolean
	case notSelectable = "notSelectable"
	
	/// The concept identified in this property is a parent of the concept on which it is a property. The property type
	/// will be 'code'. The meaning of 'parent' is defined by the hierarchyMeaning attribute
	case parent = "parent"
	
	/// The concept identified in this property is a child of the concept on which it is a property. The property type
	/// will be 'code'. The meaning of 'child' is defined by the hierarchyMeaning attribute
	case child = "child"
}


/**
The availability status of the device.

URL: http://hl7.org/fhir/device-status
ValueSet: http://hl7.org/fhir/ValueSet/device-status
*/
public enum FHIRDeviceStatus: String {
	
	/// The device is available for use.  Note: For *implanted devices*  this means that the device is implanted in the
	/// patient.
	case active = "active"
	
	/// The device is no longer available for use (e.g. lost, expired, damaged).  Note: For *implanted devices*  this
	/// means that the device has been removed from the patient.
	case inactive = "inactive"
	
	/// The device was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// The status of the device has not been determined.
	case unknown = "unknown"
}


/**
The availability status reason of the device.

URL: http://terminology.hl7.org/CodeSystem/device-status-reason
ValueSet: http://hl7.org/fhir/ValueSet/device-status-reason
*/
public enum FHIRDeviceStatusReason: String {
	
	/// The device is off.
	case online = "online"
	
	/// The device is paused.
	case paused = "paused"
	
	/// The device is ready but not actively operating.
	case standby = "standby"
	
	/// The device is offline.
	case offline = "offline"
	
	/// The device is not ready.
	case notReady = "not-ready"
	
	/// The device transducer is disconnected.
	case transducDiscon = "transduc-discon"
	
	/// The device hardware is disconnected.
	case hwDiscon = "hw-discon"
	
	/// The device is off.
	case off = "off"
}


/**
The set of interactions defined by the RESTful part of the FHIR specification.

URL: http://hl7.org/fhir/restful-interaction
ValueSet: http://hl7.org/fhir/ValueSet/restful-interaction
*/
public enum FHIRRestfulInteractions: String {
	
	/// Read the current state of the resource.
	case read = "read"
	
	/// Read the state of a specific version of the resource.
	case vread = "vread"
	
	/// Update an existing resource by its id (or create it if it is new).
	case update = "update"
	
	/// Update an existing resource by posting a set of changes to it.
	case patch = "patch"
	
	/// Delete a resource.
	case delete = "delete"
	
	/// Retrieve the change history for a particular resource, type of resource, or the entire system.
	case history = "history"
	
	/// Retrieve the change history for a particular resource.
	case historyInstance = "history-instance"
	
	/// Retrieve the change history for all resources of a particular type.
	case historyType = "history-type"
	
	/// Retrieve the change history for all resources on a system.
	case historySystem = "history-system"
	
	/// Create a new resource with a server assigned id.
	case create = "create"
	
	/// Search a resource type or all resources based on some filter criteria.
	case search = "search"
	
	/// Search all resources of the specified type based on some filter criteria.
	case searchType = "search-type"
	
	/// Search all resources based on some filter criteria.
	case searchSystem = "search-system"
	
	/// Get a Capability Statement for the system.
	case capabilities = "capabilities"
	
	/// Update, create or delete a set of resources as a single transaction.
	case transaction = "transaction"
	
	/// perform a set of a separate interactions in a single http operation
	case batch = "batch"
	
	/// Perform an operation as defined by an OperationDefinition.
	case operation = "operation"
}


/**
A code to indicate if the substance is actively used.

URL: http://hl7.org/fhir/substance-status
ValueSet: http://hl7.org/fhir/ValueSet/substance-status
*/
public enum FHIRSubstanceStatus: String {
	
	/// The substance is considered for use or reference.
	case active = "active"
	
	/// The substance is considered for reference, but not for use.
	case inactive = "inactive"
	
	/// The substance was entered in error.
	case enteredInError = "entered-in-error"
}


/**
The result if validation fails

URL: http://terminology.hl7.org/CodeSystem/failure-action
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-failure-action
*/
public enum FailureAction: String {
	
	/// fatal
	case fatal = "fatal"
	
	/// warn
	case warn = "warn"
	
	/// recOnly
	case recOnly = "rec-only"
	
	/// none
	case none = "none"
}


/**
Codes describing the reason why a family member's history is not available.

URL: http://terminology.hl7.org/CodeSystem/history-absent-reason
ValueSet: http://hl7.org/fhir/ValueSet/history-absent-reason
*/
public enum FamilyHistoryAbsentReason: String {
	
	/// Patient does not know the subject, e.g. the biological parent of an adopted patient.
	case subjectUnknown = "subject-unknown"
	
	/// The patient withheld or refused to share the information.
	case withheld = "withheld"
	
	/// Information cannot be obtained; e.g. unconscious patient.
	case unableToObtain = "unable-to-obtain"
	
	/// Patient does not have the information now, but can provide the information at a later date.
	case deferred = "deferred"
}


/**
A code that identifies the status of the family history record.

URL: http://hl7.org/fhir/history-status
ValueSet: http://hl7.org/fhir/ValueSet/history-status
*/
public enum FamilyHistoryStatus: String {
	
	/// Some health information is known and captured, but not complete - see notes for details.
	case partial = "partial"
	
	/// All available related health information is captured as of the date (and possibly time) when the family member
	/// history was taken.
	case completed = "completed"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// Health information for this family member is unavailable/unknown.
	case healthUnknown = "health-unknown"
}


/**
Materials used or needed to feed the patient.

URL: http://hl7.org/fhir/feeding-device
*/
public enum FeedingDeviceCodes: String {
	
	/// Standard nipple definition:
	case standardNipple = "standard-nipple"
	
	/// Preemie nipple definition:
	case preemieNipple = "preemie-nipple"
	
	/// Orthodontic nipple definition:
	case orthoNipple = "ortho-nipple"
	
	/// Slow flow nipple definition:
	case slofloNipple = "sloflo-nipple"
	
	/// Middle flow nipple definition:
	case midfloNipple = "midflo-nipple"
	
	/// Enlarged, cross-cut nipple definition:
	case bigcutNipple = "bigcut-nipple"
	
	/// Haberman bottle definition:
	case habermanBottle = "haberman-bottle"
	
	/// Sippy cup with valve definition:
	case sippyValve = "sippy-valve"
	
	/// Sippy cup without valve definition:
	case sippyNoValve = "sippy-no-valve"
	
	/// Provale Cup definition:
	case provaleCup = "provale-cup"
	
	/// Glass with lid/sippy cup definition:
	case glassLid = "glass-lid"
	
	/// Double handhold on glass/cup definition:
	case handholdCup = "handhold-cup"
	
	/// Rubber matting under tray definition:
	case rubberMat = "rubber-mat"
	
	/// Straw definition:
	case straw = "straw"
	
	/// Nose cup definition:
	case noseCup = "nose-cup"
	
	/// Scoop plate definition:
	case scoopPlate = "scoop-plate"
	
	/// Hand wrap utensil holder definition:
	case utensilHolder = "utensil-holder"
	
	/// Foam handle utensils definition:
	case foamHandle = "foam-handle"
	
	/// Angled utensils definition:
	case angledUtensil = "angled-utensil"
	
	/// Spout cup definition:
	case spoutCup = "spout-cup"
	
	/// Automated feeding devices definition:
	case autofeedingDevice = "autofeeding-device"
	
	/// Rocker knife definition:
	case rockerKnife = "rocker-knife"
}


/**
The kind of operation to perform as a part of a property based filter.

URL: http://hl7.org/fhir/filter-operator
ValueSet: http://hl7.org/fhir/ValueSet/filter-operator
*/
public enum FilterOperator: String {
	
	/// The specified property of the code equals the provided value.
	case eq = "="
	
	/// Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value,
	/// including the provided concept itself (include descendant codes and self).
	case isA = "is-a"
	
	/// Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value,
	/// excluding the provided concept itself i.e. include descendant codes only).
	case descendentOf = "descendent-of"
	
	/// The specified property of the code does not have an is-a relationship with the provided value.
	case isNotA = "is-not-a"
	
	/// The specified property of the code  matches the regex specified in the provided value.
	case regex = "regex"
	
	/// The specified property of the code is in the set of codes or concepts specified in the provided value (comma
	/// separated list).
	case `in` = "in"
	
	/// The specified property of the code is not in the set of codes or concepts specified in the provided value (comma
	/// separated list).
	case notIn = "not-in"
	
	/// Includes all concept ids that have a transitive is-a relationship from the concept Id provided as the value,
	/// including the provided concept itself (i.e. include ancestor codes and self).
	case generalizes = "generalizes"
	
	/// The specified property of the code has at least one value (if the specified value is true; if the specified
	/// value is false, then matches when the specified property of the code has no values).
	case exists = "exists"
}


/**
This value set includes Status codes.

URL: http://hl7.org/fhir/fm-status
ValueSet: http://hl7.org/fhir/ValueSet/fm-status
*/
public enum FinancialResourceStatusCodes: String {
	
	/// The instance is currently in-force.
	case active = "active"
	
	/// The instance is withdrawn, rescinded or reversed.
	case cancelled = "cancelled"
	
	/// A new instance the contents of which is not complete.
	case draft = "draft"
	
	/// The instance was entered in error.
	case enteredInError = "entered-in-error"
}


/**
This value set includes Financial Task codes.

URL: http://terminology.hl7.org/CodeSystem/financialtaskcode
ValueSet: http://hl7.org/fhir/ValueSet/financial-taskcode
*/
public enum FinancialTaskCodes: String {
	
	/// Cancel or reverse a resource, such as a claim or preauthorization, which is in-process or complete.
	case cancel = "cancel"
	
	/// Retrieve selected or all queued resources or messages.
	case poll = "poll"
	
	/// Release any reserved funds or material obligations associated with a resource. For example, any unused but
	/// reserved funds or treatment allowance associated with a preauthorization once treatment is complete.
	case release = "release"
	
	/// Indication that the processing of a resource, such as a claim, for some or all of the required work is now being
	/// requested.
	case reprocess = "reprocess"
	
	/// Check on the processing status of a resource such as the adjudication of a claim.
	case status = "status"
}


/**
This value set includes Financial Task Input Type codes.

URL: http://terminology.hl7.org/CodeSystem/financialtaskinputtype
ValueSet: http://hl7.org/fhir/ValueSet/financial-taskinputtype
*/
public enum FinancialTaskInputTypeCodes: String {
	
	/// The name of a resource to include in a selection.
	case include = "include"
	
	/// The name of a resource to not include in a selection.
	case exclude = "exclude"
	
	/// A reference to the response resource to the original processing of a resource.
	case origresponse = "origresponse"
	
	/// A reference value which must be quoted to authorize an action.
	case reference = "reference"
	
	/// The sequence number associated with an item for reprocessing.
	case item = "item"
	
	/// The reference period for the action being requested.
	case period = "period"
	
	/// The processing status from a check on the processing status of a resource such as the adjudication of a claim.
	case status = "status"
}


/**
Example list of general categories for flagged issues. (Not complete or necessarily appropriate.)

URL: http://terminology.hl7.org/CodeSystem/flag-category
ValueSet: http://hl7.org/fhir/ValueSet/flag-category
*/
public enum FlagCategory: String {
	
	/// Flags related to the subject's dietary needs.
	case diet = "diet"
	
	/// Flags related to the subject's medications.
	case drug = "drug"
	
	/// Flags related to performing laboratory tests and related processes (e.g. phlebotomy).
	case lab = "lab"
	
	/// Flags related to administrative and financial processes.
	case admin = "admin"
	
	/// Flags related to coming into contact with the patient.
	case contact = "contact"
	
	/// Flags related to the subject's clinical data.
	case clinical = "clinical"
	
	/// Flags related to behavior.
	case behavioral = "behavioral"
	
	/// Flags related to research.
	case research = "research"
	
	/// Flags related to subject's advance directives.
	case advanceDirective = "advance-directive"
	
	/// Flags related to safety precautions.
	case safety = "safety"
}


/**
This value set is provided as an exemplar. The value set is driven by IHE Table B.8-4: Abnormal Flags, Alert Priority.

URL: http://hl7.org/fhir/flag-priority-code
ValueSet: http://hl7.org/fhir/ValueSet/flag-priority
*/
public enum FlagPriorityCodes: String {
	
	/// No alarm.
	case PN = "PN"
	
	/// Low priority.
	case PL = "PL"
	
	/// Medium priority.
	case PM = "PM"
	
	/// High priority.
	case PH = "PH"
}


/**
Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was
entered in error.

URL: http://hl7.org/fhir/flag-status
ValueSet: http://hl7.org/fhir/ValueSet/flag-status
*/
public enum FlagStatus: String {
	
	/// A current flag that should be displayed to a user. A system may use the category to determine which user roles
	/// should view the flag.
	case active = "active"
	
	/// The flag no longer needs to be displayed.
	case inactive = "inactive"
	
	/// The flag was added in error and should no longer be displayed.
	case enteredInError = "entered-in-error"
}


/**
This example value set defines a set of codes that can be used to indicate a patient's gender identity.

URL: http://hl7.org/fhir/gender-identity
*/
public enum GenderIdentity: String {
	
	/// the patient identifies as transgender male-to-female
	case transgenderFemale = "transgender-female"
	
	/// the patient identifies as transgender female-to-male
	case transgenderMale = "transgender-male"
	
	/// the patient identifies with neither/both female and male
	case nonBinary = "non-binary"
	
	/// the patient identifies as male
	case male = "male"
	
	/// the patient identifies as female
	case female = "female"
	
	/// other gender identity
	case other = "other"
	
	/// the patient does not wish to disclose his gender identity
	case nonDisclose = "non-disclose"
}


/**
This example value set defines a set of codes that can be used to indicate the current state of the animal's
reproductive organs.

URL: http://hl7.org/fhir/animal-genderstatus
ValueSet: http://hl7.org/fhir/ValueSet/animal-genderstatus
*/
public enum GenderStatus: String {
	
	/// The animal has been sterilized, castrated or otherwise made infertile.
	case neutered = "neutered"
	
	/// The animal's reproductive organs are intact.
	case intact = "intact"
	
	/// Unable to determine whether the animal has been neutered.
	case unknown = "unknown"
}


/**
Codes indicating whether the goal has been accepted by a stakeholder.

URL: http://terminology.hl7.org/CodeSystem/goal-acceptance-status
ValueSet: http://hl7.org/fhir/ValueSet/goal-acceptance-status
*/
public enum GoalAcceptanceStatus: String {
	
	/// Stakeholder supports pursuit of the goal.
	case agree = "agree"
	
	/// Stakeholder is not in support of the pursuit of the goal.
	case disagree = "disagree"
	
	/// Stakeholder has not yet made a decision on whether they support the goal.
	case pending = "pending"
}


/**
Describes the progression, or lack thereof, towards the goal against the target.

URL: http://terminology.hl7.org/CodeSystem/goal-achievement
ValueSet: http://hl7.org/fhir/ValueSet/goal-achievement
*/
public enum GoalAchievementStatus: String {
	
	/// The goal is being sought but has not yet been reached. (Also applies if the goal was reached in the past but
	/// there has been regression and the goal is again being sought).
	case inProgress = "in-progress"
	
	/// The goal is being sought, and is progressing.
	case improving = "improving"
	
	/// The goal is being sought, but is regressing.
	case worsening = "worsening"
	
	/// The goal is being sought, but the trend is flat.
	case noChange = "no-change"
	
	/// The goal has been met.
	case achieved = "achieved"
	
	/// The goal has been met, but ongoing activity is needed to sustain the goal objective.
	case sustaining = "sustaining"
	
	/// The goal has not been met and there might or might not have been progress towards target.
	case notAchieved = "not-achieved"
	
	/// The goal has not been met and little to no progress towards target.
	case noProgress = "no-progress"
	
	/// The goal is not possible to be met.
	case notAttainable = "not-attainable"
}


/**
Example codes for grouping goals to use for filtering or presentation.

URL: http://terminology.hl7.org/CodeSystem/goal-category
ValueSet: http://hl7.org/fhir/ValueSet/goal-category
*/
public enum GoalCategory: String {
	
	/// Goals related to the consumption of food and/or beverages.
	case dietary = "dietary"
	
	/// Goals related to the personal protection of the subject.
	case safety = "safety"
	
	/// Goals related to the manner in which the subject acts.
	case behavioral = "behavioral"
	
	/// Goals related to the practice of nursing or established by nurses.
	case nursing = "nursing"
	
	/// Goals related to the mobility and/or motor capability of the subject.
	case physiotherapy = "physiotherapy"
}


/**
Codes that reflect the current state of a goal and whether the goal is still being targeted.

URL: http://hl7.org/fhir/goal-status
ValueSet: http://hl7.org/fhir/ValueSet/goal-status
*/
public enum GoalLifecycleStatus: String {
	
	/// A goal is proposed for this patient.
	case proposed = "proposed"
	
	/// A goal is planned for this patient.
	case planned = "planned"
	
	/// A proposed goal was accepted or acknowledged.
	case accepted = "accepted"
	
	/// The goal is being sought actively.
	case active = "active"
	
	/// The goal remains a long term objective but is no longer being actively pursued for a temporary period of time.
	case onHold = "on-hold"
	
	/// The goal is no longer being sought.
	case completed = "completed"
	
	/// The goal has been abandoned.
	case cancelled = "cancelled"
	
	/// The goal was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// A proposed goal was rejected.
	case rejected = "rejected"
}


/**
Indicates the level of importance associated with reaching or sustaining a goal.

URL: http://terminology.hl7.org/CodeSystem/goal-priority
ValueSet: http://hl7.org/fhir/ValueSet/goal-priority
*/
public enum GoalPriority: String {
	
	/// Indicates that the goal is of considerable importance and should be a primary focus of care delivery.
	case highPriority = "high-priority"
	
	/// Indicates that the goal has a reasonable degree of importance and that concrete action should be taken towards
	/// the goal.  Attainment is not as critical as high-priority goals.
	case mediumPriority = "medium-priority"
	
	/// The goal is desirable but is not sufficiently important to devote significant resources to.  Achievement of the
	/// goal may be sought when incidental to achieving other goals.
	case lowPriority = "low-priority"
}


/**
Types of relationships between two goals.

URL: http://terminology.hl7.org/CodeSystem/goal-relationship-type
ValueSet: http://hl7.org/fhir/ValueSet/goal-relationship-type
*/
public enum GoalRelationshipType: String {
	
	/// Indicates that the target goal is one which must be met before striving for the current goal.
	case predecessor = "predecessor"
	
	/// Indicates that the target goal is a desired objective once the current goal is met.
	case successor = "successor"
	
	/// Indicates that this goal has been replaced by the target goal.
	case replacement = "replacement"
	
	/// Indicates that the target goal is considered to be a "piece" of attaining this goal.
	case milestone = "milestone"
	
	/// Indicates that the relationship is not covered by one of the pre-defined codes.  (An extension may convey more
	/// information about the meaning of the relationship.).
	case other = "other"
}


/**
Example codes indicating the reason for a current status.  Note that these are in no way complete and might not even be
appropriate for some uses.

URL: http://hl7.org/fhir/goal-status-reason
ValueSet: http://hl7.org/fhir/ValueSet/goal-status-reason
*/
public enum GoalStatusReason: String {
	
	/// Goal suspended or ended because of a surgical procedure.
	case surgery = "surgery"
	
	/// Goal suspended or ended because of a significant life event (marital change, bereavement, etc.).
	case lifeEvent = "life-event"
	
	/// Goal has been superseded by a new goal.
	case replaced = "replaced"
	
	/// Patient wishes the goal to be set aside, at least temporarily.
	case patientRequest = "patient-request"
	
	/// Goal cannot be reached temporarily.
	case tempNotAttainable = "temp-not-attainable"
	
	/// Goal cannot be reached permanently.
	case permanentNotAttainable = "permanent-not-attainable"
	
	/// Goal cannot be reached due to financial barrier or reason.
	case financialBarrier = "financial-barrier"
	
	/// Goal cannot be reached due to a lack of transportation.
	case lackOfTransportation = "lack-of-transportation"
	
	/// Goal cannot be reached due to a lack of social support.
	case lackOfSocialSupport = "lack-of-social-support"
}


/**
How a compartment must be linked.

URL: http://hl7.org/fhir/graph-compartment-rule
ValueSet: http://hl7.org/fhir/ValueSet/graph-compartment-rule
*/
public enum GraphCompartmentRule: String {
	
	/// The compartment must be identical (the same literal reference).
	case identical = "identical"
	
	/// The compartment must be the same - the record must be about the same patient, but the reference may be
	/// different.
	case matching = "matching"
	
	/// The compartment must be different.
	case different = "different"
	
	/// The compartment rule is defined in the accompanying FHIRPath expression.
	case custom = "custom"
}


/**
Defines how a compartment rule is used.

URL: http://hl7.org/fhir/graph-compartment-use
ValueSet: http://hl7.org/fhir/ValueSet/graph-compartment-use
*/
public enum GraphCompartmentUse: String {
	
	/// This compartment rule is a condition for whether the rule applies.
	case condition = "condition"
	
	/// This compartment rule is enforced on any relationships that meet the conditions.
	case requirement = "requirement"
}


/**
Possible group measure aggregates (E.g. Mean, Median).

URL: http://hl7.org/fhir/group-measure
ValueSet: http://hl7.org/fhir/ValueSet/group-measure
*/
public enum GroupMeasure: String {
	
	/// Aggregated using Mean of participant values.
	case mean = "mean"
	
	/// Aggregated using Median of participant values.
	case median = "median"
	
	/// Aggregated using Mean of study mean values.
	case meanOfMean = "mean-of-mean"
	
	/// Aggregated using Mean of study median values.
	case meanOfMedian = "mean-of-median"
	
	/// Aggregated using Median of study mean values.
	case medianOfMean = "median-of-mean"
	
	/// Aggregated using Median of study median values.
	case medianOfMedian = "median-of-median"
}


/**
Types of resources that are part of group.

URL: http://hl7.org/fhir/group-type
ValueSet: http://hl7.org/fhir/ValueSet/group-type
*/
public enum GroupType: String {
	
	/// Group contains "person" Patient resources.
	case person = "person"
	
	/// Group contains "animal" Patient resources.
	case animal = "animal"
	
	/// Group contains healthcare practitioner resources (Practitioner or PractitionerRole).
	case practitioner = "practitioner"
	
	/// Group contains Device resources.
	case device = "device"
	
	/// Group contains Medication resources.
	case medication = "medication"
	
	/// Group contains Substance resources.
	case substance = "substance"
}


/**
The status of a guidance response.

URL: http://hl7.org/fhir/guidance-response-status
ValueSet: http://hl7.org/fhir/ValueSet/guidance-response-status
*/
public enum GuidanceResponseStatus: String {
	
	/// The request was processed successfully.
	case success = "success"
	
	/// The request was processed successfully, but more data may result in a more complete evaluation.
	case dataRequested = "data-requested"
	
	/// The request was processed, but more data is required to complete the evaluation.
	case dataRequired = "data-required"
	
	/// The request is currently being processed.
	case inProgress = "in-progress"
	
	/// The request was not processed successfully.
	case failure = "failure"
	
	/// The response was entered in error.
	case enteredInError = "entered-in-error"
}


/**
A code that indicates how the page is generated.

URL: http://hl7.org/fhir/guide-page-generation
ValueSet: http://hl7.org/fhir/ValueSet/guide-page-generation
*/
public enum GuidePageGeneration: String {
	
	/// Page is proper xhtml with no templating.  Will be brought across unchanged for standard post-processing.
	case html = "html"
	
	/// Page is markdown with templating.  Will use the template to create a file that imports the markdown file prior
	/// to post-processing.
	case markdown = "markdown"
	
	/// Page is xml with templating.  Will use the template to create a file that imports the source file and run the
	/// nominated XSLT transform (see parameters) if present prior to post-processing.
	case xml = "xml"
	
	/// Page will be generated by the publication process - no source to bring across.
	case generated = "generated"
}


/**
Code of parameter that is input to the guide.

URL: http://hl7.org/fhir/guide-parameter-code
ValueSet: http://hl7.org/fhir/ValueSet/guide-parameter-code
*/
public enum GuideParameterCode: String {
	
	/// If the value of this string 0..* parameter is one of the metadata fields then all conformance resources will
	/// have any specified [Resource].[field] overwritten with the ImplementationGuide.[field], where field is one of:
	/// version, date, status, publisher, contact, copyright, experimental, jurisdiction, useContext.
	case apply = "apply"
	
	/// The value of this string 0..* parameter is a subfolder of the build context's location that is to be scanned to
	/// load resources. Scope is (if present) a particular resource type.
	case pathResource = "path-resource"
	
	/// The value of this string 0..1 parameter is a subfolder of the build context's location that contains files that
	/// are part of the html content processed by the builder.
	case pathPages = "path-pages"
	
	/// The value of this string 0..1 parameter is a subfolder of the build context's location that is used as the
	/// terminology cache. If this is not present, the terminology cache is on the local system, not under version
	/// control.
	case pathTxCache = "path-tx-cache"
	
	/// The value of this string 0..* parameter is a parameter (name=value) when expanding value sets for this
	/// implementation guide. This is particularly used to specify the versions of published terminologies such as
	/// SNOMED CT.
	case expansionParameter = "expansion-parameter"
	
	/// The value of this string 0..1 parameter is either "warning" or "error" (default = "error"). If the value is
	/// "warning" then IG build tools allow the IG to be considered successfully build even when there is no internal
	/// broken links.
	case ruleBrokenLinks = "rule-broken-links"
	
	/// The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in XML format. If
	/// not present, the Publication Tool decides whether to generate XML.
	case generateXml = "generate-xml"
	
	/// The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in JSON format. If
	/// not present, the Publication Tool decides whether to generate JSON.
	case generateJson = "generate-json"
	
	/// The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in Turtle format.
	/// If not present, the Publication Tool decides whether to generate Turtle.
	case generateTurtle = "generate-turtle"
	
	/// The value of this string singleton parameter is the name of the file to use as the builder template for each
	/// generated page (see templating).
	case htmlTemplate = "html-template"
}


/**
An HL7 administrative unit that owns artifacts in the FHIR specification.

URL: http://terminology.hl7.org/CodeSystem/hl7-work-group
ValueSet: http://hl7.org/fhir/ValueSet/hl7-work-group
*/
public enum HL7Workgroup: String {
	
	/// Community Based Collaborative Care (http://www.hl7.org/Special/committees/cbcc/index.cfm).
	case cbcc = "cbcc"
	
	/// Clinical Decision Support (http://www.hl7.org/Special/committees/dss/index.cfm).
	case cds = "cds"
	
	/// Clinical Quality Information (http://www.hl7.org/Special/committees/cqi/index.cfm).
	case cqi = "cqi"
	
	/// Clinical Genomics (http://www.hl7.org/Special/committees/clingenomics/index.cfm).
	case cg = "cg"
	
	/// Health Care Devices (http://www.hl7.org/Special/committees/healthcaredevices/index.cfm).
	case dev = "dev"
	
	/// Electronic Health Records (http://www.hl7.org/special/committees/ehr/index.cfm).
	case ehr = "ehr"
	
	/// FHIR Infrastructure (http://www.hl7.org/Special/committees/fiwg/index.cfm).
	case fhir = "fhir"
	
	/// Financial Management (http://www.hl7.org/Special/committees/fm/index.cfm).
	case fm = "fm"
	
	/// Health Standards Integration (http://www.hl7.org/Special/committees/hsi/index.cfm).
	case hsi = "hsi"
	
	/// Imaging Integration (http://www.hl7.org/Special/committees/imagemgt/index.cfm).
	case ii = "ii"
	
	/// Infrastructure And Messaging (http://www.hl7.org/special/committees/inm/index.cfm).
	case inm = "inm"
	
	/// Implementable Technology Specifications (http://www.hl7.org/special/committees/xml/index.cfm).
	case its = "its"
	
	/// Modeling and Methodology (http://www.hl7.org/Special/committees/mnm/index.cfm).
	case mnm = "mnm"
	
	/// Orders and Observations (http://www.hl7.org/Special/committees/orders/index.cfm).
	case oo = "oo"
	
	/// Patient Administration (http://www.hl7.org/Special/committees/pafm/index.cfm).
	case pa = "pa"
	
	/// Patient Care (http://www.hl7.org/Special/committees/patientcare/index.cfm).
	case pc = "pc"
	
	/// Public Health and Emergency Response (http://www.hl7.org/Special/committees/pher/index.cfm).
	case pher = "pher"
	
	/// Pharmacy (http://www.hl7.org/Special/committees/medication/index.cfm).
	case phx = "phx"
	
	/// Biomedical Research and Regulation (http://www.hl7.org/Special/committees/rcrim/index.cfm).
	case brr = "brr"
	
	/// Structured Documents (http://www.hl7.org/Special/committees/structure/index.cfm).
	case sd = "sd"
	
	/// Security (http://www.hl7.org/Special/committees/secure/index.cfm).
	case sec = "sec"
	
	/// US Realm Taskforce (http://www.hl7.org/Special/committees/usrealm/index.cfm).
	case us = "us"
	
	/// Vocabulary (http://www.hl7.org/Special/committees/Vocab/index.cfm).
	case vocab = "vocab"
	
	/// Application Implementation and Design (http://www.hl7.org/Special/committees/java/index.cfm).
	case aid = "aid"
}


/**
HTTP verbs (in the HTTP command line). See [HTTP rfc](https://tools.ietf.org/html/rfc7231) for details.

URL: http://hl7.org/fhir/http-verb
ValueSet: http://hl7.org/fhir/ValueSet/http-verb
*/
public enum HTTPVerb: String {
	
	/// HTTP GET Command.
	case GET = "GET"
	
	/// HTTP HEAD Command.
	case HEAD = "HEAD"
	
	/// HTTP POST Command.
	case POST = "POST"
	
	/// HTTP PUT Command.
	case PUT = "PUT"
	
	/// HTTP DELETE Command.
	case DELETE = "DELETE"
	
	/// HTTP PATCH Command.
	case PATCH = "PATCH"
}


/**
Set of handling instructions prior testing of the specimen.

URL: http://terminology.hl7.org/CodeSystem/handling-condition
ValueSet: http://hl7.org/fhir/ValueSet/handling-condition
*/
public enum HandlingConditionSet: String {
	
	/// room temperature.
	case room = "room"
	
	/// refrigerated temperature.
	case refrigerated = "refrigerated"
	
	/// frozen temperature.
	case frozen = "frozen"
}


/**
A code that represents the preferred display order of the components of a human name.

URL: http://terminology.hl7.org/CodeSystem/name-assembly-order
*/
public enum HumanNameAssemblyOrder: String {
	
	/// NL1
	case NL1 = "NL1"
	
	/// NL2
	case NL2 = "NL2"
	
	/// NL3
	case NL3 = "NL3"
	
	/// NL4
	case NL4 = "NL4"
}


/**
Attached is vocabulary for the 27 record lifecycle events, as per ISO TS 21089-2017, Health Informatics - Trusted End-
to-End Information Flows, Section 3, Terms and Definitions (2017, at ISO Central Secretariat, passed ballot and ready
for publication).  This will also be included in the FHIR EHR Record Lifecycle Event Implementation Guide, balloted and
(to be) published with FHIR STU-3.

URL: http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle
*/
public enum ISO210892017HealthRecordLifecycleEvents: String {
	
	/// Occurs when an agent causes the system to obtain and open a record entry for inspection or review.
	case access = "access"
	
	/// Occurs when an agent causes the system to tag or otherwise indicate special access management and suspension of
	/// record entry deletion/destruction, if deemed relevant to a lawsuit or which are reasonably anticipated to be
	/// relevant or to fulfill organizational policy under the legal doctrine of “duty to preserve”.
	case hold = "hold"
	
	/// Occurs when an agent makes any change to record entry content currently residing in storage considered permanent
	/// (persistent).
	case amend = "amend"
	
	/// Occurs when an agent causes the system to create and move archive artifacts containing record entry content,
	/// typically to long-term offline storage.
	case archive = "archive"
	
	/// Occurs when an agent causes the system to capture the agent’s digital signature (or equivalent indication)
	/// during formal validation of record entry content.
	case attest = "attest"
	
	/// Occurs when an agent causes the system to decode record entry content from a cipher.
	case decrypt = "decrypt"
	
	/// Occurs when an agent causes the system to scrub record entry content to reduce the association between a set of
	/// identifying data and the data subject in a way that might or might not be reversible.
	case deidentify = "deidentify"
	
	/// Occurs when an agent causes the system to tag record entry(ies) as obsolete, erroneous or untrustworthy, to warn
	/// against its future use.
	case deprecate = "deprecate"
	
	/// Occurs when an agent causes the system to permanently erase record entry content from the system.
	case destroy = "destroy"
	
	/// Occurs when an agent causes the system to release, transfer, provision access to, or otherwise divulge record
	/// entry content.
	case disclose = "disclose"
	
	/// Occurs when an agent causes the system to encode record entry content in a cipher.
	case encrypt = "encrypt"
	
	/// Occurs when an agent causes the system to selectively pull out a subset of record entry content, based on
	/// explicit criteria.
	case extract = "extract"
	
	/// Occurs when an agent causes the system to connect related record entries.
	case link = "link"
	
	/// Occurs when an agent causes the system to combine or join content from two or more record entries, resulting in
	/// a single logical record entry.
	case merge = "merge"
	
	/// Occurs when an agent causes the system to: a) initiate capture of potential record content, and b) incorporate
	/// that content into the storage considered a permanent part of the health record.
	case originate = "originate"
	
	/// Occurs when an agent causes the system to remove record entry content to reduce the association between a set of
	/// identifying data and the data subject in a way that may be reversible.
	case pseudonymize = "pseudonymize"
	
	/// Occurs when an agent causes the system to recreate or restore full status to record entries previously deleted
	/// or deprecated.
	case reactivate = "reactivate"
	
	/// Occurs when an agent causes the system to a) initiate capture of data content from elsewhere, and b) incorporate
	/// that content into the storage considered a permanent part of the health record.
	case receive = "receive"
	
	/// Occurs when an agent causes the system to restore information to data that allows identification of information
	/// source and/or information subject.
	case reidentify = "reidentify"
	
	/// Occurs when an agent causes the system to remove a tag or other cues for special access management had required
	/// to fulfill organizational policy under the legal doctrine of “duty to preserve”.
	case unhold = "unhold"
	
	/// Occurs when an agent causes the system to produce and deliver record entry content in a particular form and
	/// manner.
	case report = "report"
	
	/// Occurs when an agent causes the system to recreate record entries and their content from a previous created
	/// archive artefact.
	case restore = "restore"
	
	/// Occurs when an agent causes the system to change the form, language or code system used to represent record
	/// entry content.
	case transform = "transform"
	
	/// Occurs when an agent causes the system to send record entry content from one (EHR/PHR/other) system to another.
	case transmit = "transmit"
	
	/// Occurs when an agent causes the system to disconnect two or more record entries previously connected, rendering
	/// them separate (disconnected) again.
	case unlink = "unlink"
	
	/// Occurs when an agent causes the system to reverse a previous record entry merge operation, rendering them
	/// separate again.
	case unmerge = "unmerge"
	
	/// Occurs when an agent causes the system to confirm compliance of data or data objects with regulations,
	/// requirements, specifications, or other imposed conditions based on organizational policy.
	case verify = "verify"
}


/**
Identifies the purpose for this identifier, if known .

URL: http://hl7.org/fhir/identifier-use
ValueSet: http://hl7.org/fhir/ValueSet/identifier-use
*/
public enum IdentifierUse: String {
	
	/// The identifier recommended for display and use in real-world interactions.
	case usual = "usual"
	
	/// The identifier considered to be most trusted for the identification of this item. Sometimes also known as
	/// "primary" and "main". The determination of "official" is subjective and implementation guides often provide
	/// additional guidelines for use.
	case official = "official"
	
	/// A temporary identifier.
	case temp = "temp"
	
	/// An identifier that was assigned in secondary use - it serves to identify the object in a relative context, but
	/// cannot be consistently assigned to the same object again in a different context.
	case secondary = "secondary"
	
	/// The identifier id no longer considered valid, but may be relevant for search purposes.  E.g. Changes to
	/// identifier schemes, account merges, etc.
	case old = "old"
}


/**
The level of confidence that this link represents the same actual person, based on NIST Authentication Levels.

URL: http://hl7.org/fhir/identity-assuranceLevel
ValueSet: http://hl7.org/fhir/ValueSet/identity-assuranceLevel
*/
public enum IdentityAssuranceLevel: String {
	
	/// Little or no confidence in the asserted identity's accuracy.
	case level1 = "level1"
	
	/// Some confidence in the asserted identity's accuracy.
	case level2 = "level2"
	
	/// High confidence in the asserted identity's accuracy.
	case level3 = "level3"
	
	/// Very high confidence in the asserted identity's accuracy.
	case level4 = "level4"
}


/**
The status of the ImagingStudy.

URL: http://hl7.org/fhir/imagingstudy-status
ValueSet: http://hl7.org/fhir/ValueSet/imagingstudy-status
*/
public enum ImagingStudyStatus: String {
	
	/// The existence of the imaging study is registered, but there is nothing yet available.
	case registered = "registered"
	
	/// At least one instance has been associated with this imaging study.
	case available = "available"
	
	/// The imaging study is unavailable because the imaging study was not started or not completed (also sometimes
	/// called "aborted").
	case cancelled = "cancelled"
	
	/// The imaging study has been withdrawn following a previous final release.  This electronic record should never
	/// have existed, though it is possible that real-world decisions were based on it. (If real-world activity has
	/// occurred, the status should be "cancelled" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
	
	/// The system does not know which of the status values currently applies for this request. Note: This concept is
	/// not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known which one.
	case unknown = "unknown"
}


/**
The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
or contains concepts to support describing the validity of a dose relative to a particular recommended schedule. This
value set is provided as a suggestive example.

URL: http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status
ValueSet: http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status
*/
public enum ImmunizationEvaluationDoseStatusCodes: String {
	
	/// The dose counts toward fulfilling a path to immunity for a patient, providing protection against the target
	/// disease.
	case valid = "valid"
	
	/// The dose does not count toward fulfilling a path to immunity for a patient.
	case notvalid = "notvalid"
}


/**
The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
or contains concepts to support describing the reason why an administered dose has been assigned a particular status.
Often, this reason describes why a dose is considered invalid. This value set is provided as a suggestive example.

URL: http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status-reason
ValueSet: http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status-reason
*/
public enum ImmunizationEvaluationDoseStatusReasonCodes: String {
	
	/// The product was stored in a manner inconsistent with manufacturer guidelines potentially reducing the
	/// effectiveness of the product.
	case advstorage = "advstorage"
	
	/// The product was stored at a temperature inconsistent with manufacturer guidelines potentially reducing the
	/// effectiveness of the product.
	case coldchbrk = "coldchbrk"
	
	/// The product was administered after the expiration date associated with lot of vaccine.
	case explot = "explot"
	
	/// The product was administered at a time inconsistent with the documented schedule.
	case outsidesched = "outsidesched"
	
	/// The product administered has been recalled by the manufacturer.
	case prodrecall = "prodrecall"
}


/**
The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
or contains concepts to support describing the source of the vaccine administered. This value set is provided as a
suggestive example.

URL: http://terminology.hl7.org/CodeSystem/immunization-funding-source
ValueSet: http://hl7.org/fhir/ValueSet/immunization-funding-source
*/
public enum ImmunizationFundingSource: String {
	
	/// The vaccine was purchased with private funds.
	case private_fhir = "private"
	
	/// The vaccine was purchased with public funds.
	case public_fhir = "public"
}


/**
The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
or contains concepts to support describing the source of the data when the report of the immunization event is not based
on information from the person, entity or organization who administered the vaccine. This value set is provided as a
suggestive example.

URL: http://terminology.hl7.org/CodeSystem/immunization-origin
*/
public enum ImmunizationOriginCodes: String {
	
	/// The data for the immunization event originated with another provider.
	case provider = "provider"
	
	/// The data for the immunization event originated with a written record for the patient.
	case record = "record"
	
	/// The data for the immunization event originated from the recollection of the patient or parent/guardian of the
	/// patient.
	case recall = "recall"
	
	/// The data for the immunization event originated with a school record for the patient.
	case school = "school"
	
	/// The data for the immunization event originated with an immunization information system (IIS) or registry
	/// operating within the jurisdiction.
	case jurisdiction = "jurisdiction"
}


/**
The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
or contains concepts to support describing the patient's eligibility for a vaccination program. This value set is
provided as a suggestive example.

URL: http://terminology.hl7.org/CodeSystem/immunization-program-eligibility
ValueSet: http://hl7.org/fhir/ValueSet/immunization-program-eligibility
*/
public enum ImmunizationProgramEligibility: String {
	
	/// The patient is not eligible for the funding program.
	case ineligible = "ineligible"
	
	/// The patient is eligible for the funding program because they are uninsured.
	case uninsured = "uninsured"
}


/**
The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
or contains concepts to support describing the status of the patient towards perceived immunity against a vaccine
preventable disease. This value set is provided as a suggestive example.

URL: http://terminology.hl7.org/CodeSystem/immunization-recommendation-status
ValueSet: http://hl7.org/fhir/ValueSet/immunization-recommendation-status
*/
public enum ImmunizationRecommendationStatusCodes: String {
	
	/// The patient is due for their next vaccination.
	case due = "due"
	
	/// The patient is considered overdue for their next vaccination.
	case overdue = "overdue"
	
	/// The patient is immune to the target disease and further immunization against the disease is not likely to
	/// provide benefit.
	case immune = "immune"
	
	/// The patient is contraindicated for futher doses.
	case contraindicated = "contraindicated"
	
	/// The patient is fully protected and no further doses are recommended.
	case complete = "complete"
}


/**
The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
or contains concepts to support describing the reason why a dose is considered to be subpotent. This value set is
provided as a suggestive example.

URL: http://terminology.hl7.org/CodeSystem/immunization-subpotent-reason
ValueSet: http://hl7.org/fhir/ValueSet/immunization-subpotent-reason
*/
public enum ImmunizationSubpotentReason: String {
	
	/// The full volume of the dose was not administered to the patient.
	case partial = "partial"
	
	/// The vaccine experienced a cold chain break.
	case coldchainbreak = "coldchainbreak"
	
	/// The vaccine was recalled by the manufacturer.
	case recall = "recall"
}


/**
A set codes that define the functional status of an implanted device.

URL: http://terminology.hl7.org/CodeSystem/implantStatus
ValueSet: http://hl7.org/fhir/ValueSet/implantStatus
*/
public enum ImplantStatus: String {
	
	/// The implanted device is working normally.
	case functional = "functional"
	
	/// The implanted device is not working.
	case nonFunctional = "non-functional"
	
	/// The implanted device has been turned off.
	case disabled = "disabled"
	
	/// the functional status of the implant has not been determined.
	case unknown = "unknown"
}


/**
This value set captures the set of indicator codes defined by the CDS Hooks specification.

URL: http://cds-hooks.hl7.org/CodeSystem/indicator
ValueSet: http://hl7.org/fhir/ValueSet/cdshooks-indicator
*/
public enum Indicator: String {
	
	/// info
	case info = "info"
	
	/// warning
	case warning = "warning"
	
	/// critical
	case critical = "critical"
}


/**
This value set includes sample Intervention codes.

URL: http://hl7.org/fhir/intervention
ValueSet: http://hl7.org/fhir/ValueSet/intervention
*/
public enum InterventionCodes: String {
	
	/// Unknown
	case unknown = "unknown"
	
	/// Other
	case other = "other"
}


/**
Codes indicating the kind of the price component.

URL: http://hl7.org/fhir/invoice-priceComponentType
ValueSet: http://hl7.org/fhir/ValueSet/invoice-priceComponentType
*/
public enum InvoicePriceComponentType: String {
	
	/// the amount is the base price used for calculating the total price before applying surcharges, discount or taxes.
	case base = "base"
	
	/// the amount is a surcharge applied on the base price.
	case surcharge = "surcharge"
	
	/// the amount is a deduction applied on the base price.
	case deduction = "deduction"
	
	/// the amount is a discount applied on the base price.
	case discount = "discount"
	
	/// the amount is the tax component of the total price.
	case tax = "tax"
	
	/// the amount is of informational character, it has not been applied in the calculation of the total price.
	case informational = "informational"
}


/**
Codes identifying the lifecycle stage of an Invoice.

URL: http://hl7.org/fhir/invoice-status
ValueSet: http://hl7.org/fhir/ValueSet/invoice-status
*/
public enum InvoiceStatus: String {
	
	/// the invoice has been prepared but not yet finalized.
	case draft = "draft"
	
	/// the invoice has been finalized and sent to the recipient.
	case issued = "issued"
	
	/// the invoice has been balaced / completely paid.
	case balanced = "balanced"
	
	/// the invoice was cancelled.
	case cancelled = "cancelled"
	
	/// the invoice was determined as entered in error before it was issued.
	case enteredInError = "entered-in-error"
}


/**
How the issue affects the success of the action.

URL: http://hl7.org/fhir/issue-severity
ValueSet: http://hl7.org/fhir/ValueSet/issue-severity
*/
public enum IssueSeverity: String {
	
	/// The issue caused the action to fail and no further checking could be performed.
	case fatal = "fatal"
	
	/// The issue is sufficiently important to cause the action to fail.
	case error = "error"
	
	/// The issue is not important enough to cause the action to fail but may cause it to be performed suboptimally or
	/// in a way that is not as desired.
	case warning = "warning"
	
	/// The issue has no relation to the degree of success of the action.
	case information = "information"
}


/**
A code that describes the type of issue.

URL: http://hl7.org/fhir/issue-type
ValueSet: http://hl7.org/fhir/ValueSet/issue-type
*/
public enum IssueType: String {
	
	/// Content invalid against the specification or a profile.
	case invalid = "invalid"
	
	/// A structural issue in the content such as wrong namespace, unable to parse the content completely, invalid
	/// syntax, etc.
	case structure = "structure"
	
	/// A required element is missing.
	case required = "required"
	
	/// An element or header value is invalid.
	case value = "value"
	
	/// A content validation rule failed - e.g. a schematron rule.
	case invariant = "invariant"
	
	/// An authentication/authorization/permissions issue of some kind.
	case security = "security"
	
	/// The client needs to initiate an authentication process.
	case login = "login"
	
	/// The user or system was not able to be authenticated (either there is no process, or the proferred token is
	/// unacceptable).
	case unknown = "unknown"
	
	/// User session expired; a login may be required.
	case expired = "expired"
	
	/// The user does not have the rights to perform this action.
	case forbidden = "forbidden"
	
	/// Some information was not or might not have been returned due to business rules, consent or privacy rules, or
	/// access permission constraints.  This information may be accessible through alternate processes.
	case suppressed = "suppressed"
	
	/// Processing issues. These are expected to be final e.g. there is no point resubmitting the same content
	/// unchanged.
	case processing = "processing"
	
	/// The interaction, operation, resource or profile is not supported.
	case notSupported = "not-supported"
	
	/// An attempt was made to create a duplicate record.
	case duplicate = "duplicate"
	
	/// Multiple matching records were found when the operation required only one match.
	case multipleMatches = "multiple-matches"
	
	/// The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this
	/// code may be used where the content is not found further into the application architecture.
	case notFound = "not-found"
	
	/// The reference pointed to content (usually a resource) that has been deleted.
	case deleted = "deleted"
	
	/// Provided content is too long (typically, this is a denial of service protection type of error).
	case tooLong = "too-long"
	
	/// The code or system could not be understood, or it was not valid in the context of a particular ValueSet.code.
	case codeInvalid = "code-invalid"
	
	/// An extension was found that was not acceptable, could not be resolved, or a modifierExtension was not
	/// recognized.
	case extension_fhir = "extension"
	
	/// The operation was stopped to protect server resources; e.g. a request for a value set expansion on all of SNOMED
	/// CT.
	case tooCostly = "too-costly"
	
	/// The content/operation failed to pass some business rule and so could not proceed.
	case businessRule = "business-rule"
	
	/// Content could not be accepted because of an edit conflict (i.e. version aware updates). (In a pure RESTful
	/// environment, this would be an HTTP 409 error, but this code may be used where the conflict is discovered further
	/// into the application architecture.).
	case conflict = "conflict"
	
	/// Transient processing issues. The system receiving the message may be able to resubmit the same content once an
	/// underlying issue is resolved.
	case transient = "transient"
	
	/// A resource/record locking failure (usually in an underlying database).
	case lockError = "lock-error"
	
	/// The persistent store is unavailable; e.g. the database is down for maintenance or similar action, and the
	/// interaction or operation cannot be processed.
	case noStore = "no-store"
	
	/// y.
	case exception = "exception"
	
	/// An internal timeout has occurred.
	case timeout = "timeout"
	
	/// Not all data sources typically accessed could be reached or responded in time, so the returned information might
	/// not be complete (applies to search interactions and some operations).
	case incomplete = "incomplete"
	
	/// The system is not prepared to handle this request due to load management.
	case throttled = "throttled"
	
	/// A message unrelated to the processing success of the completed operation (examples of the latter include things
	/// like reminders of password expiry, system maintenance times, etc.).
	case informational = "informational"
}


/**
A list of all the knowledge resource types defined in this version of the FHIR specification.

URL: http://hl7.org/fhir/knowledge-resource-types
ValueSet: http://hl7.org/fhir/ValueSet/knowledge-resource-types
*/
public enum KnowledgeResourceType: String {
	
	/// The definition of a specific activity to be taken, independent of any particular patient or context.
	case activityDefinition = "ActivityDefinition"
	
	/// A set of codes drawn from one or more code systems.
	case codeSystem = "CodeSystem"
	
	/// A map from one set of concepts to one or more other concepts.
	case conceptMap = "ConceptMap"
	
	/// Represents a library of quality improvement components.
	case library = "Library"
	
	/// A quality measure definition.
	case measure = "Measure"
	
	/// The definition of a plan for a series of actions, independent of any specific patient or context.
	case planDefinition = "PlanDefinition"
	
	/// Structural Definition.
	case structureDefinition = "StructureDefinition"
	
	/// A Map of relationships between 2 structures that can be used to transform data.
	case structureMap = "StructureMap"
	
	/// A set of codes drawn from one or more code systems.
	case valueSet = "ValueSet"
}


/**
This value set defines the set of codes for describing the type or mode of the patient's preferred language.

URL: http://hl7.org/fhir/language-preference-type
*/
public enum LanguagePreferenceType: String {
	
	/// The patient prefers to verbally communicate with the associated language.
	case verbal = "verbal"
	
	/// The patient prefers to communicate in writing with the associated language.
	case written = "written"
}


/**
The type of knowledge asset this library contains.

URL: http://terminology.hl7.org/CodeSystem/library-type
ValueSet: http://hl7.org/fhir/ValueSet/library-type
*/
public enum LibraryType: String {
	
	/// The resource is a shareable library of formalized knowledge.
	case logicLibrary = "logic-library"
	
	/// The resource is a definition of an information model.
	case modelDefinition = "model-definition"
	
	/// The resource is a collection of knowledge assets.
	case assetCollection = "asset-collection"
	
	/// The resource defines the dependencies, parameters, and data requirements for a particular module or evaluation
	/// context.
	case moduleDefinition = "module-definition"
}


/**
The type of link between this patient resource and another patient resource.

URL: http://hl7.org/fhir/link-type
ValueSet: http://hl7.org/fhir/ValueSet/link-type
*/
public enum LinkType: String {
	
	/// The patient resource containing this link must no longer be used. The link points forward to another patient
	/// resource that must be used in lieu of the patient resource that contains this link.
	case replacedBy = "replaced-by"
	
	/// The patient resource containing this link is the current active patient record. The link points back to an
	/// inactive patient resource that has been merged into this resource, and should be consulted to retrieve
	/// additional referenced information.
	case replaces = "replaces"
	
	/// The patient resource containing this link is in use and valid but not considered the main source of information
	/// about a patient. The link points forward to another patient resource that should be consulted to retrieve
	/// additional patient information.
	case refer = "refer"
	
	/// The patient resource containing this link is in use and valid, but points to another patient resource that is
	/// known to contain data about the same person. Data in this resource might overlap or contradict information found
	/// in the other patient resource. This link does not indicate any relative importance of the resources concerned,
	/// and both should be regarded as equally valid.
	case seealso = "seealso"
}


/**
Used to distinguish different roles a resource can play within a set of linked resources.

URL: http://hl7.org/fhir/linkage-type
ValueSet: http://hl7.org/fhir/ValueSet/linkage-type
*/
public enum LinkageType: String {
	
	/// The resource represents the "source of truth" (from the perspective of this Linkage resource) for the underlying
	/// event/condition/etc.
	case source = "source"
	
	/// The resource represents an alternative view of the underlying event/condition/etc.  The resource may still be
	/// actively maintained, even though it is not considered to be the source of truth.
	case alternate = "alternate"
	
	/// The resource represents an obsolete record of the underlying event/condition/etc.  It is not expected to be
	/// actively maintained.
	case historical = "historical"
}


/**
General reasons for a list to be empty. Reasons are either related to a summary list (i.e. problem or medication list)
or to a workflow related list (i.e. consultation list).

URL: http://terminology.hl7.org/CodeSystem/list-empty-reason
ValueSet: http://hl7.org/fhir/ValueSet/list-empty-reason
*/
public enum ListEmptyReasons: String {
	
	/// Clinical judgment that there are no known items for this list after reasonable investigation. Note that this a
	/// positive statement by a clinical user, and not a default position asserted by a computer system in the lack of
	/// other information. Example uses:  * For allergies: the patient or patient's agent/guardian has asserted that
	/// he/she is not aware of any allergies (NKA - nil known allergies)  * For medications: the patient or patient's
	/// agent/guardian has asserted that the patient is known to be taking no medications  * For diagnoses, problems and
	/// procedures: the patient or patient's agent/guardian has asserted that there is no known event to record.
	case nilknown = "nilknown"
	
	/// The investigation to find out whether there are items for this list has not occurred.
	case notasked = "notasked"
	
	/// The content of the list was not provided due to privacy or confidentiality concerns. Note that it should not be
	/// assumed that this means that the particular information in question was withheld due to its contents - it can
	/// also be a policy decision.
	case withheld = "withheld"
	
	/// Information to populate this list cannot be obtained; e.g. unconscious patient.
	case unavailable = "unavailable"
	
	/// The work to populate this list has not yet begun.
	case notstarted = "notstarted"
	
	/// This list has now closed or has ceased to be relevant or useful.
	case closed = "closed"
}


/**
The processing mode that applies to this list.

URL: http://hl7.org/fhir/list-mode
ValueSet: http://hl7.org/fhir/ValueSet/list-mode
*/
public enum ListMode: String {
	
	/// This list is the master list, maintained in an ongoing fashion with regular updates as the real world list it is
	/// tracking changes.
	case working = "working"
	
	/// This list was prepared as a snapshot. It should not be assumed to be current.
	case snapshot = "snapshot"
	
	/// A point-in-time list that shows what changes have been made or recommended.  E.g. a discharge medication list
	/// showing what was added and removed during an encounter.
	case changes = "changes"
}


/**
Base values for the order of the items in a list resource.

URL: http://terminology.hl7.org/CodeSystem/list-order
ValueSet: http://hl7.org/fhir/ValueSet/list-order
*/
public enum ListOrderCodes: String {
	
	/// The list was sorted by a user. The criteria the user used are not specified.
	case user = "user"
	
	/// The list was sorted by the system. The criteria the user used are not specified; define additional codes to
	/// specify a particular order (or use other defined codes).
	case system = "system"
	
	/// The list is sorted by the data of the event. This can be used when the list has items which are dates with past
	/// or future events.
	case eventDate = "event-date"
	
	/// The list is sorted by the date the item was added to the list. Note that the date added to the list is not
	/// explicit in the list itself.
	case entryDate = "entry-date"
	
	/// The list is sorted by priority. The exact method in which priority has been determined is not specified.
	case priority = "priority"
	
	/// The list is sorted alphabetically by an unspecified property of the items in the list.
	case alphabetic = "alphabetic"
	
	/// The list is sorted categorically by an unspecified property of the items in the list.
	case category = "category"
	
	/// The list is sorted by patient, with items for each patient grouped together.
	case patient = "patient"
}


/**
The current state of the list.

URL: http://hl7.org/fhir/list-status
ValueSet: http://hl7.org/fhir/ValueSet/list-status
*/
public enum ListStatus: String {
	
	/// The list is considered to be an active part of the patient's record.
	case current = "current"
	
	/// The list is "old" and should no longer be considered accurate or relevant.
	case retired = "retired"
	
	/// The list was never accurate.  It is retained for medico-legal purposes only.
	case enteredInError = "entered-in-error"
}


/**
Indicates whether a resource instance represents a specific location or a class of locations.

URL: http://hl7.org/fhir/location-mode
ValueSet: http://hl7.org/fhir/ValueSet/location-mode
*/
public enum LocationMode: String {
	
	/// The Location resource represents a specific instance of a location (e.g. Operating Theatre 1A).
	case instance = "instance"
	
	/// The Location represents a class of locations (e.g. Any Operating Theatre) although this class of locations could
	/// be constrained within a specific boundary (such as organization, or parent location, address etc.).
	case kind = "kind"
}


/**
Indicates whether the location is still in use.

URL: http://hl7.org/fhir/location-status
ValueSet: http://hl7.org/fhir/ValueSet/location-status
*/
public enum LocationStatus: String {
	
	/// The location is operational.
	case active = "active"
	
	/// The location is temporarily closed.
	case suspended = "suspended"
	
	/// The location is no longer used.
	case inactive = "inactive"
}


/**
This example value set defines a set of codes that can be used to indicate the physical form of the Location.

URL: http://terminology.hl7.org/CodeSystem/location-physical-type
ValueSet: http://hl7.org/fhir/ValueSet/location-physical-type
*/
public enum LocationType: String {
	
	/// A collection of buildings or other locations such as a site or a campus.
	case si = "si"
	
	/// Any Building or structure. This may contain rooms, corridors, wings, etc. It might not have walls, or a roof,
	/// but is considered a defined/allocated space.
	case bu = "bu"
	
	/// A Wing within a Building, this often contains levels, rooms and corridors.
	case wi = "wi"
	
	/// A Ward is a section of a medical facility that may contain rooms and other types of location.
	case wa = "wa"
	
	/// A Level in a multi-level Building/Structure.
	case lvl = "lvl"
	
	/// Any corridor within a Building, that may connect rooms.
	case co = "co"
	
	/// A space that is allocated as a room, it may have walls/roof etc., but does not require these.
	case ro = "ro"
	
	/// A space that is allocated for sleeping/laying on. This is not the physical bed/trolley that may be moved about,
	/// but the space it may occupy.
	case bd = "bd"
	
	/// A means of transportation.
	case ve = "ve"
	
	/// A residential dwelling. Usually used to reference a location that a person/patient may reside.
	case ho = "ho"
	
	/// A container that can store goods, equipment, medications or other items.
	case ca = "ca"
	
	/// A defined path to travel between 2 points that has a known name.
	case rd = "rd"
	
	/// A defined physical boundary of something, such as a flood risk zone, region, postcode
	case area = "area"
	
	/// A wide scope that covers a conceptual domain, such as a Nation (Country wide community or Federal Government -
	/// e.g. Ministry of Health),  Province or State (community or Government), Business (throughout the enterprise),
	/// Nation with a business scope of an agency (e.g. CDC, FDA etc.) or a Business segment (UK Pharmacy), not just an
	/// physical boundary
	case jdn = "jdn"
}


/**
A Master Patient Index (MPI) assessment of whether a candidate patient record is a match or not.

URL: http://terminology.hl7.org/CodeSystem/match-grade
ValueSet: http://hl7.org/fhir/ValueSet/match-grade
*/
public enum MatchGrade: String {
	
	/// This record meets the matching criteria to be automatically considered as a full match.
	case certain = "certain"
	
	/// This record is a close match, but not a certain match. Additional review (e.g. by a human) may be required
	/// before using this as a match.
	case probable = "probable"
	
	/// This record may be a matching one. Additional review (e.g. by a human) SHOULD be performed before using this as
	/// a match.
	case possible = "possible"
	
	/// This record is known not to be a match. Note that usually non-matching records are not returned, but in some
	/// cases records previously or likely considered as a match may specifically be negated by the matching engine.
	case certainlyNot = "certainly-not"
}


/**
Flags an element as having unlimited repetitions.

URL: http://terminology.hl7.org/CodeSystem/question-max-occurs
ValueSet: http://hl7.org/fhir/ValueSet/question-max-occurs
*/
public enum MaxOccurs: String {
	
	/// Element can repeat an unlimited number of times.
	case max = "*"
}


/**
The intended usage for supplemental data elements in the measure.

URL: http://terminology.hl7.org/CodeSystem/measure-data-usage
ValueSet: http://hl7.org/fhir/ValueSet/measure-data-usage
*/
public enum MeasureDataUsage: String {
	
	/// The data is intended to be provided as additional information alongside the measure results.
	case supplementalData = "supplemental-data"
	
	/// The data is intended to be used to calculate and apply a risk adjustment model for the measure.
	case riskAdjustmentFactor = "risk-adjustment-factor"
}


/**
Observation values that indicate what change in a measurement value or score is indicative of an improvement in the
measured item or scored issue.

URL: http://terminology.hl7.org/CodeSystem/measure-improvement-notation
ValueSet: http://hl7.org/fhir/ValueSet/measure-improvement-notation
*/
public enum MeasureImprovementNotation: String {
	
	/// Improvement is indicated as an increase in the score or measurement (e.g. Higher score indicates better
	/// quality).
	case increase = "increase"
	
	/// Improvement is indicated as a decrease in the score or measurement (e.g. Lower score indicates better quality).
	case decrease = "decrease"
}


/**
The type of population.

URL: http://terminology.hl7.org/CodeSystem/measure-population
ValueSet: http://hl7.org/fhir/ValueSet/measure-population
*/
public enum MeasurePopulationType: String {
	
	/// The initial population refers to all patients or events to be evaluated by a quality measure involving patients
	/// who share a common set of specified characterstics. All patients or events counted (for example, as numerator,
	/// as denominator) are drawn from the initial population.
	case initialPopulation = "initial-population"
	
	/// The upper portion of a fraction used to calculate a rate, proportion, or ratio. Also called the measure focus,
	/// it is the target process, condition, event, or outcome. Numerator criteria are the processes or outcomes
	/// expected for each patient, or event defined in the denominator. A numerator statement describes the clinical
	/// action that satisfies the conditions of the measure.
	case numerator = "numerator"
	
	/// Numerator exclusion criteria define patients or events to be removed from the numerator. Numerator exclusions
	/// are used in proportion and ratio measures to help narrow the numerator (for inverted measures).
	case numeratorExclusion = "numerator-exclusion"
	
	/// The lower portion of a fraction used to calculate a rate, proportion, or ratio. The denominator can be the same
	/// as the initial population, or a subset of the initial population to further constrain the population for the
	/// purpose of the measure.
	case denominator = "denominator"
	
	/// Denominator exclusion criteria define patients or events that should be removed from the denominator before
	/// determining if numerator criteria are met. Denominator exclusions are used in proportion and ratio measures to
	/// help narrow the denominator. For example, patients with bilateral lower extremity amputations would be listed as
	/// a denominator exclusion for a measure requiring foot exams.
	case denominatorExclusion = "denominator-exclusion"
	
	/// Denominator exceptions are conditions that should remove a patient or event from the denominator of a measure
	/// only if the numerator criteria are not met. Denominator exception allows for adjustment of the calculated score
	/// for those providers with higher risk populations. Denominator exception criteria are only used in proportion
	/// measures.
	case denominatorException = "denominator-exception"
	
	/// Measure population criteria define the patients or events for which the individual observation for the measure
	/// should be taken. Measure populations are used for continuous variable measures rather than numerator and
	/// denominator criteria.
	case measurePopulation = "measure-population"
	
	/// Measure population criteria define the patients or events that should be removed from the measure population
	/// before determining the outcome of one or more continuous variables defined for the measure observation. Measure
	/// population exclusion criteria are used within continuous variable measures to help narrow the measure
	/// population.
	case measurePopulationExclusion = "measure-population-exclusion"
	
	/// Defines the individual observation to be performed for each patient or event in the measure population. Measure
	/// observations for each case in the population are aggregated to determine the overall measure score for the
	/// population.
	case measureObservation = "measure-observation"
}


/**
The status of the measure report.

URL: http://hl7.org/fhir/measure-report-status
ValueSet: http://hl7.org/fhir/ValueSet/measure-report-status
*/
public enum MeasureReportStatus: String {
	
	/// The report is complete and ready for use.
	case complete = "complete"
	
	/// The report is currently being generated.
	case pending = "pending"
	
	/// An error occurred attempting to generate the report.
	case error = "error"
}


/**
The type of the measure report.

URL: http://hl7.org/fhir/measure-report-type
ValueSet: http://hl7.org/fhir/ValueSet/measure-report-type
*/
public enum MeasureReportType: String {
	
	/// An individual report that provides information on the performance for a given measure with respect to a single
	/// subject.
	case individual = "individual"
	
	/// A subject list report that includes a listing of subjects that satisfied each population criteria in the
	/// measure.
	case subjectList = "subject-list"
	
	/// A summary report that returns the number of members in each population criteria for the measure.
	case summary = "summary"
	
	/// A data collection report that contains data-of-interest for the measure.
	case dataCollection = "data-collection"
}


/**
The scoring type of the measure.

URL: http://terminology.hl7.org/CodeSystem/measure-scoring
ValueSet: http://hl7.org/fhir/ValueSet/measure-scoring
*/
public enum MeasureScoring: String {
	
	/// The measure score is defined using a proportion.
	case proportion = "proportion"
	
	/// The measure score is defined using a ratio.
	case ratio = "ratio"
	
	/// The score is defined by a calculation of some quantity.
	case continuousVariable = "continuous-variable"
	
	/// The measure is a cohort definition.
	case cohort = "cohort"
}


/**
The type of measure (includes codes from 2.16.840.1.113883.1.11.20368).

URL: http://terminology.hl7.org/CodeSystem/measure-type
ValueSet: http://hl7.org/fhir/ValueSet/measure-type
*/
public enum MeasureType: String {
	
	/// A measure which focuses on a process which leads to a certain outcome, meaning that a scientific basis exists
	/// for believing that the process, when executed well, will increase the probability of achieving a desired
	/// outcome.
	case process = "process"
	
	/// A measure that indicates the result of the performance (or non-performance) of a function or process.
	case outcome = "outcome"
	
	/// A measure that focuses on a health care provider's capacity, systems, and processes to provide high-quality
	/// care.
	case structure = "structure"
	
	/// A measure that focuses on patient-reported information such as patient engagement or patient experience
	/// measures.
	case patientReportedOutcome = "patient-reported-outcome"
	
	/// A measure that combines multiple component measures in to a single quality measure.
	case composite = "composite"
}


/**
Detailed information about the type of the image - its kind, purpose, or the kind of equipment used to generate it.

URL: http://terminology.hl7.org/CodeSystem/media-modality
*/
public enum MediaModality: String {
	
	/// A diagram. Often used in diagnostic reports
	case diagram = "diagram"
	
	/// A digital record of a fax document
	case fax = "fax"
	
	/// A digital scan of a document. This is reserved for when there is not enough metadata to create a document
	/// reference
	case scan = "scan"
	
	/// A retinal image used for identification purposes
	case retina = "retina"
	
	/// A finger print scan used for identification purposes
	case fingerprint = "fingerprint"
	
	/// An iris scan used for identification purposes
	case iris = "iris"
	
	/// A palm scan used for identification purposes
	case palm = "palm"
	
	/// A face scan used for identification purposes
	case face = "face"
}


/**
Codes for high level media categories.

URL: http://terminology.hl7.org/CodeSystem/media-type
ValueSet: http://hl7.org/fhir/ValueSet/media-type
*/
public enum MediaType: String {
	
	/// The media consists of one or more unmoving images, including photographs, computer-generated graphs and charts,
	/// and scanned documents
	case image = "image"
	
	/// The media consists of a series of frames that capture a moving image
	case video = "video"
	
	/// The media consists of a sound recording
	case audio = "audio"
}


/**
MedicationAdministration Category Codes

URL: http://terminology.hl7.org/CodeSystem/medication-admin-category
ValueSet: http://hl7.org/fhir/ValueSet/medication-admin-category
*/
public enum MedicationAdministrationCategoryCodes: String {
	
	/// Includes administrations in an inpatient or acute care setting
	case inpatient = "inpatient"
	
	/// Includes administrations in an outpatient setting (for example, Emergency Department, Outpatient Clinic,
	/// Outpatient Surgery, Doctor's office)
	case outpatient = "outpatient"
	
	/// Includes administrations by the patient in their home (this would include long term care or nursing homes,
	/// hospices, etc.)
	case community = "community"
}


/**
MedicationAdministration Performer Function Codes

URL: http://terminology.hl7.org/CodeSystem/med-admin-perform-function
ValueSet: http://hl7.org/fhir/ValueSet/med-admin-perform-function
*/
public enum MedicationAdministrationPerformerFunctionCodes: String {
	
	/// A person, non-person living subject, organization or device that who actually and principally carries out the
	/// action
	case performer = "performer"
	
	/// A person who verifies the correctness and appropriateness of the service (plan, order, event, etc.) and hence
	/// takes on accountability.
	case verifier = "verifier"
	
	/// A person witnessing the action happening without doing anything. A witness is not necessarily aware, much less
	/// approves of anything stated in the service event. Example for a witness is students watching an operation or an
	/// advanced directive witness.
	case witness = "witness"
}


/**
MedicationAdministration Status Codes

URL: http://terminology.hl7.org/CodeSystem/medication-admin-status
ValueSet: http://hl7.org/fhir/ValueSet/medication-admin-status
*/
public enum MedicationAdministrationStatusCodes: String {
	
	/// The administration has started but has not yet completed.
	case inProgress = "in-progress"
	
	/// The administration was terminated prior to any impact on the subject (though preparatory actions may have been
	/// taken)
	case notDone = "not-done"
	
	/// Actions implied by the administration have been temporarily halted, but are expected to continue later. May also
	/// be called 'suspended'.
	case onHold = "on-hold"
	
	/// All actions that are implied by the administration have occurred.
	case completed = "completed"
	
	/// The administration was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
	
	/// Actions implied by the administration have been permanently halted, before all of them occurred.
	case stopped = "stopped"
	
	/// The authoring system does not know which of the status values currently applies for this request. Note: This
	/// concept is not to be used for 'other' - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}


/**
MedicationDispense Category Codes

URL: http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category
ValueSet: http://hl7.org/fhir/ValueSet/medicationdispense-category
*/
public enum MedicationDispenseCategoryCodes: String {
	
	/// Includes dispenses for medications to be administered or consumed in an inpatient or acute care setting.
	case inpatient = "inpatient"
	
	/// Includes dispenses for medications to be administered or consumed in an outpatient setting (for example,
	/// Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office).
	case outpatient = "outpatient"
	
	/// Includes dispenses for medications to be administered or consumed by the patient in their home (this would
	/// include long term care or nursing homes, hospices, etc.).
	case community = "community"
	
	/// Includes dispenses for medications created when the patient is being released from a facility.
	case discharge = "discharge"
}


/**
MedicationDispense Performer Function Codes

URL: http://terminology.hl7.org/CodeSystem/medicationdispense-performer-function
ValueSet: http://hl7.org/fhir/ValueSet/medicationdispense-performer-function
*/
public enum MedicationDispensePerformerFunctionCodes: String {
	
	/// Recorded the details of the request
	case dataenterer = "dataenterer"
	
	/// Prepared the medication.
	case packager = "packager"
	
	/// Performed initial quality assurance on the prepared medication
	case checker = "checker"
	
	/// Performed the final quality assurance on the prepared medication against the request. Typically, this is a
	/// pharmacist function.
	case finalchecker = "finalchecker"
}


/**
MedicationDispense Status Codes

URL: http://terminology.hl7.org/CodeSystem/medicationdispense-status
ValueSet: http://hl7.org/fhir/ValueSet/medicationdispense-status
*/
public enum MedicationDispenseStatusCodes: String {
	
	/// The core event has not started yet, but some staging activities have begun (e.g. initial compounding or
	/// packaging of medication). Preparation stages may be tracked for billing purposes.
	case preparation = "preparation"
	
	/// The dispensed product is ready for pickup.
	case inProgress = "in-progress"
	
	/// The dispensed product was not and will never be picked up by the patient.
	case cancelled = "cancelled"
	
	/// The dispense process is paused while waiting for an external event to reactivate the dispense.  For example, new
	/// stock has arrived or the prescriber has called.
	case onHold = "on-hold"
	
	/// The dispensed product has been picked up.
	case completed = "completed"
	
	/// The dispense was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
	
	/// Actions implied by the dispense have been permanently halted, before all of them occurred.
	case stopped = "stopped"
	
	/// The dispense was declined and not performed.
	case declined = "declined"
	
	/// The authoring system does not know which of the status values applies for this medication dispense.  Note: this
	/// concept is not to be used for other - one of the listed statuses is presumed to apply, it's just now known which
	/// one.
	case unknown = "unknown"
}


/**
MedicationDispense Status Codes

URL: http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-status-reason
ValueSet: http://hl7.org/fhir/ValueSet/medicationdispense-status-reason
*/
public enum MedicationDispenseStatusReasonCodes: String {
	
	/// The order has been stopped by the prescriber but this fact has not necessarily captured electronically. Example:
	/// A verbal stop, a fax, etc.
	case frr01 = "frr01"
	
	/// Order has not been fulfilled within a reasonable amount of time, and might not be current.
	case frr02 = "frr02"
	
	/// Data needed to safely act on the order which was expected to become available independent of the order is not
	/// yet available. Example: Lab results, diagnostic imaging, etc.
	case frr03 = "frr03"
	
	/// Product not available or manufactured. Cannot supply.
	case frr04 = "frr04"
	
	/// The dispenser has ethical, religious or moral objections to fulfilling the order/dispensing the product.
	case frr05 = "frr05"
	
	/// Fulfiller not able to provide appropriate care associated with fulfilling the order. Example: Therapy requires
	/// ongoing monitoring by fulfiller and fulfiller will be ending practice, leaving town, unable to schedule
	/// necessary time, etc.
	case frr06 = "frr06"
	
	/// This therapy has been ordered as a backup to a preferred therapy. This order will be released when and if the
	/// preferred therapy is unsuccessful.
	case altchoice = "altchoice"
	
	/// Clarification is required before the order can be acted upon.
	case clarif = "clarif"
	
	/// The current level of the medication in the patient's system is too high. The medication is suspended to allow
	/// the level to subside to a safer level.
	case drughigh = "drughigh"
	
	/// The patient has been admitted to a care facility and their community medications are suspended until hospital
	/// discharge.
	case hospadm = "hospadm"
	
	/// The therapy would interfere with a planned lab test and the therapy is being withdrawn until the test is
	/// completed.
	case labint = "labint"
	
	/// Patient not available for a period of time due to a scheduled therapy, leave of absence or other reason.
	case nonAvail = "non-avail"
	
	/// The patient is pregnant or breast feeding. The therapy will be resumed when the pregnancy is complete and the
	/// patient is no longer breastfeeding.
	case preg = "preg"
	
	/// The patient is believed to be allergic to a substance that is part of the therapy and the therapy is being
	/// temporarily withdrawn to confirm.
	case saig = "saig"
	
	/// The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when
	/// the short-term treatment is complete.
	case sddi = "sddi"
	
	/// Another short-term co-occurring therapy fulfills the same purpose as this therapy. This therapy will be resumed
	/// when the co-occuring therapy is complete.
	case sdupther = "sdupther"
	
	/// The patient is believed to have an intolerance to a substance that is part of the therapy and the therapy is
	/// being temporarily withdrawn to confirm.
	case sintol = "sintol"
	
	/// The drug is contraindicated for patients receiving surgery and the patient is scheduled to be admitted for
	/// surgery in the near future. The drug will be resumed when the patient has sufficiently recovered from the
	/// surgery.
	case surg = "surg"
	
	/// The patient was previously receiving a medication contraindicated with the current medication. The current
	/// medication will remain on hold until the prior medication has been cleansed from their system.
	case washout = "washout"
	
	/// Drug out of stock. Cannot supply.
	case outofstock = "outofstock"
	
	/// Drug no longer marketed Cannot supply.
	case offmarket = "offmarket"
}


/**
MedicationKnowledge Characteristic Codes

URL: http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic
ValueSet: http://hl7.org/fhir/ValueSet/medicationknowledge-characteristic
*/
public enum MedicationKnowledgeCharacteristicCodes: String {
	
	/// Identyifying marks on product
	case imprintcd = "imprintcd"
	
	/// Description of size of the product
	case size = "size"
	
	/// Description of the shape of the product
	case shape = "shape"
	
	/// Description of the color of the product
	case color = "color"
	
	/// Description of the coating of the product
	case coating = "coating"
	
	/// Description of the scoring of the product
	case scoring = "scoring"
	
	/// Description of the Logo of the product
	case logo = "logo"
}


/**
MedicationKnowledge Package Type Codes

URL: http://terminology.hl7.org/CodeSystem/medicationknowledge-package-type
ValueSet: http://hl7.org/fhir/ValueSet/medicationknowledge-package-type
*/
public enum MedicationKnowledgePackageTypeCodes: String {
	
	/// amp
	case amp = "amp"
	
	/// bag
	case bag = "bag"
	
	/// blstrpk
	case blstrpk = "blstrpk"
	
	/// bot
	case bot = "bot"
	
	/// box
	case box = "box"
	
	/// can
	case can = "can"
	
	/// cart
	case cart = "cart"
	
	/// disk
	case disk = "disk"
	
	/// doset
	case doset = "doset"
	
	/// jar
	case jar = "jar"
	
	/// jug
	case jug = "jug"
	
	/// minim
	case minim = "minim"
	
	/// nebamp
	case nebamp = "nebamp"
	
	/// ovul
	case ovul = "ovul"
	
	/// pch
	case pch = "pch"
	
	/// pkt
	case pkt = "pkt"
	
	/// sash
	case sash = "sash"
	
	/// strip
	case strip = "strip"
	
	/// tin
	case tin = "tin"
	
	/// tub
	case tub = "tub"
	
	/// tube
	case tube = "tube"
	
	/// vial
	case vial = "vial"
}


/**
MedicationKnowledge Status Codes

URL: http://terminology.hl7.org/CodeSystem/medicationknowledge-status
ValueSet: http://hl7.org/fhir/ValueSet/medicationknowledge-status
*/
public enum MedicationKnowledgeStatusCodes: String {
	
	/// The medication is available for use.
	case active = "active"
	
	/// The medication is not available for use.
	case inactive = "inactive"
	
	/// The medication was entered in error.
	case enteredInError = "entered-in-error"
}


/**
MedicationRequest Category Codes

URL: http://terminology.hl7.org/CodeSystem/medicationrequest-category
ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-category
*/
public enum MedicationRequestCategoryCodes: String {
	
	/// Includes requests for medications to be administered or consumed in an inpatient or acute care setting
	case inpatient = "inpatient"
	
	/// Includes requests for medications to be administered or consumed in an outpatient setting (for example,
	/// Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
	case outpatient = "outpatient"
	
	/// Includes requests for medications to be administered or consumed by the patient in their home (this would
	/// include long term care or nursing homes, hospices, etc.)
	case community = "community"
	
	/// Includes requests for medications created when the patient is being released from a facility
	case discharge = "discharge"
}


/**
MedicationRequest Course of Therapy Codes

URL: http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy
ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-course-of-therapy
*/
public enum MedicationRequestCourseOfTherapyCodes: String {
	
	/// A medication which is expected to be continued beyond the present order and which the patient should be assumed
	/// to be taking unless explicitly stopped.
	case continuous = "continuous"
	
	/// A medication which the patient is only expected to consume for the duration of the current order and which is
	/// not expected to be renewed.
	case acute = "acute"
	
	/// A medication which is expected to be used on a part time basis at certain times of the year
	case seasonal = "seasonal"
}


/**
MedicationRequest Intent Codes

URL: http://hl7.org/fhir/CodeSystem/medicationrequest-intent
ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-intent
*/
public enum MedicationRequestIntent: String {
	
	/// The request is a suggestion made by someone/something that doesn't have an intention to ensure it occurs and
	/// without providing an authorization to act
	case proposal = "proposal"
	
	/// The request represents an intention to ensure something occurs without providing an authorization for others to
	/// act.
	case plan = "plan"
	
	/// The request represents a request/demand and authorization for action
	case order = "order"
	
	/// The request represents the original authorization for the medication request.
	case originalOrder = "original-order"
	
	/// The request represents an automatically generated supplemental authorization for action based on a parent
	/// authorization together with initial results of the action taken against that parent authorization..
	case reflexOrder = "reflex-order"
	
	/// The request represents the view of an authorization instantiated by a fulfilling system representing the details
	/// of the fulfiller's intention to act upon a submitted order.
	case fillerOrder = "filler-order"
	
	/// The request represents an instance for the particular order, for example a medication administration record.
	case instanceOrder = "instance-order"
	
	/// The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or
	/// other constraints among a set of requests.
	case option = "option"
}


/**
MedicationRequest Status Reason Codes

URL: http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason
ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-status-reason
*/
public enum MedicationRequestStatusReasonCodes: String {
	
	/// This therapy has been ordered as a backup to a preferred therapy. This order will be released when and if the
	/// preferred therapy is unsuccessful.
	case altchoice = "altchoice"
	
	/// Clarification is required before the order can be acted upon.
	case clarif = "clarif"
	
	/// The current level of the medication in the patient's system is too high. The medication is suspended to allow
	/// the level to subside to a safer level.
	case drughigh = "drughigh"
	
	/// The patient has been admitted to a care facility and their community medications are suspended until hospital
	/// discharge.
	case hospadm = "hospadm"
	
	/// The therapy would interfere with a planned lab test and the therapy is being withdrawn until the test is
	/// completed.
	case labint = "labint"
	
	/// Patient not available for a period of time due to a scheduled therapy, leave of absence or other reason.
	case nonAvail = "non-avail"
	
	/// The patient is pregnant or breast feeding. The therapy will be resumed when the pregnancy is complete and the
	/// patient is no longer breastfeeding.
	case preg = "preg"
	
	/// The patient is believed to be allergic to a substance that is part of the therapy and the therapy is being
	/// temporarily withdrawn to confirm.
	case salg = "salg"
	
	/// The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when
	/// the short-term treatment is complete.
	case sddi = "sddi"
	
	/// The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when
	/// the short-term treatment is complete.
	case sdupther = "sdupther"
	
	/// The drug interacts with a short-term treatment that is more urgently required. This order will be resumed when
	/// the short-term treatment is complete.
	case sintol = "sintol"
	
	/// The drug is contraindicated for patients receiving surgery and the patient is scheduled to be admitted for
	/// surgery in the near future. The drug will be resumed when the patient has sufficiently recovered from the
	/// surgery.
	case surg = "surg"
	
	/// The patient was previously receiving a medication contraindicated with the current medication. The current
	/// medication will remain on hold until the prior medication has been cleansed from their system.
	case washout = "washout"
}


/**
Medication Status Codes

URL: http://terminology.hl7.org/CodeSystem/medication-statement-category
ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-category
*/
public enum MedicationStatementCategoryCodes: String {
	
	/// Includes orders for medications to be administered or consumed in an inpatient or acute care setting
	case inpatient = "inpatient"
	
	/// Includes orders for medications to be administered or consumed in an outpatient setting (for example, Emergency
	/// Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
	case outpatient = "outpatient"
	
	/// Includes orders for medications to be administered or consumed by the patient in their home (this would include
	/// long term care or nursing homes, hospices, etc.).
	case community = "community"
	
	/// Includes statements about medication use, including over the counter medication, provided by the patient, agent
	/// or another provider
	case patientspecified = "patientspecified"
}


/**
Medication Status Codes

URL: http://hl7.org/fhir/CodeSystem/medication-statement-status
ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-status
*/
public enum MedicationStatementStatusCodes: String {
	
	/// The medication is still being taken.
	case active = "active"
	
	/// The medication is no longer being taken.
	case completed = "completed"
	
	/// Some of the actions that are implied by the medication statement may have occurred.  For example, the patient
	/// may have taken some of the medication.  Clinical decision support systems should take this status into account.
	case enteredInError = "entered-in-error"
	
	/// The medication may be taken at some time in the future.
	case intended = "intended"
	
	/// Actions implied by the statement have been permanently halted, before all of them occurred. This should not be
	/// used if the statement was entered in error.
	case stopped = "stopped"
	
	/// Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be
	/// called 'suspended'.
	case onHold = "on-hold"
	
	/// The state of the medication use is not currently known.
	case unknown = "unknown"
	
	/// The medication was not consumed by the patient
	case notTaken = "not-taken"
}


/**
Medication Status Codes

URL: http://hl7.org/fhir/CodeSystem/medication-status
ValueSet: http://hl7.org/fhir/ValueSet/medication-status
*/
public enum MedicationStatusCodes: String {
	
	/// The medication is available for use.
	case active = "active"
	
	/// The medication is not available for use.
	case inactive = "inactive"
	
	/// The medication was entered in error.
	case enteredInError = "entered-in-error"
}


/**
MedicationRequest Status Codes

URL: http://hl7.org/fhir/CodeSystem/medicationrequest-status
ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-status
*/
public enum MedicationrequestStatus: String {
	
	/// The prescription is 'actionable', but not all actions that are implied by it have occurred yet.
	case active = "active"
	
	/// Actions implied by the prescription are to be temporarily halted, but are expected to continue later.  May also
	/// be called 'suspended'.
	case onHold = "on-hold"
	
	/// The prescription has been withdrawn before any administrations have occurred
	case cancelled = "cancelled"
	
	/// All actions that are implied by the prescription have occurred.
	case completed = "completed"
	
	/// Some of the actions that are implied by the medication request may have occurred.  For example, the medication
	/// may have been dispensed and the patient may have taken some of the medication.  Clinical decision support
	/// systems should take this status into account
	case enteredInError = "entered-in-error"
	
	/// Actions implied by the prescription are to be permanently halted, before all of the administrations occurred.
	/// This should not be used if the original order was entered in error
	case stopped = "stopped"
	
	/// The prescription is not yet 'actionable', e.g. it is a work in progress, requires sign-off,
	/// verification or needs to be run through decision support process.
	case draft = "draft"
	
	/// The authoring/source system does not know which of the status values currently applies for this observation.
	/// Note: This concept is not to be used for 'other' - one of the listed statuses is presumed to apply, but the
	/// authoring/source system does not know which.
	case unknown = "unknown"
}


/**
The impact of the content of a message.

URL: http://hl7.org/fhir/message-significance-category
ValueSet: http://hl7.org/fhir/ValueSet/message-significance-category
*/
public enum MessageSignificanceCategory: String {
	
	/// The message represents/requests a change that should not be processed more than once; e.g., making a booking for
	/// an appointment.
	case consequence = "consequence"
	
	/// The message represents a response to query for current information. Retrospective processing is wrong and/or
	/// wasteful.
	case currency = "currency"
	
	/// The content is not necessarily intended to be current, and it can be reprocessed, though there may be version
	/// issues created by processing old notifications.
	case notification = "notification"
}


/**
The protocol used for message transport.

URL: http://terminology.hl7.org/CodeSystem/message-transport
ValueSet: http://hl7.org/fhir/ValueSet/message-transport
*/
public enum MessageTransport: String {
	
	/// The application sends or receives messages using HTTP POST (may be over http: or https:).
	case http = "http"
	
	/// The application sends or receives messages using File Transfer Protocol.
	case ftp = "ftp"
	
	/// The application sends or receives messages using HL7's Minimal Lower Level Protocol.
	case mllp = "mllp"
}


/**
HL7-defined table of codes which identify conditions under which acknowledgments are required to be returned in response
to a message.

URL: http://hl7.org/fhir/messageheader-response-request
ValueSet: http://hl7.org/fhir/ValueSet/messageheader-response-request
*/
public enum MessageheaderResponseRequest: String {
	
	/// initiator expects a response for this message.
	case always = "always"
	
	/// initiator expects a response only if in error.
	case onError = "on-error"
	
	/// initiator does not expect a response.
	case never = "never"
	
	/// initiator expects a response only if successful.
	case onSuccess = "on-success"
}


/**
This value set includes sample Missing Tooth Reason codes.

URL: http://terminology.hl7.org/CodeSystem/missingtoothreason
ValueSet: http://hl7.org/fhir/ValueSet/missing-tooth-reason
*/
public enum MissingToothReasonCodes: String {
	
	/// Extraction
	case E = "e"
	
	/// Congenital
	case C = "c"
	
	/// Unknown
	case U = "u"
	
	/// Other
	case O = "o"
}


/**
This value set includes sample Modifier type codes.

URL: http://terminology.hl7.org/CodeSystem/modifiers
ValueSet: http://hl7.org/fhir/ValueSet/claim-modifiers
*/
public enum ModifierTypeCodes: String {
	
	/// Repair of prior service or installation.
	case A = "a"
	
	/// Temporary service or installation.
	case B = "b"
	
	/// Treatment associated with TMJ.
	case C = "c"
	
	/// Implant or associated with an implant.
	case E = "e"
	
	/// A Rush service or service performed outside of normal office hours.
	case rooh = "rooh"
	
	/// None.
	case X = "x"
}


/**
This value set is suitable for use with the provenance resource. It is derived from, but not compatible with, the HL7 v3
Purpose of use Code system.

URL: http://healthit.gov/nhin/purposeofuse
ValueSet: http://hl7.org/fhir/ValueSet/nhin-purposeofuse
*/
public enum NHINPurposeOfUse: String {
	
	/// Treatment
	case TREATMENT = "TREATMENT"
	
	/// Payment
	case PAYMENT = "PAYMENT"
	
	/// Healthcare Operations
	case OPERATIONS = "OPERATIONS"
	
	/// System Administration
	case SYSADMIN = "SYSADMIN"
	
	/// Fraud detection
	case FRAUD = "FRAUD"
	
	/// Use or disclosure of Psychotherapy Notes
	case PSYCHOTHERAPY = "PSYCHOTHERAPY"
	
	/// Use or disclosure by the covered entity for its own training programs
	case TRAINING = "TRAINING"
	
	/// Use or disclosure by the covered entity to defend itself in a legal action
	case LEGAL = "LEGAL"
	
	/// Marketing
	case MARKETING = "MARKETING"
	
	/// Use and disclosure for facility directories
	case DIRECTORY = "DIRECTORY"
	
	/// Disclose to a family member, other relative, or a close personal friend of the individual
	case FAMILY = "FAMILY"
	
	/// Uses and disclosures with the individual present.
	case PRESENT = "PRESENT"
	
	/// Permission cannot practicably be provided because of the individual's incapacity or an emergency.
	case EMERGENCY = "EMERGENCY"
	
	/// Use and disclosures for disaster relief purposes.
	case DISASTER = "DISASTER"
	
	/// Uses and disclosures for public health activities.
	case PUBLICHEALTH = "PUBLICHEALTH"
	
	/// Disclosures about victims of abuse, neglect or domestic violence.
	case ABUSE = "ABUSE"
	
	/// Uses and disclosures for health oversight activities.
	case OVERSIGHT = "OVERSIGHT"
	
	/// Disclosures for judicial and administrative proceedings.
	case JUDICIAL = "JUDICIAL"
	
	/// Disclosures for law enforcement purposes.
	case LAW = "LAW"
	
	/// Uses and disclosures about decedents.
	case DECEASED = "DECEASED"
	
	/// Uses and disclosures for cadaveric organ,  eye or tissue donation purposes
	case DONATION = "DONATION"
	
	/// Uses and disclosures for research purposes.
	case RESEARCH = "RESEARCH"
	
	/// Uses and disclosures to avert a serious threat to health or safety.
	case THREAT = "THREAT"
	
	/// Uses and disclosures for specialized government functions.
	case GOVERNMENT = "GOVERNMENT"
	
	/// Disclosures for workers' compensation.
	case WORKERSCOMP = "WORKERSCOMP"
	
	/// Disclosures for insurance or disability coverage determination
	case COVERAGE = "COVERAGE"
	
	/// Request of the Individual
	case REQUEST = "REQUEST"
}


/**
The use of a human name.

URL: http://hl7.org/fhir/name-use
ValueSet: http://hl7.org/fhir/ValueSet/name-use
*/
public enum NameUse: String {
	
	/// Known as/conventional/the one you normally use.
	case usual = "usual"
	
	/// The formal name as registered in an official (government) registry, but which name might not be commonly used.
	/// May be called "legal name".
	case official = "official"
	
	/// A temporary name. Name.period can provide more detailed information. This may also be used for temporary names
	/// assigned at birth or in emergency situations.
	case temp = "temp"
	
	/// A name that is used to address the person in an informal manner, but is not part of their formal or usual name.
	case nickname = "nickname"
	
	/// Anonymous assigned name, alias, or pseudonym (used to protect a person's identity for privacy reasons).
	case anonymous = "anonymous"
	
	/// This name is no longer in use (or was never correct, but retained for records).
	case old = "old"
	
	/// A name used prior to changing name because of marriage. This name use is for use by applications that collect
	/// and store names that were used prior to a marriage. Marriage naming customs vary greatly around the world, and
	/// are constantly changing. This term is not gender specific. The use of this term does not imply any particular
	/// history for a person's name.
	case maiden = "maiden"
}


/**
Identifies the style of unique identifier used to identify a namespace.

URL: http://hl7.org/fhir/namingsystem-identifier-type
ValueSet: http://hl7.org/fhir/ValueSet/namingsystem-identifier-type
*/
public enum NamingSystemIdentifierType: String {
	
	/// An ISO object identifier; e.g. 1.2.3.4.5.
	case oid = "oid"
	
	/// A universally unique identifier of the form a5afddf4-e880-459b-876e-e4591b0acc11.
	case uuid = "uuid"
	
	/// A uniform resource identifier (ideally a URL - uniform resource locator); e.g. http://unitsofmeasure.org.
	case uri = "uri"
	
	/// Some other type of unique identifier; e.g. HL7-assigned reserved string such as LN for LOINC.
	case other = "other"
}


/**
Identifies the purpose of the naming system.

URL: http://hl7.org/fhir/namingsystem-type
ValueSet: http://hl7.org/fhir/ValueSet/namingsystem-type
*/
public enum NamingSystemType: String {
	
	/// The naming system is used to define concepts and symbols to represent those concepts; e.g. UCUM, LOINC, NDC
	/// code, local lab codes, etc.
	case codesystem = "codesystem"
	
	/// The naming system is used to manage identifiers (e.g. license numbers, order numbers, etc.).
	case identifier = "identifier"
	
	/// The naming system is used as the root for other identifiers and naming systems.
	case root = "root"
}


/**
The status of a resource narrative.

URL: http://hl7.org/fhir/narrative-status
ValueSet: http://hl7.org/fhir/ValueSet/narrative-status
*/
public enum NarrativeStatus: String {
	
	/// The contents of the narrative are entirely generated from the core elements in the content.
	case generated = "generated"
	
	/// The contents of the narrative are entirely generated from the core elements in the content and some of the
	/// content is generated from extensions. The narrative SHALL reflect the impact of all modifier extensions.
	case extensions = "extensions"
	
	/// The contents of the narrative may contain additional information not found in the structured data. Note that
	/// there is no computable way to determine what the extra information is, other than by human inspection.
	case additional = "additional"
	
	/// The contents of the narrative are some equivalent of "No human-readable text provided in this case".
	case empty = "empty"
}


/**
The frequency with which the target must be validated

URL: http://terminology.hl7.org/CodeSystem/need
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-need
*/
public enum Need: String {
	
	/// ***TODO***
	case none = "none"
	
	/// ***TODO***
	case initial = "initial"
	
	/// ***TODO***
	case periodic = "periodic"
}


/**
This value set includes a smattering of Network type codes.

URL: http://terminology.hl7.org/CodeSystem/benefit-network
ValueSet: http://hl7.org/fhir/ValueSet/benefit-network
*/
public enum NetworkTypeCodes: String {
	
	/// Services rendered by a Network provider
	case `in` = "in"
	
	/// Services rendered by a provider who is not in the Network
	case out = "out"
}


/**
The presentation types of notes.

URL: http://hl7.org/fhir/note-type
ValueSet: http://hl7.org/fhir/ValueSet/note-type
*/
public enum NoteType: String {
	
	/// Display the note.
	case display = "display"
	
	/// Print the note on the form.
	case print = "print"
	
	/// Print the note for the operator.
	case printoper = "printoper"
}


/**
Observation Category codes.

URL: http://terminology.hl7.org/CodeSystem/observation-category
ValueSet: http://hl7.org/fhir/ValueSet/observation-category
*/
public enum ObservationCategoryCodes: String {
	
	/// Social History Observations define the patient's occupational, personal (e.g., lifestyle), social, familial, and
	/// environmental history and health risk factors that may impact the patient's health.
	case socialHistory = "social-history"
	
	///  Clinical observations measure the body's basic functions such as blood pressure, heart rate, respiratory rate,
	/// height, weight, body mass index, head circumference, pulse oximetry, temperature, and body surface area.
	case vitalSigns = "vital-signs"
	
	/// Observations generated by imaging. The scope includes observations regarding plain x-ray, ultrasound, CT, MRI,
	/// angiography, echocardiography, and nuclear medicine.
	case imaging = "imaging"
	
	/// The results of observations generated by laboratories.  Laboratory results are typically generated by
	/// laboratories providing analytic services in areas such as chemistry, hematology, serology, histology, cytology,
	/// anatomic pathology (including digital pathology), microbiology, and/or virology. These observations are based on
	/// analysis of specimens obtained from the patient and submitted to the laboratory.
	case laboratory = "laboratory"
	
	/// Observations generated by other procedures.  This category includes observations resulting from interventional
	/// and non-interventional procedures excluding laboratory and imaging (e.g., cardiology catheterization, endoscopy,
	/// electrodiagnostics, etc.).  Procedure results are typically generated by a clinician to provide more granular
	/// information about component observations made during a procedure.  An example would be when a gastroenterologist
	/// reports the size of a polyp observed during a colonoscopy.
	case procedure = "procedure"
	
	/// Assessment tool/survey instrument observations (e.g., Apgar Scores, Montreal Cognitive Assessment (MoCA)).
	case survey = "survey"
	
	/// Observations generated by physical exam findings including direct observations made by a clinician and use of
	/// simple instruments and the result of simple maneuvers performed directly on the patient's body.
	case exam = "exam"
	
	/// Observations generated by non-interventional treatment protocols (e.g. occupational, physical, radiation,
	/// nutritional and medication therapy)
	case therapy = "therapy"
	
	/// Observations that measure or record any bodily activity that enhances or maintains physical fitness and overall
	/// health and wellness.  Not under direct supervision of practitioner such as a physical therapist. (e.g., laps
	/// swum, steps, sleep data)
	case activity = "activity"
}


/**
Permitted data type for observation value.

URL: http://hl7.org/fhir/permitted-data-type
ValueSet: http://hl7.org/fhir/ValueSet/permitted-data-type
*/
public enum ObservationDataType: String {
	
	/// A measured amount.
	case quantity = "Quantity"
	
	/// A coded concept from a reference terminology and/or text.
	case codeableConcept = "CodeableConcept"
	
	/// A sequence of Unicode characters.
	case string = "string"
	
	/// true or false.
	case boolean = "boolean"
	
	/// A signed integer.
	case integer = "integer"
	
	/// A set of values bounded by low and high.
	case range = "Range"
	
	/// A ratio of two Quantity values - a numerator and a denominator.
	case ratio = "Ratio"
	
	/// A series of measurements taken by a device.
	case sampledData = "SampledData"
	
	/// A time during the day, in the format hh:mm:ss.
	case time = "time"
	
	/// A date, date-time or partial date (e.g. just year or year + month) as used in human communication.
	case dateTime = "dateTime"
	
	/// A time range defined by start and end date/time.
	case period = "Period"
}


/**
Codes identifying the category of observation range.

URL: http://hl7.org/fhir/observation-range-category
ValueSet: http://hl7.org/fhir/ValueSet/observation-range-category
*/
public enum ObservationRangeCategory: String {
	
	/// Reference (Normal) Range for Ordinal and Continuous Observations.
	case reference = "reference"
	
	/// Critical Range for Ordinal and Continuous Observations.
	case critical = "critical"
	
	/// Absolute Range for Ordinal and Continuous Observations. Results outside this range are not possible.
	case absolute = "absolute"
}


/**
This value set defines a set of codes that can be used to indicate the meaning/use of a reference range for a particular
target population.

URL: http://terminology.hl7.org/CodeSystem/referencerange-meaning
ValueSet: http://hl7.org/fhir/ValueSet/referencerange-meaning
*/
public enum ObservationReferenceRangeMeaningCodes: String {
	
	/// General types of reference range.
	case type = "type"
	
	/// Values expected for a normal member of the relevant control population being measured. Typically each results
	/// producer such as a laboratory has specific normal ranges and they are usually defined as within two standard
	/// deviations from the mean and account for 95.45% of this population.
	case normal = "normal"
	
	/// The range that is recommended by a relevant professional body.
	case recommended = "recommended"
	
	/// The range at which treatment would/should be considered.
	case treatment = "treatment"
	
	/// The optimal range for best therapeutic outcomes.
	case therapeutic = "therapeutic"
	
	/// The optimal range for best therapeutic outcomes for a specimen taken immediately before administration.
	case pre = "pre"
	
	/// The optimal range for best therapeutic outcomes for a specimen taken immediately after administration.
	case post = "post"
	
	/// Endocrine related states that change the expected value.
	case endocrine = "endocrine"
	
	/// An expected range in an individual prior to puberty.
	case prePuberty = "pre-puberty"
	
	/// An expected range in an individual during the follicular stage of the cycle.
	case follicular = "follicular"
	
	/// An expected range in an individual during the midcycle stage of the cycle.
	case midcycle = "midcycle"
	
	/// An expected range in an individual during the luteal stage of the cycle.
	case luteal = "luteal"
	
	/// An expected range in an individual post-menopause.
	case postmenopausal = "postmenopausal"
}


/**
Codes providing the status of an observation.

URL: http://hl7.org/fhir/observation-status
ValueSet: http://hl7.org/fhir/ValueSet/observation-status
*/
public enum ObservationStatus: String {
	
	/// The existence of the observation is registered, but there is no result yet available.
	case registered = "registered"
	
	/// This is an initial or interim observation: data may be incomplete or unverified.
	case preliminary = "preliminary"
	
	/// The observation is complete and there are no further actions needed. Additional information such "released",
	/// "signed", etc would be represented using [Provenance](provenance.html) which provides not only the act but also
	/// the actors and dates and other related data. These act states would be associated with an observation status of
	/// `preliminary` until they are all completed and then a status of `final` would be applied.
	case final = "final"
	
	/// Subsequent to being Final, the observation has been modified subsequent.  This includes updates/new information
	/// and corrections.
	case amended = "amended"
	
	/// Subsequent to being Final, the observation has been modified to correct an error in the test result.
	case corrected = "corrected"
	
	/// The observation is unavailable because the measurement was not started or not completed (also sometimes called
	/// "aborted").
	case cancelled = "cancelled"
	
	/// The observation has been withdrawn following previous final release.  This electronic record should never have
	/// existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred,
	/// the status should be "cancelled" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
	
	/// The authoring/source system does not know which of the status values currently applies for this observation.
	/// Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the
	/// authoring/source system does not know which.
	case unknown = "unknown"
}


/**
Whether an operation is a normal operation or a query.

URL: http://hl7.org/fhir/operation-kind
ValueSet: http://hl7.org/fhir/ValueSet/operation-kind
*/
public enum OperationKind: String {
	
	/// This operation is invoked as an operation.
	case operation = "operation"
	
	/// This operation is a named query, invoked using the search mechanism.
	case query = "query"
}


/**
Operation Outcome codes used by FHIR test servers (see Implementation file translations.xml)

URL: http://terminology.hl7.org/CodeSystem/operation-outcome
*/
public enum OperationOutcomeCodes: String {
	
	/// DELETE_MULTIPLE_MATCHES
	case DELETE_MULTIPLE_MATCHES = "DELETE_MULTIPLE_MATCHES"
	
	/// MSG_AUTH_REQUIRED
	case MSG_AUTH_REQUIRED = "MSG_AUTH_REQUIRED"
	
	/// MSG_BAD_FORMAT
	case MSG_BAD_FORMAT = "MSG_BAD_FORMAT"
	
	/// MSG_BAD_SYNTAX
	case MSG_BAD_SYNTAX = "MSG_BAD_SYNTAX"
	
	/// MSG_CANT_PARSE_CONTENT
	case MSG_CANT_PARSE_CONTENT = "MSG_CANT_PARSE_CONTENT"
	
	/// MSG_CANT_PARSE_ROOT
	case MSG_CANT_PARSE_ROOT = "MSG_CANT_PARSE_ROOT"
	
	/// MSG_CREATED
	case MSG_CREATED = "MSG_CREATED"
	
	/// MSG_DATE_FORMAT
	case MSG_DATE_FORMAT = "MSG_DATE_FORMAT"
	
	/// MSG_DELETED
	case MSG_DELETED = "MSG_DELETED"
	
	/// MSG_DELETED_DONE
	case MSG_DELETED_DONE = "MSG_DELETED_DONE"
	
	/// MSG_DELETED_ID
	case MSG_DELETED_ID = "MSG_DELETED_ID"
	
	/// MSG_DUPLICATE_ID
	case MSG_DUPLICATE_ID = "MSG_DUPLICATE_ID"
	
	/// MSG_ERROR_PARSING
	case MSG_ERROR_PARSING = "MSG_ERROR_PARSING"
	
	/// MSG_ID_INVALID
	case MSG_ID_INVALID = "MSG_ID_INVALID"
	
	/// MSG_ID_TOO_LONG
	case MSG_ID_TOO_LONG = "MSG_ID_TOO_LONG"
	
	/// MSG_INVALID_ID
	case MSG_INVALID_ID = "MSG_INVALID_ID"
	
	/// MSG_JSON_OBJECT
	case MSG_JSON_OBJECT = "MSG_JSON_OBJECT"
	
	/// MSG_LOCAL_FAIL
	case MSG_LOCAL_FAIL = "MSG_LOCAL_FAIL"
	
	/// MSG_NO_EXIST
	case MSG_NO_EXIST = "MSG_NO_EXIST"
	
	/// MSG_NO_MATCH
	case MSG_NO_MATCH = "MSG_NO_MATCH"
	
	/// MSG_NO_MODULE
	case MSG_NO_MODULE = "MSG_NO_MODULE"
	
	/// MSG_NO_SUMMARY
	case MSG_NO_SUMMARY = "MSG_NO_SUMMARY"
	
	/// MSG_OP_NOT_ALLOWED
	case MSG_OP_NOT_ALLOWED = "MSG_OP_NOT_ALLOWED"
	
	/// MSG_PARAM_CHAINED
	case MSG_PARAM_CHAINED = "MSG_PARAM_CHAINED"
	
	/// MSG_PARAM_INVALID
	case MSG_PARAM_INVALID = "MSG_PARAM_INVALID"
	
	/// MSG_PARAM_MODIFIER_INVALID
	case MSG_PARAM_MODIFIER_INVALID = "MSG_PARAM_MODIFIER_INVALID"
	
	/// MSG_PARAM_NO_REPEAT
	case MSG_PARAM_NO_REPEAT = "MSG_PARAM_NO_REPEAT"
	
	/// MSG_PARAM_UNKNOWN
	case MSG_PARAM_UNKNOWN = "MSG_PARAM_UNKNOWN"
	
	/// MSG_RESOURCE_EXAMPLE_PROTECTED
	case MSG_RESOURCE_EXAMPLE_PROTECTED = "MSG_RESOURCE_EXAMPLE_PROTECTED"
	
	/// MSG_RESOURCE_ID_FAIL
	case MSG_RESOURCE_ID_FAIL = "MSG_RESOURCE_ID_FAIL"
	
	/// MSG_RESOURCE_ID_MISMATCH
	case MSG_RESOURCE_ID_MISMATCH = "MSG_RESOURCE_ID_MISMATCH"
	
	/// MSG_RESOURCE_ID_MISSING
	case MSG_RESOURCE_ID_MISSING = "MSG_RESOURCE_ID_MISSING"
	
	/// MSG_RESOURCE_NOT_ALLOWED
	case MSG_RESOURCE_NOT_ALLOWED = "MSG_RESOURCE_NOT_ALLOWED"
	
	/// MSG_RESOURCE_REQUIRED
	case MSG_RESOURCE_REQUIRED = "MSG_RESOURCE_REQUIRED"
	
	/// MSG_RESOURCE_TYPE_MISMATCH
	case MSG_RESOURCE_TYPE_MISMATCH = "MSG_RESOURCE_TYPE_MISMATCH"
	
	/// MSG_SORT_UNKNOWN
	case MSG_SORT_UNKNOWN = "MSG_SORT_UNKNOWN"
	
	/// MSG_TRANSACTION_DUPLICATE_ID
	case MSG_TRANSACTION_DUPLICATE_ID = "MSG_TRANSACTION_DUPLICATE_ID"
	
	/// MSG_TRANSACTION_MISSING_ID
	case MSG_TRANSACTION_MISSING_ID = "MSG_TRANSACTION_MISSING_ID"
	
	/// MSG_UNHANDLED_NODE_TYPE
	case MSG_UNHANDLED_NODE_TYPE = "MSG_UNHANDLED_NODE_TYPE"
	
	/// MSG_UNKNOWN_CONTENT
	case MSG_UNKNOWN_CONTENT = "MSG_UNKNOWN_CONTENT"
	
	/// MSG_UNKNOWN_OPERATION
	case MSG_UNKNOWN_OPERATION = "MSG_UNKNOWN_OPERATION"
	
	/// MSG_UNKNOWN_TYPE
	case MSG_UNKNOWN_TYPE = "MSG_UNKNOWN_TYPE"
	
	/// MSG_UPDATED
	case MSG_UPDATED = "MSG_UPDATED"
	
	/// MSG_VERSION_AWARE
	case MSG_VERSION_AWARE = "MSG_VERSION_AWARE"
	
	/// MSG_VERSION_AWARE_CONFLICT
	case MSG_VERSION_AWARE_CONFLICT = "MSG_VERSION_AWARE_CONFLICT"
	
	/// MSG_VERSION_AWARE_URL
	case MSG_VERSION_AWARE_URL = "MSG_VERSION_AWARE_URL"
	
	/// MSG_WRONG_NS
	case MSG_WRONG_NS = "MSG_WRONG_NS"
	
	/// SEARCH_MULTIPLE
	case SEARCH_MULTIPLE = "SEARCH_MULTIPLE"
	
	/// SEARCH_NONE
	case SEARCH_NONE = "SEARCH_NONE"
	
	/// UPDATE_MULTIPLE_MATCHES
	case UPDATE_MULTIPLE_MATCHES = "UPDATE_MULTIPLE_MATCHES"
}


/**
Whether an operation parameter is an input or an output parameter.

URL: http://hl7.org/fhir/operation-parameter-use
ValueSet: http://hl7.org/fhir/ValueSet/operation-parameter-use
*/
public enum OperationParameterUse: String {
	
	/// This is an input parameter.
	case `in` = "in"
	
	/// This is an output parameter.
	case out = "out"
}


/**
This example value set defines a set of codes that can be used to indicate the role of one Organization in relation to
another.

URL: http://hl7.org/fhir/organization-role
ValueSet: http://hl7.org/fhir/ValueSet/organization-role
*/
public enum OrganizationAffiliationRole: String {
	
	/// provider
	case provider = "provider"
	
	/// An organization such as a public health agency, community/social services provider, etc.
	case agency = "agency"
	
	/// An organization providing research-related services such as conducting research, recruiting research
	/// participants, analyzing data, etc.
	case research = "research"
	
	/// An organization providing reimbursement, payment, or related services
	case payer = "payer"
	
	/// An organization providing diagnostic testing/laboratory services
	case diagnostics = "diagnostics"
	
	/// An organization that provides medical supplies (e.g. medical devices, equipment, pharmaceutical products, etc.)
	case supplier = "supplier"
	
	/// An organization that facilitates electronic clinical data exchange between entities
	case HIEHIO = "HIE/HIO"
	
	/// A type of non-ownership relationship between entities (encompasses partnerships, collaboration, joint ventures,
	/// etc.)
	case member = "member"
}


/**
This example value set defines a set of codes that can be used to indicate a type of organization.

URL: http://terminology.hl7.org/CodeSystem/organization-type
ValueSet: http://hl7.org/fhir/ValueSet/organization-type
*/
public enum OrganizationType: String {
	
	/// An organization that provides healthcare services.
	case prov = "prov"
	
	/// A department or ward within a hospital (Generally is not applicable to top level organizations)
	case dept = "dept"
	
	/// An organizational team is usually a grouping of practitioners that perform a specific function within an
	/// organization (which could be a top level organization, or a department).
	case team = "team"
	
	/// A political body, often used when including organization records for government bodies such as a Federal
	/// Government, State or Local Government.
	case govt = "govt"
	
	/// A company that provides insurance to its subscribers that may include healthcare related policies.
	case ins = "ins"
	
	/// A company, charity, or governmental organization, which processes claims and/or issues payments to providers on
	/// behalf of patients or groups of patients.
	case pay = "pay"
	
	/// An educational institution that provides education or research facilities.
	case edu = "edu"
	
	/// An organization that is identified as a part of a religious institution.
	case reli = "reli"
	
	/// An organization that is identified as a Pharmaceutical/Clinical Research Sponsor.
	case crs = "crs"
	
	/// An un-incorporated community group.
	case cg = "cg"
	
	/// An organization that is a registered business or corporation but not identified by other types.
	case bus = "bus"
	
	/// Other type of organization not already specified.
	case other = "other"
}


/**
Type for orientation.

URL: http://hl7.org/fhir/orientation-type
ValueSet: http://hl7.org/fhir/ValueSet/orientation-type
*/
public enum OrientationType: String {
	
	/// Sense orientation of reference sequence.
	case sense = "sense"
	
	/// Antisense orientation of reference sequence.
	case antisense = "antisense"
}


/**
Is the Participant required to attend the appointment.

URL: http://hl7.org/fhir/participantrequired
ValueSet: http://hl7.org/fhir/ValueSet/participantrequired
*/
public enum ParticipantRequired: String {
	
	/// The participant is required to attend the appointment.
	case required = "required"
	
	/// The participant may optionally attend the appointment.
	case optional = "optional"
	
	/// The participant is excluded from the appointment, and might not be informed of the appointment taking place.
	/// (Appointment is about them, not for them - such as 2 doctors discussing results about a patient's test).
	case informationOnly = "information-only"
}


/**
This value set defines a set of codes that can be used to indicate how an individual participates in an encounter.

URL: http://terminology.hl7.org/CodeSystem/participant-type
*/
public enum ParticipantType: String {
	
	/// A translator who is facilitating communication with the patient during the encounter.
	case translator = "translator"
	
	/// A person to be contacted in case of an emergency during the encounter.
	case emergency = "emergency"
}


/**
The Participation status of an appointment.

URL: http://hl7.org/fhir/participationstatus
ValueSet: http://hl7.org/fhir/ValueSet/participationstatus
*/
public enum ParticipationStatus: String {
	
	/// The participant has accepted the appointment.
	case accepted = "accepted"
	
	/// The participant has declined the appointment and will not participate in the appointment.
	case declined = "declined"
	
	/// The participant has  tentatively accepted the appointment. This could be automatically created by a system and
	/// requires further processing before it can be accepted. There is no commitment that attendance will occur.
	case tentative = "tentative"
	
	/// The participant needs to indicate if they accept the appointment by changing this status to one of the other
	/// statuses.
	case needsAction = "needs-action"
}


/**
The type of payee Resource.

URL: http://terminology.hl7.org/CodeSystem/resource-type-link
ValueSet: http://hl7.org/fhir/ValueSet/resource-type-link
*/
public enum PayeeResourceType: String {
	
	/// Organization resource.
	case organization = "organization"
	
	/// Patient resource.
	case patient = "patient"
	
	/// Practitioner resource.
	case practitioner = "practitioner"
	
	/// RelatedPerson resource.
	case relatedperson = "relatedperson"
}


/**
This value set includes smattering of Payment Adjustment Reason codes.

URL: http://terminology.hl7.org/CodeSystem/payment-adjustment-reason
ValueSet: http://hl7.org/fhir/ValueSet/payment-adjustment-reason
*/
public enum PaymentAdjustmentReasonCodes: String {
	
	/// Prior Payment Reversal
	case A001 = "a001"
	
	/// Prior Overpayment
	case A002 = "a002"
}


/**
This value set includes a sample set of Payment Status codes.

URL: http://terminology.hl7.org/CodeSystem/paymentstatus
ValueSet: http://hl7.org/fhir/ValueSet/payment-status
*/
public enum PaymentStatusCodes: String {
	
	/// The payment has been sent physically or electronically.
	case paid = "paid"
	
	/// The payment has been received by the payee.
	case cleared = "cleared"
}


/**
This value set includes sample Payment Type codes.

URL: http://terminology.hl7.org/CodeSystem/payment-type
ValueSet: http://hl7.org/fhir/ValueSet/payment-type
*/
public enum PaymentTypeCodes: String {
	
	/// The amount is partial or complete settlement of the amounts due.
	case payment = "payment"
	
	/// The amount is an adjustment regarding claims already paid.
	case adjustment = "adjustment"
	
	/// The amount is an advance against future claims.
	case advance = "advance"
}


/**
This value set includes sample Performer Role codes.

URL: http://hl7.org/fhir/consentperformer
ValueSet: http://hl7.org/fhir/ValueSet/consent-performer
*/
public enum PerformerRoleCodes: String {
	
	/// An entity or an entity's delegatee who is the grantee in an agreement such as a consent for services, advanced
	/// directive, or a privacy consent directive in accordance with jurisdictional, organizational, or patient policy.
	case consenter = "consenter"
	
	/// An entity which accepts certain rights or authority from a grantor.
	case grantee = "grantee"
	
	/// An entity which agrees to confer certain rights or authority to a grantee.
	case grantor = "grantor"
	
	/// A party to whom some right or authority is granted by a delegator.
	case delegatee = "delegatee"
	
	/// A party that grants all or some portion its right or authority to another party.
	case delegator = "delegator"
}


/**
The type of PlanDefinition.

URL: http://terminology.hl7.org/CodeSystem/plan-definition-type
ValueSet: http://hl7.org/fhir/ValueSet/plan-definition-type
*/
public enum PlanDefinitionType: String {
	
	/// A pre-defined and approved group of orders related to a particular clinical condition (e.g. hypertension
	/// treatment and monitoring) or stage of care (e.g. hospital admission to Coronary Care Unit). An order set is used
	/// as a checklist for the clinician when managing a patient with a specific condition. It is a structured
	/// collection of orders relevant to that condition and presented to the clinician in a computerized provider order
	/// entry (CPOE) system.
	case orderSet = "order-set"
	
	/// Defines a desired/typical sequence of clinical activities including preconditions, triggers and temporal
	/// relationships.
	case clinicalProtocol = "clinical-protocol"
	
	/// A decision support rule of the form [on Event] if Condition then Action. It is intended to be a shareable,
	/// computable definition of actions that should be taken whenever some condition is met in response to a particular
	/// event or events.
	case ecaRule = "eca-rule"
	
	/// Defines the steps for a group of one or more systems in an event flow process along with the step constraints,
	/// sequence, pre-conditions and decision points to complete a particular objective.
	case workflowDefinition = "workflow-definition"
}


/**
This example value set defines a set of codes that can be used to indicate the role of a Practitioner.

URL: http://terminology.hl7.org/CodeSystem/practitioner-role
*/
public enum PractitionerRoleCodes: String {
	
	/// A qualified/registered medical practitioner
	case doctor = "doctor"
	
	/// A practitioner with nursing experience that may be qualified/registered
	case nurse = "nurse"
	
	/// A qualified/registered/licensed pharmacist
	case pharmacist = "pharmacist"
	
	/// A practitioner that may perform research
	case researcher = "researcher"
	
	/// Someone who is able to provide educational services
	case teacher = "teacher"
	
	/// Someone who is qualified in Information and Communication Technologies
	case ict = "ict"
}


/**
This example value set defines a set of codes that can be used to indicate the specialty of a Practitioner.

URL: http://hl7.org/fhir/practitioner-specialty
ValueSet: http://hl7.org/fhir/ValueSet/practitioner-specialty
*/
public enum PractitionerSpecialty: String {
	
	/// cardio
	case cardio = "cardio"
	
	/// dent
	case dent = "dent"
	
	/// dietary
	case dietary = "dietary"
	
	/// midw
	case midw = "midw"
	
	/// sysarch
	case sysarch = "sysarch"
}


/**
Method of reporting variability of estimates, such as confidence intervals, interquartile range or standard deviation.

URL: http://terminology.hl7.org/CodeSystem/precision-estimate-type
ValueSet: http://hl7.org/fhir/ValueSet/precision-estimate-type
*/
public enum PrecisionEstimateType: String {
	
	/// confidence interval.
	case CI = "CI"
	
	/// interquartile range.
	case IQR = "IQR"
	
	/// standard deviation.
	case SD = "SD"
	
	/// standard error.
	case SE = "SE"
}


/**
Type of the validation primary source

URL: http://terminology.hl7.org/CodeSystem/primary-source-type
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-primary-source-type
*/
public enum PrimarySourceType: String {
	
	/// licBoard
	case licBoard = "lic-board"
	
	/// prim
	case prim = "prim"
	
	/// contEd
	case contEd = "cont-ed"
	
	/// postServ
	case postServ = "post-serv"
	
	/// relOwn
	case relOwn = "rel-own"
	
	/// regAuth
	case regAuth = "reg-auth"
	
	/// legal
	case legal = "legal"
	
	/// issuer
	case issuer = "issuer"
	
	/// authSource
	case authSource = "auth-source"
}


/**
Example codes indicating the change that happened to the device during the procedure.  Note that these are in no way
complete and might not even be appropriate for some uses.

URL: http://hl7.org/fhir/device-action
*/
public enum ProcedureDeviceActionCodes: String {
	
	/// The device was implanted in the patient during the procedure.
	case implanted = "implanted"
	
	/// The device was explanted from the patient during the procedure.
	case explanted = "explanted"
	
	/// The device remains in the patient, but its location, settings, or functionality was changed.
	case manipulated = "manipulated"
}


/**
This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust
terminology code system that consists of or contains concepts to support the procedure performance process.

URL: http://hl7.org/fhir/procedure-progress-status-code
ValueSet: http://hl7.org/fhir/ValueSet/procedure-progress-status-codes
*/
public enum ProcedureProgressStatusCodes: String {
	
	/// A patient is in the Operating Room.
	case inOperatingRoom = "in-operating-room"
	
	/// The patient is prepared for a procedure.
	case prepared = "prepared"
	
	/// The patient is under anesthesia.
	case anesthesiaInduced = "anesthesia-induced"
	
	/// The patient has open incision(s).
	case openIncision = "open-incision"
	
	/// The patient has incision(s) closed.
	case closedIncision = "closed-incision"
	
	/// The patient is in the recovery room.
	case inRecoveryRoom = "in-recovery-room"
}


/**
This value set includes the financial processing priority codes.

URL: http://terminology.hl7.org/CodeSystem/processpriority
ValueSet: http://hl7.org/fhir/ValueSet/process-priority
*/
public enum ProcessPriorityCodes: String {
	
	/// Immediately in real time.
	case stat = "stat"
	
	/// With best effort.
	case normal = "normal"
	
	/// Later, when possible.
	case deferred = "deferred"
}


/**
How a property is represented when serialized.

URL: http://hl7.org/fhir/property-representation
ValueSet: http://hl7.org/fhir/ValueSet/property-representation
*/
public enum PropertyRepresentation: String {
	
	/// In XML, this property is represented as an attribute not an element.
	case xmlAttr = "xmlAttr"
	
	/// This element is represented using the XML text attribute (primitives only).
	case xmlText = "xmlText"
	
	/// The type of this element is indicated using xsi:type.
	case typeAttr = "typeAttr"
	
	/// Use CDA narrative instead of XHTML.
	case cdaText = "cdaText"
	
	/// The property is represented using XHTML.
	case xhtml = "xhtml"
}


/**
The type of a property value.

URL: http://hl7.org/fhir/concept-property-type
ValueSet: http://hl7.org/fhir/ValueSet/concept-property-type
*/
public enum PropertyType: String {
	
	/// The property value is a code that identifies a concept defined in the code system.
	case code = "code"
	
	/// The property  value is a code defined in an external code system. This may be used for translations, but is not
	/// the intent.
	case coding = "Coding"
	
	/// The property value is a string.
	case string = "string"
	
	/// The property value is a string (often used to assign ranking values to concepts for supporting score
	/// assessments).
	case integer = "integer"
	
	/// The property value is a boolean true | false.
	case boolean = "boolean"
	
	/// The property is a date or a date + time.
	case dateTime = "dateTime"
	
	/// The property value is a decimal number.
	case decimal = "decimal"
}


/**
How an entity was used in an activity.

URL: http://hl7.org/fhir/provenance-entity-role
ValueSet: http://hl7.org/fhir/ValueSet/provenance-entity-role
*/
public enum ProvenanceEntityRole: String {
	
	/// A transformation of an entity into another, an update of an entity resulting in a new one, or the construction
	/// of a new entity based on a pre-existing entity.
	case derivation = "derivation"
	
	/// A derivation for which the resulting entity is a revised version of some original.
	case revision = "revision"
	
	/// The repeat of (some or all of) an entity, such as text or image, by someone who might or might not be its
	/// original author.
	case quotation = "quotation"
	
	/// A primary source for a topic refers to something produced by some agent with direct experience and knowledge
	/// about the topic, at the time of the topic's study, without benefit from hindsight.
	case source = "source"
	
	/// A derivation for which the entity is removed from accessibility usually through the use of the Delete operation.
	case removal = "removal"
}


/**
The role that a provenance participant played

URL: http://hl7.org/fhir/provenance-participant-role
ValueSet: http://hl7.org/fhir/ValueSet/provenance-agent-role
*/
public enum ProvenanceParticipantRole: String {
	
	/// A person entering the data into the originating system
	case enterer = "enterer"
	
	/// A person, animal, organization or device that who actually and principally carries out the activity
	case performer = "performer"
	
	/// A party that originates the resource and therefore has responsibility for the information given in the resource
	/// and ownership of this resource
	case author = "author"
	
	/// A person who verifies the correctness and appropriateness of activity
	case verifier = "verifier"
	
	/// The person authenticated the content and accepted legal responsibility for its content
	case legal = "legal"
	
	/// A verifier who attests to the accuracy of the resource
	case attester = "attester"
	
	/// A person who reported information that contributed to the resource
	case informant = "informant"
	
	/// The entity that is accountable for maintaining a true an accurate copy of the original record
	case custodian = "custodian"
	
	/// A device that operates independently of an author on custodian's algorithms for data extraction of existing
	/// information for purpose of generating a new artifact.
	case assembler = "assembler"
	
	/// A device used by an author to record new information, which may also be used by the author to select existing
	/// information for aggregation with newly recorded information for the purpose of generating a new artifact.
	case composer = "composer"
}


/**
The type of participation a provenance participant.

URL: http://terminology.hl7.org/CodeSystem/provenance-participant-type
ValueSet: http://hl7.org/fhir/ValueSet/provenance-agent-type
*/
public enum ProvenanceParticipantType: String {
	
	/// A person entering the data into the originating system
	case enterer = "enterer"
	
	/// A person, animal, organization or device that who actually and principally carries out the activity
	case performer = "performer"
	
	/// A party that originates the resource and therefore has responsibility for the information given in the resource
	/// and ownership of this resource
	case author = "author"
	
	/// A person who verifies the correctness and appropriateness of activity
	case verifier = "verifier"
	
	/// The person authenticated the content and accepted legal responsibility for its content
	case legal = "legal"
	
	/// A verifier who attests to the accuracy of the resource
	case attester = "attester"
	
	/// A person who reported information that contributed to the resource
	case informant = "informant"
	
	/// The entity that is accountable for maintaining a true an accurate copy of the original record
	case custodian = "custodian"
	
	/// A device that operates independently of an author on custodian's algorithms for data extraction of existing
	/// information for purpose of generating a new artifact.
	case assembler = "assembler"
	
	/// A device used by an author to record new information, which may also be used by the author to select existing
	/// information for aggregation with newly recorded information for the purpose of generating a new artifact.
	case composer = "composer"
}


/**
The lifecycle status of an artifact.

URL: http://hl7.org/fhir/publication-status
ValueSet: http://hl7.org/fhir/ValueSet/publication-status
*/
public enum PublicationStatus: String {
	
	/// This resource is still under development and is not yet considered to be ready for normal use.
	case draft = "draft"
	
	/// This resource is ready for normal use.
	case active = "active"
	
	/// This resource has been withdrawn or superseded and should no longer be used.
	case retired = "retired"
	
	/// The authoring system does not know which of the status values currently applies for this resource.  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}


/**
Type of alerts/updates the primary source can send

URL: http://terminology.hl7.org/CodeSystem/push-type-available
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-push-type-available
*/
public enum PushTypeAvailable: String {
	
	/// specific
	case specific = "specific"
	
	/// any
	case any = "any"
	
	/// source
	case source = "source"
}


/**
A rating system that describes the quality of evidence such as the GRADE, DynaMed, or Oxford CEBM systems.

URL: http://terminology.hl7.org/CodeSystem/evidence-quality
ValueSet: http://hl7.org/fhir/ValueSet/evidence-quality
*/
public enum QualityOfEvidenceRating: String {
	
	/// High quality evidence.
	case high = "high"
	
	/// Moderate quality evidence.
	case moderate = "moderate"
	
	/// Low quality evidence.
	case low = "low"
	
	/// Very low quality evidence.
	case veryLow = "very-low"
}


/**
Type for quality report.

URL: http://hl7.org/fhir/quality-type
ValueSet: http://hl7.org/fhir/ValueSet/quality-type
*/
public enum QualityType: String {
	
	/// INDEL Comparison.
	case indel = "indel"
	
	/// SNP Comparison.
	case snp = "snp"
	
	/// UNKNOWN Comparison.
	case unknown = "unknown"
}


/**
How the Quantity should be understood and represented.

URL: http://hl7.org/fhir/quantity-comparator
ValueSet: http://hl7.org/fhir/ValueSet/quantity-comparator
*/
public enum QuantityComparator: String {
	
	/// The actual value is less than the given value.
	case lt = "<"
	
	/// The actual value is less than or equal to the given value.
	case lte = "<="
	
	/// The actual value is greater than or equal to the given value.
	case gte = ">="
	
	/// The actual value is greater than the given value.
	case gt = ">"
}


/**
The criteria by which a question is enabled.

URL: http://hl7.org/fhir/questionnaire-enable-operator
ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-enable-operator
*/
public enum QuestionnaireItemOperator: String {
	
	/// True if whether an answer exists is equal to the enableWhen answer (which must be a boolean).
	case exists = "exists"
	
	/// True if whether at least one answer has a value that is equal to the enableWhen answer.
	case eq = "="
	
	/// True if whether at least no answer has a value that is equal to the enableWhen answer.
	case ne = "!="
	
	/// True if whether at least no answer has a value that is greater than the enableWhen answer.
	case gt = ">"
	
	/// True if whether at least no answer has a value that is less than the enableWhen answer.
	case lt = "<"
	
	/// True if whether at least no answer has a value that is greater or equal to the enableWhen answer.
	case gte = ">="
	
	/// True if whether at least no answer has a value that is less or equal to the enableWhen answer.
	case lte = "<="
}


/**
Distinguishes groups from questions and display text and indicates data type for questions.

URL: http://hl7.org/fhir/item-type
ValueSet: http://hl7.org/fhir/ValueSet/item-type
*/
public enum QuestionnaireItemType: String {
	
	/// An item with no direct answer but should have at least one child item.
	case group = "group"
	
	/// Text for display that will not capture an answer or have child items.
	case display = "display"
	
	/// An item that defines a specific answer to be captured, and which may have child items. (the answer provided in
	/// the QuestionnaireResponse should be of the defined datatype).
	case question = "question"
	
	/// Question with a yes/no answer (valueBoolean).
	case boolean = "boolean"
	
	/// Question with is a real number answer (valueDecimal).
	case decimal = "decimal"
	
	/// Question with an integer answer (valueInteger).
	case integer = "integer"
	
	/// Question with a date answer (valueDate).
	case date = "date"
	
	/// Question with a date and time answer (valueDateTime).
	case dateTime = "dateTime"
	
	/// Question with a time (hour:minute:second) answer independent of date. (valueTime).
	case time = "time"
	
	/// Question with a short (few words to short sentence) free-text entry answer (valueString).
	case string = "string"
	
	/// Question with a long (potentially multi-paragraph) free-text entry answer (valueString).
	case text = "text"
	
	/// Question with a URL (website, FTP site, etc.) answer (valueUri).
	case url = "url"
	
	/// Question with a Coding drawn from a list of possible answers (specified in either the answerOption property, or
	/// via the valueset referenced in the answerValueSet property) as an answer (valueCoding).
	case choice = "choice"
	
	/// Answer is a Coding drawn from a list of possible answers (as with the choice type) or a free-text entry in a
	/// string (valueCoding or valueString).
	case openChoice = "open-choice"
	
	/// Question with binary content such as an image, PDF, etc. as an answer (valueAttachment).
	case attachment = "attachment"
	
	/// Question with a reference to another resource (practitioner, organization, etc.) as an answer (valueReference).
	case reference = "reference"
	
	/// Question with a combination of a numeric value and unit, potentially with a comparator (<, >, etc.) as an
	/// answer. (valueQuantity) There is an extension 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit' that
	/// can be used to define what unit should be captured (or the unit that has a ucum conversion from the provided
	/// unit).
	case quantity = "quantity"
}


/**
Starter set of user interface control/display mechanisms that might be used when rendering an item in a questionnaire.

URL: http://hl7.org/fhir/questionnaire-item-control
ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-item-control
*/
public enum QuestionnaireItemUIControlCodes: String {
	
	/// UI controls relevant to organizing groups of questions
	case group = "group"
	
	/// Questions within the group should be listed sequentially
	case list = "list"
	
	/// Questions within the group are rows in the table with possible answers as columns.  Used for 'choice' questions.
	case table = "table"
	
	/// Questions within the group are columns in the table with possible answers as rows.  Used for 'choice' questions.
	case htable = "htable"
	
	/// Questions within the group are columns in the table with each group repetition as a row.  Used for single-answer
	/// questions.
	case gtable = "gtable"
	
	/// This table has one row - for the question.  Permitted answers are columns.  Used for choice questions.
	case atable = "atable"
	
	/// The group is to be continuously visible at the top of the questionnaire
	case header = "header"
	
	/// The group is to be continuously visible at the bottom of the questionnaire
	case footer = "footer"
	
	/// UI controls relevant to rendering questionnaire text items
	case text = "text"
	
	/// Text is displayed as a paragraph in a sequential position between sibling items (default behavior)
	case inline = "inline"
	
	/// Text is displayed immediately below or within the answer-entry area of the containing question item (typically
	/// as a guide for what to enter)
	case prompt = "prompt"
	
	/// Text is displayed adjacent (horizontally or vertically) to the answer space for the parent question, typically
	/// to indicate a unit of measure
	case unit = "unit"
	
	/// Text is displayed to the left of the set of answer choices or a scaling control for the parent question item to
	/// indicate the meaning of the 'lower' bound.  E.g. 'Strongly disagree'
	case lower = "lower"
	
	/// Text is displayed to the right of the set of answer choices or a scaling control for the parent question item to
	/// indicate the meaning of the 'upper' bound.  E.g. 'Strongly agree'
	case upper = "upper"
	
	/// Text is temporarily visible over top of an item if the mouse is positioned over top of the text for the
	/// containing item
	case flyover = "flyover"
	
	/// Text is displayed in a dialog box or similar control if invoked by pushing a button or some other UI-appropriate
	/// action to request 'help' for a question, group or the questionnaire as a whole (depending what the text is
	/// nested within)
	case help = "help"
	
	/// UI controls relevant to capturing question data
	case question = "question"
	
	/// A control which provides a list of potential matches based on text entered into a control.  Used for large
	/// choice sets where text-matching is an appropriate discovery mechanism.
	case autocomplete = "autocomplete"
	
	/// A control where an item (or multiple items) can be selected from a list that is only displayed when the user is
	/// editing the field.
	case dropDown = "drop-down"
	
	/// A control where choices are listed with a box beside them.  The box can be toggled to select or de-select a
	/// given choice.  Multiple selections may be possible.
	case checkBox = "check-box"
	
	/// A control where editing an item spawns a separate dialog box or screen permitting a user to navigate, filter or
	/// otherwise discover an appropriate match.  Useful for large choice sets where text matching is not an appropriate
	/// discovery mechanism.  Such screens must generally be tuned for the specific choice list structure.
	case lookup = "lookup"
	
	/// A control where choices are listed with a button beside them.  The button can be toggled to select or de-select
	/// a given choice.  Selecting one item deselects all others.
	case radioButton = "radio-button"
	
	/// A control where an axis is displayed between the high and low values and the control can be visually manipulated
	/// to select a value anywhere on the axis.
	case slider = "slider"
	
	/// A control where a list of numeric or other ordered values can be scrolled through via arrows.
	case spinner = "spinner"
	
	/// A control where a user can type in their answer freely.
	case textBox = "text-box"
}


/**
Identifies the modes of usage of a questionnaire that should enable a particular questionnaire item.

URL: http://terminology.hl7.org/CodeSystem/questionnaire-usage-mode
ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-usage-mode
*/
public enum QuestionnaireItemUsageMode: String {
	
	/// Render the item regardless of usage mode.
	case captureDisplay = "capture-display"
	
	/// Render the item only when capturing data.
	case capture = "capture"
	
	/// Render the item only when displaying a completed form.
	case display = "display"
	
	/// Render the item only when displaying a completed form and the item has been answered (or has child items that
	/// have been answered).
	case displayNonEmpty = "display-non-empty"
	
	/// Render the item when capturing data or when displaying a completed form and the item has been answered (or has
	/// child items that have been answered).
	case captureDisplayNonEmpty = "capture-display-non-empty"
}


/**
Lifecycle status of the questionnaire response.

URL: http://hl7.org/fhir/questionnaire-answers-status
ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-answers-status
*/
public enum QuestionnaireResponseStatus: String {
	
	/// This QuestionnaireResponse has been partially filled out with answers but changes or additions are still
	/// expected to be made to it.
	case inProgress = "in-progress"
	
	/// This QuestionnaireResponse has been filled out with answers and the current content is regarded as definitive.
	case completed = "completed"
	
	/// This QuestionnaireResponse has been filled out with answers, then marked as complete, yet changes or additions
	/// have been made to it afterwards.
	case amended = "amended"
	
	/// This QuestionnaireResponse was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// This QuestionnaireResponse has been partially filled out with answers but has been abandoned. It is unknown
	/// whether changes or additions are expected to be made to it.
	case stopped = "stopped"
}


/**
Codes defining the purpose of a Questionnaire item of type 'text'.

URL: http://hl7.org/fhir/questionnaire-display-category
ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-display-category
*/
public enum QuestionnaireTextCategories: String {
	
	/// The text provides guidance on how to populate or use a portion of the questionnaire (or the questionnaire as a
	/// whole).
	case instructions = "instructions"
	
	/// The text provides guidance on how the information should be or will be handled from a
	/// security/confidentiality/access control perspective when completed
	case security = "security"
	
	/// The text provides additional guidance on populating the containing item.  Help text isn't necessarily expected
	/// to be rendered as part of the form, but may instead be made available through fly-over, pop-up button, link to a
	/// "help" page, etc.
	case help = "help"
}


/**
This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust
terminology code system that consists of or contains concepts to support the medication process.

URL: http://terminology.hl7.org/CodeSystem/reason-medication-given
ValueSet: http://hl7.org/fhir/ValueSet/reason-medication-given-codes
*/
public enum ReasonMedicationGivenCodes: String {
	
	/// No reason known.
	case A = "a"
	
	/// The administration was following an ordered protocol.
	case B = "b"
	
	/// The administration was needed to treat an emergency.
	case C = "c"
}


/**
A set of flags that defines how references are supported.

URL: http://hl7.org/fhir/reference-handling-policy
ValueSet: http://hl7.org/fhir/ValueSet/reference-handling-policy
*/
public enum ReferenceHandlingPolicy: String {
	
	/// The server supports and populates Literal references (i.e. using Reference.reference) where they are known (this
	/// code does not guarantee that all references are literal; see 'enforced').
	case literal = "literal"
	
	/// The server allows logical references (i.e. using Reference.identifier).
	case logical = "logical"
	
	/// The server will attempt to resolve logical references to literal references - i.e. converting
	/// Reference.identifier to Reference.reference (if resolution fails, the server may still accept resources; see
	/// logical).
	case resolves = "resolves"
	
	/// The server enforces that references have integrity - e.g. it ensures that references can always be resolved.
	/// This is typically the case for clinical record systems, but often not the case for middleware/proxy systems.
	case enforced = "enforced"
	
	/// The server does not support references that point to other servers.
	case local = "local"
}


/**
Whether a reference needs to be version specific or version independent, or whether either can be used.

URL: http://hl7.org/fhir/reference-version-rules
ValueSet: http://hl7.org/fhir/ValueSet/reference-version-rules
*/
public enum ReferenceVersionRules: String {
	
	/// The reference may be either version independent or version specific.
	case either = "either"
	
	/// The reference must be version independent.
	case independent = "independent"
	
	/// The reference must be version specific.
	case specific = "specific"
}


/**
The methods of referral can be used when referring to a specific HealthCareService resource.

URL: http://terminology.hl7.org/CodeSystem/service-referral-method
ValueSet: http://hl7.org/fhir/ValueSet/service-referral-method
*/
public enum ReferralMethod: String {
	
	/// Referrals may be accepted by fax.
	case fax = "fax"
	
	/// Referrals may be accepted over the phone from a practitioner.
	case phone = "phone"
	
	/// Referrals may be accepted via a secure messaging system. To determine the types of secure messaging systems
	/// supported, refer to the identifiers collection. Callers will need to understand the specific identifier system
	/// used to know that they are able to transmit messages.
	case elec = "elec"
	
	/// Referrals may be accepted via a secure email. To send please encrypt with the services public key.
	case semail = "semail"
	
	/// Referrals may be accepted via regular postage (or hand delivered).
	case mail = "mail"
}


/**
Criterion for rejection of the specimen by laboratory.

URL: http://terminology.hl7.org/CodeSystem/rejection-criteria
ValueSet: http://hl7.org/fhir/ValueSet/rejection-criteria
*/
public enum RejectionCriterion: String {
	
	/// blood specimen hemolized.
	case hemolized = "hemolized"
	
	/// insufficient quantity of specimen.
	case insufficient = "insufficient"
	
	/// specimen container broken.
	case broken = "broken"
	
	/// specimen clotted.
	case clotted = "clotted"
	
	/// specimen temperature inappropriate.
	case wrongTemperature = "wrong-temperature"
}


/**
The type of relationship to the related artifact.

URL: http://hl7.org/fhir/related-artifact-type
ValueSet: http://hl7.org/fhir/ValueSet/related-artifact-type
*/
public enum RelatedArtifactType: String {
	
	/// Additional documentation for the knowledge resource. This would include additional instructions on usage as well
	/// as additional information on clinical context or appropriateness.
	case documentation = "documentation"
	
	/// A summary of the justification for the knowledge resource including supporting evidence, relevant guidelines, or
	/// other clinically important information. This information is intended to provide a way to make the justification
	/// for the knowledge resource available to the consumer of interventions or results produced by the knowledge
	/// resource.
	case justification = "justification"
	
	/// Bibliographic citation for papers, references, or other relevant material for the knowledge resource. This is
	/// intended to allow for citation of related material, but that was not necessarily specifically prepared in
	/// connection with this knowledge resource.
	case citation = "citation"
	
	/// The previous version of the knowledge resource.
	case predecessor = "predecessor"
	
	/// The next version of the knowledge resource.
	case successor = "successor"
	
	/// The knowledge resource is derived from the related artifact. This is intended to capture the relationship in
	/// which a particular knowledge resource is based on the content of another artifact, but is modified to capture
	/// either a different set of overall requirements, or a more specific set of requirements such as those involved in
	/// a particular institution or clinical setting.
	case derivedFrom = "derived-from"
	
	/// The knowledge resource depends on the given related artifact.
	case dependsOn = "depends-on"
	
	/// The knowledge resource is composed of the given related artifact.
	case composedOf = "composed-of"
}


/**
Type for access of external URI.

URL: http://hl7.org/fhir/repository-type
ValueSet: http://hl7.org/fhir/ValueSet/repository-type
*/
public enum RepositoryType: String {
	
	/// When URL is clicked, the resource can be seen directly (by webpage or by download link format).
	case directlink = "directlink"
	
	/// When the API method (e.g. [base_url]/[parameter]) related with the URL of the website is executed, the resource
	/// can be seen directly (usually in JSON or XML format).
	case openapi = "openapi"
	
	/// When logged into the website, the resource can be seen.
	case login = "login"
	
	/// When logged in and  follow the API in the website related with URL, the resource can be seen.
	case oauth = "oauth"
	
	/// Some other complicated or particular way to get resource from URL.
	case other = "other"
}


/**
Codes indicating the degree of authority/intentionality associated with a request.

URL: http://hl7.org/fhir/request-intent
ValueSet: http://hl7.org/fhir/ValueSet/request-intent
*/
public enum RequestIntent: String {
	
	/// The request is a suggestion made by someone/something that does not have an intention to ensure it occurs and
	/// without providing an authorization to act.
	case proposal = "proposal"
	
	/// The request represents an intention to ensure something occurs without providing an authorization for others to
	/// act.
	case plan = "plan"
	
	/// The request represents a legally binding instruction authored by a Patient or RelatedPerson.
	case directive = "directive"
	
	/// The request represents a request/demand and authorization for action by a Practitioner.
	case order = "order"
	
	/// The request represents an original authorization for action.
	case originalOrder = "original-order"
	
	/// The request represents an automatically generated supplemental authorization for action based on a parent
	/// authorization together with initial results of the action taken against that parent authorization.
	case reflexOrder = "reflex-order"
	
	/// The request represents the view of an authorization instantiated by a fulfilling system representing the details
	/// of the fulfiller's intention to act upon a submitted order.
	case fillerOrder = "filler-order"
	
	/// An order created in fulfillment of a broader order that represents the authorization for a single activity
	/// occurrence.  E.g. The administration of a single dose of a drug.
	case instanceOrder = "instance-order"
	
	/// The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or
	/// other constraints among a set of requests.  Refer to [[[RequestGroup]]] for additional information on how this
	/// status is used.
	case option = "option"
}


/**
Identifies the level of importance to be assigned to actioning the request.

URL: http://hl7.org/fhir/request-priority
ValueSet: http://hl7.org/fhir/ValueSet/request-priority
*/
public enum RequestPriority: String {
	
	/// The request has normal priority.
	case routine = "routine"
	
	/// The request should be actioned promptly - higher priority than routine.
	case urgent = "urgent"
	
	/// The request should be actioned as soon as possible - higher priority than urgent.
	case asap = "asap"
	
	/// The request should be actioned immediately - highest possible priority.  E.g. an emergency.
	case stat = "stat"
}


/**
A list of all the request resource types defined in this version of the FHIR specification.

URL: http://hl7.org/fhir/request-resource-types
ValueSet: http://hl7.org/fhir/ValueSet/request-resource-types
*/
public enum RequestResourceType: String {
	
	/// A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a
	/// specific date/time. This may result in one or more Encounter(s).
	case appointment = "Appointment"
	
	/// A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
	case appointmentResponse = "AppointmentResponse"
	
	/// Healthcare plan for patient or group.
	case carePlan = "CarePlan"
	
	/// Claim, Pre-determination or Pre-authorization.
	case claim = "Claim"
	
	/// A request for information to be sent to a receiver.
	case communicationRequest = "CommunicationRequest"
	
	/// Legal Agreement.
	case contract = "Contract"
	
	/// Medical device request.
	case deviceRequest = "DeviceRequest"
	
	/// Enrollment request.
	case enrollmentRequest = "EnrollmentRequest"
	
	/// Guidance or advice relating to an immunization.
	case immunizationRecommendation = "ImmunizationRecommendation"
	
	/// Ordering of medication for patient or group.
	case medicationRequest = "MedicationRequest"
	
	/// Diet, formula or nutritional supplement request.
	case nutritionOrder = "NutritionOrder"
	
	/// A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
	case serviceRequest = "ServiceRequest"
	
	/// Request for a medication, substance or device.
	case supplyRequest = "SupplyRequest"
	
	/// A task to be performed.
	case task = "Task"
	
	/// Prescription for vision correction products for a patient.
	case visionPrescription = "VisionPrescription"
}


/**
Codes identifying the lifecycle stage of a request.

URL: http://hl7.org/fhir/request-status
ValueSet: http://hl7.org/fhir/ValueSet/request-status
*/
public enum RequestStatus: String {
	
	/// The request has been created but is not yet complete or ready for action.
	case draft = "draft"
	
	/// The request is in force and ready to be acted upon.
	case active = "active"
	
	/// The request (and any implicit authorization to act) has been temporarily withdrawn but is expected to resume in
	/// the future.
	case onHold = "on-hold"
	
	/// The request (and any implicit authorization to act) has been terminated prior to the known full completion of
	/// the intended actions.  No further activity should occur.
	case revoked = "revoked"
	
	/// The activity described by the request has been fully performed.  No further activity will occur.
	case completed = "completed"
	
	/// This request should never have existed and should be considered 'void'.  (It is possible that real-world
	/// decisions were based on it.  If real-world activity has occurred, the status should be "cancelled" rather than
	/// "entered-in-error".).
	case enteredInError = "entered-in-error"
	
	/// The authoring/source system does not know which of the status values currently applies for this request.  Note:
	/// This concept is not to be used for "other" - one of the listed statuses is presumed to apply,  but the
	/// authoring/source system does not know which.
	case unknown = "unknown"
}


/**
The possible types of research elements (E.g. Population, Exposure, Outcome).

URL: http://hl7.org/fhir/research-element-type
ValueSet: http://hl7.org/fhir/ValueSet/research-element-type
*/
public enum ResearchElementType: String {
	
	/// The element defines the population that forms the basis for research.
	case population = "population"
	
	/// The element defines an exposure within the population that is being researched.
	case exposure = "exposure"
	
	/// The element defines an outcome within the population that is being researched.
	case outcome = "outcome"
}


/**
Codes for the kind of study objective.

URL: http://terminology.hl7.org/CodeSystem/research-study-objective-type
ValueSet: http://hl7.org/fhir/ValueSet/research-study-objective-type
*/
public enum ResearchStudyObjectiveType: String {
	
	/// The main question to be answered, and the one that drives any statistical planning for the study—e.g.,
	/// calculation of the sample size to provide the appropriate power for statistical testing.
	case primary = "primary"
	
	/// Question to be answered in the study that is of lesser importance than the primary objective.
	case secondary = "secondary"
	
	/// Exploratory questions to be answered in the study.
	case exploratory = "exploratory"
}


/**
Codes for the stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-
market evaluation.

URL: http://terminology.hl7.org/CodeSystem/research-study-phase
ValueSet: http://hl7.org/fhir/ValueSet/research-study-phase
*/
public enum ResearchStudyPhase: String {
	
	/// Trials without phases (for example, studies of devices or behavioral interventions).
	case NA = "n-a"
	
	/// Designation for optional exploratory trials conducted in accordance with the United States Food and Drug
	/// Administration's (FDA) 2006 Guidance on Exploratory Investigational New Drug (IND) Studies. Formerly called
	/// Phase 0.
	case earlyPhase1 = "early-phase-1"
	
	/// Includes initial studies to determine the metabolism and pharmacologic actions of drugs in humans, the side
	/// effects associated with increasing doses, and to gain early evidence of effectiveness; may include healthy
	/// participants and/or patients.
	case phase1 = "phase-1"
	
	/// Trials that are a combination of phases 1 and 2.
	case phase1Phase2 = "phase-1-phase-2"
	
	/// Includes controlled clinical studies conducted to evaluate the effectiveness of the drug for a particular
	/// indication or indications in participants with the disease or condition under study and to determine the common
	/// short-term side effects and risks.
	case phase2 = "phase-2"
	
	/// Trials that are a combination of phases 2 and 3.
	case phase2Phase3 = "phase-2-phase-3"
	
	/// Includes trials conducted after preliminary evidence suggesting effectiveness of the drug has been obtained, and
	/// are intended to gather additional information to evaluate the overall benefit-risk relationship of the drug.
	case phase3 = "phase-3"
	
	/// Studies of FDA-approved drugs to delineate additional information including the drug's risks, benefits, and
	/// optimal use.
	case phase4 = "phase-4"
}


/**
Codes for the main intent of the study.

URL: http://terminology.hl7.org/CodeSystem/research-study-prim-purp-type
ValueSet: http://hl7.org/fhir/ValueSet/research-study-prim-purp-type
*/
public enum ResearchStudyPrimaryPurposeType: String {
	
	/// One or more interventions are being evaluated for treating a disease, syndrome, or condition.
	case treatment = "treatment"
	
	/// One or more interventions are being assessed for preventing the development of a specific disease or health
	/// condition.
	case prevention = "prevention"
	
	/// One or more interventions are being evaluated for identifying a disease or health condition.
	case diagnostic = "diagnostic"
	
	/// One or more interventions are evaluated for maximizing comfort, minimizing side effects, or mitigating against a
	/// decline in the participant's health or function.
	case supportiveCare = "supportive-care"
	
	/// One or more interventions are assessed or examined for identifying a condition, or risk factors for a condition,
	/// in people who are not yet known to have the condition or risk factor.
	case screening = "screening"
	
	/// One or more interventions for evaluating the delivery, processes, management, organization, or financing of
	/// healthcare.
	case healthServicesResearch = "health-services-research"
	
	/// One or more interventions for examining the basic mechanism of action (for example, physiology or biomechanics
	/// of an intervention).
	case basicScience = "basic-science"
	
	/// An intervention of a device product is being evaluated to determine the feasibility of the product or to test a
	/// prototype device and not health outcomes. Such studies are conducted to confirm the design and operating
	/// specifications of a device before beginning a full clinical trial.
	case deviceFeasibility = "device-feasibility"
}


/**
Codes for why the study ended prematurely.

URL: http://terminology.hl7.org/CodeSystem/research-study-reason-stopped
ValueSet: http://hl7.org/fhir/ValueSet/research-study-reason-stopped
*/
public enum ResearchStudyReasonStopped: String {
	
	/// The study prematurely ended because the accrual goal was met.
	case accrualGoalMet = "accrual-goal-met"
	
	/// The study prematurely ended due to toxicity.
	case closedDueToToxicity = "closed-due-to-toxicity"
	
	/// The study prematurely ended due to lack of study progress.
	case closedDueToLackOfStudyProgress = "closed-due-to-lack-of-study-progress"
	
	/// The study prematurely ended temporarily per study design.
	case temporarilyClosedPerStudyDesign = "temporarily-closed-per-study-design"
}


/**
Codes that convey the current status of the research study.

URL: http://hl7.org/fhir/research-study-status
ValueSet: http://hl7.org/fhir/ValueSet/research-study-status
*/
public enum ResearchStudyStatus: String {
	
	/// Study is opened for accrual.
	case active = "active"
	
	/// Study is completed prematurely and will not resume; patients are no longer examined nor treated.
	case administrativelyCompleted = "administratively-completed"
	
	/// Protocol is approved by the review board.
	case approved = "approved"
	
	/// Study is closed for accrual; patients can be examined and treated.
	case closedToAccrual = "closed-to-accrual"
	
	/// Study is closed to accrual and intervention, i.e. the study is closed to enrollment, all study subjects have
	/// completed treatment or intervention but are still being followed according to the primary objective of the
	/// study.
	case closedToAccrualAndIntervention = "closed-to-accrual-and-intervention"
	
	/// Study is closed to accrual and intervention, i.e. the study is closed to enrollment, all study subjects have
	/// completed treatment
	/// or intervention but are still being followed according to the primary objective of the study.
	case completed = "completed"
	
	/// Protocol was disapproved by the review board.
	case disapproved = "disapproved"
	
	/// Protocol is submitted to the review board for approval.
	case inReview = "in-review"
	
	/// Study is temporarily closed for accrual; can be potentially resumed in the future; patients can be examined and
	/// treated.
	case temporarilyClosedToAccrual = "temporarily-closed-to-accrual"
	
	/// Study is temporarily closed for accrual and intervention and potentially can be resumed in the future.
	case temporarilyClosedToAccrualAndIntervention = "temporarily-closed-to-accrual-and-intervention"
	
	/// Protocol was withdrawn by the lead organization.
	case withdrawn = "withdrawn"
}


/**
Indicates the progression of a study subject through a study.

URL: http://hl7.org/fhir/research-subject-status
ValueSet: http://hl7.org/fhir/ValueSet/research-subject-status
*/
public enum ResearchSubjectStatus: String {
	
	/// An identified person that can be considered for inclusion in a study.
	case candidate = "candidate"
	
	/// A person that has met the eligibility criteria for inclusion in a study.
	case eligible = "eligible"
	
	/// A person is no longer receiving study intervention and/or being evaluated with tests and procedures according to
	/// the protocol, but they are being monitored on a protocol-prescribed schedule.
	case followUp = "follow-up"
	
	/// A person who did not meet one or more criteria required for participation in a study is considered to have
	/// failed screening or
	/// is ineligible for the study.
	case ineligible = "ineligible"
	
	/// A person for whom registration was not completed.
	case notRegistered = "not-registered"
	
	/// A person that has ended their participation on a study either because their treatment/observation is complete or
	/// through not
	/// responding, withdrawal, non-compliance and/or adverse event.
	case offStudy = "off-study"
	
	/// A person that is enrolled or registered on a study.
	case onStudy = "on-study"
	
	/// The person is receiving the treatment or participating in an activity (e.g. yoga, diet, etc.) that the study is
	/// evaluating.
	case onStudyIntervention = "on-study-intervention"
	
	/// The subject is being evaluated via tests and assessments according to the study calendar, but is not receiving
	/// any intervention. Note that this state is study-dependent and might not exist in all studies.  A synonym for
	/// this is "short-term follow-up".
	case onStudyObservation = "on-study-observation"
	
	/// A person is pre-registered for a study.
	case pendingOnStudy = "pending-on-study"
	
	/// A person that is potentially eligible for participation in the study.
	case potentialCandidate = "potential-candidate"
	
	/// A person who is being evaluated for eligibility for a study.
	case screening = "screening"
	
	/// The person has withdrawn their participation in the study before registration.
	case withdrawn = "withdrawn"
}


/**
Provides general guidance around the kind of access Control to Read, Search, Create, Update, or Delete a resource.

URL: http://terminology.hl7.org/CodeSystem/resource-security-category
ValueSet: http://hl7.org/fhir/ValueSet/resource-security-category
*/
public enum ResourceSecurityCategory: String {
	
	/// These resources tend to not contain any individual data, or business sensitive data. Most often these Resources
	/// will be available for anonymous access, meaning there is no access control based on the user or system
	/// requesting. However these Resources do tend to contain important information that must be authenticated back to
	/// the source publishing them, and protected from integrity failures in communication. For this reason server
	/// authenticated https (TLS) is recommended to provide authentication of the server and integrity protection in
	/// transit. This is normal web-server use of https.
	case anonymous = "anonymous"
	
	/// These Resources tend to not contain any individual data, but do have data that describe business or service
	/// sensitive data. The use of the term Business is not intended to only mean an incorporated business, but rather
	/// the more broad concept of an organization, location, or other group that is not identifable as individuals.
	/// Often these resources will require some for of client authentication to assure that only authorized access is
	/// given. The client access control may be to individuals, or may be to system identity. For this purpose possible
	/// client authentication methods such as: mutual-authenticated-TLS, APIKey, App signed JWT, or App OAuth client-id
	/// JWT For example: a App that uses a Business protected Provider Directory to determine other business endpoint
	/// details.
	case business = "business"
	
	/// These Resources do NOT contain Patient data, but do contain individual information about other participants.
	/// These other individuals are Practitioners, PractionerRole, CareTeam, or other users. These identities are needed
	/// to enable the practice of healthcare. These identities are identities under general privacy regulations, and
	/// thus must consider Privacy risk. Often access to these other identities are covered by business relationships.
	/// For this purpose access to these Resources will tend to be Role specific using methods such as RBAC or ABAC.
	case individual = "individual"
	
	/// These Resources make up the bulk of FHIR and therefore are the most commonly understood. These Resources contain
	/// highly sesitive health information, or are closely linked to highly sensitive health information. These
	/// Resources will often use the security labels to differentiate various confidentiality levels within this broad
	/// group of Patient Sensitive data. Access to these Resources often requires a declared Purpose Of Use. Access to
	/// these Resources is often controlled by a Privacy Consent.
	case patient = "patient"
	
	/// Some Resources can be used for a wide scope of use-cases that span very sensitive to very non-sensitive. These
	/// Resources do not fall into any of the above classifications, as their sensitivity is highly variable. These
	/// Resources will need special handling. These Resources often contain metadata that describes the content in a way
	/// that can be used for Access Control decisions.
	case notClassified = "not-classified"
}


/**
One of the resource types defined as part of this version of FHIR.

URL: http://hl7.org/fhir/resource-types
*/
public enum ResourceType: String {
	
	/// A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track
	/// charges for a patient, cost centers, etc.
	case account = "Account"
	
	/// This resource allows for the definition of some activity to be performed, independent of a particular patient,
	/// practitioner, or other performance context.
	case activityDefinition = "ActivityDefinition"
	
	/// Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by
	/// medical care, a research study or other healthcare setting factors that requires additional monitoring,
	/// treatment, or hospitalization, or that results in death.
	case adverseEvent = "AdverseEvent"
	
	/// Risk of harmful or undesirable, physiological response which is unique to an individual and associated with
	/// exposure to a substance.
	case allergyIntolerance = "AllergyIntolerance"
	
	/// A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a
	/// specific date/time. This may result in one or more Encounter(s).
	case appointment = "Appointment"
	
	/// A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
	case appointmentResponse = "AppointmentResponse"
	
	/// A record of an event made for purposes of maintaining a security log. Typical uses include detection of
	/// intrusion attempts and monitoring for inappropriate usage.
	case auditEvent = "AuditEvent"
	
	/// Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an
	/// existing resource, and custom resources not appropriate for inclusion in the FHIR specification.
	case basic = "Basic"
	
	/// A resource that represents the data of a single raw artifact as digital content accessible in its native format.
	/// A Binary resource can contain any content, whether text, image, pdf, zip archive, etc.
	case binary = "Binary"
	
	/// A material substance originating from a biological entity intended to be transplanted or infused
	/// into another (possibly the same) biological entity.
	case biologicallyDerivedProduct = "BiologicallyDerivedProduct"
	
	/// Record details about an anatomical structure.  This resource may be used when a coded concept does not provide
	/// the necessary detail needed for the use case.
	case bodyStructure = "BodyStructure"
	
	/// A container for a collection of resources.
	case bundle = "Bundle"
	
	/// A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server for a particular version of
	/// FHIR that may be used as a statement of actual server functionality or a statement of required or desired server
	/// implementation.
	case capabilityStatement = "CapabilityStatement"
	
	/// Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group
	/// or community for a period of time, possibly limited to care for a specific condition or set of conditions.
	case carePlan = "CarePlan"
	
	/// The Care Team includes all the people and organizations who plan to participate in the coordination and delivery
	/// of care for a patient.
	case careTeam = "CareTeam"
	
	/// Catalog entries are wrappers that contextualize items included in a catalog.
	case catalogEntry = "CatalogEntry"
	
	/// The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore
	/// referring not only to the product, but containing in addition details of the provision, like date, time, amounts
	/// and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and
	/// internal cost allocation.
	case chargeItem = "ChargeItem"
	
	/// The ChargeItemDefinition resource provides the properties that apply to the (billing) codes necessary to
	/// calculate costs and prices. The properties may differ largely depending on type and realm, therefore this
	/// resource gives only a rough structure and requires profiling for each type of billing code system.
	case chargeItemDefinition = "ChargeItemDefinition"
	
	/// A provider issued list of professional services and products which have been provided, or are to be provided, to
	/// a patient which is sent to an insurer for reimbursement.
	case claim = "Claim"
	
	/// This resource provides the adjudication details from the processing of a Claim resource.
	case claimResponse = "ClaimResponse"
	
	/// A record of a clinical assessment performed to determine what problem(s) may affect the patient and before
	/// planning the treatments or management strategies that are best to manage a patient's condition. Assessments are
	/// often 1:1 with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow.
	/// This resource is called "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the
	/// recording of assessment tools such as Apgar score.
	case clinicalImpression = "ClinicalImpression"
	
	/// The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement
	/// and its key properties, and optionally define a part or all of its content.
	case codeSystem = "CodeSystem"
	
	/// An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public
	/// health agency that was notified about a reportable condition.
	case communication = "Communication"
	
	/// A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider,
	/// the CDS system proposes that the public health agency be notified about a reportable condition.
	case communicationRequest = "CommunicationRequest"
	
	/// A compartment definition that defines how resources are accessed on a server.
	case compartmentDefinition = "CompartmentDefinition"
	
	/// A set of healthcare-related information that is assembled together into a single logical package that provides a
	/// single coherent statement of meaning, establishes its own context and that has clinical attestation with regard
	/// to who is making the statement. A Composition defines the structure and narrative content necessary for a
	/// document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first
	/// entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be
	/// included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.).
	case composition = "Composition"
	
	/// A statement of relationships from one set of concepts to one or more other concepts - either concepts in code
	/// systems, or data element/data element concepts, or classes in class models.
	case conceptMap = "ConceptMap"
	
	/// A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen
	/// to a level of concern.
	case condition = "Condition"
	
	/// A record of a healthcare consumer’s  choices, which permits or denies identified recipient(s) or recipient
	/// role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
	case consent = "Consent"
	
	/// Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
	case contract = "Contract"
	
	/// Financial instrument which may be used to reimburse or pay for health care products and services. Includes both
	/// insurance and self-payment.
	case coverage = "Coverage"
	
	/// The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to
	/// respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage
	/// is valid and in-force and optionally to provide the insurance details of the policy.
	case coverageEligibilityRequest = "CoverageEligibilityRequest"
	
	/// This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest
	/// resource.
	case coverageEligibilityResponse = "CoverageEligibilityResponse"
	
	/// Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions
	/// for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
	case detectedIssue = "DetectedIssue"
	
	/// A type of a manufactured item that is used in the provision of healthcare without being substantially changed
	/// through that activity. The device may be a medical or non-medical device.
	case device = "Device"
	
	/// The characteristics, operational status and capabilities of a medical-related component of a medical device.
	case deviceDefinition = "DeviceDefinition"
	
	/// Describes a measurement, calculation or setting capability of a medical device.
	case deviceMetric = "DeviceMetric"
	
	/// Represents a request for a patient to employ a medical device. The device may be an implantable device, or an
	/// external assistive device, such as a walker.
	case deviceRequest = "DeviceRequest"
	
	/// A record of a device being used by a patient where the record is the result of a report from the patient or
	/// another clinician.
	case deviceUseStatement = "DeviceUseStatement"
	
	/// The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and
	/// locations, and/or specimens derived from these. The report includes clinical context such as requesting and
	/// provider information, and some mix of atomic results, images, textual and coded interpretations, and formatted
	/// representation of diagnostic reports.
	case diagnosticReport = "DiagnosticReport"
	
	/// A collection of documents compiled for a purpose together with metadata that applies to the collection.
	case documentManifest = "DocumentManifest"
	
	/// A reference to a document of any kind for any purpose. Provides metadata about the document so that the document
	/// can be discovered and managed. The scope of a document is any seralized object with a mime-type, so includes
	/// formal patient centric documents (CDA), cliical notes, scanned paper, and non-patient specific documents like
	/// policy text.
	case documentReference = "DocumentReference"
	
	/// A resource that includes narrative, extensions, and contained resources.
	case domainResource = "DomainResource"
	
	/// The EffectEvidenceSynthesis resource describes the difference in an outcome between exposures states in a
	/// population where the effect estimate is derived from a combination of research studies.
	case effectEvidenceSynthesis = "EffectEvidenceSynthesis"
	
	/// An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s)
	/// or assessing the health status of a patient.
	case encounter = "Encounter"
	
	/// The technical details of an endpoint that can be used for electronic services, such as for web services
	/// providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information.
	case endpoint = "Endpoint"
	
	/// This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
	case enrollmentRequest = "EnrollmentRequest"
	
	/// This resource provides enrollment and plan details from the processing of an EnrollmentRequest resource.
	case enrollmentResponse = "EnrollmentResponse"
	
	/// An association between a patient and an organization / healthcare provider(s) during which time encounters may
	/// occur. The managing organization assumes a level of responsibility for the patient during this time.
	case episodeOfCare = "EpisodeOfCare"
	
	/// The EventDefinition resource provides a reusable description of when a particular event can occur.
	case eventDefinition = "EventDefinition"
	
	/// The Evidence resource describes the conditional state (population and any exposures being compared within the
	/// population) and outcome (if specified) that the knowledge (evidence, assertion, recommendation) is about.
	case evidence = "Evidence"
	
	/// The EvidenceVariable resource describes a "PICO" element that knowledge (evidence, assertion, recommendation) is
	/// about.
	case evidenceVariable = "EvidenceVariable"
	
	/// Example of workflow instance.
	case exampleScenario = "ExampleScenario"
	
	/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally
	/// account balance information, for informing the subscriber of the benefits provided.
	case explanationOfBenefit = "ExplanationOfBenefit"
	
	/// Significant health conditions for a person related to the patient relevant in the context of care for the
	/// patient.
	case familyMemberHistory = "FamilyMemberHistory"
	
	/// Prospective warnings of potential issues when providing care to the patient.
	case flag = "Flag"
	
	/// Describes the intended objective(s) for a patient, group or organization care, for example, weight loss,
	/// restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement
	/// objective, etc.
	case goal = "Goal"
	
	/// A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph
	/// by following references. The Graph Definition resource defines a set and makes rules about the set.
	case graphDefinition = "GraphDefinition"
	
	/// Represents a defined collection of entities that may be discussed or acted upon collectively but which are not
	/// expected to act collectively, and are not formally or legally recognized; i.e. a collection of entities that
	/// isn't an Organization.
	case group = "Group"
	
	/// A guidance response is the formal response to a guidance request, including any output parameters returned by
	/// the evaluation, as well as the description of any proposed actions to be taken.
	case guidanceResponse = "GuidanceResponse"
	
	/// The details of a healthcare service available at a location.
	case healthcareService = "HealthcareService"
	
	/// Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of
	/// which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or
	/// produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study
	/// may have multiple series of different modalities.
	case imagingStudy = "ImagingStudy"
	
	/// Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a
	/// patient, a clinician or another party.
	case immunization = "Immunization"
	
	/// Describes a comparison of an immunization event against published recommendations to determine if the
	/// administration is "valid" in relation to those  recommendations.
	case immunizationEvaluation = "ImmunizationEvaluation"
	
	/// A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with
	/// optional supporting justification.
	case immunizationRecommendation = "ImmunizationRecommendation"
	
	/// A set of rules of how a particular interoperability or standards problem is solved - typically through the use
	/// of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole
	/// and to publish a computable definition of all the parts.
	case implementationGuide = "ImplementationGuide"
	
	/// Details of a Health Insurance product/plan provided by an organization.
	case insurancePlan = "InsurancePlan"
	
	/// Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing
	/// purpose.
	case invoice = "Invoice"
	
	/// The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe
	/// and expose existing knowledge assets such as logic libraries and information model descriptions, as well as to
	/// describe a collection of knowledge assets.
	case library = "Library"
	
	/// Identifies two or more records (resource instances) that refer to the same real-world "occurrence".
	case linkage = "Linkage"
	
	/// A list is a curated collection of resources.
	case list = "List"
	
	/// Details and position information for a physical place where services are provided and resources and participants
	/// may be stored, found, contained, or accommodated.
	case location = "Location"
	
	/// The Measure resource provides the definition of a quality measure.
	case measure = "Measure"
	
	/// The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to
	/// the resources involved in that calculation.
	case measureReport = "MeasureReport"
	
	/// A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided
	/// by direct reference.
	case media = "Media"
	
	/// This resource is primarily used for the identification and definition of a medication for the purposes of
	/// prescribing, dispensing, and administering a medication as well as for making statements about medication use.
	case medication = "Medication"
	
	/// Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple
	/// as swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the
	/// authorizing prescription, and the specific encounter between patient and health care practitioner.
	case medicationAdministration = "MedicationAdministration"
	
	/// Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a
	/// description of the medication product (supply) provided and the instructions for administering the medication.
	/// The medication dispense is the result of a pharmacy system responding to a medication order.
	case medicationDispense = "MedicationDispense"
	
	/// Information about a medication that is used to support knowledge.
	case medicationKnowledge = "MedicationKnowledge"
	
	/// An order or request for both supply of the medication and the instructions for administration of the medication
	/// to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or
	/// "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc.,
	/// and to harmonize with workflow patterns.
	case medicationRequest = "MedicationRequest"
	
	/// A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the
	/// patient may be taking the medication now or has taken the medication in the past or will be taking the
	/// medication in the future.  The source of this information can be the patient, significant other (such as a
	/// family member or spouse), or a clinician.  A common scenario where this information is captured is during the
	/// history taking process during a patient visit or stay.   The medication information may come from sources such
	/// as the patient's memory, from a prescription bottle,  or from a list of medications the patient, clinician or
	/// other party maintains.
	/// 
	/// The primary difference between a medication statement and a medication administration is that the medication
	/// administration has complete administration information and is based on actual administration information from
	/// the person who administered the medication.  A medication statement is often, if not always, less specific.
	/// There is no required date/time when the medication was administered, in fact we only know that a source has
	/// reported the patient is taking this medication, where details such as time, quantity, or rate or even medication
	/// product may be incomplete or missing or less precise.  As stated earlier, the medication statement information
	/// may come from the patient's memory, from a prescription bottle or from a list of medications the patient,
	/// clinician or other party maintains.  Medication administration is more formal and is not missing detailed
	/// information.
	case medicationStatement = "MedicationStatement"
	
	/// Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory
	/// use).
	case medicinalProduct = "MedicinalProduct"
	
	/// The regulatory authorization of a medicinal product.
	case medicinalProductAuthorization = "MedicinalProductAuthorization"
	
	/// The clinical particulars - indications, contraindications etc. of a medicinal product, including for regulatory
	/// purposes.
	case medicinalProductContraindication = "MedicinalProductContraindication"
	
	/// Indication for the Medicinal Product.
	case medicinalProductIndication = "MedicinalProductIndication"
	
	/// An ingredient of a manufactured item or pharmaceutical product.
	case medicinalProductIngredient = "MedicinalProductIngredient"
	
	/// The interactions of the medicinal product with other medicinal products, or other forms of interactions.
	case medicinalProductInteraction = "MedicinalProductInteraction"
	
	/// The manufactured item as contained in the packaged medicinal product.
	case medicinalProductManufactured = "MedicinalProductManufactured"
	
	/// A medicinal product in a container or package.
	case medicinalProductPackaged = "MedicinalProductPackaged"
	
	/// A pharmaceutical product described in terms of its composition and dose form.
	case medicinalProductPharmaceutical = "MedicinalProductPharmaceutical"
	
	/// Describe the undesirable effects of the medicinal product.
	case medicinalProductUndesirableEffect = "MedicinalProductUndesirableEffect"
	
	/// Defines the characteristics of a message that can be shared between systems, including the type of event that
	/// initiates the message, the content to be transmitted and what response(s), if any, are permitted.
	case messageDefinition = "MessageDefinition"
	
	/// The header for a message exchange that is either requesting or responding to an action.  The reference(s) that
	/// are the subject of the action as well as other information related to the action are typically transmitted in a
	/// bundle in which the MessageHeader resource instance is the first resource in the bundle.
	case messageHeader = "MessageHeader"
	
	/// Raw data describing a biological sequence.
	case molecularSequence = "MolecularSequence"
	
	/// A curated namespace that issues unique symbols within that namespace for the identification of concepts, people,
	/// devices, etc.  Represents a "System" used within the Identifier and Coding data types.
	case namingSystem = "NamingSystem"
	
	/// A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
	case nutritionOrder = "NutritionOrder"
	
	/// Measurements and simple assertions made about a patient, device or other subject.
	case observation = "Observation"
	
	/// Set of definitional characteristics for a kind of observation or measurement produced or consumed by an
	/// orderable health care service.
	case observationDefinition = "ObservationDefinition"
	
	/// A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
	/// interaction).
	case operationDefinition = "OperationDefinition"
	
	/// A collection of error, warning, or information messages that result from a system action.
	case operationOutcome = "OperationOutcome"
	
	/// A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some
	/// form of collective action.  Includes companies, institutions, corporations, departments, community groups,
	/// healthcare practice groups, payer/insurer, etc.
	case organization = "Organization"
	
	/// Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of
	/// relationship/sub-division relationship.
	case organizationAffiliation = "OrganizationAffiliation"
	
	/// This resource is a non-persisted resource used to pass information into and back from an
	/// [operation](operations.html). It has no other use, and there is no RESTful endpoint associated with it.
	case parameters = "Parameters"
	
	/// Demographics and other administrative information about an individual or animal receiving care or other health-
	/// related services.
	case patient = "Patient"
	
	/// This resource provides the status of the payment for goods and services rendered, and the request and response
	/// resource references.
	case paymentNotice = "PaymentNotice"
	
	/// This resource provides the details including amount of a payment and allocates the payment items being paid.
	case paymentReconciliation = "PaymentReconciliation"
	
	/// Demographics and administrative information about a person independent of a specific health-related context.
	case person = "Person"
	
	/// This resource allows for the definition of various types of plans as a sharable, consumable, and executable
	/// artifact. The resource is general enough to support the description of a broad range of clinical artifacts such
	/// as clinical decision support rules, order sets and protocols.
	case planDefinition = "PlanDefinition"
	
	/// A person who is directly or indirectly involved in the provisioning of healthcare.
	case practitioner = "Practitioner"
	
	/// A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a
	/// period of time.
	case practitionerRole = "PractitionerRole"
	
	/// An action that is or was performed on or for a patient. This can be a physical intervention like an operation,
	/// or less invasive like long term services, counseling, or hypnotherapy.
	case procedure = "Procedure"
	
	/// Provenance of a resource is a record that describes entities and processes involved in producing and delivering
	/// or otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity,
	/// enabling trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can
	/// themselves become important records with their own provenance. Provenance statement indicates clinical
	/// significance in terms of confidence in authenticity, reliability, and trustworthiness, integrity, and stage in
	/// lifecycle (e.g. Document Completion - has the artifact been legally authenticated), all of which may impact
	/// security, privacy, and trust policies.
	case provenance = "Provenance"
	
	/// A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide
	/// detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data
	/// collection.
	case questionnaire = "Questionnaire"
	
	/// A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
	/// corresponding to the structure of the grouping of the questionnaire being responded to.
	case questionnaireResponse = "QuestionnaireResponse"
	
	/// Information about a person that is involved in the care for a patient, but who is not the target of healthcare,
	/// nor has a formal responsibility in the care process.
	case relatedPerson = "RelatedPerson"
	
	/// A group of related requests that can be used to capture intended activities that have inter-dependencies such as
	/// "give this medication after that one".
	case requestGroup = "RequestGroup"
	
	/// The ResearchDefinition resource describes the conditional state (population and any exposures being compared
	/// within the population) and outcome (if specified) that the knowledge (evidence, assertion, recommendation) is
	/// about.
	case researchDefinition = "ResearchDefinition"
	
	/// The ResearchElementDefinition resource describes a "PICO" element that knowledge (evidence, assertion,
	/// recommendation) is about.
	case researchElementDefinition = "ResearchElementDefinition"
	
	/// A process where a researcher or organization plans and then executes a series of steps intended to increase the
	/// field of healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and
	/// other information about medications, devices, therapies and other interventional and investigative techniques.
	/// A ResearchStudy involves the gathering of information about human or animal subjects.
	case researchStudy = "ResearchStudy"
	
	/// A physical entity which is the primary unit of operational and/or administrative interest in a study.
	case researchSubject = "ResearchSubject"
	
	/// This is the base resource type for everything.
	case resource = "Resource"
	
	/// An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
	case riskAssessment = "RiskAssessment"
	
	/// The RiskEvidenceSynthesis resource describes the likelihood of an outcome in a population plus exposure state
	/// where the risk estimate is derived from a combination of research studies.
	case riskEvidenceSynthesis = "RiskEvidenceSynthesis"
	
	/// A container for slots of time that may be available for booking appointments.
	case schedule = "Schedule"
	
	/// A search parameter that defines a named search item that can be used to search/filter on a resource.
	case searchParameter = "SearchParameter"
	
	/// A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
	case serviceRequest = "ServiceRequest"
	
	/// A slot of time on a schedule that may be available for booking appointments.
	case slot = "Slot"
	
	/// A sample to be used for analysis.
	case specimen = "Specimen"
	
	/// A kind of specimen with associated set of requirements.
	case specimenDefinition = "SpecimenDefinition"
	
	/// A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined
	/// in FHIR, and also for describing extensions and constraints on resources and data types.
	case structureDefinition = "StructureDefinition"
	
	/// A Map of relationships between 2 structures that can be used to transform data.
	case structureMap = "StructureMap"
	
	/// The subscription resource is used to define a push-based subscription from a server to another system. Once a
	/// subscription is registered with the server, the server checks every resource that is created or updated, and if
	/// the resource matches the given criteria, it sends a message on the defined "channel" so that another system can
	/// take an appropriate action.
	case subscription = "Subscription"
	
	/// A homogeneous material with a definite composition.
	case substance = "Substance"
	
	/// Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety
	/// IDs will be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’
	/// direction.
	case substanceNucleicAcid = "SubstanceNucleicAcid"
	
	/// Todo.
	case substancePolymer = "SubstancePolymer"
	
	/// A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits
	/// that are either covalently linked or have a defined invariant stoichiometric relationship. This includes all
	/// synthetic, recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or
	/// prophylactic. This set of elements will be used to describe albumins, coagulation factors, cytokines, growth
	/// factors, peptide/SubstanceProtein hormones, enzymes, toxins, toxoids, recombinant vaccines, and
	/// immunomodulators.
	case substanceProtein = "SubstanceProtein"
	
	/// Todo.
	case substanceReferenceInformation = "SubstanceReferenceInformation"
	
	/// Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a
	/// material that can result in or can be modified to form a substance. This set of data elements shall be used to
	/// define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described
	/// using a controlled vocabulary as required. This information is captured for naturally derived polymers ( .
	/// starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level
	/// defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For
	/// Herbal preparations, the fraction information will be captured at the Substance information level and additional
	/// information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for
	/// further explanation the Substance Class: Structurally Diverse and the herbal annex.
	case substanceSourceMaterial = "SubstanceSourceMaterial"
	
	/// The detailed description of a substance, typically at a level beyond what is used for prescribing.
	case substanceSpecification = "SubstanceSpecification"
	
	/// Record of delivery of what is supplied.
	case supplyDelivery = "SupplyDelivery"
	
	/// A record of a request for a medication, substance or device used in the healthcare setting.
	case supplyRequest = "SupplyRequest"
	
	/// A task to be performed.
	case task = "Task"
	
	/// A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that
	/// may be used as a statement of actual server functionality or a statement of required or desired server
	/// implementation.
	case terminologyCapabilities = "TerminologyCapabilities"
	
	/// A summary of information based on the results of executing a TestScript.
	case testReport = "TestReport"
	
	/// A structured set of tests against a FHIR server or client implementation to determine compliance against the
	/// FHIR specification.
	case testScript = "TestScript"
	
	/// A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a
	/// particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded
	/// elements](terminologies.html).
	case valueSet = "ValueSet"
	
	/// Describes validation requirements, source(s), status and dates for one or more elements.
	case verificationResult = "VerificationResult"
	
	/// An authorization for the provision of glasses and/or contact lenses to a patient.
	case visionPrescription = "VisionPrescription"
}


/**
Codes indicating the type of validation to perform.

URL: http://hl7.org/fhir/resource-validation-mode
ValueSet: http://hl7.org/fhir/ValueSet/resource-validation-mode
*/
public enum ResourceValidationMode: String {
	
	/// The server checks the content, and then checks that the content would be acceptable as a create (e.g. that the
	/// content would not violate any uniqueness constraints).
	case create = "create"
	
	/// The server checks the content, and then checks that it would accept it as an update against the nominated
	/// specific resource (e.g. that there are no changes to immutable fields the server does not allow to change and
	/// checking version integrity if appropriate).
	case update = "update"
	
	/// The server ignores the content and checks that the nominated resource is allowed to be deleted (e.g. checking
	/// referential integrity rules).
	case delete = "delete"
	
	/// The server checks an existing resource (must be nominated by id, not provided as a parameter) as valid against
	/// the nominated profile.
	case profile = "profile"
}


/**
How the system supports versioning for a resource.

URL: http://hl7.org/fhir/versioning-policy
ValueSet: http://hl7.org/fhir/ValueSet/versioning-policy
*/
public enum ResourceVersionPolicy: String {
	
	/// VersionId meta-property is not supported (server) or used (client).
	case noVersion = "no-version"
	
	/// VersionId meta-property is supported (server) or used (client).
	case versioned = "versioned"
	
	/// VersionId must be correct for updates (server) or will be specified (If-match header) for updates (client).
	case versionedUpdate = "versioned-update"
}


/**
The kind of response to a message.

URL: http://hl7.org/fhir/response-code
ValueSet: http://hl7.org/fhir/ValueSet/response-code
*/
public enum ResponseType: String {
	
	/// The message was accepted and processed without error.
	case ok = "ok"
	
	/// Some internal unexpected error occurred - wait and try again. Note - this is usually used for things like
	/// database unavailable, which may be expected to resolve, though human intervention may be required.
	case transientError = "transient-error"
	
	/// The message was rejected because of a problem with the content. There is no point in re-sending without change.
	/// The response narrative SHALL describe the issue.
	case fatalError = "fatal-error"
}


/**
The mode of a RESTful capability statement.

URL: http://hl7.org/fhir/restful-capability-mode
ValueSet: http://hl7.org/fhir/ValueSet/restful-capability-mode
*/
public enum RestfulCapabilityMode: String {
	
	/// The application acts as a client for this resource.
	case client = "client"
	
	/// The application acts as a server for this resource.
	case server = "server"
}


/**
Types of security services used with FHIR.

URL: http://terminology.hl7.org/CodeSystem/restful-security-service
ValueSet: http://hl7.org/fhir/ValueSet/restful-security-service
*/
public enum RestfulSecurityService: String {
	
	/// OAuth (unspecified version see oauth.net).
	case oAuth = "OAuth"
	
	/// OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/).
	case sMARTOnFHIR = "SMART-on-FHIR"
	
	/// Microsoft NTLM Authentication.
	case NTLM = "NTLM"
	
	/// Basic authentication defined in HTTP specification.
	case basic = "Basic"
	
	/// see http://www.ietf.org/rfc/rfc4120.txt.
	case kerberos = "Kerberos"
	
	/// SSL where client must have a certificate registered with the server.
	case certificates = "Certificates"
}


/**
Whether the risk estimate is dichotomous, continuous or qualitative and the specific type of risk estimate (eg
proportion or median).

URL: http://terminology.hl7.org/CodeSystem/risk-estimate-type
ValueSet: http://hl7.org/fhir/ValueSet/risk-estimate-type
*/
public enum RiskEstimateType: String {
	
	/// dichotomous measure (present or absent) reported as a ratio compared to the denominator of 1 (A percentage is a
	/// proportion with denominator of 100).
	case proportion = "proportion"
	
	/// A special use case where the proportion is derived from a formula rather than derived from summary evidence.
	case derivedProportion = "derivedProportion"
	
	/// continuous numerical measure reported as an average.
	case mean = "mean"
	
	/// continuous numerical measure reported as the middle of the range.
	case median = "median"
	
	/// descriptive measure reported as total number of items.
	case count = "count"
	
	/// descriptive measure reported as narrative.
	case descriptive = "descriptive"
}


/**
Codes representing the likelihood of a particular outcome in a risk assessment.

URL: http://terminology.hl7.org/CodeSystem/risk-probability
ValueSet: http://hl7.org/fhir/ValueSet/risk-probability
*/
public enum RiskProbability: String {
	
	/// The specified outcome is exceptionally unlikely.
	case negligible = "negligible"
	
	/// The specified outcome is possible but unlikely.
	case low = "low"
	
	/// The specified outcome has a reasonable likelihood of occurrence.
	case moderate = "moderate"
	
	/// The specified outcome is more likely to occur than not.
	case high = "high"
	
	/// The specified outcome is effectively guaranteed.
	case certain = "certain"
}


/**
This value set includes all medication refused, medication not administered, and non-administration of necessary drug or
medicine codes from SNOMED CT - provided as an exemplar value set.

URL: http://hl7.org/fhir/reason-medication-not-given
*/
public enum SNOMEDCTReasonMedicationNotGivenCodes: String {
	
	/// No reason known.
	case A = "a"
	
	/// The patient was not available when the dose was scheduled.
	case B = "b"
	
	/// The patient was asleep when the dose was scheduled.
	case C = "c"
	
	/// The patient was given the medication and immediately vomited it back.
	case D = "d"
}


/**
What Search Comparator Codes are supported in search.

URL: http://hl7.org/fhir/search-comparator
ValueSet: http://hl7.org/fhir/ValueSet/search-comparator
*/
public enum SearchComparator: String {
	
	/// the value for the parameter in the resource is equal to the provided value.
	case eq = "eq"
	
	/// the value for the parameter in the resource is not equal to the provided value.
	case ne = "ne"
	
	/// the value for the parameter in the resource is greater than the provided value.
	case gt = "gt"
	
	/// the value for the parameter in the resource is less than the provided value.
	case lt = "lt"
	
	/// the value for the parameter in the resource is greater or equal to the provided value.
	case ge = "ge"
	
	/// the value for the parameter in the resource is less or equal to the provided value.
	case le = "le"
	
	/// the value for the parameter in the resource starts after the provided value.
	case sa = "sa"
	
	/// the value for the parameter in the resource ends before the provided value.
	case eb = "eb"
	
	/// the value for the parameter in the resource is approximately the same to the provided value.
	case ap = "ap"
}


/**
Why an entry is in the result set - whether it's included as a match or because of an _include requirement, or to convey
information or warning information about the search process.

URL: http://hl7.org/fhir/search-entry-mode
ValueSet: http://hl7.org/fhir/ValueSet/search-entry-mode
*/
public enum SearchEntryMode: String {
	
	/// This resource matched the search specification.
	case match = "match"
	
	/// This resource is returned because it is referred to from another resource in the search set.
	case include = "include"
	
	/// An OperationOutcome that provides additional information about the processing of a search.
	case outcome = "outcome"
}


/**
A supported modifier for a search parameter.

URL: http://hl7.org/fhir/search-modifier-code
ValueSet: http://hl7.org/fhir/ValueSet/search-modifier-code
*/
public enum SearchModifierCode: String {
	
	/// The search parameter returns resources that have a value or not.
	case missing = "missing"
	
	/// The search parameter returns resources that have a value that exactly matches the supplied parameter (the whole
	/// string, including casing and accents).
	case exact = "exact"
	
	/// The search parameter returns resources that include the supplied parameter value anywhere within the field being
	/// searched.
	case contains = "contains"
	
	/// The search parameter returns resources that do not contain a match.
	case not = "not"
	
	/// The search parameter is processed as a string that searches text associated with the code/value - either
	/// CodeableConcept.text, Coding.display, or Identifier.type.text.
	case text = "text"
	
	/// The search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests
	/// whether the coding is in the specified value set.
	case `in` = "in"
	
	/// The search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests
	/// whether the coding is not in the specified value set.
	case notIn = "not-in"
	
	/// The search parameter tests whether the value in a resource is subsumed by the specified value (is-a, or
	/// hierarchical relationships).
	case below = "below"
	
	/// The search parameter tests whether the value in a resource subsumes the specified value (is-a, or hierarchical
	/// relationships).
	case above = "above"
	
	/// The search parameter only applies to the Resource Type specified as a modifier (e.g. the modifier is not
	/// actually :type, but :Patient etc.).
	case type = "type"
	
	/// The search parameter applies to the identifier on the resource, not the reference.
	case identifier = "identifier"
	
	/// The search parameter has the format system|code|value, where the system and code refer to an
	/// Identifier.type.coding.system and .code, and match if any of the type codes match. All 3 parts must be present.
	case ofType = "ofType"
}


/**
Data types allowed to be used for search parameters.

URL: http://hl7.org/fhir/search-param-type
ValueSet: http://hl7.org/fhir/ValueSet/search-param-type
*/
public enum SearchParamType: String {
	
	/// Search parameter SHALL be a number (a whole number, or a decimal).
	case number = "number"
	
	/// Search parameter is on a date/time. The date format is the standard XML format, though other formats may be
	/// supported.
	case date = "date"
	
	/// Search parameter is a simple string, like a name part. Search is case-insensitive and accent-insensitive. May
	/// match just the start of a string. String parameters may contain spaces.
	case string = "string"
	
	/// Search parameter on a coded element or identifier. May be used to search through the text, display, code and
	/// code/codesystem (for codes) and label, system and key (for identifier). Its value is either a string or a pair
	/// of namespace and value, separated by a "|", depending on the modifier used.
	case token = "token"
	
	/// A reference to another resource (Reference or canonical).
	case reference = "reference"
	
	/// A composite search parameter that combines a search on two values together.
	case composite = "composite"
	
	/// A search parameter that searches on a quantity.
	case quantity = "quantity"
	
	/// A search parameter that searches on a URI (RFC 3986).
	case uri = "uri"
	
	/// Special logic applies to this parameter per the description of the search parameter.
	case special = "special"
}


/**
Codes to denote a guideline or policy statement.when a genetic test result is being shared as a secondary finding.

URL: http://hl7.org/fhir/secondary-finding
ValueSet: http://hl7.org/fhir/ValueSet/secondary-finding
*/
public enum SecondaryFindingCodes: String {
	
	/// First release (2013): ACMG Recommendations for Reporting of Incidental Findings in Clinical Exome and Genome
	/// Sequencing.  https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3727274/
	case acmgVersion1 = "acmg-version1"
	
	/// Second release (2016): Recommendations for reporting of secondary findings in clinical exome and genome
	/// sequencing, 2016 update (ACMG SF v2.0): a policy statement of the American College of Medical Genetics and
	/// Genomics. https://www.ncbi.nlm.nih.gov/pubmed/27854360
	case acmgVersion2 = "acmg-version2"
}


/**
Codes providing the status of the variant test result.

URL: http://terminology.hl7.org/CodeSystem/variant-state
ValueSet: http://hl7.org/fhir/ValueSet/variant-state
*/
public enum SequenceStatus: String {
	
	/// the variant is detected.
	case positive = "positive"
	
	/// no variant is detected.
	case negative = "negative"
	
	/// result of the variant is missing.
	case absent = "absent"
}


/**
Type if a sequence -- DNA, RNA, or amino acid sequence.

URL: http://hl7.org/fhir/sequence-type
ValueSet: http://hl7.org/fhir/ValueSet/sequence-type
*/
public enum SequenceType: String {
	
	/// Amino acid sequence.
	case aa = "aa"
	
	/// DNA Sequence.
	case dna = "dna"
	
	/// RNA Sequence.
	case rna = "rna"
}


/**
The code(s) that detail the conditions under which the healthcare service is available/offered.

URL: http://terminology.hl7.org/CodeSystem/service-provision-conditions
ValueSet: http://hl7.org/fhir/ValueSet/service-provision-conditions
*/
public enum ServiceProvisionConditions: String {
	
	/// This service is available for no patient cost.
	case free = "free"
	
	/// There are discounts available on this service for qualifying patients.
	case disc = "disc"
	
	/// Fees apply for this service.
	case cost = "cost"
}


/**
How slices are interpreted when evaluating an instance.

URL: http://hl7.org/fhir/resource-slicing-rules
ValueSet: http://hl7.org/fhir/ValueSet/resource-slicing-rules
*/
public enum SlicingRules: String {
	
	/// No additional content is allowed other than that described by the slices in this profile.
	case closed = "closed"
	
	/// Additional content is allowed anywhere in the list.
	case open = "open"
	
	/// Additional content is allowed, but only at the end of the list. Note that using this requires that the slices be
	/// ordered, which makes it hard to share uses. This should only be done where absolutely required.
	case openAtEnd = "openAtEnd"
}


/**
The free/busy status of the slot.

URL: http://hl7.org/fhir/slotstatus
ValueSet: http://hl7.org/fhir/ValueSet/slotstatus
*/
public enum SlotStatus: String {
	
	/// Indicates that the time interval is busy because one  or more events have been scheduled for that interval.
	case busy = "busy"
	
	/// Indicates that the time interval is free for scheduling.
	case free = "free"
	
	/// Indicates that the time interval is busy and that the interval cannot be scheduled.
	case busyUnavailable = "busy-unavailable"
	
	/// Indicates that the time interval is busy because one or more events have been tentatively scheduled for that
	/// interval.
	case busyTentative = "busy-tentative"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
}


/**
Codes that define what the server is capable of.

URL: http://terminology.hl7.org/CodeSystem/smart-capabilities
ValueSet: http://hl7.org/fhir/ValueSet/smart-capabilities
*/
public enum SmartCapabilities: String {
	
	/// support for SMART’s EHR Launch mode.
	case launchEhr = "launch-ehr"
	
	/// support for SMART’s Standalone Launch mode.
	case launchStandalone = "launch-standalone"
	
	/// support for SMART’s public client profile (no client authentication).
	case clientPublic = "client-public"
	
	/// support for SMART’s confidential client profile (symmetric client secret authentication).
	case clientConfidentialSymmetric = "client-confidential-symmetric"
	
	/// support for SMART’s OpenID Connect profile.
	case ssoOpenidConnect = "sso-openid-connect"
	
	/// support for “need patient banner” launch context (conveyed via need_patient_banner token parameter).
	case contextPassthroughBanner = "context-passthrough-banner"
	
	/// support for “SMART style URL” launch context (conveyed via smart_style_url token parameter).
	case contextPassthroughStyle = "context-passthrough-style"
	
	/// support for patient-level launch context (requested by launch/patient scope, conveyed via patient token
	/// parameter).
	case contextEhrPatient = "context-ehr-patient"
	
	/// support for encounter-level launch context (requested by launch/encounter scope, conveyed via encounter token
	/// parameter).
	case contextEhrEncounter = "context-ehr-encounter"
	
	/// support for patient-level launch context (requested by launch/patient scope, conveyed via patient token
	/// parameter).
	case contextStandalonePatient = "context-standalone-patient"
	
	/// support for encounter-level launch context (requested by launch/encounter scope, conveyed via encounter token
	/// parameter).
	case contextStandaloneEncounter = "context-standalone-encounter"
	
	/// support for refresh tokens (requested by offline_access scope).
	case permissionOffline = "permission-offline"
	
	/// support for patient-level scopes (e.g. patient/Observation.read).
	case permissionPatient = "permission-patient"
	
	/// support for user-level scopes (e.g. user/Appointment.read).
	case permissionUser = "permission-user"
}


/**
The possible sort directions, ascending or descending.

URL: http://hl7.org/fhir/sort-direction
ValueSet: http://hl7.org/fhir/ValueSet/sort-direction
*/
public enum SortDirection: String {
	
	/// Sort by the value ascending, so that lower values appear first.
	case ascending = "ascending"
	
	/// Sort by the value descending, so that lower values appear last.
	case descending = "descending"
}


/**
This value set defines a set of codes that can be used to indicate the kinds of special arrangements in place for a
patients visit.

URL: http://terminology.hl7.org/CodeSystem/encounter-special-arrangements
ValueSet: http://hl7.org/fhir/ValueSet/encounter-special-arrangements
*/
public enum SpecialArrangements: String {
	
	/// The patient requires a wheelchair to be made available for the encounter.
	case wheel = "wheel"
	
	/// An additional bed made available for a person accompanying the patient, for example a parent accompanying a
	/// child.
	case addBed = "add-bed"
	
	/// The patient is not fluent in the local language and requires an interpreter to be available. Refer to the
	/// Patient.Language property for the type of interpreter required.
	case int = "int"
	
	/// A person who accompanies a patient to provide assistive services necessary for the patient's care during the
	/// encounter.
	case att = "att"
	
	/// The patient has a guide dog and the location used for the encounter should be able to support the presence of
	/// the service animal.
	case dog = "dog"
}


/**
A set of generally useful codes defined so they can be included in value sets.

URL: http://terminology.hl7.org/CodeSystem/special-values
ValueSet: http://hl7.org/fhir/ValueSet/special-values
*/
public enum SpecialValues: String {
	
	/// Boolean true.
	case `true` = "true"
	
	/// Boolean false.
	case `false` = "false"
	
	/// The content is greater than zero, but too small to be quantified.
	case trace = "trace"
	
	/// The specific quantity is not known, but is known to be non-zero and is not specified because it makes up the
	/// bulk of the material.
	case sufficient = "sufficient"
	
	/// The value is no longer available.
	case withdrawn = "withdrawn"
	
	/// The are no known applicable values in this context.
	case nilKnown = "nil-known"
}


/**
Degree of preference of a type of conditioned specimen.

URL: http://hl7.org/fhir/specimen-contained-preference
ValueSet: http://hl7.org/fhir/ValueSet/specimen-contained-preference
*/
public enum SpecimenContainedPreference: String {
	
	/// This type of contained specimen is preferred to collect this kind of specimen.
	case preferred = "preferred"
	
	/// This type of conditioned specimen is an alternate.
	case alternate = "alternate"
}


/**
Codes providing the status/availability of a specimen.

URL: http://hl7.org/fhir/specimen-status
ValueSet: http://hl7.org/fhir/ValueSet/specimen-status
*/
public enum SpecimenStatus: String {
	
	/// The physical specimen is present and in good condition.
	case available = "available"
	
	/// There is no physical specimen because it is either lost, destroyed or consumed.
	case unavailable = "unavailable"
	
	/// The specimen cannot be used because of a quality issue such as a broken container, contamination, or too old.
	case unsatisfactory = "unsatisfactory"
	
	/// The specimen was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
}


/**
HL7 Ballot/Standards status of artifact.

URL: http://terminology.hl7.org/CodeSystem/standards-status
ValueSet: http://hl7.org/fhir/ValueSet/standards-status
*/
public enum StandardsStatus: String {
	
	/// This portion of the specification is not considered to be complete enough or sufficiently reviewed to be safe
	/// for implementation. It may have known issues or still be in the "in development" stage. It is included in the
	/// publication as a place-holder, to solicit feedback from the implementation community and/or to give implementers
	/// some insight as to functionality likely to be included in future versions of the specification. Content at this
	/// level should only be implemented by the brave or desperate and is very much "use at your own risk". The content
	/// that is Draft that will usually be elevated to Trial Use once review and correction is complete after it has
	/// been subjected to ballot.
	case draft = "draft"
	
	/// This content has been subject to review and production implementation in a wide variety of environments. The
	/// content is considered to be stable and has been 'locked', subjecting it to FHIR Inter-version Compatibility
	/// Rules. While changes are possible, they are expected to be infrequent and are tightly constrained. Compatibility
	/// Rules.
	case normative = "normative"
	
	/// This content has been well reviewed and is considered by the authors to be ready for use in production systems.
	/// It has been subjected to ballot and approved as an official standard. However, it has not yet seen widespread
	/// use in production across the full spectrum of environments it is intended to be used in. In some cases, there
	/// may be documented known issues that require implementation experience to determine appropriate resolutions for.
	/// 
	/// Future versions of FHIR may make significant changes to Trial Use content that are not compatible with
	/// previously published content.
	case trialUse = "trial-use"
	
	/// This portion of the specification is provided for implementer assistance, and does not make rules that
	/// implementers are required to follow. Typical examples of this content in the FHIR specification are tables of
	/// contents, registries, examples, and implementer advice.
	case informative = "informative"
	
	/// This portion of the specification is provided for implementer assistance, and does not make rules that
	/// implementers are required to follow. Typical examples of this content in the FHIR specification are tables of
	/// contents, registries, examples, and implementer advice.
	case deprecated = "deprecated"
	
	/// This is content that is managed outside the FHIR Specification, but included for implementer convenience.
	case external = "external"
}


/**
The validation status of the target

URL: http://hl7.org/fhir/CodeSystem/status
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-status
*/
public enum Status: String {
	
	/// ***TODO***
	case attested = "attested"
	
	/// ***TODO***
	case validated = "validated"
	
	/// ***TODO***
	case inProcess = "in-process"
	
	/// ***TODO***
	case reqRevalid = "req-revalid"
	
	/// ***TODO***
	case valFail = "val-fail"
	
	/// ***TODO***
	case revalFail = "reval-fail"
}


/**
Type for strand.

URL: http://hl7.org/fhir/strand-type
ValueSet: http://hl7.org/fhir/ValueSet/strand-type
*/
public enum StrandType: String {
	
	/// Watson strand of reference sequence.
	case watson = "watson"
	
	/// Crick strand of reference sequence.
	case crick = "crick"
}


/**
A rating system that describes the strength of the recommendation, such as the GRADE, DynaMed, or HGPS systems.

URL: http://terminology.hl7.org/CodeSystem/recommendation-strength
ValueSet: http://hl7.org/fhir/ValueSet/recommendation-strength
*/
public enum StrengthOfRecommendationRating: String {
	
	/// Strong recommendation.
	case strong = "strong"
	
	/// Weak recommendation.
	case weak = "weak"
}


/**
Defines the type of structure that a definition is describing.

URL: http://hl7.org/fhir/structure-definition-kind
ValueSet: http://hl7.org/fhir/ValueSet/structure-definition-kind
*/
public enum StructureDefinitionKind: String {
	
	/// A primitive type that has a value and an extension. These can be used throughout complex datatype, Resource and
	/// extension definitions. Only the base specification can define primitive types.
	case primitiveType = "primitive-type"
	
	/// A  complex structure that defines a set of data elements that is suitable for use in 'resources'. The base
	/// specification defines a number of complex types, and other specifications can define additional types. These
	/// structures do not have a maintained identity.
	case complexType = "complex-type"
	
	/// A 'resource' - a directed acyclic graph of elements that aggregrates other types into an identifiable entity.
	/// The base FHIR resources are defined by the FHIR specification itself but other 'resources' can be defined in
	/// additional specifications (though these will not be recognised as 'resources' by the FHIR specification (i.e.
	/// they do not get end-points etc, or act as the targets of references in FHIR defined resources - though other
	/// specificatiosn can treat them this way).
	case resource = "resource"
	
	/// A pattern or a template that is not intended to be a real resource or complex type.
	case logical = "logical"
}


/**
How to interpret the context.

URL: http://hl7.org/fhir/map-context-type
ValueSet: http://hl7.org/fhir/ValueSet/map-context-type
*/
public enum StructureMapContextType: String {
	
	/// The context specifies a type.
	case type = "type"
	
	/// The context specifies a variable.
	case variable = "variable"
}


/**
If this is the default rule set to apply for the source type, or this combination of types.

URL: http://hl7.org/fhir/map-group-type-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-group-type-mode
*/
public enum StructureMapGroupTypeMode: String {
	
	/// This group is not a default group for the types.
	case none = "none"
	
	/// This group is a default mapping group for the specified types and for the primary source type.
	case types = "types"
	
	/// This group is a default mapping group for the specified types.
	case typeAndTypes = "type-and-types"
}


/**
Mode for this instance of data.

URL: http://hl7.org/fhir/map-input-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-input-mode
*/
public enum StructureMapInputMode: String {
	
	/// Names an input instance used a source for mapping.
	case source = "source"
	
	/// Names an instance that is being populated.
	case target = "target"
}


/**
How the referenced structure is used in this mapping.

URL: http://hl7.org/fhir/map-model-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-model-mode
*/
public enum StructureMapModelMode: String {
	
	/// This structure describes an instance passed to the mapping engine that is used a source of data.
	case source = "source"
	
	/// This structure describes an instance that the mapping engine may ask for that is used a source of data.
	case queried = "queried"
	
	/// This structure describes an instance passed to the mapping engine that is used a target of data.
	case target = "target"
	
	/// This structure describes an instance that the mapping engine may ask to create that is used a target of data.
	case produced = "produced"
}


/**
If field is a list, how to manage the source.

URL: http://hl7.org/fhir/map-source-list-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-source-list-mode
*/
public enum StructureMapSourceListMode: String {
	
	/// Only process this rule for the first in the list.
	case first = "first"
	
	/// Process this rule for all but the first.
	case not_first = "not_first"
	
	/// Only process this rule for the last in the list.
	case last = "last"
	
	/// Process this rule for all but the last.
	case not_last = "not_last"
	
	/// Only process this rule is there is only item.
	case only_one = "only_one"
}


/**
If field is a list, how to manage the production.

URL: http://hl7.org/fhir/map-target-list-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-target-list-mode
*/
public enum StructureMapTargetListMode: String {
	
	/// when the target list is being assembled, the items for this rule go first. If more than one rule defines a first
	/// item (for a given instance of mapping) then this is an error.
	case first = "first"
	
	/// the target instance is shared with the target instances generated by another rule (up to the first common n
	/// items, then create new ones).
	case share = "share"
	
	/// when the target list is being assembled, the items for this rule go last. If more than one rule defines a last
	/// item (for a given instance of mapping) then this is an error.
	case last = "last"
	
	/// re-use the first item in the list, and keep adding content to it.
	case collate = "collate"
}


/**
How data is copied/created.

URL: http://hl7.org/fhir/map-transform
ValueSet: http://hl7.org/fhir/ValueSet/map-transform
*/
public enum StructureMapTransform: String {
	
	/// create(type : string) - type is passed through to the application on the standard API, and must be known by it.
	case create = "create"
	
	/// copy(source).
	case copy = "copy"
	
	/// truncate(source, length) - source must be stringy type.
	case truncate = "truncate"
	
	/// escape(source, fmt1, fmt2) - change source from one kind of escaping to another (plain, java, xml, json). note
	/// that this is for when the string itself is escaped.
	case escape = "escape"
	
	/// cast(source, type?) - case source from one type to another. target type can be left as implicit if there is one
	/// and only one target type known.
	case cast = "cast"
	
	/// append(source...) - source is element or string.
	case append = "append"
	
	/// translate(source, uri_of_map) - use the translate operation.
	case translate = "translate"
	
	/// reference(source : object) - return a string that references the provided tree properly.
	case reference = "reference"
	
	/// Perform a date operation. *Parameters to be documented*.
	case dateOp = "dateOp"
	
	/// Generate a random UUID (in lowercase). No Parameters.
	case uuid = "uuid"
	
	/// Return the appropriate string to put in a reference that refers to the resource provided as a parameter.
	case pointer = "pointer"
	
	/// Execute the supplied FHIRPath expression and use the value returned by that.
	case evaluate = "evaluate"
	
	/// Create a CodeableConcept. Parameters = (text) or (system. Code[, display]).
	case cc = "cc"
	
	/// Create a Coding. Parameters = (system. Code[, display]).
	case C = "c"
	
	/// Create a quantity. Parameters = (text) or (value, unit, [system, code]) where text is the natural representation
	/// e.g. [comparator]value[space]unit.
	case qty = "qty"
	
	/// Create an identifier. Parameters = (system, value[, type]) where type is a code from the identifier type value
	/// set.
	case id = "id"
	
	/// Create a contact details. Parameters = (value) or (system, value). If no system is provided, the system should
	/// be inferred from the content of the value.
	case cp = "cp"
}


/**
Types of research studies (types of research methods).

URL: http://terminology.hl7.org/CodeSystem/study-type
ValueSet: http://hl7.org/fhir/ValueSet/study-type
*/
public enum StudyType: String {
	
	/// randomized controlled trial.
	case RCT = "RCT"
	
	/// controlled (but not randomized) trial.
	case CCT = "CCT"
	
	/// observational study comparing cohorts.
	case cohort = "cohort"
	
	/// case-control study.
	case caseControl = "case-control"
	
	/// uncontrolled cohort or case series.
	case series = "series"
	
	/// a single case report.
	case caseReport = "case-report"
	
	/// a combination of 1 or more types of studies.
	case mixed = "mixed"
}


/**
This value set includes codes for the relationship between the Subscriber and the Beneficiary (insured/covered
party/patient).

URL: http://terminology.hl7.org/CodeSystem/subscriber-relationship
ValueSet: http://hl7.org/fhir/ValueSet/subscriber-relationship
*/
public enum SubscriberRelationshipCodes: String {
	
	/// The Beneficiary is a child of the Subscriber
	case child = "child"
	
	/// The Beneficiary is a parent of the Subscriber
	case parent = "parent"
	
	/// The Beneficiary is a spouse or equivalent of the Subscriber
	case spouse = "spouse"
	
	/// The Beneficiary is a common law spouse or equivalent of the Subscriber
	case common = "common"
	
	/// The Beneficiary has some other relationship the Subscriber
	case other = "other"
	
	/// The Beneficiary is the Subscriber
	case `self` = "self"
	
	/// The Beneficiary is covered under insurance of the subscriber due to an injury.
	case injured = "injured"
}


/**
The type of method used to execute a subscription.

URL: http://hl7.org/fhir/subscription-channel-type
ValueSet: http://hl7.org/fhir/ValueSet/subscription-channel-type
*/
public enum SubscriptionChannelType: String {
	
	/// The channel is executed by making a post to the URI. If a payload is included, the URL is interpreted as the
	/// service base, and an update (PUT) is made.
	case restHook = "rest-hook"
	
	/// The channel is executed by sending a packet across a web socket connection maintained by the client. The URL
	/// identifies the websocket, and the client binds to this URL.
	case websocket = "websocket"
	
	/// The channel is executed by sending an email to the email addressed in the URI (which must be a mailto:).
	case email = "email"
	
	/// The channel is executed by sending an SMS message to the phone number identified in the URL (tel:).
	case sms = "sms"
	
	/// The channel is executed by sending a message (e.g. a Bundle with a MessageHeader resource etc.) to the
	/// application identified in the URI.
	case message = "message"
}


/**
The status of a subscription.

URL: http://hl7.org/fhir/subscription-status
ValueSet: http://hl7.org/fhir/ValueSet/subscription-status
*/
public enum SubscriptionStatus: String {
	
	/// The client has requested the subscription, and the server has not yet set it up.
	case requested = "requested"
	
	/// The subscription is active.
	case active = "active"
	
	/// The server has an error executing the notification.
	case error = "error"
	
	/// Too many errors have occurred or the subscription has expired.
	case off = "off"
}


/**
Tags to put on a resource after subscriptions have been sent.

URL: http://terminology.hl7.org/CodeSystem/subscription-tag
ValueSet: http://hl7.org/fhir/ValueSet/subscription-tag
*/
public enum SubscriptionTag: String {
	
	/// The message has been queued for processing on a destination systems.
	case queued = "queued"
	
	/// The message has been delivered to its intended recipient.
	case delivered = "delivered"
}


/**
Substance category codes

URL: http://terminology.hl7.org/CodeSystem/substance-category
ValueSet: http://hl7.org/fhir/ValueSet/substance-category
*/
public enum SubstanceCategoryCodes: String {
	
	/// A substance that causes an allergic reaction.
	case allergen = "allergen"
	
	/// A substance that is produced by or extracted from a biological source.
	case biological = "biological"
	
	/// A substance that comes directly from a human or an animal (e.g. blood, urine, feces, tears, etc.).
	case body = "body"
	
	/// Any organic or inorganic substance of a particular molecular identity, including -- (i) any combination of such
	/// substances occurring in whole or in part as a result of a chemical reaction or occurring in nature and (ii) any
	/// element or uncombined radical (http://www.epa.gov/opptintr/import-export/pubs/importguide.pdf).
	case chemical = "chemical"
	
	/// A food, dietary ingredient, or dietary supplement for human or animal.
	case food = "food"
	
	/// A substance intended for use in the diagnosis, cure, mitigation, treatment, or prevention of disease in man or
	/// other animals (Federal Food Drug and Cosmetic Act).
	case drug = "drug"
	
	/// A finished product which is not normally ingested, absorbed or injected (e.g. steel, iron, wood, plastic and
	/// paper).
	case material = "material"
}


/**
Status of the supply delivery.

URL: http://hl7.org/fhir/supplydelivery-status
ValueSet: http://hl7.org/fhir/ValueSet/supplydelivery-status
*/
public enum SupplyDeliveryStatus: String {
	
	/// Supply has been requested, but not delivered.
	case inProgress = "in-progress"
	
	/// Supply has been delivered ("completed").
	case completed = "completed"
	
	/// Delivery was not completed.
	case abandoned = "abandoned"
	
	/// This electronic record should never have existed, though it is possible that real-world decisions were based on
	/// it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
}


/**
This value sets refers to a specific supply item.

URL: http://terminology.hl7.org/CodeSystem/supply-item-type
ValueSet: http://hl7.org/fhir/ValueSet/supplydelivery-type
*/
public enum SupplyItemType: String {
	
	/// Supply is a kind of medication.
	case medication = "medication"
	
	/// What is supplied (or requested) is a device.
	case device = "device"
}


/**
The reason why the supply item was requested.

URL: http://terminology.hl7.org/CodeSystem/supplyrequest-reason
ValueSet: http://hl7.org/fhir/ValueSet/supplyrequest-reason
*/
public enum SupplyRequestReason: String {
	
	/// The supply has been requested for use in direct patient care.
	case patientCare = "patient-care"
	
	/// The supply has been requested for creating or replenishing ward stock.
	case wardStock = "ward-stock"
}


/**
Status of the supply request.

URL: http://hl7.org/fhir/supplyrequest-status
ValueSet: http://hl7.org/fhir/ValueSet/supplyrequest-status
*/
public enum SupplyRequestStatus: String {
	
	/// The request has been created but is not yet complete or ready for action.
	case draft = "draft"
	
	/// The request is ready to be acted upon.
	case active = "active"
	
	/// The authorization/request to act has been temporarily withdrawn but is expected to resume in the future.
	case suspended = "suspended"
	
	/// The authorization/request to act has been terminated prior to the full completion of the intended actions.  No
	/// further activity should occur.
	case cancelled = "cancelled"
	
	/// Activity against the request has been sufficiently completed to the satisfaction of the requester.
	case completed = "completed"
	
	/// This electronic record should never have existed, though it is possible that real-world decisions were based on
	/// it.  (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
	
	/// The authoring/source system does not know which of the status values currently applies for this observation.
	/// Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the
	/// authoring/source system does not know which.
	case unknown = "unknown"
}


/**
This value sets refers to a Category of supply.

URL: http://terminology.hl7.org/CodeSystem/supply-kind
ValueSet: http://hl7.org/fhir/ValueSet/supplyrequest-kind
*/
public enum SupplyType: String {
	
	/// Supply is stored and requested from central supply.
	case central = "central"
	
	/// Supply is not onsite and must be requested from an outside vendor using a non-stock requisition.
	case nonstock = "nonstock"
}


/**
This value set includes a smattering of FDI tooth surface codes.

URL: http://terminology.hl7.org/CodeSystem/FDI-surface
ValueSet: http://hl7.org/fhir/ValueSet/surface
*/
public enum SurfaceCodes: String {
	
	/// The surface of a tooth that is closest to the midline (middle) of the face.
	case M = "M"
	
	/// The chewing surface of posterior teeth.
	case O = "O"
	
	/// The biting edge of anterior teeth.
	case I = "I"
	
	/// The surface of a tooth that faces away from the midline of the face.
	case D = "D"
	
	/// The surface of a posterior tooth facing the cheeks.
	case B = "B"
	
	/// The surface of a tooth facing the lips.
	case V = "V"
	
	/// The surface of a tooth facing the tongue.
	case L = "L"
	
	/// The Mesioclusal surfaces of a tooth.
	case MO = "MO"
	
	/// The Distoclusal surfaces of a tooth.
	case DO = "DO"
	
	/// The Distoincisal surfaces of a tooth.
	case DI = "DI"
	
	/// The Mesioclusodistal surfaces of a tooth.
	case MOD = "MOD"
}


/**
Types of combining results from a body of evidence (eg. summary data meta-analysis).

URL: http://terminology.hl7.org/CodeSystem/synthesis-type
ValueSet: http://hl7.org/fhir/ValueSet/synthesis-type
*/
public enum SynthesisType: String {
	
	/// A meta-analysis of the summary data of estimates from individual studies or data sets.
	case stdMA = "std-MA"
	
	/// A meta-analysis of the individual participant data from individual studies or data sets.
	case IPDMA = "IPD-MA"
	
	/// An indirect meta-analysis derived from 2 or more direct comparisons in a network meta-analysis.
	case indirectNMA = "indirect-NMA"
	
	/// An composite meta-analysis derived from direct comparisons and indirect comparisons in a network meta-analysis.
	case combinedNMA = "combined-NMA"
	
	/// A range of results across a body of evidence.
	case range = "range"
	
	/// An approach describing a body of evidence by categorically classifying individual studies (eg 3 studies showed
	/// beneft and 2 studied found no effect).
	case classification = "classification"
}


/**
Codes indicating the type of action that is expected to be performed

URL: http://hl7.org/fhir/CodeSystem/task-code
ValueSet: http://hl7.org/fhir/ValueSet/task-code
*/
public enum TaskCode: String {
	
	/// Take what actions are needed to transition the focus resource from 'draft' to 'active' or 'in-progress', as
	/// appropriate for the resource type.  This may involve additing additional content, approval, validation, etc.
	case approve = "approve"
	
	/// Act to perform the actions defined in the focus request.  This might result in a 'more assertive' request (order
	/// for a plan or proposal, filler order for a placer order), but is intend to eventually result in events.  The
	/// degree of fulfillment requested might be limited by Task.restriction.
	case fulfill = "fulfill"
	
	/// Abort, cancel or withdraw the focal resource, as appropriate for the type of resource.
	case abort = "abort"
	
	/// Replace the focal resource with the specified input resource
	case replace = "replace"
	
	/// Update the focal resource of the owning system to reflect the content specified as the Task.focus
	case change = "change"
	
	/// Transition the focal resource from 'active' or 'in-progress' to 'suspended'
	case suspend = "suspend"
	
	/// Transition the focal resource from 'suspended' to 'active' or 'in-progress' as appropriate for the resource
	/// type.
	case resume = "resume"
}


/**
Distinguishes whether the task is a proposal, plan or full order.

URL: http://hl7.org/fhir/task-intent
*/
public enum TaskIntent: String {
	
	/// The intent is not known.  When dealing with Task, it's not always known (or relevant) how the task was initiated
	/// - i.e. whether it was proposed, planned, ordered or just done spontaneously.
	case unknown = "unknown"
}


/**
The current status of the task.

URL: http://hl7.org/fhir/task-status
ValueSet: http://hl7.org/fhir/ValueSet/task-status
*/
public enum TaskStatus: String {
	
	/// The task is not yet ready to be acted upon.
	case draft = "draft"
	
	/// The task is ready to be acted upon and action is sought.
	case requested = "requested"
	
	/// A potential performer has claimed ownership of the task and is evaluating whether to perform it.
	case received = "received"
	
	/// The potential performer has agreed to execute the task but has not yet started work.
	case accepted = "accepted"
	
	/// The potential performer who claimed ownership of the task has decided not to execute it prior to performing any
	/// action.
	case rejected = "rejected"
	
	/// The task is ready to be performed, but no action has yet been taken.  Used in place of
	/// requested/received/accepted/rejected when request assignment and acceptance is a given.
	case ready = "ready"
	
	/// The task was not completed.
	case cancelled = "cancelled"
	
	/// The task has been started but is not yet complete.
	case inProgress = "in-progress"
	
	/// The task has been started but work has been paused.
	case onHold = "on-hold"
	
	/// The task was attempted but could not be completed due to some error.
	case failed = "failed"
	
	/// The task has been completed.
	case completed = "completed"
	
	/// The task should never have existed and is retained only because of the possibility it may have used.
	case enteredInError = "entered-in-error"
}


/**
Life cycle of the Status Code of a Template Design (Version)

URL: urn:oid:2.16.840.1.113883.3.1937.98.5.8
ValueSet: urn:oid:2.16.840.1.113883.3.1937.98.11.8
*/
public enum TemplateStatusCodeLifeCycle: String {
	
	/// Design is under development (nascent).
	case draft = "draft"
	
	/// Design is completed and is being reviewed.
	case pending = "pending"
	
	/// Design has been deemed fit for the intended purpose and is published by the governance group.
	case active = "active"
	
	/// Design is active, but is under review. The review may result in a change to the design. The change may
	/// necessitate a new version to be created. This in turn may result in the prior version of the template to be
	/// retired. Alternatively, the review may result in a change to the design that does not require a new version to
	/// be created, or it may result in no change to the design at all.
	case review = "review"
	
	/// A drafted design is determined to be erroneous or not fit for intended purpose and is discontinued before ever
	/// being published in an active state.
	case cancelled = "cancelled"
	
	/// A previously drafted design is determined to be erroneous or not fit for intended purpose and is discontinued
	/// before ever being published for consideration in a pending state.
	case rejected = "rejected"
	
	/// A previously active design is discontinued from use. It should no longer be used for future designs, but for
	/// historical purposes may be used to process data previously recorded using this design. A newer design may or may
	/// not exist. The design is published in the retired state.
	case retired = "retired"
	
	/// A design is determined to be erroneous or not fit for the intended purpose and should no longer be used, even
	/// for historical purposes. No new designs can be developed for this template. The associated template no longer
	/// needs to be published, but if published, is shown in the terminated state.
	case terminated = "terminated"
}


/**
The results of executing an action.

URL: http://hl7.org/fhir/report-action-result-codes
ValueSet: http://hl7.org/fhir/ValueSet/report-action-result-codes
*/
public enum TestReportActionResult: String {
	
	/// The action was successful.
	case pass = "pass"
	
	/// The action was skipped.
	case skip = "skip"
	
	/// The action failed.
	case fail = "fail"
	
	/// The action passed but with warnings.
	case warning = "warning"
	
	/// The action encountered a fatal error and the engine was unable to process.
	case error = "error"
}


/**
The type of participant.

URL: http://hl7.org/fhir/report-participant-type
ValueSet: http://hl7.org/fhir/ValueSet/report-participant-type
*/
public enum TestReportParticipantType: String {
	
	/// The test execution engine.
	case testEngine = "test-engine"
	
	/// A FHIR Client.
	case client = "client"
	
	/// A FHIR Server.
	case server = "server"
}


/**
The reported execution result.

URL: http://hl7.org/fhir/report-result-codes
ValueSet: http://hl7.org/fhir/ValueSet/report-result-codes
*/
public enum TestReportResult: String {
	
	/// All test operations successfully passed all asserts.
	case pass = "pass"
	
	/// One or more test operations failed one or more asserts.
	case fail = "fail"
	
	/// One or more test operations is pending execution completion.
	case pending = "pending"
}


/**
The current status of the test report.

URL: http://hl7.org/fhir/report-status-codes
ValueSet: http://hl7.org/fhir/ValueSet/report-status-codes
*/
public enum TestReportStatus: String {
	
	/// All test operations have completed.
	case completed = "completed"
	
	/// A test operations is currently executing.
	case inProgress = "in-progress"
	
	/// A test operation is waiting for an external client request.
	case waiting = "waiting"
	
	/// The test script execution was manually stopped.
	case stopped = "stopped"
	
	/// This test report was entered or created in error.
	case enteredInError = "entered-in-error"
}


/**
This value set defines a set of codes that are used to indicate the supported operations of a testing engine or tool.

URL: http://terminology.hl7.org/CodeSystem/testscript-operation-codes
ValueSet: http://hl7.org/fhir/ValueSet/testscript-operation-codes
*/
public enum TestScriptOperationCode: String {
	
	/// Read the current state of the resource.
	case read = "read"
	
	/// Read the state of a specific version of the resource.
	case vread = "vread"
	
	/// Update an existing resource by its id.
	case update = "update"
	
	/// Update an existing resource by its id (or create it if it is new).
	case updateCreate = "updateCreate"
	
	/// Patch an existing resource by its id.
	case patch = "patch"
	
	/// Delete a resource.
	case delete = "delete"
	
	/// Conditionally delete a single resource based on search parameters.
	case deleteCondSingle = "deleteCondSingle"
	
	/// Conditionally delete one or more resources based on search parameters.
	case deleteCondMultiple = "deleteCondMultiple"
	
	/// Retrieve the change history for a particular resource or resource type.
	case history = "history"
	
	/// Create a new resource with a server assigned id.
	case create = "create"
	
	/// Search based on some filter criteria.
	case search = "search"
	
	/// Update, create or delete a set of resources as independent actions.
	case batch = "batch"
	
	/// Update, create or delete a set of resources as a single transaction.
	case transaction = "transaction"
	
	/// Get a capability statement for the system.
	case capabilities = "capabilities"
	
	/// Realizes an ActivityDefinition in a specific context
	case apply = "apply"
	
	/// Closure Table Maintenance
	case closure = "closure"
	
	/// Finding Codes based on supplied properties
	case findMatches = "find-matches"
	
	/// Compare two systems CapabilityStatements
	case conforms = "conforms"
	
	/// Aggregates and returns the parameters and data requirements for a resource and all its dependencies as a single
	/// module definition
	case dataRequirements = "data-requirements"
	
	/// Generate a Document
	case document = "document"
	
	/// Request clinical decision support guidance based on a specific decision support module
	case evaluate = "evaluate"
	
	/// Invoke an eMeasure and obtain the results
	case evaluateMeasure = "evaluate-measure"
	
	/// Return all the related information as described in the Encounter or Patient
	case everything = "everything"
	
	/// Value Set Expansion
	case expand = "expand"
	
	/// Find a functional list
	case find = "find"
	
	/// Invoke a GraphQL query
	case graphql = "graphql"
	
	/// Test if a server implements a client's required operations
	case implements = "implements"
	
	/// Last N Observations Query
	case lastn = "lastn"
	
	/// Concept Look Up and Decomposition
	case lookup = "lookup"
	
	/// Find patient matches using MPI based logic
	case match = "match"
	
	/// Access a list of profiles, tags, and security labels
	case meta = "meta"
	
	/// Add profiles, tags, and security labels to a resource
	case metaAdd = "meta-add"
	
	/// Delete profiles, tags, and security labels for a resource
	case metaDelete = "meta-delete"
	
	/// Populate Questionnaire
	case populate = "populate"
	
	/// Generate HTML for Questionnaire
	case populatehtml = "populatehtml"
	
	/// Generate a link to a Questionnaire completion webpage
	case populatelink = "populatelink"
	
	/// Process a message according to the defined event
	case processMessage = "process-message"
	
	/// Build Questionnaire
	case questionnaire = "questionnaire"
	
	/// Observation Statistics
	case stats = "stats"
	
	/// Fetch a subset of the CapabilityStatement resource
	case subset = "subset"
	
	/// CodeSystem Subsumption Testing
	case subsumes = "subsumes"
	
	/// Model Instance Transformation
	case transform = "transform"
	
	/// Concept Translation
	case translate = "translate"
	
	/// Validate a resource
	case validate = "validate"
	
	/// ValueSet based Validation
	case validateCode = "validate-code"
}


/**
This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the
destination within a TestScript.

URL: http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types
ValueSet: http://hl7.org/fhir/ValueSet/testscript-profile-destination-types
*/
public enum TestScriptProfileDestinationType: String {
	
	/// General FHIR server used to respond to operations sent from a FHIR client.
	case fHIRServer = "FHIR-Server"
	
	/// A FHIR server acting as a Structured Data Capture Form Manager.
	case fHIRSDCFormManager = "FHIR-SDC-FormManager"
	
	/// A FHIR server acting as a Structured Data Capture Form Processor.
	case fHIRSDCFormProcessor = "FHIR-SDC-FormProcessor"
	
	/// A FHIR server acting as a Structured Data Capture Form Receiver.
	case fHIRSDCFormReceiver = "FHIR-SDC-FormReceiver"
}


/**
This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the
origin within a TestScript.

URL: http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
ValueSet: http://hl7.org/fhir/ValueSet/testscript-profile-origin-types
*/
public enum TestScriptProfileOriginType: String {
	
	/// General FHIR client used to initiate operations against a FHIR server.
	case fHIRClient = "FHIR-Client"
	
	/// A FHIR client acting as a Structured Data Capture Form Filler.
	case fHIRSDCFormFiller = "FHIR-SDC-FormFiller"
}


/**
The allowable request method or HTTP operation codes.

URL: http://hl7.org/fhir/http-operations
ValueSet: http://hl7.org/fhir/ValueSet/http-operations
*/
public enum TestScriptRequestMethodCode: String {
	
	/// HTTP DELETE operation.
	case delete = "delete"
	
	/// HTTP GET operation.
	case get = "get"
	
	/// HTTP OPTIONS operation.
	case options = "options"
	
	/// HTTP PATCH operation.
	case patch = "patch"
	
	/// HTTP POST operation.
	case post = "post"
	
	/// HTTP PUT operation.
	case put = "put"
	
	/// HTTP HEAD operation.
	case head = "head"
}


/**
A code that indicates how transactions are supported.

URL: http://hl7.org/fhir/transaction-mode
ValueSet: http://hl7.org/fhir/ValueSet/transaction-mode
*/
public enum TransactionMode: String {
	
	/// Neither batch or transaction is supported.
	case notSupported = "not-supported"
	
	/// Batches are  supported.
	case batch = "batch"
	
	/// Transactions are supported.
	case transaction = "transaction"
	
	/// Both batches and transactions are supported.
	case both = "both"
}


/**
The type of trigger.

URL: http://hl7.org/fhir/trigger-type
ValueSet: http://hl7.org/fhir/ValueSet/trigger-type
*/
public enum TriggerType: String {
	
	/// The trigger occurs in response to a specific named event, and no other information about the trigger is
	/// specified. Named events are completely pre-coordinated, and the formal semantics of the trigger are not
	/// provided.
	case namedEvent = "named-event"
	
	/// The trigger occurs at a specific time or periodically as described by a timing or schedule. A periodic event
	/// cannot have any data elements, but may have a name assigned as a shorthand for the event.
	case periodic = "periodic"
	
	/// The trigger occurs whenever data of a particular type is changed in any way, either added, modified, or removed.
	case dataChanged = "data-changed"
	
	/// The trigger occurs whenever data of a particular type is added.
	case dataAdded = "data-added"
	
	/// The trigger occurs whenever data of a particular type is modified.
	case dataModified = "data-modified"
	
	/// The trigger occurs whenever data of a particular type is removed.
	case dataRemoved = "data-removed"
	
	/// The trigger occurs whenever data of a particular type is accessed.
	case dataAccessed = "data-accessed"
	
	/// The trigger occurs whenever access to data of a particular type is completed.
	case dataAccessEnded = "data-access-ended"
}


/**
How a type relates to its baseDefinition.

URL: http://hl7.org/fhir/type-derivation-rule
ValueSet: http://hl7.org/fhir/ValueSet/type-derivation-rule
*/
public enum TypeDerivationRule: String {
	
	/// This definition defines a new type that adds additional elements to the base type.
	case specialization = "specialization"
	
	/// This definition adds additional rules to an existing concrete type.
	case constraint = "constraint"
}


/**
This value set includes sample UDI codes.

URL: http://hl7.org/fhir/ex-udi
ValueSet: http://hl7.org/fhir/ValueSet/udi
*/
public enum UDICodes: String {
	
	/// GUDID (FDA) US Repository
	case gudid = "gudid"
}


/**
Codes to identify how UDI data was entered.

URL: http://hl7.org/fhir/udi-entry-type
ValueSet: http://hl7.org/fhir/ValueSet/udi-entry-type
*/
public enum UDIEntryType: String {
	
	/// a barcodescanner captured the data from the device label.
	case barcode = "barcode"
	
	/// An RFID chip reader captured the data from the device label.
	case rfid = "rfid"
	
	/// The data was read from the label by a person and manually entered. (e.g.  via a keyboard).
	case manual = "manual"
	
	/// The data originated from a patient's implant card and was read by an operator.
	case card = "card"
	
	/// The data originated from a patient source and was not directly scanned or read from a label or card.
	case selfReported = "self-reported"
	
	/// The method of data capture has not been determined.
	case unknown = "unknown"
}


/**
This value set includes a smattering of Unit type codes.

URL: http://terminology.hl7.org/CodeSystem/benefit-unit
ValueSet: http://hl7.org/fhir/ValueSet/benefit-unit
*/
public enum UnitTypeCodes: String {
	
	/// A single individual
	case individual = "individual"
	
	/// A family, typically includes self, spouse(s) and children to a defined age
	case family = "family"
}


/**
A code that indicates whether an application accepts unknown elements or extensions when reading resources.

URL: http://hl7.org/fhir/unknown-content-code
ValueSet: http://hl7.org/fhir/ValueSet/unknown-content-code
*/
public enum UnknownContentCode: String {
	
	/// The application does not accept either unknown elements or extensions.
	case no = "no"
	
	/// The application accepts unknown extensions, but not unknown elements.
	case extensions = "extensions"
	
	/// The application accepts unknown elements, but not unknown extensions.
	case elements = "elements"
	
	/// The application accepts unknown elements and extensions.
	case both = "both"
}


/**
A code that specifies a type of context being specified by a usage context.

URL: http://terminology.hl7.org/CodeSystem/usage-context-type
ValueSet: http://hl7.org/fhir/ValueSet/usage-context-type
*/
public enum UsageContextType: String {
	
	/// The gender of the patient. For this context type, appropriate values can be found in the
	/// http://hl7.org/fhir/ValueSet/administrative-gender value set.
	case gender = "gender"
	
	/// The age of the patient. For this context type, the value could be a range that specifies the applicable ages or
	/// a code from an appropriate value set such as the MeSH value set
	/// http://terminology.hl7.org/ValueSet/v3-AgeGroupObservationValue.
	case age = "age"
	
	/// The clinical concept(s) addressed by the artifact. For example, disease, diagnostic test interpretation,
	/// medication ordering as in http://hl7.org/fhir/ValueSet/condition-code.
	case focus = "focus"
	
	/// The clinical specialty of the context in which the patient is being treated - For example, PCP, Patient,
	/// Cardiologist, Behavioral Professional, Oral Health Professional, Prescriber, etc... taken from a specialty value
	/// set such as the NUCC Health Care provider taxonomy value set http://hl7.org/fhir/ValueSet/provider-taxonomy.
	case user = "user"
	
	/// The settings in which the artifact is intended for use. For example, admission, pre-op, etc. For example, the
	/// ActEncounterCode value set http://terminology.hl7.org/ValueSet/v3-ActEncounterCode.
	case workflow = "workflow"
	
	/// The context for the clinical task(s) represented by this artifact. For example, this could be any task context
	/// represented by the HL7 ActTaskCode value set http://terminology.hl7.org/ValueSet/v3-ActTaskCode. General
	/// categories include: order entry, patient documentation and patient information review.
	case task = "task"
	
	/// The venue in which an artifact could be used. For example, Outpatient, Inpatient, Home, Nursing home. The code
	/// value may originate from the HL7 ServiceDeliveryLocationRoleType value set
	/// (http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType).
	case venue = "venue"
	
	/// The species to which an artifact applies. For example, SNOMED - 387961004 | Kingdom Animalia (organism).
	case species = "species"
	
	/// A program/project of work for which this artifact is applicable.
	case program = "program"
}


/**
The purpose of the Claim: predetermination, preauthorization, claim.

URL: http://hl7.org/fhir/claim-use
ValueSet: http://hl7.org/fhir/ValueSet/claim-use
*/
public enum Use: String {
	
	/// The treatment is complete and this represents a Claim for the services.
	case claim = "claim"
	
	/// The treatment is proposed and this represents a Pre-authorization for the services.
	case preauthorization = "preauthorization"
	
	/// The treatment is proposed and this represents a Pre-determination for the services.
	case predetermination = "predetermination"
}


/**
The primary process by which the target is validated

URL: http://terminology.hl7.org/CodeSystem/validation-process
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-validation-process
*/
public enum ValidationProcess: String {
	
	/// editCheck
	case editCheck = "edit-check"
	
	/// valueset
	case valueset = "valueset"
	
	/// primary
	case primary = "primary"
	
	/// multi
	case multi = "multi"
	
	/// standalone
	case standalone = "standalone"
	
	/// inContext
	case inContext = "in-context"
}


/**
Status of the validation of the target against the primary source

URL: http://terminology.hl7.org/CodeSystem/validation-status
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-validation-status
*/
public enum ValidationStatus: String {
	
	/// successful
	case successful = "successful"
	
	/// failed
	case failed = "failed"
	
	/// The validations status has not been determined yet
	case unknown = "unknown"
}


/**
What the target is validated against

URL: http://terminology.hl7.org/CodeSystem/validation-type
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-validation-type
*/
public enum ValidationType: String {
	
	/// nothing
	case nothing = "nothing"
	
	/// primary
	case primary = "primary"
	
	/// multiple
	case multiple = "multiple"
}


/**
Attested information may be validated by process that are manual or automated. For automated processes it may
accomplished by the system of record reaching out through another system's API or information may be sent to the system
of record. This value set defines a set of codes to describing the process, the how, a resource or data element is
validated.

URL: http://terminology.hl7.org/CodeSystem/verificationresult-communication-method
ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-communication-method
*/
public enum VerificationresultCommunicationMethod: String {
	
	/// The information is submitted/retrieved manually (e.g. by phone, fax, paper-based)
	case manual = "manual"
	
	/// The information is submitted/retrieved via a portal
	case portal = "portal"
	
	/// The information is retrieved (i.e. pulled) from a source (e.g. over an API)
	case pull = "pull"
	
	/// The information is sent (i.e. pushed) from a source (e.g. over an API, asynchronously, secure messaging)
	case push = "push"
}


/**
A coded concept listing the base codes.

URL: http://hl7.org/fhir/vision-base-codes
ValueSet: http://hl7.org/fhir/ValueSet/vision-base-codes
*/
public enum VisionBase: String {
	
	/// top.
	case up = "up"
	
	/// bottom.
	case down = "down"
	
	/// inner edge.
	case `in` = "in"
	
	/// outer edge.
	case out = "out"
}


/**
A coded concept listing the eye codes.

URL: http://hl7.org/fhir/vision-eye-codes
ValueSet: http://hl7.org/fhir/ValueSet/vision-eye-codes
*/
public enum VisionEyes: String {
	
	/// Right Eye.
	case right = "right"
	
	/// Left Eye.
	case left = "left"
}


/**
How a search parameter relates to the set of elements returned by evaluating its xpath query.

URL: http://hl7.org/fhir/search-xpath-usage
ValueSet: http://hl7.org/fhir/ValueSet/search-xpath-usage
*/
public enum XPathUsageType: String {
	
	/// The search parameter is derived directly from the selected nodes based on the type definitions.
	case normal = "normal"
	
	/// The search parameter is derived by a phonetic transform from the selected nodes.
	case phonetic = "phonetic"
	
	/// The search parameter is based on a spatial transform of the selected nodes.
	case nearby = "nearby"
	
	/// The search parameter is based on a spatial transform of the selected nodes, using physical distance from the
	/// middle.
	case distance = "distance"
	
	/// The interpretation of the xpath statement is unknown (and can't be automated).
	case other = "other"
}

