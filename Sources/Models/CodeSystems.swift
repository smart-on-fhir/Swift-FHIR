//
//  CodeSystems.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//


/**
A list of the base types defined by this version of the FHIR specification - types that are defined, but for which only
specializations actually are created

URL: http://hl7.org/fhir/abstract-types
ValueSet: http://hl7.org/fhir/ValueSet/abstract-types
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
	
	/// This account is on hold
	case onHold = "on-hold"
	
	/// The ccount status is unknown
	case unknown = "unknown"
}


/**
Defines behavior for an action or a group for how many times that item may be repeated

URL: http://hl7.org/fhir/action-cardinality-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-cardinality-behavior
*/
public enum ActionCardinalityBehavior: String {
	
	/// The action may only be selected one time
	case single = "single"
	
	/// The action may be selected multiple times
	case multiple = "multiple"
}


/**
Defines the kinds of conditions that can appear on actions

URL: http://hl7.org/fhir/action-condition-kind
ValueSet: http://hl7.org/fhir/ValueSet/action-condition-kind
*/
public enum ActionConditionKind: String {
	
	/// The condition describes whether or not a given action is applicable
	case applicability = "applicability"
	
	/// The condition is a starting condition for the action
	case start = "start"
	
	/// The condition is a stop, or exit condition for the action
	case stop = "stop"
}


/**
Defines organization behavior of a group

URL: http://hl7.org/fhir/action-grouping-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-grouping-behavior
*/
public enum ActionGroupingBehavior: String {
	
	/// Any group marked with this behavior should be displayed as a visual group to the end user
	case visualGroup = "visual-group"
	
	/// A group with this behavior logically groups its sub-elements, and may be shown as a visual group to the end
	/// user, but it is not required to do so
	case logicalGroup = "logical-group"
	
	/// A group of related alternative actions is a sentence group if the target referenced by the action is the same in
	/// all the actions and each action simply constitutes a different variation on how to specify the details for the
	/// target. For example, two actions that could be in a SentenceGroup are "aspirin, 500 mg, 2 times per day" and
	/// "aspirin, 300 mg, 3 times per day". In both cases, aspirin is the target referenced by the action, and the two
	/// actions represent different options for how aspirin might be ordered for the patient. Note that a SentenceGroup
	/// would almost always have an associated selection behavior of "AtMostOne", unless it's a required action, in
	/// which case, it would be "ExactlyOne"
	case sentenceGroup = "sentence-group"
}


/**
List of allowable action which this resource can request.

URL: http://hl7.org/fhir/actionlist
ValueSet: http://hl7.org/fhir/ValueSet/actionlist
*/
public enum ActionList: String {
	
	/// Cancel, reverse or nullify the target resource.
	case cancel = "cancel"
	
	/// Check for previously un-read/ not-retrieved resources.
	case poll = "poll"
	
	/// Re-process the target resource.
	case reprocess = "reprocess"
	
	/// Retrieve the processing status of the target resource.
	case status = "status"
}


/**
The type of participant for the action

URL: http://hl7.org/fhir/action-participant-type
ValueSet: http://hl7.org/fhir/ValueSet/action-participant-type
*/
public enum ActionParticipantType: String {
	
	/// The participant is the patient under evaluation
	case patient = "patient"
	
	/// The participant is a practitioner involved in the patient's care
	case practitioner = "practitioner"
	
	/// The participant is a person related to the patient
	case relatedPerson = "related-person"
}


/**
Defines selection frequency behavior for an action or group

URL: http://hl7.org/fhir/action-precheck-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-precheck-behavior
*/
public enum ActionPrecheckBehavior: String {
	
	/// An action with this behavior is one of the most frequent action that is, or should be, included by an end user,
	/// for the particular context in which the action occurs. The system displaying the action to the end user should
	/// consider "pre-checking" such an action as a convenience for the user
	case yes = "yes"
	
	/// An action with this behavior is one of the less frequent actions included by the end user, for the particular
	/// context in which the action occurs. The system displaying the actions to the end user would typically not "pre-
	/// check" such an action
	case no = "no"
}


/**
Defines the types of relationships between actions

URL: http://hl7.org/fhir/action-relationship-type
ValueSet: http://hl7.org/fhir/ValueSet/action-relationship-type
*/
public enum ActionRelationshipType: String {
	
	/// The action must be performed before the start of the related action
	case beforeStart = "before-start"
	
	/// The action must be performed before the related action
	case before = "before"
	
	/// The action must be performed before the end of the related action
	case beforeEnd = "before-end"
	
	/// The action must be performed concurrent with the start of the related action
	case concurrentWithStart = "concurrent-with-start"
	
	/// The action must be performed concurrent with the related action
	case concurrent = "concurrent"
	
	/// The action must be performed concurrent with the end of the related action
	case concurrentWithEnd = "concurrent-with-end"
	
	/// The action must be performed after the start of the related action
	case afterStart = "after-start"
	
	/// The action must be performed after the related action
	case after = "after"
	
	/// The action must be performed after the end of the related action
	case afterEnd = "after-end"
}


/**
Defines requiredness behavior for selecting an action or an action group

URL: http://hl7.org/fhir/action-required-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-required-behavior
*/
public enum ActionRequiredBehavior: String {
	
	/// An action with this behavior must be included in the actions processed by the end user; the end user SHALL not
	/// choose not to include this action
	case must = "must"
	
	/// An action with this behavior may be included in the set of actions processed by the end user
	case could = "could"
	
	/// An action with this behavior must be included in the set of actions processed by the end user, unless the end
	/// user provides documentation as to why the action was not included
	case mustUnlessDocumented = "must-unless-documented"
}


/**
Defines selection behavior of a group

URL: http://hl7.org/fhir/action-selection-behavior
ValueSet: http://hl7.org/fhir/ValueSet/action-selection-behavior
*/
public enum ActionSelectionBehavior: String {
	
	/// Any number of the actions in the group may be chosen, from zero to all
	case any = "any"
	
	/// All the actions in the group must be selected as a single unit
	case all = "all"
	
	/// All the actions in the group are meant to be chosen as a single unit: either all must be selected by the end
	/// user, or none may be selected
	case allOrNone = "all-or-none"
	
	/// The end user must choose one and only one of the selectable actions in the group. The user SHALL not choose none
	/// of the actions in the group
	case exactlyOne = "exactly-one"
	
	/// The end user may choose zero or at most one of the actions in the group
	case atMostOne = "at-most-one"
	
	/// The end user must choose a minimum of one, and as many additional as desired
	case oneOrMore = "one-or-more"
}


/**
The type of action to be performed

URL: http://hl7.org/fhir/action-type
ValueSet: http://hl7.org/fhir/ValueSet/action-type
*/
public enum ActionType: String {
	
	/// The action is to create a new resource
	case create = "create"
	
	/// The action is to update an existing resource
	case update = "update"
	
	/// The action is to remove an existing resource
	case remove = "remove"
	
	/// The action is to fire a specific event
	case fireEvent = "fire-event"
}


/**
High-level categorization of the type of activity

URL: http://hl7.org/fhir/activity-definition-category
ValueSet: http://hl7.org/fhir/ValueSet/activity-definition-category
*/
public enum ActivityDefinitionCategory: String {
	
	/// The activity is intended to provide or is related to treatment of the patient
	case treatment = "treatment"
	
	/// The activity is intended to provide or is related to education of the patient
	case education = "education"
	
	/// The activity is intended to perform or is related to assessment of the patient
	case assessment = "assessment"
}


/**
The type of an address (physical / postal)

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
The use of an address

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
The gender of a person used for administrative purposes.

URL: http://hl7.org/fhir/administrative-gender
ValueSet: http://hl7.org/fhir/ValueSet/administrative-gender
*/
public enum AdministrativeGender: String {
	
	/// Male
	case male = "male"
	
	/// Female
	case female = "female"
	
	/// Other
	case other = "other"
	
	/// Unknown
	case unknown = "unknown"
}


/**
Overall nature of the event, e.g. real or potential

URL: http://hl7.org/fhir/adverse-event-actuality
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-actuality
*/
public enum AdverseEventActuality: String {
	
	/// actual
	case actual = "actual"
	
	/// potential
	case potential = "potential"
}


/**
Overall categorization of the event, e.g. product related or situational

URL: http://hl7.org/fhir/adverse-event-category
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-category
*/
public enum AdverseEventCategory: String {
	
	/// productProblem
	case productProblem = "ProductProblem"
	
	/// productQuality
	case productQuality = "ProductQuality"
	
	/// productUseError
	case productUseError = "ProductUseError"
	
	/// wrongDose
	case wrongDose = "WrongDose"
	
	/// incorrectPrescribingInformation
	case incorrectPrescribingInformation = "IncorrectPrescribingInformation"
	
	/// wrongTechnique
	case wrongTechnique = "WrongTechnique"
	
	/// wrongRouteOfAdministration
	case wrongRouteOfAdministration = "WrongRouteOfAdministration"
	
	/// wrongRate
	case wrongRate = "WrongRate"
	
	/// wrongDuration
	case wrongDuration = "WrongDuration"
	
	/// wrongTime
	case wrongTime = "WrongTime"
	
	/// expiredDrug
	case expiredDrug = "ExpiredDrug"
	
	/// medicalDeviceUseError
	case medicalDeviceUseError = "MedicalDeviceUseError"
	
	/// problemDifferentManufacturer
	case problemDifferentManufacturer = "ProblemDifferentManufacturer"
	
	/// unsafePhysicalEnvironment
	case unsafePhysicalEnvironment = "UnsafePhysicalEnvironment"
}


/**
TODO

URL: http://hl7.org/fhir/adverse-event-causality-assess
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-causality-assess
*/
public enum AdverseEventCausalityAssessment: String {
	
	/// i) Event or laboratory test abnormality, with plausible time relationship to drug intake ii) Cannot be explained
	/// by disease or other drugs iii) Response to withdrawal plausible (pharmacologically, pathologically) iv) Event
	/// definitive pharmacologically or phenomenologically (i.e. an objective and specific medical disorder or a
	/// recognized pharmacological phenomenon) v) Re-challenge satisfactory, if necessary
	case certain = "Certain"
	
	/// i) Event or laboratory test abnormality, with reasonable time relationship to drug intake ii) Unlikely to be
	/// attributed to disease or other drugs iii) Response to withdrawal clinically reasonable iv) Re-challenge not
	/// required
	case probablyLikely = "Probably-Likely"
	
	/// i) Event or laboratory test abnormality, with reasonable time relationship to drug intake ii) Could also be
	/// explained by disease or other drugs iii) Information on drug withdrawal may be lacking or unclear
	case possible = "Possible"
	
	/// i) Event or laboratory test abnormality, with a time to drug intake that makes a relationship improbable (but
	/// not impossible) ii) Disease or other drugs provide plausible explanations
	case unlikely = "Unlikely"
	
	/// i) Event or laboratory test abnormality ii) More data for proper assessment needed, or iii) Additional data
	/// under examination
	case conditionalClassified = "Conditional-Classified"
	
	/// i) Report suggesting an adverse reaction ii) Cannot be judged because information is insufficient or
	/// contradictory iii) Data cannot be supplemented or verified
	case unassessableUnclassifiable = "Unassessable-Unclassifiable"
}


/**
TODO

URL: http://hl7.org/fhir/adverse-event-causality-method
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
TODO (and should this be required?)

URL: http://hl7.org/fhir/adverse-event-outcome
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
Overall seriousness of this event for the patient

URL: http://hl7.org/fhir/adverse-event-seriousness
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-seriousness
*/
public enum AdverseEventSeriousness: String {
	
	/// Non-serious
	case nonSerious = "Non-serious"
	
	/// Serious
	case serious = "Serious"
	
	/// Results in death
	case seriousResultsInDeath = "SeriousResultsInDeath"
	
	/// Is Life-threatening
	case seriousIsLifeThreatening = "SeriousIsLifeThreatening"
	
	/// Requires inpatient hospitalization or causes prolongation of existing hospitalization
	case seriousResultsInHospitalization = "SeriousResultsInHospitalization"
	
	/// Results in persistent or significant disability/incapacity
	case seriousResultsInDisability = "SeriousResultsInDisability"
	
	/// Is a congenital anomaly/birth defect
	case seriousIsBirthDefect = "SeriousIsBirthDefect"
	
	/// Requires intervention to prevent permanent impairment or damage (i.e., an important medical event that requires
	/// medical judgement)
	case seriousRequiresPreventImpairment = "SeriousRequiresPreventImpairment"
}


/**
The severity of the adverse event itself, in direct relation to the subject

URL: http://hl7.org/fhir/adverse-event-severity
ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-severity
*/
public enum AdverseEventSeverity: String {
	
	/// mild
	case mild = "Mild"
	
	/// moderate
	case moderate = "Moderate"
	
	/// severe
	case severe = "Severe"
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
Category of an identified substance.

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
	/// tissues, that are not typically associated with allergies.
	case biologic = "biologic"
}


/**
Statement about the degree of clinical certainty that a specific substance was the cause of the manifestation in a
reaction event.

URL: http://hl7.org/fhir/reaction-event-certainty
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
The clinical status of the allergy or intolerance.

URL: http://hl7.org/fhir/allergy-clinical-status
ValueSet: http://hl7.org/fhir/ValueSet/allergy-clinical-status
*/
public enum AllergyIntoleranceClinicalStatus: String {
	
	/// An active record of a risk of a reaction to the identified substance.
	case active = "active"
	
	/// An inactivated record of a risk of a reaction to the identified substance.
	case inactive = "inactive"
	
	/// A reaction to the identified substance has been clinically reassessed by testing or re-exposure and considered
	/// to be resolved.
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

URL: http://hl7.org/fhir/allerg-intol-substance-exp-risk
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
	
	/// A propensity for hypersensitivity reaction(s) to a substance.  These reactions are most typically type I
	/// hypersensitivity, plus other "allergy-like" reactions, including pseudoallergy.
	case allergy = "allergy"
	
	/// A propensity for adverse reactions to a substance that is not judged to be allergic or "allergy-like".  These
	/// reactions are typically (but not necessarily) non-immune.  They are to some degree idiosyncratic and/or
	/// individually specific (i.e. are not a reaction that is expected to occur with most or all patients given similar
	/// circumstances).
	case intolerance = "intolerance"
}


/**
Assertion about certainty associated with a propensity, or potential risk, of a reaction to the identified substance.

URL: http://hl7.org/fhir/allergy-verification-status
ValueSet: http://hl7.org/fhir/ValueSet/allergy-verification-status
*/
public enum AllergyIntoleranceVerificationStatus: String {
	
	/// A low level of certainty about the propensity for a reaction to the identified substance.
	case unconfirmed = "unconfirmed"
	
	/// A high level of certainty about the propensity for a reaction to the identified substance, which may include
	/// clinical evidence by testing or rechallenge.
	case confirmed = "confirmed"
	
	/// A propensity for a reaction to the identified substance has been disproven with a high level of clinical
	/// certainty, which may include testing or rechallenge, and is refuted.
	case refuted = "refuted"
	
	/// The statement was entered in error and is not valid.
	case enteredInError = "entered-in-error"
}


/**
Indicates the type of use for which the code is defined

URL: http://hl7.org/fhir/codesystem-altcode-kind
ValueSet: http://hl7.org/fhir/ValueSet/codesystem-altcode-kind
*/
public enum AlternativeCodeKind: String {
	
	/// The code is an alternative code that can be used in any of the circumstances that the primary code can be used
	case alternate = "alternate"
	
	/// The code should no longer be used, but was used in the past
	case deprecated = "deprecated"
	
	/// The code is an alternative to be used when a case insensitive code is required (when the primary codes are case
	/// sensitive)
	case caseInsensitive = "case-insensitive"
	
	/// The code is an alternative to be used when a case sensitive code is required (when the primary codes are case
	/// insensitive)
	case caseSensitive = "case-sensitive"
	
	/// The code is an alternative for the primary code that is built using the expression grammar defined by the code
	/// system
	case expression = "expression"
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
	
	/// The patient/patients has/have arrived and is/are waiting to be seen
	case arrived = "arrived"
	
	/// This appointment has completed and may have resulted in an encounter.
	case fulfilled = "fulfilled"
	
	/// The appointment has been cancelled.
	case cancelled = "cancelled"
	
	/// Some or all of the participant(s) have not/did not appear for the appointment (usually the patient).
	case noshow = "noshow"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// When checked in, all pre-encounter administrative work is complete, and the encounter may begin. (where multiple
	/// patients are involved, they are all present)
	case checkedIn = "checked-in"
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
Indicator for type of action performed during the event that generated the event

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
Indication of the degree of conformance expectations associated with a binding.

URL: http://hl7.org/fhir/binding-strength
ValueSet: http://hl7.org/fhir/ValueSet/binding-strength
*/
public enum BindingStrength: String {
	
	/// To be conformant, the concept in this element SHALL be from the specified value set
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
Biologically Derived Product Category

URL: http://hl7.org/fhir/product-category
ValueSet: http://hl7.org/fhir/ValueSet/product-category
*/
public enum BiologicallyDerivedProductCategory: String {
	
	/// A collection of tissues joined in a structural unit to serve a common function.
	case organ = "organ"
	
	/// An ensemble of similar cells and their extracellular matrix from the same origin that together carry out a
	/// specific function.
	case tissue = "tissue"
	
	/// Body fluid
	case fluid = "fluid"
	
	/// Collection of cells
	case cells = "cells"
	
	/// Biological agent of unspecified type
	case biologicalAgent = "biologicalAgent"
}


/**
Biologically Derived Product Status

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
BiologicallyDerived Product Storage Scale

URL: http://hl7.org/fhir/product-storage-scale
ValueSet: http://hl7.org/fhir/ValueSet/product-storage-scale
*/
public enum BiologicallyDerivedProductStorageScale: String {
	
	/// Fahrenheit temperature scale
	case farenheit = "farenheit"
	
	/// Celsius or centigrade temperature scale
	case celsius = "celsius"
	
	/// Kelvin absolute thermodynamic temperature scale
	case kelvin = "kelvin"
}


/**
Indicates the purpose of a bundle - how it was intended to be used.

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
	
	/// The bundle is a transaction - intended to be processed by a server as a group of actions.
	case batch = "batch"
	
	/// The bundle is a batch response. Note that as a batch, some responses may indicate failure and others success.
	case batchResponse = "batch-response"
	
	/// The bundle is a list of resources from a history interaction on a server.
	case history = "history"
	
	/// The bundle is a list of resources returned as a result of a search/query interaction, operation, or message.
	case searchset = "searchset"
	
	/// The bundle is a set of resources collected into a single package for ease of distribution.
	case collection = "collection"
}


/**
Ability of the primary source to push updates/alerts

URL: http://hl7.org/fhir/can-push-updates
ValueSet: http://hl7.org/fhir/ValueSet/can-push-updates
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
Indicates where the activity is at in its overall life cycle.

URL: http://hl7.org/fhir/care-plan-activity-status
ValueSet: http://hl7.org/fhir/ValueSet/care-plan-activity-status
*/
public enum CarePlanActivityStatus: String {
	
	/// Activity is planned but no action has yet been taken.
	case notStarted = "not-started"
	
	/// Appointment or other booking has occurred but activity has not yet begun.
	case scheduled = "scheduled"
	
	/// Activity has been started but is not yet complete.
	case inProgress = "in-progress"
	
	/// Activity was started but has temporarily ceased with an expectation of resumption at a future time.
	case onHold = "on-hold"
	
	/// The activity has been completed (more or less) as planned.
	case completed = "completed"
	
	/// The planned activity has been withdrawn.
	case cancelled = "cancelled"
	
	/// The planned activity has been ended prior to completion after the activity was started.
	case stopped = "stopped"
	
	/// The current state of the activity is not known.  Note: This concept is not to be used for "other".
	case unknown = "unknown"
}


/**
Codes indicating the degree of authority/intentionality associated with a care plan

URL: http://hl7.org/fhir/care-plan-intent
ValueSet: http://hl7.org/fhir/ValueSet/care-plan-intent
*/
public enum CarePlanIntent: String {
	
	/// The care plan is a suggestion made by someone/something that doesn't have an intention to ensure it occurs and
	/// without providing an authorization to act
	case proposal = "proposal"
	
	/// The care plan represents an intention to ensure something occurs without providing an authorization for others
	/// to act
	case plan = "plan"
	
	/// The care plan represents a request/demand and authorization for action
	case order = "order"
	
	/// The care plan represents a component or option for a RequestGroup that establishes timing, conditionality and/or
	/// other constraints among a set of requests.
	/// 
	/// Refer to [[[RequestGroup]]] for additional information on how this status is used
	case option = "option"
}


/**
Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record.

URL: http://hl7.org/fhir/care-plan-status
ValueSet: http://hl7.org/fhir/ValueSet/care-plan-status
*/
public enum CarePlanStatus: String {
	
	/// The plan is in development or awaiting use but is not yet intended to be acted upon.
	case draft = "draft"
	
	/// The plan is intended to be followed and used as part of patient care.
	case active = "active"
	
	/// The plan has been temporarily stopped but is expected to resume in the future.
	case suspended = "suspended"
	
	/// The plan is no longer in use and is not expected to be followed or used in patient care.
	case completed = "completed"
	
	/// The plan was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// The plan has been terminated prior to reaching completion (though it may have been replaced by a new plan).
	case cancelled = "cancelled"
	
	/// The authoring system doesn't know the current state of the care plan.
	case unknown = "unknown"
}


/**
Indicates the type of care team.

URL: http://hl7.org/fhir/care-team-category
ValueSet: http://hl7.org/fhir/ValueSet/care-team-category
*/
public enum CareTeamCategory: String {
	
	/// This type of team focuses on one specific type of incident, which is non-patient specific. The incident is
	/// determined by the context of use.  For example, code team (code red, code blue, medical emergency treatment) or
	/// the PICC line team.
	case event = "event"
	
	/// This type of team focuses on one specific encounter. The encounter is determined by the context of use.  For
	/// example, during an inpatient encounter, the nutrition support care team
	case encounter = "encounter"
	
	/// This type of team focuses on one specific episode of care with a defined time period or self-limiting process
	/// (e.g. 10 visits). The episode of care is determined by the context of use.  For example, a maternity care team
	/// over 9 months.
	case episode = "episode"
	
	/// This type of team focuses on overall care coordination managing one or more conditions across the continuum of
	/// care ensuring there are smooth transitions of care. The members of the team are determined or selected by an
	/// individual or organization. When determined by an organization, the team may be assigned or based on the
	/// person's enrollment in a particular program. For example, disease management team or patient centered medical
	/// home team.
	case longitudinal = "longitudinal"
	
	/// This type of team focuses on one specific condition. The condition is determined by the context of use.  For
	/// example, a disease management team focused on one condition (e.g. diabetes).
	case condition = "condition"
	
	/// This type of team is responsible for establishing, conducting, coordinating and monitoring the outcomes of
	/// clinical trials. The team focuses on research, clinical care and education.
	case clinicalResearch = "clinical-research"
}


/**
Indicates the status of the care team.

URL: http://hl7.org/fhir/care-team-status
ValueSet: http://hl7.org/fhir/ValueSet/care-team-status
*/
public enum CareTeamStatus: String {
	
	/// The care team has been drafted and proposed, but not yet participating in the coordination and delivery of care.
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
The type of catalog

URL: http://hl7.org/fhir/catalogType
ValueSet: http://hl7.org/fhir/ValueSet/catalogType
*/
public enum CatalogType: String {
	
	/// Medication Catalog
	case medication = "medication"
	
	/// Device Catalog
	case device = "device"
	
	/// Protocol List
	case protocol_fhir = "protocol"
}


/**
Codes identifying the lifecycle stage of a ChargeItem

URL: http://hl7.org/fhir/chargeitem-status
ValueSet: http://hl7.org/fhir/ValueSet/chargeitem-status
*/
public enum ChargeItemStatus: String {
	
	/// The charge item has been entered, but the charged service is not  yet complete, so it shall not be billed yet
	/// but might be used in the context of pre-authorization
	case planned = "planned"
	
	/// The charge item is ready for billing
	case billable = "billable"
	
	/// The charge item has been determined to be not billable (e.g. due to rules associated with the billing code)
	case notBillable = "not-billable"
	
	/// The processing of the charge was aborted
	case aborted = "aborted"
	
	/// The charge item has been billed (e.g. a billing engine has generated financial transactions by applying the
	/// associated ruled for the charge item to the context of the Encounter, and placed them into Claims/Invoices
	case billed = "billed"
	
	/// The charge item has been entered in error and should not be processed for billing
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies for this charge item  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}


/**
Direction in which lists of question options should be displayed

URL: http://hl7.org/fhir/choice-list-orientation
ValueSet: http://hl7.org/fhir/ValueSet/choice-list-orientation
*/
public enum ChoiceListOrientation: String {
	
	/// List choices along the horizontal axis
	case horizontal = "horizontal"
	
	/// List choices down the vertical axis
	case vertical = "vertical"
}


/**
The type of Claim payee Resource

URL: http://hl7.org/fhir/ex-payee-resource-type
ValueSet: http://hl7.org/fhir/ValueSet/ex-payee-resource-type
*/
public enum ClaimPayeeResourceType: String {
	
	/// Organization resource
	case organization = "organization"
	
	/// Patient resource
	case patient = "patient"
	
	/// Practitioner resource
	case practitioner = "practitioner"
	
	/// RelatedPerson resource
	case relatedperson = "relatedperson"
}


/**
The workflow state of a clinical impression.

URL: http://hl7.org/fhir/clinical-impression-status
ValueSet: http://hl7.org/fhir/ValueSet/clinical-impression-status
*/
public enum ClinicalImpressionStatus: String {
	
	/// The assessment is still on-going and results are not yet final.
	case draft = "draft"
	
	/// The assessment is done and the results are final.
	case completed = "completed"
	
	/// This assessment was never actually done and the record is erroneous (e.g. Wrong patient).
	case enteredInError = "entered-in-error"
}


/**
The degree to which the server supports the code search parameter on ValueSet, if it is supported

URL: http://hl7.org/fhir/code-search-support
ValueSet: http://hl7.org/fhir/ValueSet/code-search-support
*/
public enum CodeSearchSupport: String {
	
	/// The search for code on ValueSet only includes codes explicitly detailed on includes or expansions
	case explicit = "explicit"
	
	/// The search for code on ValueSet only includes all codes based on the expansion of the value set
	case all = "all"
}


/**
How much of the content of the code system - the concepts and codes it defines - are represented in a code system
resource

URL: http://hl7.org/fhir/codesystem-content-mode
ValueSet: http://hl7.org/fhir/ValueSet/codesystem-content-mode
*/
public enum CodeSystemContentMode: String {
	
	/// None of the concepts defined by the code system are included in the code system resource
	case notPresent = "not-present"
	
	/// A few representative concepts are included in the code system resource
	case example = "example"
	
	/// A subset of the code system concepts are included in the code system resource
	case fragment = "fragment"
	
	/// All the concepts defined by the code system are included in the code system resource
	case complete = "complete"
	
	/// The resource doesn't define any new concepts; it just provides additional designations and properties to another
	/// code system
	case supplement = "supplement"
}


/**
The meaning of the hierarchy of concepts in a code system

URL: http://hl7.org/fhir/codesystem-hierarchy-meaning
ValueSet: http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning
*/
public enum CodeSystemHierarchyMeaning: String {
	
	/// No particular relationship between the concepts can be assumed, except what can be determined by inspection of
	/// the definitions of the elements (possible reasons to use this: importing from a source where this is not
	/// defined, or where various parts of the hierarchy have different meanings)
	case groupedBy = "grouped-by"
	
	/// A hierarchy where the child concepts have an IS-A relationship with the parents - that is, all the properties of
	/// the parent are also true for its child concepts
	case isA = "is-a"
	
	/// Child elements list the individual parts of a composite whole (e.g. body site)
	case partOf = "part-of"
	
	/// Child concepts in the hierarchy may have only one parent, and there is a presumption that the code system is a
	/// "closed world" meaning all things must be in the hierarchy. This results in concepts such as "not otherwise
	/// classified."
	case classifiedWith = "classified-with"
}


/**
Codes for general categories of communications such as alerts, instruction, etc.

URL: http://hl7.org/fhir/communication-category
ValueSet: http://hl7.org/fhir/ValueSet/communication-category
*/
public enum CommunicationCategory: String {
	
	/// The communication conveys an alert.
	case alert = "alert"
	
	/// The communication conveys a notification.
	case notification = "notification"
	
	/// The communication conveys a reminder.
	case reminder = "reminder"
	
	/// The communication conveys instruction.
	case instruction = "instruction"
}


/**
Codes for the reason why a communication was not done.

URL: http://hl7.org/fhir/communication-not-done-reason
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

URL: http://hl7.org/fhir/communication-topic
ValueSet: http://hl7.org/fhir/ValueSet/communication-topic
*/
public enum CommunicationTopic: String {
	
	/// The purpose of the communication is a prescription refill request.
	case prescriptionRefillRequest = "prescription-refill-request"
	
	/// The purpose of the communication is a progress update.
	case progressUpdate = "progress-update"
	
	/// The purpose of the communication is to report labs.
	case reportLabs = "report-labs"
	
	/// The purpose of the communication is an appointment reminder.
	case appointmentReminder = "appointment-reminder"
	
	/// The purpose of the communication is a phone consult.
	case phoneConsult = "phone-consult"
	
	/// The purpose of the communication is a summary report.
	case summaryReport = "summary-report"
}


/**
Which compartment a compartment definition describes

URL: http://hl7.org/fhir/compartment-type
ValueSet: http://hl7.org/fhir/ValueSet/compartment-type
*/
public enum CompartmentType: String {
	
	/// The compartment definition is for the patient compartment
	case patient = "Patient"
	
	/// The compartment definition is for the encounter compartment
	case encounter = "Encounter"
	
	/// The compartment definition is for the related-person compartment
	case relatedPerson = "RelatedPerson"
	
	/// The compartment definition is for the practitioner compartment
	case practitioner = "Practitioner"
	
	/// The compartment definition is for the device compartment
	case device = "Device"
}


/**
The composite scoring method of the measure

URL: http://hl7.org/fhir/composite-measure-scoring
ValueSet: http://hl7.org/fhir/ValueSet/composite-measure-scoring
*/
public enum CompositeMeasureScoring: String {
	
	/// Opportunity scoring combines the scores from component measures by combining the numerators and denominators for
	/// each component
	case opportunity = "opportunity"
	
	/// All-or-nothing scoring includes an individual in the numerator of the composite measure if they are in the
	/// numerators of all of the component measures in which they are in the denominator
	case allOrNothing = "all-or-nothing"
	
	/// Linear scoring gives an individual a score based on the number of numerators in which they appear
	case linear = "linear"
	
	/// Weighted scoring gives an individual a score based on a weighted factor for each component numerator in which
	/// they appear
	case weighted = "weighted"
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
	/// not known
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
	
	/// Use the code as provided in the $translate request
	case provided = "provided"
	
	/// Use the code explicitly provided in the group.unmapped
	case fixed = "fixed"
	
	/// Use the map identified by the canonical URL in URL
	case otherMap = "other-map"
}


/**
Enumeration indicating whether the condition is currently active, inactive, or has been resolved.

URL: http://hl7.org/fhir/condition-state
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

URL: http://hl7.org/fhir/condition-ver-status
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
	
	/// No support for conditional reads
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

URL: http://hl7.org/fhir/conformance-expectation
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
How a resource reference is interpreted when testing consent restrictions

URL: http://hl7.org/fhir/consent-data-meaning
ValueSet: http://hl7.org/fhir/ValueSet/consent-data-meaning
*/
public enum ConsentDataMeaning: String {
	
	/// The consent applies directly to the instance of the resource
	case instance = "instance"
	
	/// The consent applies directly to the instance of the resource and instances it refers to
	case related = "related"
	
	/// The consent applies directly to the instance of the resource and instances that refer to it
	case dependents = "dependents"
	
	/// The consent applies to instances of resources that are authored by
	case authoredby = "authoredby"
}


/**
How a rule statement is applied, such as adding additional consent or removing consent

URL: http://hl7.org/fhir/consent-provision-type
ValueSet: http://hl7.org/fhir/ValueSet/consent-provision-type
*/
public enum ConsentProvisionType: String {
	
	/// Consent is denied for actions meeting these rules
	case deny = "deny"
	
	/// Consent is provided for actions meeting these rules
	case permit = "permit"
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
Telecommunications form for contact point

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
	/// various personal contacts including blogs, Skype, Twitter, Facebook, etc. Do not use for email addresses.
	case url = "url"
	
	/// A contact that can be used for sending an sms message (e.g. mobile phones, some landlines)
	case sms = "sms"
	
	/// A contact that is not a phone, fax, page or email address and is not expressible as a URL.  E.g. Internal mail
	/// address.  This SHOULD NOT be used for contacts that are expressible as a URL (e.g. Skype, Twitter, Facebook,
	/// etc.)  Extensions may be used to distinguish "other" contact types.
	case other = "other"
}


/**
Use of contact point

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
Color of the container cap

URL: http://hl7.org/fhir/container-cap
ValueSet: http://hl7.org/fhir/ValueSet/container-cap
*/
public enum ContainerCap: String {
	
	/// red cap
	case red = "red"
	
	/// yellow cap
	case yellow = "yellow"
	
	/// grey cap
	case grey = "grey"
	
	/// violet cap
	case violet = "violet"
	
	/// blue cap
	case blue = "blue"
	
	/// black cap
	case black = "black"
	
	/// green cap
	case green = "green"
}


/**
How a resource reference is interpreted when evaluating contract offers

URL: http://hl7.org/fhir/contract-data-meaning
ValueSet: http://hl7.org/fhir/ValueSet/contract-data-meaning
*/
public enum ContractDataMeaning: String {
	
	/// The consent applies directly to the instance of the resource
	case instance = "instance"
	
	/// The consent applies directly to the instance of the resource and instances it refers to
	case related = "related"
	
	/// The consent applies directly to the instance of the resource and instances that refer to it
	case dependents = "dependents"
	
	/// The consent applies to instances of resources that are authored by
	case authoredby = "authoredby"
}


/**
The type of contributor

URL: http://hl7.org/fhir/contributor-type
ValueSet: http://hl7.org/fhir/ValueSet/contributor-type
*/
public enum ContributorType: String {
	
	/// An author of the content of the module
	case author = "author"
	
	/// An editor of the content of the module
	case editor = "editor"
	
	/// A reviewer of the content of the module
	case reviewer = "reviewer"
	
	/// An endorser of the content of the module
	case endorser = "endorser"
}


/**
Copy Number Event

URL: http://hl7.org/fhir/copy-number-event
ValueSet: http://hl7.org/fhir/ValueSet/copy-number-event
*/
public enum CopyNumberEvent: String {
	
	/// amplification
	case amp = "amp"
	
	/// deletion
	case del = "del"
	
	/// loss of function
	case lof = "lof"
}


/**
Used to specify why the normally expected content of the data element is missing.

URL: http://hl7.org/fhir/data-absent-reason
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
	
	/// There is no proper value for this element (e.g. last menstrual period for a male)
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
	
	/// The value is not permitted in this context (e.g. due to profiles, or the base data types)
	case notPermitted = "not-permitted"
}


/**
A version specific list of the data types defined by the FHIR specification for use as an element  type (any of the FHIR
defined data types)

URL: http://hl7.org/fhir/data-types
ValueSet: http://hl7.org/fhir/ValueSet/data-types
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
	
	/// Optional Extension Element - found in all resources.
	case extension_fhir = "Extension"
	
	/// A human's name with the ability to identify parts and usage.
	case humanName = "HumanName"
	
	/// A technical identifier - identifies some entity uniquely and unambiguously.
	case identifier = "Identifier"
	
	/// The marketing status describes the date when a medicinal product is actually put on the market or the date as of
	/// which it is no longer available.
	case marketingStatus = "MarketingStatus"
	
	/// The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes
	/// to the content might not always be associated with version changes to the resource.
	case meta = "Meta"
	
	/// An amount of economic utility in some recognized currency.
	case money = "Money"
	
	/// A human-readable formatted text, including images.
	case narrative = "Narrative"
	
	/// The parameters to the module. This collection specifies both the input and output parameters. Input parameters
	/// are provided by the caller as part of the $evaluate operation. Output parameters are included in the
	/// GuidanceResponse.
	case parameterDefinition = "ParameterDefinition"
	
	/// A time period defined by a start and end date and optionally time.
	case period = "Period"
	
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
	
	/// Chemical substances are a single substance type whose primary defining element is the molecular structure.
	/// Chemical substances shall be defined on the basis of their complete covalent molecular structure; the presence
	/// of a salt (counter-ion) and/or solvates (water, alcohols) is also captured. Purity, grade, physical form or
	/// particle size are not taken into account in the definition of a chemical substance or in the assignment of a
	/// Substance ID.
	case substanceMoiety = "SubstanceMoiety"
	
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
	
	/// A URI that is a reference to a canonical URI on a FHIR resource
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
	
	/// Monday
	case mon = "mon"
	
	/// Tuesday
	case tue = "tue"
	
	/// Wednesday
	case wed = "wed"
	
	/// Thursday
	case thu = "thu"
	
	/// Friday
	case fri = "fri"
	
	/// Saturday
	case sat = "sat"
	
	/// Sunday
	case sun = "sun"
}


/**
Codes identifying the lifecycle stage of a definition

URL: http://hl7.org/fhir/definition-status
ValueSet: http://hl7.org/fhir/ValueSet/definition-status
*/
public enum DefinitionStatus: String {
	
	/// The definition is in the design stage and is not yet considered to be "ready for use"
	case draft = "draft"
	
	/// The definition is considered ready for use
	case active = "active"
	
	/// The definition should no longer be used
	case withdrawn = "withdrawn"
	
	/// The authoring system does not know which of the status values currently applies for this request.  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}


/**
High-level categorization of the definition, used for searching, sorting, and filtering

URL: http://hl7.org/fhir/definition-topic
ValueSet: http://hl7.org/fhir/ValueSet/definition-topic
*/
public enum DefinitionTopic: String {
	
	/// The definition is related to treatment of the patient
	case treatment = "treatment"
	
	/// The definition is related to education of the patient
	case education = "education"
	
	/// The definition is related to assessment of the patient
	case assessment = "assessment"
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
Codes representing the current status of the device - on, off, suspended, etc.

URL: http://hl7.org/fhir/operational-status
ValueSet: http://hl7.org/fhir/ValueSet/operational-status
*/
public enum DeviceComponentOperationalStatus: String {
	
	/// The device is off.
	case off = "off"
	
	/// The device is fully operational.
	case on = "on"
	
	/// The device is not ready.
	case notReady = "not-ready"
	
	/// The device is ready but not actively operating.
	case standby = "standby"
	
	/// The device transducer is disconnected.
	case transducDiscon = "transduc-discon"
	
	/// The device hardware is disconnected.
	case hwDiscon = "hw-discon"
	
	/// The device was entered in error.
	case enteredInError = "entered-in-error"
}


/**
Codes identifying groupings of parameters; e.g. Cardiovascular.

URL: http://hl7.org/fhir/parameter-group
ValueSet: http://hl7.org/fhir/ValueSet/parameter-group
*/
public enum DeviceComponentParameterGroup: String {
	
	/// Haemodynamic Parameter Group - MDC_PGRP_HEMO
	case haemodynamic = "haemodynamic"
	
	/// ECG Parameter Group - MDC_PGRP_ECG
	case ecg = "ecg"
	
	/// Respiratory Parameter Group - MDC_PGRP_RESP
	case respiratory = "respiratory"
	
	/// Ventilation Parameter Group - MDC_PGRP_VENT
	case ventilation = "ventilation"
	
	/// Neurological Parameter Group - MDC_PGRP_NEURO
	case neurological = "neurological"
	
	/// Drug Delivery Parameter Group - MDC_PGRP_DRUG
	case drugDelivery = "drug-delivery"
	
	/// Fluid Chemistry Parameter Group - MDC_PGRP_FLUID
	case fluidChemistry = "fluid-chemistry"
	
	/// Blood Chemistry Parameter Group - MDC_PGRP_BLOOD_CHEM
	case bloodChemistry = "blood-chemistry"
	
	/// Miscellaneous Parameter Group - MDC_PGRP_MISC
	case miscellaneous = "miscellaneous"
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
	
	/// Offset metric calibration method
	case offset = "offset"
	
	/// Gain metric calibration method
	case gain = "gain"
	
	/// Two-point metric calibration method
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
Codes for device specification types such as serial number, part number, hardware revision, software revision, etc.

URL: http://hl7.org/fhir/specification-type
ValueSet: http://hl7.org/fhir/ValueSet/specification-type
*/
public enum DeviceSpecificationSpecType: String {
	
	/// Unspecified Production Specification - MDC_ID_PROD_SPEC_UNSPECIFIED
	case unspecified = "unspecified"
	
	/// Serial Number - MDC_ID_PROD_SPEC_SERIAL
	case serialNumber = "serial-number"
	
	/// Part Number - MDC_ID_PROD_SPEC_PART
	case partNumber = "part-number"
	
	/// Hardware Revision - MDC_ID_PROD_SPEC_HW
	case hardwareRevision = "hardware-revision"
	
	/// Software Revision - MDC_ID_PROD_SPEC_SW
	case softwareRevision = "software-revision"
	
	/// Firmware Revision - MDC_ID_PROD_SPEC_FW
	case firmwareRevision = "firmware-revision"
	
	/// Protocol Revision - MDC_ID_PROD_SPEC_PROTOCOL
	case protocolRevision = "protocol-revision"
	
	/// GMDN - MDC_ID_PROD_SPEC_GMDN
	case gmdn = "gmdn"
}


/**
A coded concept indicating the current status of a the Device Usage

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
	/// the status should be "cancelled" rather than "entered-in-error".)
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies to this report. Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply although which one is
	/// not known.
	case unknown = "unknown"
}


/**
How an element value is interpreted when discrimination is evaluated

URL: http://hl7.org/fhir/discriminator-type
ValueSet: http://hl7.org/fhir/ValueSet/discriminator-type
*/
public enum DiscriminatorType: String {
	
	/// The slices have different values in the nominated element
	case value = "value"
	
	/// The slices are differentiated by the presence or absence of the nominated element
	case exists = "exists"
	
	/// The slices have different values in the nominated element, as determined by testing them against the applicable
	/// ElementDefinition.pattern[x]
	case pattern = "pattern"
	
	/// The slices are differentiated by type of the nominated element
	case type = "type"
	
	/// The slices are differentiated by conformance of the nominated element to a specified profile. Note that if the
	/// path specifies .resolve() then the profile is the target profile on the reference. In this case, validation by
	/// the possible profiles is required to differentiate the slices
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
The kind of dose or rate specified

URL: http://hl7.org/fhir/dose-rate-type
ValueSet: http://hl7.org/fhir/ValueSet/dose-rate-type
*/
public enum DoseAndRateType: String {
	
	/// The dose specified is calculated by the prescriber or the system
	case calculated = "calculated"
	
	/// The dose specified is as ordered by the prescriber
	case ordered = "ordered"
}


/**
Controls how multiple enableWhen values are interpreted -  whether all or any must be true

URL: http://hl7.org/fhir/questionnaire-enable-behavior
ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior
*/
public enum EnableWhenBehavior: String {
	
	/// Enable the question when all the enableWhen criteria are satisfied
	case all = "all"
	
	/// Enable the question when any of the enableWhen criteria are satisfied
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
	/// A system may update these records when the patient leaves the location to either reserved, or completed
	case active = "active"
	
	/// This location is held empty for this patient.
	case reserved = "reserved"
	
	/// The patient was at this location during the period specified.
	/// 
	/// Not to be used when the patient is currently at the location
	case completed = "completed"
}


/**
Current state of the encounter

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
The status of the endpoint

URL: http://hl7.org/fhir/endpoint-status
ValueSet: http://hl7.org/fhir/ValueSet/endpoint-status
*/
public enum EndpointStatus: String {
	
	/// This endpoint is expected to be active and can be used
	case active = "active"
	
	/// This endpoint is temporarily unavailable
	case suspended = "suspended"
	
	/// This endpoint has exceeded connectivity thresholds and is considered in an error state and should no longer be
	/// attempted to connect to until corrective action is taken
	case error = "error"
	
	/// This endpoint is no longer to be used
	case off = "off"
	
	/// This instance should not have been part of this patient's medical record.
	case enteredInError = "entered-in-error"
	
	/// This endpoint is not intended for production usage.
	case test = "test"
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
	
	/// This episode of care is on hold, the organization has limited responsibility for the patient (such as while on
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
Codes identifying the lifecycle stage of a event

URL: http://hl7.org/fhir/event-status
ValueSet: http://hl7.org/fhir/ValueSet/event-status
*/
public enum EventStatus: String {
	
	/// The core event has not started yet, but some staging activities have begun (e.g. surgical suite preparation).
	/// Preparation stages may be tracked for billing purposes.
	case preparation = "preparation"
	
	/// The event is currently occurring
	case inProgress = "in-progress"
	
	/// The event was terminated prior to any impact on the subject (though preparatory actions may have been taken)
	case notDone = "not-done"
	
	/// The event has been temporarily stopped but is expected to resume in the future
	case suspended = "suspended"
	
	/// The event was  terminated prior to the full completion of the intended actions but after having at least some
	/// impact on the subject.
	case aborted = "aborted"
	
	/// The event has now concluded
	case completed = "completed"
	
	/// This electronic record should never have existed, though it is possible that real-world decisions were based on
	/// it.  (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".)
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies for this request.  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}


/**
Real world event relating to the schedule.

URL: http://hl7.org/fhir/event-timing
ValueSet: http://hl7.org/fhir/ValueSet/event-timing
*/
public enum EventTiming: String {
	
	/// Event occurs during the morning. The exact time is unspecified and established by institution convention or
	/// patient interpretation
	case MORN = "MORN"
	
	/// Event occurs during the early morning. The exact time is unspecified and established by institution convention
	/// or patient interpretation
	case mORNEarly = "MORN.early"
	
	/// Event occurs during the late morning. The exact time is unspecified and established by institution convention or
	/// patient interpretation
	case mORNLate = "MORN.late"
	
	/// Event occurs around 12:00pm. The exact time is unspecified and established by institution convention or patient
	/// interpretation
	case NOON = "NOON"
	
	/// Event occurs during the afternoon. The exact time is unspecified and established by institution convention or
	/// patient interpretation
	case AFT = "AFT"
	
	/// Event occurs during the early afternoon. The exact time is unspecified and established by institution convention
	/// or patient interpretation
	case aFTEarly = "AFT.early"
	
	/// Event occurs during the late afternoon. The exact time is unspecified and established by institution convention
	/// or patient interpretation
	case aFTLate = "AFT.late"
	
	/// Event occurs during the evening. The exact time is unspecified and established by institution convention or
	/// patient interpretation
	case EVE = "EVE"
	
	/// Event occurs during the early evening. The exact time is unspecified and established by institution convention
	/// or patient interpretation
	case eVEEarly = "EVE.early"
	
	/// Event occurs during the late evening. The exact time is unspecified and established by institution convention or
	/// patient interpretation
	case eVELate = "EVE.late"
	
	/// Event occurs during the night. The exact time is unspecified and established by institution convention or
	/// patient interpretation
	case NIGHT = "NIGHT"
	
	/// Event occurs [offset] after subject goes to sleep. The exact time is unspecified and established by institution
	/// convention or patient interpretation
	case PHS = "PHS"
}


/**
The type of actor - system or human

URL: http://hl7.org/fhir/examplescenario-actor-type
ValueSet: http://hl7.org/fhir/ValueSet/examplescenario-actor-type
*/
public enum ExampleScenarioActorType: String {
	
	/// A person
	case person = "person"
	
	/// A system
	case entity = "entity"
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
The media type of the expression language

URL: http://hl7.org/fhir/expression-language
ValueSet: http://hl7.org/fhir/ValueSet/expression-language
*/
public enum ExpressionLanguage: String {
	
	/// Clinical Quality Language
	case textCql = "text/cql"
	
	/// FHIRPath
	case textFhirpath = "text/fhirpath"
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
	/// [url]#[elementid]. If there is no #, the Element id is one defined in the base specification
	case element = "element"
	
	/// The context is a particular extension from a particular profile, and the expression is just a uri that
	/// identifies the extension
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
A code to indicate if the substance is actively used

URL: http://hl7.org/fhir/substance-status
ValueSet: http://hl7.org/fhir/ValueSet/substance-status
*/
public enum FHIRSubstanceStatus: String {
	
	/// The substance is considered for use or reference
	case active = "active"
	
	/// The substance is considered for reference, but not for use
	case inactive = "inactive"
	
	/// The substance was entered in error
	case enteredInError = "entered-in-error"
}


/**
The result if validation fails

URL: http://hl7.org/fhir/failure-action
ValueSet: http://hl7.org/fhir/ValueSet/failure-action
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

URL: http://hl7.org/fhir/history-absent-reason
ValueSet: http://hl7.org/fhir/ValueSet/history-absent-reason
*/
public enum FamilyHistoryAbsentReason: String {
	
	/// Patient does not know the subject, e.g. the biological parent of an adopted patient.
	case subjectUnknown = "subject-unknown"
	
	/// The patient withheld or refused to share the information.
	case withheld = "withheld"
	
	/// Information cannot be obtained; e.g. unconscious patient
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
	
	/// Health information for this individual is unavailable/unknown.
	case healthUnknown = "health-unknown"
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
	/// including the provided concept itself (i.e. include child codes)
	case isA = "is-a"
	
	/// Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value,
	/// excluding the provided concept itself (i.e. include child codes)
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
	/// including the provided concept itself (e.g. include parent codes)
	case generalizes = "generalizes"
	
	/// The specified property of the code has at least one value (if the specified value is true; if the specified
	/// value is false, then matches when the specified property of the code has no values)
	case exists = "exists"
}


/**
Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or entered
in error.

URL: http://hl7.org/fhir/flag-status
ValueSet: http://hl7.org/fhir/ValueSet/flag-status
*/
public enum FlagStatus: String {
	
	/// A current flag that should be displayed to a user. A system may use the category to determine which roles should
	/// view the flag.
	case active = "active"
	
	/// The flag does not need to be displayed any more.
	case inactive = "inactive"
	
	/// The flag was added in error, and should no longer be displayed.
	case enteredInError = "entered-in-error"
}


/**
Codes indicating whether the goal has been accepted by a stakeholder

URL: http://hl7.org/fhir/goal-acceptance-status
ValueSet: http://hl7.org/fhir/ValueSet/goal-acceptance-status
*/
public enum GoalAcceptanceStatus: String {
	
	/// Stakeholder supports pursuit of the goal
	case agree = "agree"
	
	/// Stakeholder is not in support of the pursuit of the goal
	case disagree = "disagree"
	
	/// Stakeholder has not yet made a decision on whether they support the goal
	case pending = "pending"
}


/**
Types of relationships between two goals

URL: http://hl7.org/fhir/goal-relationship-type
ValueSet: http://hl7.org/fhir/ValueSet/goal-relationship-type
*/
public enum GoalRelationshipType: String {
	
	/// Indicates that the target goal is one which must be met before striving for the current goal
	case predecessor = "predecessor"
	
	/// Indicates that the target goal is a desired objective once the current goal is met
	case successor = "successor"
	
	/// Indicates that this goal has been replaced by the target goal
	case replacement = "replacement"
	
	/// Indicates that the target goal is considered to be a "piece" of attaining this goal.
	case milestone = "milestone"
	
	/// Indicates that the relationship is not covered by one of the pre-defined codes.  (An extension may convey more
	/// information about the meaning of the relationship.)
	case other = "other"
}


/**
Indicates whether the goal has been met and is still being targeted

URL: http://hl7.org/fhir/goal-status
ValueSet: http://hl7.org/fhir/ValueSet/goal-status
*/
public enum GoalStatus: String {
	
	/// A goal is proposed for this patient
	case proposed = "proposed"
	
	/// A proposed goal was accepted or acknowledged
	case accepted = "accepted"
	
	/// A goal is planned for this patient
	case planned = "planned"
	
	/// The goal is being sought but has not yet been reached.  (Also applies if goal was reached in the past but there
	/// has been regression and goal is being sought again)
	case inProgress = "in-progress"
	
	/// The goal is on schedule for the planned timelines
	case onTarget = "on-target"
	
	/// The goal is ahead of the planned timelines
	case aheadOfTarget = "ahead-of-target"
	
	/// The goal is behind the planned timelines
	case behindTarget = "behind-target"
	
	/// The goal has been met, but ongoing activity is needed to sustain the goal objective
	case sustaining = "sustaining"
	
	/// The goal has been met and no further action is needed
	case achieved = "achieved"
	
	/// The goal remains a long term objective but is no longer being actively pursued for a temporary period of time.
	case onHold = "on-hold"
	
	/// The previously accepted goal is no longer being sought
	case cancelled = "cancelled"
	
	/// The goal was entered in error and voided.
	case enteredInError = "entered-in-error"
	
	/// A proposed goal was rejected
	case rejected = "rejected"
}


/**
How a compartment must be linked

URL: http://hl7.org/fhir/graph-compartment-rule
ValueSet: http://hl7.org/fhir/ValueSet/graph-compartment-rule
*/
public enum GraphCompartmentRule: String {
	
	/// The compartment must be identical (the same literal reference)
	case identical = "identical"
	
	/// The compartment must be the same - the record must be about the same patient, but the reference may be different
	case matching = "matching"
	
	/// The compartment must be different
	case different = "different"
	
	/// The compartment rule is defined in the accompanying FHIRPath expression
	case custom = "custom"
}


/**
Defines how a compartment rule is used

URL: http://hl7.org/fhir/graph-compartment-use
ValueSet: http://hl7.org/fhir/ValueSet/graph-compartment-use
*/
public enum GraphCompartmentUse: String {
	
	/// This compartment rule is a condition for whether the rule applies
	case condition = "condition"
	
	/// This compartment rule is enforced on any relationships that meet the conditions
	case requirement = "requirement"
}


/**
Types of resources that are part of group

URL: http://hl7.org/fhir/group-type
ValueSet: http://hl7.org/fhir/ValueSet/group-type
*/
public enum GroupType: String {
	
	/// Group contains "person" Patient resources
	case person = "person"
	
	/// Group contains "animal" Patient resources
	case animal = "animal"
	
	/// Group contains healthcare practitioner resources (Practitioner or PractitionerRole)
	case practitioner = "practitioner"
	
	/// Group contains Device resources
	case device = "device"
	
	/// Group contains Medication resources
	case medication = "medication"
	
	/// Group contains Substance resources
	case substance = "substance"
}


/**
The status of a guidance response

URL: http://hl7.org/fhir/guidance-response-status
ValueSet: http://hl7.org/fhir/ValueSet/guidance-response-status
*/
public enum GuidanceResponseStatus: String {
	
	/// The request was processed successfully
	case success = "success"
	
	/// The request was processed successfully, but more data may result in a more complete evaluation
	case dataRequested = "data-requested"
	
	/// The request was processed, but more data is required to complete the evaluation
	case dataRequired = "data-required"
	
	/// The request is currently being processed
	case inProgress = "in-progress"
	
	/// The request was not processed successfully
	case failure = "failure"
	
	/// The response was entered in error
	case enteredInError = "entered-in-error"
}


/**
A code that indicates how the page is generated

URL: http://hl7.org/fhir/guide-page-generation
ValueSet: http://hl7.org/fhir/ValueSet/guide-page-generation
*/
public enum GuidePageGeneration: String {
	
	/// Page is proper xhtml with no templating.  Will be brought across unchanged for standard post-processing
	case html = "html"
	
	/// Page is markdown with templating.  Will use the template to create a file that imports the markdown file prior
	/// to post-processing
	case markdown = "markdown"
	
	/// Page is xml with templating.  Will use the template to create a file that imports the source file and run the
	/// nominated XSLT transform (see parameters) if present prior to post-processing
	case xml = "xml"
	
	/// Page will be generated by the publication process - no source to bring across
	case generated = "generated"
}


/**
Code of parameter that is input to the guide

URL: http://hl7.org/fhir/guide-parameter-code
ValueSet: http://hl7.org/fhir/ValueSet/guide-parameter-code
*/
public enum GuideParameterCode: String {
	
	/// If the value of this boolean 0..1 parameter is "true" then all conformance resources will have any specified
	/// [Resource].version overwritten with the ImplementationGuide.version
	case applyBusinessVersion = "apply-business-version"
	
	/// If the value of this boolean 0..1 parameter is "true" then all conformance resources will have any specified
	/// [Resource].jurisdiction overwritten with the ImplementationGuide.jurisdiction
	case applyJurisdiction = "apply-jurisdiction"
	
	/// The value of this string 0..* parameter is a subfolder of the build context's location that is to be scanned to
	/// load resources. Scope is (if present) a particular resource type
	case pathResource = "path-resource"
	
	/// The value of this string 0..1 parameter is a subfolder of the build context's location that contains files that
	/// are part of the html content processed by the builder
	case pathPages = "path-pages"
	
	/// The value of this string 0..1 parameter is a subfolder of the build context's location that is used as the
	/// terminology cache. If this is not present, the terminology cache is on the local system, not under version
	/// control
	case pathTxCache = "path-tx-cache"
	
	/// The value of this string 0..1 parameter is a path to the ExpansionProfile used when expanding value sets for
	/// this implementation guide. This is particularly used to specify the versions of published terminologies such as
	/// SNOMED CT
	case expansionProfile = "expansion-profile"
	
	/// The value of this string 0..1 parameter is either "warning" or "error" (default = "error"). If the value is
	/// "warning" then IG build tools allow the IG to be considered successfully build even when there is no internal
	/// broken links
	case ruleBrokenLinks = "rule-broken-links"
	
	/// The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in XML format. If
	/// not present, the Publication Tool decides whether to generate XML
	case generateXml = "generate-xml"
	
	/// The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in JSON format. If
	/// not present, the Publication Tool decides whether to generate JSON
	case generateJson = "generate-json"
	
	/// The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in Turtle format.
	/// If not present, the Publication Tool decides whether to generate Turtle
	case generateTurtle = "generate-turtle"
	
	/// The value of this string singleton parameter is the name of the file to use as the builder template for each
	/// generated page (see templating)
	case htmlTemplate = "html-template"
}


/**
An HL7 administrative unit that owns artifacts in the FHIR specification

URL: http://hl7.org/fhir/hl7-work-group
ValueSet: http://hl7.org/fhir/ValueSet/hl7-work-group
*/
public enum HL7Workgroup: String {
	
	/// Community Based Collaborative Care (http://www.hl7.org/Special/committees/cbcc/index.cfm)
	case cbcc = "cbcc"
	
	/// Clinical Decision Support (http://www.hl7.org/Special/committees/dss/index.cfm)
	case cds = "cds"
	
	/// Clinical Quality Information (http://www.hl7.org/Special/committees/cqi/index.cfm)
	case cqi = "cqi"
	
	/// Clinical Genomics (http://www.hl7.org/Special/committees/clingenomics/index.cfm)
	case cg = "cg"
	
	/// Health Care Devices (http://www.hl7.org/Special/committees/healthcaredevices/index.cfm)
	case dev = "dev"
	
	/// Electronic Health Records (http://www.hl7.org/special/committees/ehr/index.cfm)
	case ehr = "ehr"
	
	/// FHIR Infrastructure (http://www.hl7.org/Special/committees/fiwg/index.cfm)
	case fhir = "fhir"
	
	/// Financial Management (http://www.hl7.org/Special/committees/fm/index.cfm)
	case fm = "fm"
	
	/// Health Standards Integration (http://www.hl7.org/Special/committees/hsi/index.cfm)
	case hsi = "hsi"
	
	/// Imaging Integration (http://www.hl7.org/Special/committees/imagemgt/index.cfm)
	case ii = "ii"
	
	/// Infrastructure And Messaging (http://www.hl7.org/special/committees/inm/index.cfm)
	case inm = "inm"
	
	/// Implementable Technology Specifications (http://www.hl7.org/special/committees/xml/index.cfm)
	case its = "its"
	
	/// Orders and Observations (http://www.hl7.org/Special/committees/orders/index.cfm)
	case oo = "oo"
	
	/// Patient Administration (http://www.hl7.org/Special/committees/pafm/index.cfm)
	case pa = "pa"
	
	/// Patient Care (http://www.hl7.org/Special/committees/patientcare/index.cfm)
	case pc = "pc"
	
	/// Public Health and Emergency Response (http://www.hl7.org/Special/committees/pher/index.cfm)
	case pher = "pher"
	
	/// Pharmacy (http://www.hl7.org/Special/committees/medication/index.cfm)
	case phx = "phx"
	
	/// Regulated Clinical Research Information Management (http://www.hl7.org/Special/committees/rcrim/index.cfm)
	case rcrim = "rcrim"
	
	/// Structured Documents (http://www.hl7.org/Special/committees/structure/index.cfm)
	case sd = "sd"
	
	/// Security (http://www.hl7.org/Special/committees/secure/index.cfm)
	case sec = "sec"
	
	/// US Realm Taskforce (http://wiki.hl7.org/index.php?title=US_Realm_Task_Force)
	case us = "us"
	
	/// Vocabulary (http://www.hl7.org/Special/committees/Vocab/index.cfm)
	case vocab = "vocab"
	
	/// Application Implementation and Design (http://www.hl7.org/Special/committees/java/index.cfm)
	case aid = "aid"
}


/**
HTTP verbs (in the HTTP command line).

URL: http://hl7.org/fhir/http-verb
ValueSet: http://hl7.org/fhir/ValueSet/http-verb
*/
public enum HTTPVerb: String {
	
	/// HTTP GET
	case GET = "GET"
	
	/// HTTP HEAD
	case HEAD = "HEAD"
	
	/// HTTP POST
	case POST = "POST"
	
	/// HTTP PUT
	case PUT = "PUT"
	
	/// HTTP DELETE
	case DELETE = "DELETE"
	
	/// HTTP PATCH
	case PATCH = "PATCH"
}


/**
Set of handling instructions prior testing of the specimen

URL: http://hl7.org/fhir/handling-condition
ValueSet: http://hl7.org/fhir/ValueSet/handling-condition
*/
public enum HandlingConditionSet: String {
	
	/// room temperature
	case room = "room"
	
	/// refrigerated temperature
	case refrigerated = "refrigerated"
	
	/// frozen temperature
	case frozen = "frozen"
}


/**
A code that represents the preferred display order of the components of a human name

URL: http://hl7.org/fhir/name-assembly-order
ValueSet: http://hl7.org/fhir/ValueSet/name-assembly-order
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

URL: http://hl7.org/fhir/iso-21089-lifecycle
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
	
	/// The identifier considered to be most trusted for the identification of this item.
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
The status of the ImagingStudy

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
	/// occurred, the status should be "cancelled" rather than "entered-in-error".)
	case enteredInError = "entered-in-error"
	
	/// The system does not know which of the status values currently applies for this request. Note: This concept is
	/// not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known which one.
	case unknown = "unknown"
}


/**
A set codes that define the functional status of an implanted device.

URL: http://hl7.org/fhir/implant-status
ValueSet: http://hl7.org/fhir/ValueSet/implant-status
*/
public enum ImplantStatus: String {
	
	/// The implanted device is working normally
	case functional = "functional"
	
	/// The implanted device is not working
	case nonFunctional = "non-functional"
	
	/// The implanted device has been turned off
	case disabled = "disabled"
	
	/// the functional status of the implant has not been determined
	case unknown = "unknown"
}


/**
Codes indicating the details of what is/was done.  These will vary significantly based on the type of request resource
and will often be example/preferred rather than extensible/required.

URL: http://hl7.org/fhir/invoice-priceComponentType
ValueSet: http://hl7.org/fhir/ValueSet/invoice-priceComponentType
*/
public enum InvoicePriceComponentType: String {
	
	/// the amount is the base price used for calculating the total price before applying surcharges, discount or taxes
	case base = "base"
	
	/// the amount is a surcharge applied on the base price
	case surcharge = "surcharge"
	
	/// the amount is a deduction applied on the base price
	case deduction = "deduction"
	
	/// the amount is a discount applied on the base price
	case discount = "discount"
	
	/// the amount is the tax component of the total price
	case tax = "tax"
	
	/// the amount is of informational character, it has not been applied in the calculation of the total price
	case informational = "informational"
}


/**
Codes identifying the lifecycle stage of an Invoice

URL: http://hl7.org/fhir/invoice-status
ValueSet: http://hl7.org/fhir/ValueSet/invoice-status
*/
public enum InvoiceStatus: String {
	
	/// the invoice has been prepared but not yet finalized
	case draft = "draft"
	
	/// the invoice has been finalized and sent to the recipient
	case issued = "issued"
	
	/// the invoice has been balaced / completely paid
	case balanced = "balanced"
	
	/// the invoice was cancelled
	case cancelled = "cancelled"
	
	/// the invoice was determined as entered in error before it was issued
	case enteredInError = "entered-in-error"
}


/**
How the issue affects the success of the action.

URL: http://hl7.org/fhir/issue-severity
ValueSet: http://hl7.org/fhir/ValueSet/issue-severity
*/
public enum IssueSeverity: String {
	
	/// The issue caused the action to fail, and no further checking could be performed.
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
	
	/// A structural issue in the content such as wrong namespace, or unable to parse the content completely, or invalid
	/// json syntax.
	case structure = "structure"
	
	/// A required element is missing.
	case required = "required"
	
	/// An element value is invalid.
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
	
	/// The resource or profile is not supported.
	case notSupported = "not-supported"
	
	/// An attempt was made to create a duplicate record.
	case duplicate = "duplicate"
	
	/// The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this
	/// code may be used where the content is not found further into the application architecture.
	case notFound = "not-found"
	
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
	
	/// The content/operation failed to pass some business rule, and so could not proceed.
	case businessRule = "business-rule"
	
	/// Content could not be accepted because of an edit conflict (i.e. version aware updates) (In a pure RESTful
	/// environment, this would be an HTTP 404 error, but this code may be used where the conflict is discovered further
	/// into the application architecture.)
	case conflict = "conflict"
	
	/// Not all data sources typically accessed could be reached, or responded in time, so the returned information
	/// might not be complete.
	case incomplete = "incomplete"
	
	/// Transient processing issues. The system receiving the error may be able to resubmit the same content once an
	/// underlying issue is resolved.
	case transient = "transient"
	
	/// A resource/record locking failure (usually in an underlying database).
	case lockError = "lock-error"
	
	/// The persistent store is unavailable; e.g. the database is down for maintenance or similar action.
	case noStore = "no-store"
	
	/// An unexpected internal error has occurred.
	case exception = "exception"
	
	/// An internal timeout has occurred.
	case timeout = "timeout"
	
	/// The system is not prepared to handle this request due to load management.
	case throttled = "throttled"
	
	/// A message unrelated to the processing success of the completed operation (examples of the latter include things
	/// like reminders of password expiry, system maintenance times, etc.).
	case informational = "informational"
}


/**
The type of knowledge asset this library contains

URL: http://hl7.org/fhir/library-type
ValueSet: http://hl7.org/fhir/ValueSet/library-type
*/
public enum LibraryType: String {
	
	/// The resource is a shareable library of formalized knowledge
	case logicLibrary = "logic-library"
	
	/// The resource is a definition of an information model
	case modelDefinition = "model-definition"
	
	/// The resource is a collection of knowledge assets
	case assetCollection = "asset-collection"
	
	/// The resource defines the dependencies, parameters, and data requirements for a particular module or evaluation
	/// context
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
Used to distinguish different roles a resource can play within a set of linked resources

URL: http://hl7.org/fhir/linkage-type
ValueSet: http://hl7.org/fhir/ValueSet/linkage-type
*/
public enum LinkageType: String {
	
	/// The record represents the "source of truth" (from the perspective of this Linkage resource) for the underlying
	/// event/condition/etc.
	case source = "source"
	
	/// The record represents the alternative view of the underlying event/condition/etc.  The record may still be
	/// actively maintained, even though it is not considered to be the source of truth.
	case alternate = "alternate"
	
	/// The record represents an obsolete record of the underlying event/condition/etc.  It is not expected to be
	/// actively maintained.
	case historical = "historical"
}


/**
The processing mode that applies to this list

URL: http://hl7.org/fhir/list-mode
ValueSet: http://hl7.org/fhir/ValueSet/list-mode
*/
public enum ListMode: String {
	
	/// This list is the master list, maintained in an ongoing fashion with regular updates as the real world list it is
	/// tracking changes
	case working = "working"
	
	/// This list was prepared as a snapshot. It should not be assumed to be current
	case snapshot = "snapshot"
	
	/// A point-in-time list that shows what changes have been made or recommended.  E.g. a discharge medication list
	/// showing what was added and removed during an encounter
	case changes = "changes"
}


/**
The current state of the list

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
A Master Patient Index (MPI) assessment of whether a candidate patient record is a match or not.

URL: http://hl7.org/fhir/match-grade
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
	/// cases records previously or likely considered as a match may specifically be negated by the matching engine
	case certainlyNot = "certainly-not"
}


/**
Flags an element as having unlimited repetitions

URL: http://hl7.org/fhir/question-max-occurs
ValueSet: http://hl7.org/fhir/ValueSet/question-max-occurs
*/
public enum MaxOccurs: String {
	
	/// Element can repeat an unlimited number of times
	case max = "*"
}


/**
Different measurement principle supported by the device.

URL: http://hl7.org/fhir/measurement-principle
ValueSet: http://hl7.org/fhir/ValueSet/measurement-principle
*/
public enum MeasmntPrinciple: String {
	
	/// Measurement principle isn't in the list.
	case other = "other"
	
	/// Measurement is done using the chemical principle.
	case chemical = "chemical"
	
	/// Measurement is done using the electrical principle.
	case electrical = "electrical"
	
	/// Measurement is done using the impedance principle.
	case impedance = "impedance"
	
	/// Measurement is done using the nuclear principle.
	case nuclear = "nuclear"
	
	/// Measurement is done using the optical principle.
	case optical = "optical"
	
	/// Measurement is done using the thermal principle.
	case thermal = "thermal"
	
	/// Measurement is done using the biological principle.
	case biological = "biological"
	
	/// Measurement is done using the mechanical principle.
	case mechanical = "mechanical"
	
	/// Measurement is done using the acoustical principle.
	case acoustical = "acoustical"
	
	/// Measurement is done using the manual principle.
	case manual = "manual"
}


/**
The intended usage for supplemental data elements in the measure

URL: http://hl7.org/fhir/measure-data-usage
ValueSet: http://hl7.org/fhir/ValueSet/measure-data-usage
*/
public enum MeasureDataUsage: String {
	
	/// The data is intended to be provided as additional information alongside the measure results
	case supplementalData = "supplemental-data"
	
	/// The data is intended to be used to calculate and apply a risk adjustment model for the measure
	case riskAdjustmentFactor = "risk-adjustment-factor"
}


/**
The type of population

URL: http://hl7.org/fhir/measure-population
ValueSet: http://hl7.org/fhir/ValueSet/measure-population
*/
public enum MeasurePopulationType: String {
	
	/// The initial population refers to all patients or events to be evaluated by a quality measure involving patients
	/// who share a common set of specified characterstics. All patients or events counted (for example, as numerator,
	/// as denominator) are drawn from the initial population
	case initialPopulation = "initial-population"
	
	/// The upper portion of a fraction used to calculate a rate, proportion, or ratio. Also called the measure focus,
	/// it is the target process, condition, event, or outcome. Numerator criteria are the processes or outcomes
	/// expected for each patient, or event defined in the denominator. A numerator statement describes the clinical
	/// action that satisfies the conditions of the measure
	case numerator = "numerator"
	
	/// Numerator exclusion criteria define patients or events to be removed from the numerator. Numerator exclusions
	/// are used in proportion and ratio measures to help narrow the numerator (for inverted measures)
	case numeratorExclusion = "numerator-exclusion"
	
	/// The lower portion of a fraction used to calculate a rate, proportion, or ratio. The denominator can be the same
	/// as the initial population, or a subset of the initial population to further constrain the population for the
	/// purpose of the measure
	case denominator = "denominator"
	
	/// Denominator exclusion criteria define patients or events that should be removed from the denominator before
	/// determining if numerator criteria are met. Denominator exclusions are used in proportion and ratio measures to
	/// help narrow the denominator. For example, patients with bilateral lower extremity amputations would be listed as
	/// a denominator exclusion for a measure requiring foot exams
	case denominatorExclusion = "denominator-exclusion"
	
	/// Denominator exceptions are conditions that should remove a patient or event from the denominator of a measure
	/// only if the numerator criteria are not met. Denominator exception allows for adjustment of the calculated score
	/// for those providers with higher risk populations. Denominator exception criteria are only used in proportion
	/// measures
	case denominatorException = "denominator-exception"
	
	/// Measure population criteria define the patients or events for which the individual observation for the measure
	/// should be taken. Measure populations are used for continuous variable measures rather than numerator and
	/// denominator criteria
	case measurePopulation = "measure-population"
	
	/// Measure population criteria define the patients or events that should be removed from the measure population
	/// before determining the outcome of one or more continuous variables defined for the measure observation. Measure
	/// population exclusion criteria are used within continuous variable measures to help narrow the measure population
	case measurePopulationExclusion = "measure-population-exclusion"
	
	/// Defines the individual observation to be performed for each patient or event in the measure population. Measure
	/// observations for each case in the population are aggregated to determine the overall measure score for the
	/// population
	case measureObservation = "measure-observation"
}


/**
The status of the measure report

URL: http://hl7.org/fhir/measure-report-status
ValueSet: http://hl7.org/fhir/ValueSet/measure-report-status
*/
public enum MeasureReportStatus: String {
	
	/// The report is complete and ready for use
	case complete = "complete"
	
	/// The report is currently being generated
	case pending = "pending"
	
	/// An error occurred attempting to generate the report
	case error = "error"
}


/**
The type of the measure report

URL: http://hl7.org/fhir/measure-report-type
ValueSet: http://hl7.org/fhir/ValueSet/measure-report-type
*/
public enum MeasureReportType: String {
	
	/// An individual report that provides information on the performance for a given measure with respect to a single
	/// subject
	case individual = "individual"
	
	/// A subject list report that includes a listing of subjects that satisfied each population criteria in the measure
	case subjectList = "subject-list"
	
	/// A summary report that returns the number of members in each population criteria for the measure
	case summary = "summary"
}


/**
The scoring type of the measure

URL: http://hl7.org/fhir/measure-scoring
ValueSet: http://hl7.org/fhir/ValueSet/measure-scoring
*/
public enum MeasureScoring: String {
	
	/// The measure score is defined using a proportion
	case proportion = "proportion"
	
	/// The measure score is defined using a ratio
	case ratio = "ratio"
	
	/// The score is defined by a calculation of some quantity
	case continuousVariable = "continuous-variable"
	
	/// The measure is a cohort definition
	case cohort = "cohort"
}


/**
The type of measure (includes codes from 2.16.840.1.113883.1.11.20368)

URL: http://hl7.org/fhir/measure-type
ValueSet: http://hl7.org/fhir/ValueSet/measure-type
*/
public enum MeasureType: String {
	
	/// A measure which focuses on a process which leads to a certain outcome, meaning that a scientific basis exists
	/// for believing that the process, when executed well, will increase the probability of achieving a desired outcome
	case process = "process"
	
	/// A measure that indicates the result of the performance (or non-performance) of a function or process
	case outcome = "outcome"
	
	/// A measure that focuses on a health care provider's capacity, systems, and processes to provide high-quality care
	case structure = "structure"
	
	/// A measure that focuses on patient-reported information such as patient engagement or patient experience measures
	case patientReportedOutcome = "patient-reported-outcome"
	
	/// A measure that combines multiple component measures in to a single quality measure
	case composite = "composite"
}


/**
A coded concept describing where the medication administered is expected to occur

URL: http://hl7.org/fhir/medication-admin-category
ValueSet: http://hl7.org/fhir/ValueSet/medication-admin-category
*/
public enum MedicationAdministrationCategory: String {
	
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
A code describing the role an individual played in administering the medication

URL: http://hl7.org/fhir/med-admin-perform-function
ValueSet: http://hl7.org/fhir/ValueSet/med-admin-perform-function
*/
public enum MedicationAdministrationPerformerFunction: String {
	
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
A set of codes indicating the current status of a MedicationAdministration.

URL: http://hl7.org/fhir/medication-admin-status
ValueSet: http://hl7.org/fhir/ValueSet/medication-admin-status
*/
public enum MedicationAdministrationStatus: String {
	
	/// The administration has started but has not yet completed.
	case inProgress = "in-progress"
	
	/// The administration was terminated prior to any impact on the subject (though preparatory actions may have been
	/// taken)
	case notDone = "not-done"
	
	/// Actions implied by the administration have been temporarily halted, but are expected to continue later. May also
	/// be called "suspended".
	case onHold = "on-hold"
	
	/// All actions that are implied by the administration have occurred.
	case completed = "completed"
	
	/// The administration was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
	
	/// Actions implied by the administration have been permanently halted, before all of them occurred.
	case stopped = "stopped"
	
	/// The authoring system does not know which of the status values currently applies for this request. Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}


/**
A code describing where the dispensed medication is expected to be consumed or administered

URL: http://hl7.org/fhir/medication-dispense-category
ValueSet: http://hl7.org/fhir/ValueSet/medication-dispense-category
*/
public enum MedicationDispenseCategory: String {
	
	/// Includes dispenses for medications to be administered or consumed in an inpatient or acute care setting
	case inpatient = "inpatient"
	
	/// Includes dispenses for medications to be administered or consumed in an outpatient setting (for example,
	/// Emergency Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
	case outpatient = "outpatient"
	
	/// Includes dispenses for medications to be administered or consumed by the patient in their home (this would
	/// include long term care or nursing homes, hospices, etc.)
	case community = "community"
}


/**
A code describing the role an individual played in dispensing a medication

URL: http://hl7.org/fhir/med-dispense-perform-function
ValueSet: http://hl7.org/fhir/ValueSet/med-dispense-perform-function
*/
public enum MedicationDispensePerformerFunction: String {
	
	/// Recorded the details of the request
	case dataenterer = "dataenterer"
	
	/// Prepared the medication
	case packager = "packager"
	
	/// Performed initial quality assurance on the prepared medication
	case checker = "checker"
	
	/// Performed the final quality assurance on the prepared medication against the request. Typically, this is a
	/// pharmacist function.
	case finalchecker = "finalchecker"
}


/**
A coded concept specifying the state of the dispense event.

URL: http://hl7.org/fhir/medication-dispense-status
ValueSet: http://hl7.org/fhir/ValueSet/medication-dispense-status
*/
public enum MedicationDispenseStatus: String {
	
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
	
	/// The authoring system does not know which of the status values applies for this medication dispense.  Note: this
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just now known
	/// which one.
	case unknown = "unknown"
}


/**
A code describing why a dispense was not performed

URL: http://hl7.org/fhir/med-dispense-status-reason
ValueSet: http://hl7.org/fhir/ValueSet/med-dispense-status-reason
*/
public enum MedicationDispenseStatusReason: String {
	
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
	
	/// Fulfiller not able to provide appropriate care associated with fulfilling the order.
	/// Example: Therapy requires ongoing monitoring by fulfiller and fulfiller will be ending practice, leaving town,
	/// unable to schedule necessary time, etc.
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
	case salg = "salg"
	
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
}


/**
A coded concept identifying the category of medication request.  For example, where the medication is to be consumed or
administered, or the type of medication treatment).

URL: http://hl7.org/fhir/medication-request-category
ValueSet: http://hl7.org/fhir/ValueSet/medication-request-category
*/
public enum MedicationRequestCategory: String {
	
	/// Includes orders for medications to be administered or consumed in an inpatient or acute care setting
	case inpatient = "inpatient"
	
	/// Includes orders for medications to be administered or consumed in an outpatient setting (for example, Emergency
	/// Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
	case outpatient = "outpatient"
	
	/// Includes orders for medications to be administered or consumed by the patient in their home (this would include
	/// long term care or nursing homes, hospices, etc.)
	case community = "community"
	
	/// Includes orders for medications created when the patient is being released from a facility
	case discharge = "discharge"
}


/**
The kind of medication order

URL: http://hl7.org/fhir/medication-request-intent
ValueSet: http://hl7.org/fhir/ValueSet/medication-request-intent
*/
public enum MedicationRequestIntent: String {
	
	/// The request is a suggestion made by someone/something that doesn't have an intention to ensure it occurs and
	/// without providing an authorization to act
	case proposal = "proposal"
	
	/// The request represents an intension to ensure something occurs without providing an authorization for others to
	/// act
	case plan = "plan"
	
	/// The request represents a request/demand and authorization for action
	case order = "order"
	
	/// The request represents the original authorization for the medication request.
	case originalOrder = "original-order"
	
	/// The request represents an instance for the particular order, for example a medication administration record.
	case instanceOrder = "instance-order"
	
	/// The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or
	/// other constraints among a set of requests.
	case option = "option"
}


/**
A coded concept specifying the state of the prescribing event. Describes the lifecycle of the prescription

URL: http://hl7.org/fhir/medication-request-status
ValueSet: http://hl7.org/fhir/ValueSet/medication-request-status
*/
public enum MedicationRequestStatus: String {
	
	/// The prescription is 'actionable', but not all actions that are implied by it have occurred yet.
	case active = "active"
	
	/// Actions implied by the prescription are to be temporarily halted, but are expected to continue later.  May also
	/// be called "suspended".
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
	
	/// The prescription is not yet 'actionable', i.e. it is a work in progress, requires sign-off or verification, and
	/// needs to be run through decision support process.
	case draft = "draft"
	
	/// The authoring system does not know which of the status values currently applies for this request
	case unknown = "unknown"
}


/**
Identifies the reasons for a given status

URL: http://hl7.org/fhir/med-request-status-reason
ValueSet: http://hl7.org/fhir/ValueSet/med-request-status-reason
*/
public enum MedicationRequestStatusReason: String {
	
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
	
	/// Another short-term concurrent therapy fulfills the same purpose as this therapy. This therapy will be resumed
	/// when the concurrent therapy is complete.
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
}


/**
A coded concept identifying where the medication included in the MedicationStatement is expected to be consumed or
administered

URL: http://hl7.org/fhir/medication-statement-category
ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-category
*/
public enum MedicationStatementCategory: String {
	
	/// Includes orders for medications to be administered or consumed in an inpatient or acute care setting
	case inpatient = "inpatient"
	
	/// Includes orders for medications to be administered or consumed in an outpatient setting (for example, Emergency
	/// Department, Outpatient Clinic, Outpatient Surgery, Doctor's office)
	case outpatient = "outpatient"
	
	/// Includes orders for medications to be administered or consumed by the patient in their home (this would include
	/// long term care or nursing homes, hospices, etc.)
	case community = "community"
	
	/// Includes statements about medication use, including over the counter medication, provided by the patient, agent
	/// or another provider
	case patientspecified = "patientspecified"
}


/**
A coded concept indicating the current status of a MedicationStatement.

URL: http://hl7.org/fhir/medication-statement-status
ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-status
*/
public enum MedicationStatementStatus: String {
	
	/// The medication is still being taken.
	case active = "active"
	
	/// The medication is no longer being taken.
	case completed = "completed"
	
	/// Some of the actions that are implied by the medication statement may have occurred.  For example, the patient
	/// may have taken some of the medication.  Clinical decision support systems should take this status into account
	case enteredInError = "entered-in-error"
	
	/// The medication may be taken at some time in the future.
	case intended = "intended"
	
	/// Actions implied by the statement have been permanently halted, before all of them occurred. This should not be
	/// used if the statement was entered in error
	case stopped = "stopped"
	
	/// Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be
	/// called "suspended".
	case onHold = "on-hold"
	
	/// The state of the medication use is not currently known.
	case unknown = "unknown"
	
	/// The medication was not consumed by the patient
	case notTaken = "not-taken"
}


/**
A coded concept identifying level of certainty if patient has taken or has not taken the medication

URL: http://hl7.org/fhir/medication-statement-taken
ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-taken
*/
public enum MedicationStatementTaken: String {
	
	/// Positive assertion that patient has taken medication
	case Y = "y"
	
	/// Negative assertion that patient has not taken medication
	case N = "n"
	
	/// Unknown assertion if patient has taken medication
	case unk = "unk"
	
	/// Patient reporting does not apply
	case na = "na"
}


/**
A coded concept defining if the medication is in active use

URL: http://hl7.org/fhir/medication-status
ValueSet: http://hl7.org/fhir/ValueSet/medication-status
*/
public enum MedicationStatus: String {
	
	/// The medication is available for use
	case active = "active"
	
	/// The medication is not available for use
	case inactive = "inactive"
	
	/// The medication was entered in error
	case enteredInError = "entered-in-error"
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

URL: http://hl7.org/fhir/message-transport
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
	
	/// initiator expects a response for this message
	case always = "always"
	
	/// initiator expects a response only if in error
	case onError = "on-error"
	
	/// initiator does not expect a response
	case never = "never"
	
	/// initiator expects a response only if successful
	case onSuccess = "on-success"
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
The use of a human name

URL: http://hl7.org/fhir/name-use
ValueSet: http://hl7.org/fhir/ValueSet/name-use
*/
public enum NameUse: String {
	
	/// Known as/conventional/the one you normally use
	case usual = "usual"
	
	/// The formal name as registered in an official (government) registry, but which name might not be commonly used.
	/// May be called "legal name".
	case official = "official"
	
	/// A temporary name. Name.period can provide more detailed information. This may also be used for temporary names
	/// assigned at birth or in emergency situations.
	case temp = "temp"
	
	/// A name that is used to address the person in an informal manner, but is not part of their formal or usual name
	case nickname = "nickname"
	
	/// Anonymous assigned name, alias, or pseudonym (used to protect a person's identity for privacy reasons)
	case anonymous = "anonymous"
	
	/// This name is no longer in use (or was never correct, but retained for records)
	case old = "old"
	
	/// A name used prior to changing name because of marriage. This name use is for use by applications that collect
	/// and store names that were used prior to a marriage. Marriage naming customs vary greatly around the world, and
	/// are constantly changing. This term is not gender specific. The use of this term does not imply any particular
	/// history for a person's name
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
The status of a resource narrative

URL: http://hl7.org/fhir/narrative-status
ValueSet: http://hl7.org/fhir/ValueSet/narrative-status
*/
public enum NarrativeStatus: String {
	
	/// The contents of the narrative are entirely generated from the structured data in the content.
	case generated = "generated"
	
	/// The contents of the narrative are entirely generated from the structured data in the content and some of the
	/// content is generated from extensions
	case extensions = "extensions"
	
	/// The contents of the narrative may contain additional information not found in the structured data. Note that
	/// there is no computable way to determine what the extra information is, other than by human inspection
	case additional = "additional"
	
	/// The contents of the narrative are some equivalent of "No human-readable text provided in this case"
	case empty = "empty"
}


/**
The frequency with which the target must be validated

URL: http://hl7.org/fhir/need
ValueSet: http://hl7.org/fhir/ValueSet/need
*/
public enum Need: String {
	
	/// none
	case none = "none"
	
	/// initial
	case initial = "initial"
	
	/// periodic
	case periodic = "periodic"
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
Codes providing the status of an observation.

URL: http://hl7.org/fhir/observation-status
ValueSet: http://hl7.org/fhir/ValueSet/observation-status
*/
public enum ObservationStatus: String {
	
	/// The existence of the observation is registered, but there is no result yet available.
	case registered = "registered"
	
	/// This is an initial or interim observation: data may be incomplete or unverified.
	case preliminary = "preliminary"
	
	/// The observation is complete.
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
	/// the status should be "cancelled" rather than "entered-in-error".)
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies for this request. Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring
	/// system does not know which.
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
Type for orientation

URL: http://hl7.org/fhir/orientation-type
ValueSet: http://hl7.org/fhir/ValueSet/orientation-type
*/
public enum OrientationType: String {
	
	/// Sense orientation of reference sequence.
	case sense = "sense"
	
	/// Antisense orientation of reference sequence
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
The type of PlanDefinition

URL: http://hl7.org/fhir/plan-definition-type
ValueSet: http://hl7.org/fhir/ValueSet/plan-definition-type
*/
public enum PlanDefinitionType: String {
	
	/// A pre-defined and approved group of orders related to a particular clinical condition (e.g. hypertension
	/// treatment and monitoring) or stage of care (e.g. hospital admission to Coronary Care Unit). An order set is used
	/// as a checklist for the clinician when managing a patient with a specific condition. It is a structured
	/// collection of orders relevant to that condition and presented to the clinician in a computerized provider order
	/// entry (CPOE) system
	case orderSet = "order-set"
	
	/// Defines a desired/typical sequence of clinical activities including preconditions, triggers and temporal
	/// relationships
	case clinicalProtocol = "clinical-protocol"
	
	/// A decision support rule of the form [on Event] if Condition then Action. It is intended to be a shareable,
	/// computable definition of actions that should be taken whenever some condition is met in response to a particular
	/// event or events
	case ecaRule = "eca-rule"
	
	/// Defines the steps for a group of one or more systems in an event flow process along with the step
	/// constraints, sequence, pre-conditions and decision points to complete a particular objective
	case workflowDefinition = "workflow-definition"
}


/**
Type of the validation primary source

URL: http://hl7.org/fhir/primary-source-type
ValueSet: http://hl7.org/fhir/ValueSet/primary-source-type
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
How a property is represented when serialized.

URL: http://hl7.org/fhir/property-representation
ValueSet: http://hl7.org/fhir/ValueSet/property-representation
*/
public enum PropertyRepresentation: String {
	
	/// In XML, this property is represented as an attribute not an element.
	case xmlAttr = "xmlAttr"
	
	/// This element is represented using the XML text attribute (primitives only)
	case xmlText = "xmlText"
	
	/// The type of this element is indicated using xsi:type
	case typeAttr = "typeAttr"
	
	/// Use CDA narrative instead of XHTML
	case cdaText = "cdaText"
	
	/// The property is represented using XHTML
	case xhtml = "xhtml"
}


/**
The type of a property value

URL: http://hl7.org/fhir/concept-property-type
ValueSet: http://hl7.org/fhir/ValueSet/concept-property-type
*/
public enum PropertyType: String {
	
	/// The property value is a code that identifies a concept defined in the code system
	case code = "code"
	
	/// The property  value is a code defined in an external code system. This may be used for translations, but is not
	/// the intent
	case coding = "Coding"
	
	/// The property value is a string
	case string = "string"
	
	/// The property value is a string (often used to assign ranking values to concepts for supporting score
	/// assessments)
	case integer = "integer"
	
	/// The property value is a boolean true | false
	case boolean = "boolean"
	
	/// The property is a date or a date + time
	case dateTime = "dateTime"
	
	/// The property value is a decimal number
	case decimal = "decimal"
}


/**
How an entity was used in an activity.

URL: http://hl7.org/fhir/provenance-entity-role
ValueSet: http://hl7.org/fhir/ValueSet/provenance-entity-role
*/
public enum ProvenanceEntityRole: String {
	
	/// A transformation of an entity into another, an update of an entity resulting in a new one, or the construction
	/// of a new entity based on a preexisting entity.
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

URL: http://hl7.org/fhir/push-type-available
ValueSet: http://hl7.org/fhir/ValueSet/push-type-available
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
A rating system that describes the quality of evidence such as the GRADE, DynaMed, or Oxford CEBM systems

URL: http://hl7.org/fhir/evidence-quality
ValueSet: http://hl7.org/fhir/ValueSet/evidence-quality
*/
public enum QualityOfEvidenceRating: String {
	
	/// High quality evidence
	case high = "high"
	
	/// Moderate quality evidence
	case moderate = "moderate"
	
	/// Low quality evidence
	case low = "low"
	
	/// Very low quality evidence
	case veryLow = "very-low"
}


/**
Type for quality report

URL: http://hl7.org/fhir/quality-type
ValueSet: http://hl7.org/fhir/ValueSet/quality-type
*/
public enum QualityType: String {
	
	/// INDEL Comparison
	case indel = "indel"
	
	/// SNP Comparison
	case snp = "snp"
	
	/// UNKNOWN Comparison
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
The criteria by which a question is enabled

URL: http://hl7.org/fhir/questionnaire-enable-operator
ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-enable-operator
*/
public enum QuestionnaireItemOperator: String {
	
	/// True if whether an answer exists is equal to the enableWhen answer (which must be a boolean)
	case exists = "exists"
	
	/// True if whether at least one answer has a value that is equal to the enableWhen answer
	case eq = "="
	
	/// True if whether at least no answer has a value that is equal to the enableWhen answer
	case neq = "!="
	
	/// True if whether at least no answer has a value that is greater than the enableWhen answer
	case gt = ">"
	
	/// True if whether at least no answer has a value that is less than the enableWhen answer
	case lt = "<"
	
	/// True if whether at least no answer has a value that is greater or equal to the enableWhen answer
	case gte = ">="
	
	/// True if whether at least no answer has a value that is less or equal to the enableWhen answer
	case lte = "<="
}


/**
Distinguishes groups from questions and display text and indicates data type for questions

URL: http://hl7.org/fhir/item-type
ValueSet: http://hl7.org/fhir/ValueSet/item-type
*/
public enum QuestionnaireItemType: String {
	
	/// An item with no direct answer but should have at least one child item.
	case group = "group"
	
	/// Text for display that will not capture an answer or have child items.
	case display = "display"
	
	/// An item that defines a specific answer to be captured, and which may have child items. (the answer provided in
	/// the QuestionnaireResponse should be of the defined datatype)
	case question = "question"
	
	/// Question with a yes/no answer (valueBoolean)
	case boolean = "boolean"
	
	/// Question with is a real number answer (valueDecimal)
	case decimal = "decimal"
	
	/// Question with an integer answer (valueInteger)
	case integer = "integer"
	
	/// Question with a date answer (valueDate)
	case date = "date"
	
	/// Question with a date and time answer (valueDateTime)
	case dateTime = "dateTime"
	
	/// Question with a time (hour:minute:second) answer independent of date. (valueTime)
	case time = "time"
	
	/// Question with a short (few words to short sentence) free-text entry answer (valueString)
	case string = "string"
	
	/// Question with a long (potentially multi-paragraph) free-text entry answer (valueString)
	case text = "text"
	
	/// Question with a URL (website, FTP site, etc.) answer (valueUri)
	case url = "url"
	
	/// Question with a Coding drawn from a list of options (specified in either the option property, or via the
	/// valueset referenced in the options property) as an answer (valueCoding)
	case choice = "choice"
	
	/// Answer is a Coding drawn from a list of options (as with the choice type) or a free-text entry in a string
	/// (valueCoding or valueString)
	case openChoice = "open-choice"
	
	/// Question with binary content such as a image, PDF, etc. as an answer (valueAttachment)
	case attachment = "attachment"
	
	/// Question with a reference to another resource (practitioner, organization, etc.) as an answer (valueReference)
	case reference = "reference"
	
	/// Question with a combination of a numeric value and unit, potentially with a comparator (<, >, etc.) as an
	/// answer. (valueQuantity) There is an extension 'http://hl7.org/fhir/StructureDefinition/questionnaire-unit' that
	/// can be used to define what unit should be captured (or the a unit that has a ucum conversion from the provided
	/// unit)
	case quantity = "quantity"
}


/**
Identifies the modes of usage of a questionnaire that should enable a particular questionnaire item

URL: http://hl7.org/fhir/questionnaire-usage-mode
ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-usage-mode
*/
public enum QuestionnaireItemUsageMode: String {
	
	/// Render the item regardless of usage mode
	case captureDisplay = "capture-display"
	
	/// Render the item only when capturing data
	case capture = "capture"
	
	/// Render the item only when displaying a completed form
	case display = "display"
	
	/// Render the item only when displaying a completed form and the item has been answered (or has child items that
	/// have been answered)
	case displayNonEmpty = "display-non-empty"
	
	/// Render the item when capturing data or when displaying a completed form and the item has been answered (or has
	/// child items that have been answered)
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
A set of flags that defines how references are supported.

URL: http://hl7.org/fhir/reference-handling-policy
ValueSet: http://hl7.org/fhir/ValueSet/reference-handling-policy
*/
public enum ReferenceHandlingPolicy: String {
	
	/// The server supports and populates Literal references where they are known (this code does not guarantee that all
	/// references are literal; see 'enforced')
	case literal = "literal"
	
	/// The server allows logical references
	case logical = "logical"
	
	/// The server will attempt to resolve logical references to literal references (if resolution fails, the server may
	/// still accept resources; see logical)
	case resolves = "resolves"
	
	/// The server enforces that references have integrity - e.g. it ensures that references can always be resolved.
	/// This is typically the case for clinical record systems, but often not the case for middleware/proxy systems
	case enforced = "enforced"
	
	/// The server does not support references that point to other servers
	case local = "local"
}


/**
Whether a reference needs to be version specific or version independent, or whether either can be used

URL: http://hl7.org/fhir/reference-version-rules
ValueSet: http://hl7.org/fhir/ValueSet/reference-version-rules
*/
public enum ReferenceVersionRules: String {
	
	/// The reference may be either version independent or version specific
	case either = "either"
	
	/// The reference must be version independent
	case independent = "independent"
	
	/// The reference must be version specific
	case specific = "specific"
}


/**
The methods of referral can be used when referring to a specific HealthCareService resource.

URL: http://hl7.org/fhir/service-referral-method
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
Criterion for rejection of the specimen by laboratory

URL: http://hl7.org/fhir/rejection-criteria
ValueSet: http://hl7.org/fhir/ValueSet/rejection-criteria
*/
public enum RejectionCriterion: String {
	
	/// blood specimen hemolized
	case hemolized = "hemolized"
	
	/// insufficient quantity of specimen
	case insufficient = "insufficient"
	
	/// specimen container broken
	case broken = "broken"
	
	/// specimen clotted
	case clotted = "clotted"
	
	/// specimen temperature inappropriate
	case wrongTemperature = "wrong-temperature"
}


/**
The type of relationship to the related artifact

URL: http://hl7.org/fhir/related-artifact-type
ValueSet: http://hl7.org/fhir/ValueSet/related-artifact-type
*/
public enum RelatedArtifactType: String {
	
	/// Additional documentation for the knowledge resource. This would include additional instructions on usage as well
	/// as additional information on clinical context or appropriateness
	case documentation = "documentation"
	
	/// A summary of the justification for the knowledge resource including supporting evidence, relevant guidelines, or
	/// other clinically important information. This information is intended to provide a way to make the justification
	/// for the knowledge resource available to the consumer of interventions or results produced by the knowledge
	/// resource
	case justification = "justification"
	
	/// Bibliographic citation for papers, references, or other relevant material for the knowledge resource. This is
	/// intended to allow for citation of related material, but that was not necessarily specifically prepared in
	/// connection with this knowledge resource
	case citation = "citation"
	
	/// The previous version of the knowledge resource
	case predecessor = "predecessor"
	
	/// The next version of the knowledge resource
	case successor = "successor"
	
	/// The knowledge resource is derived from the related artifact. This is intended to capture the relationship in
	/// which a particular knowledge resource is based on the content of another artifact, but is modified to capture
	/// either a different set of overall requirements, or a more specific set of requirements such as those involved in
	/// a particular institution or clinical setting
	case derivedFrom = "derived-from"
	
	/// The knowledge resource depends on the given related artifact
	case dependsOn = "depends-on"
	
	/// The knowledge resource is composed of the given related artifact
	case composedOf = "composed-of"
}


/**
Type for access of external URI

URL: http://hl7.org/fhir/repository-type
ValueSet: http://hl7.org/fhir/ValueSet/repository-type
*/
public enum RepositoryType: String {
	
	/// When URL is clicked, the resource can be seen directly (by webpage or by download link format)
	case directlink = "directlink"
	
	/// When the API method (e.g. [base_url]/[parameter]) related with the URL of the website is executed, the resource
	/// can be seen directly (usually in JSON or XML format)
	case openapi = "openapi"
	
	/// When logged into the website, the resource can be seen.
	case login = "login"
	
	/// When logged in and  follow the API in the website related with URL, the resource can be seen.
	case oauth = "oauth"
	
	/// Some other complicated or particular way to get resource from URL.
	case other = "other"
}


/**
Codes indicating the degree of authority/intentionality associated with a request

URL: http://hl7.org/fhir/request-intent
ValueSet: http://hl7.org/fhir/ValueSet/request-intent
*/
public enum RequestIntent: String {
	
	/// The request is a suggestion made by someone/something that does not have an intention to ensure it occurs and
	/// without providing an authorization to act
	case proposal = "proposal"
	
	/// The request represents an intention to ensure something occurs without providing an authorization for others to
	/// act
	case plan = "plan"
	
	/// The request represents a request/demand and authorization for action
	case order = "order"
	
	/// The request represents an original authorization for action
	case originalOrder = "original-order"
	
	/// The request represents an automatically generated supplemental authorization for action based on a parent
	/// authorization together with initial results of the action taken against that parent authorization
	case reflexOrder = "reflex-order"
	
	/// The request represents the view of an authorization instantiated by a fulfilling system representing the details
	/// of the fulfiller's intention to act upon a submitted order
	case fillerOrder = "filler-order"
	
	/// An order created in fulfillment of a broader order that represents the authorization for a single activity
	/// occurrence.  E.g. The administration of a single dose of a drug.
	case instanceOrder = "instance-order"
	
	/// The request represents a component or option for a RequestGroup that establishes timing, conditionality and/or
	/// other constraints among a set of requests.  Refer to [[[RequestGroup]]] for additional information on how this
	/// status is used
	case option = "option"
}


/**
Identifies the level of importance to be assigned to actioning the request

URL: http://hl7.org/fhir/request-priority
ValueSet: http://hl7.org/fhir/ValueSet/request-priority
*/
public enum RequestPriority: String {
	
	/// The request has normal priority
	case routine = "routine"
	
	/// The request should be actioned promptly - higher priority than routine
	case urgent = "urgent"
	
	/// The request should be actioned as soon as possible - higher priority than urgent
	case asap = "asap"
	
	/// The request should be actioned immediately - highest possible priority.  E.g. an emergency
	case stat = "stat"
}


/**
Codes identifying the lifecycle stage of a request

URL: http://hl7.org/fhir/request-status
ValueSet: http://hl7.org/fhir/ValueSet/request-status
*/
public enum RequestStatus: String {
	
	/// The request has been created but is not yet complete or ready for action
	case draft = "draft"
	
	/// The request is in force and ready to be acted upon
	case active = "active"
	
	/// The authorization/request to act has been temporarily withdrawn but is expected to resume in the future
	case suspended = "suspended"
	
	/// The authorization/request to act has been terminated prior to the full completion of the intended actions.  No
	/// further activity should occur.
	case cancelled = "cancelled"
	
	/// Activity against the request has been sufficiently completed to the satisfaction of the requester
	case completed = "completed"
	
	/// This electronic record should never have existed, though it is possible that real-world decisions were based on
	/// it.  (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".)
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies for this request.  Note: This
	/// concept is not to be used for "other" . One of the listed statuses is presumed to apply,  but the system
	/// creating the request does not know.
	case unknown = "unknown"
}


/**
Codes for the kind of study objective

URL: http://hl7.org/fhir/research-study-objective-type
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

URL: http://hl7.org/fhir/research-study-phase
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
Codes for the main intent of the study

URL: http://hl7.org/fhir/research-study-prim-purp-type
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
Codes for why the study ended prematurely

URL: http://hl7.org/fhir/research-study-reason-stopped
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
Codes that convey the current status of the research study

URL: http://hl7.org/fhir/research-study-status
ValueSet: http://hl7.org/fhir/ValueSet/research-study-status
*/
public enum ResearchStudyStatus: String {
	
	/// Study is opened for accrual.
	case active = "active"
	
	/// Study is completed prematurely and will not resume; patients are no longer examined nor treated.
	/// Tagged
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
Indicates the progression of a study subject through a study

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
	
	/// A person for whom registration was not completed
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
One of the resource types defined as part of this version of FHIR.

URL: http://hl7.org/fhir/resource-types
ValueSet: http://hl7.org/fhir/ValueSet/resource-types
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
	
	/// A binary resource can contain any content, whether text, image, pdf, zip archive, etc.
	case binary = "Binary"
	
	/// A material substance originating from a biological entity intended to be transplanted or infused
	/// into another (possibly the same) biological entity.
	case biologicallyDerivedProduct = "BiologicallyDerivedProduct"
	
	/// Record details about an anatomical structure.  This resource may be used when a coded concept does not provide
	/// the necessary detail needed for the use case.
	case bodyStructure = "BodyStructure"
	
	/// A container for a collection of resources.
	case bundle = "Bundle"
	
	/// A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server that may be used as a
	/// statement of actual server functionality or a statement of required or desired server implementation.
	case capabilityStatement = "CapabilityStatement"
	
	/// Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group
	/// or community for a period of time, possibly limited to care for a specific condition or set of conditions.
	case carePlan = "CarePlan"
	
	/// The Care Team includes all the people and organizations who plan to participate in the coordination and delivery
	/// of care for a patient.
	case careTeam = "CareTeam"
	
	/// The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore
	/// referring not only to the product, but containing in addition details of the provision, like date, time, amounts
	/// and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and
	/// internal cost allocation.
	case chargeItem = "ChargeItem"
	
	/// A provider issued list of services and products provided, or to be provided, to a patient which is provided to
	/// an insurer for payment recovery.
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
	/// health agency was notified about a reportable condition.
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
	
	/// A statement of relationships from one set of concepts to one or more other concepts - either code systems or
	/// data elements, or classes in class models.
	case conceptMap = "ConceptMap"
	
	/// A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen
	/// to a level of concern.
	case condition = "Condition"
	
	/// A record of a healthcare consumer’s  choices, which permits or denies identified recipient(s) or recipient
	/// role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
	case consent = "Consent"
	
	/// A formal agreement between parties regarding the conduct of business, exchange of information or other matters.
	case contract = "Contract"
	
	/// Financial instrument which may be used to reimburse or pay for health care products and services.
	case coverage = "Coverage"
	
	/// Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions
	/// for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
	case detectedIssue = "DetectedIssue"
	
	/// This resource identifies an instance or a type of a manufactured item that is used in the provision of
	/// healthcare without being substantially changed through that activity. The device may be a medical or non-medical
	/// device.  Medical devices include durable (reusable) medical equipment, implantable devices, as well as
	/// disposable equipment used for diagnostic, treatment, and research for healthcare and public health.  Non-medical
	/// devices may include items such as a machine, cellphone, computer, application, etc.
	case device = "Device"
	
	/// The characteristics, operational status and capabilities of a medical-related component of a medical device.
	case deviceComponent = "DeviceComponent"
	
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
	
	/// A reference to a document.
	case documentReference = "DocumentReference"
	
	/// A resource that includes narrative, extensions, and contained resources.
	case domainResource = "DomainResource"
	
	/// The EligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in
	/// the form of an EligibilityResponse, with information regarding whether the stated coverage is valid and in-force
	/// and optionally to provide the insurance details of the policy.
	case eligibilityRequest = "EligibilityRequest"
	
	/// This resource provides eligibility and plan details from the processing of an Eligibility resource.
	case eligibilityResponse = "EligibilityResponse"
	
	/// An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s)
	/// or assessing the health status of a patient.
	case encounter = "Encounter"
	
	/// The technical details of an endpoint that can be used for electronic services, such as for web services
	/// providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information.
	case endpoint = "Endpoint"
	
	/// This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
	case enrollmentRequest = "EnrollmentRequest"
	
	/// This resource provides enrollment and plan details from the processing of an Enrollment resource.
	case enrollmentResponse = "EnrollmentResponse"
	
	/// Catalog entries are wrappers that contextualize items included in a catalog.
	case entryDefinition = "EntryDefinition"
	
	/// An association between a patient and an organization / healthcare provider(s) during which time encounters may
	/// occur. The managing organization assumes a level of responsibility for the patient during this time.
	case episodeOfCare = "EpisodeOfCare"
	
	/// The EventDefinition resource provides a reusable description of when a particular event can occur.
	case eventDefinition = "EventDefinition"
	
	/// Example of workflow instance.
	case exampleScenario = "ExampleScenario"
	
	/// Resource to define constraints on the Expansion of a FHIR ValueSet.
	case expansionProfile = "ExpansionProfile"
	
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
	/// expected to act collectively and are not formally or legally recognized; i.e. a collection of entities that
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
	
	/// A set of rules of how FHIR is used to solve a particular problem. This resource is used to gather all the parts
	/// of an implementation guide into a logical whole and to publish a computable definition of all the parts.
	case implementationGuide = "ImplementationGuide"
	
	/// Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing
	/// purpose.
	case invoice = "Invoice"
	
	/// A physical, countable instance of an item, for example one box or one unit.
	case itemInstance = "ItemInstance"
	
	/// The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe
	/// and expose existing knowledge assets such as logic libraries and information model descriptions, as well as to
	/// describe a collection of knowledge assets.
	case library = "Library"
	
	/// Identifies two or more records (resource instances) that are referring to the same real-world "occurrence".
	case linkage = "Linkage"
	
	/// A set of information summarized from a list of other resources.
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
	
	/// An order or request for both supply of the medication and the instructions for administration of the medication
	/// to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or
	/// "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc.,
	/// and to harmonize with workflow patterns.
	case medicationRequest = "MedicationRequest"
	
	/// A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the
	/// patient may be taking the medication now, or has taken the medication in the past or will be taking the
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
	case medicinalProductClinicals = "MedicinalProductClinicals"
	
	/// A detailed description of a device, typically as part of a regulated medicinal product. It is not intended to
	/// relace the Device resource, which covers use of device instances.
	case medicinalProductDeviceSpec = "MedicinalProductDeviceSpec"
	
	/// An ingredient of a manufactured item or pharmaceutical product.
	case medicinalProductIngredient = "MedicinalProductIngredient"
	
	/// A medicinal product in a container or package.
	case medicinalProductPackaged = "MedicinalProductPackaged"
	
	/// A pharmaceutical product described in terms of its composition and dose form.
	case medicinalProductPharmaceutical = "MedicinalProductPharmaceutical"
	
	/// Defines the characteristics of a message that can be shared between systems, including the type of event that
	/// initiates the message, the content to be transmitted and what response(s), if any, are permitted.
	case messageDefinition = "MessageDefinition"
	
	/// The header for a message exchange that is either requesting or responding to an action.  The reference(s) that
	/// are the subject of the action as well as other information related to the action are typically transmitted in a
	/// bundle in which the MessageHeader resource instance is the first resource in the bundle.
	case messageHeader = "MessageHeader"
	
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
	
	/// A person's work information, structured to facilitate individual, population, and public health use; not
	/// intended to support billing.
	case occupationalData = "OccupationalData"
	
	/// A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
	/// interaction).
	case operationDefinition = "OperationDefinition"
	
	/// A collection of error, warning or information messages that result from a system action.
	case operationOutcome = "OperationOutcome"
	
	/// A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some
	/// form of collective action.  Includes companies, institutions, corporations, departments, community groups,
	/// healthcare practice groups, etc.
	case organization = "Organization"
	
	/// A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a
	/// period of time.
	case organizationRole = "OrganizationRole"
	
	/// This special resource type is used to represent an operation request and response (operations.html). It has no
	/// other use, and there is no RESTful endpoint associated with it.
	case parameters = "Parameters"
	
	/// Demographics and other administrative information about an individual or animal receiving care or other health-
	/// related services.
	case patient = "Patient"
	
	/// This resource provides the status of the payment for goods and services rendered, and the request and response
	/// resource references.
	case paymentNotice = "PaymentNotice"
	
	/// This resource provides payment details and claim references supporting a bulk payment.
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
	
	/// An action that is or was performed on a patient. This can be a physical intervention like an operation, or less
	/// invasive like counseling or hypnotherapy.
	case procedure = "Procedure"
	
	/// This resource provides the target, request and response, and action details for an action to be performed by the
	/// target on or about existing resources.
	case processRequest = "ProcessRequest"
	
	/// This resource provides processing status, errors and notes from the processing of a resource.
	case processResponse = "ProcessResponse"
	
	/// Details of a Health Insurance product/plan provided by an organization.
	case productPlan = "ProductPlan"
	
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
	
	/// A container for slots of time that may be available for booking appointments.
	case schedule = "Schedule"
	
	/// A search parameter that defines a named search item that can be used to search/filter on a resource.
	case searchParameter = "SearchParameter"
	
	/// Raw data describing a biological sequence.
	case sequence = "Sequence"
	
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
	
	/// Todo.
	case substancePolymer = "SubstancePolymer"
	
	/// Todo.
	case substanceReferenceInformation = "SubstanceReferenceInformation"
	
	/// The detailed description of a substance, typically at a level beyond what is used for prescribing.
	case substanceSpecification = "SubstanceSpecification"
	
	/// Record of delivery of what is supplied.
	case supplyDelivery = "SupplyDelivery"
	
	/// A record of a request for a medication, substance or device used in the healthcare setting.
	case supplyRequest = "SupplyRequest"
	
	/// A task to be performed.
	case task = "Task"
	
	/// A Terminology Capabilities documents a set of capabilities (behaviors) of a FHIR Server that may be used as a
	/// statement of actual server functionality or a statement of required or desired server implementation.
	case terminologyCapabilities = "TerminologyCapabilities"
	
	/// A summary of information based on the results of executing a TestScript.
	case testReport = "TestReport"
	
	/// A structured set of tests against a FHIR server or client implementation to determine compliance against the
	/// FHIR specification.
	case testScript = "TestScript"
	
	/// Information about a user's current session.
	case userSession = "UserSession"
	
	/// A ValueSet resource specifies a set of codes drawn from one or more code systems, intended for use in a
	/// particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded
	/// elements](terminologies.html).
	case valueSet = "ValueSet"
	
	/// Describes validation requirements, source(s), status and dates for one or more elements.
	case verificationResult = "VerificationResult"
	
	/// An authorization for the supply of glasses and/or contact lenses to a patient.
	case visionPrescription = "VisionPrescription"
}


/**
The type of payee Resource

URL: http://hl7.org/fhir/resource-type-link
ValueSet: http://hl7.org/fhir/ValueSet/resource-type-link
*/
public enum ResourceTypeLink: String {
	
	/// Organization resource
	case organization = "organization"
	
	/// Patient resource
	case patient = "patient"
	
	/// Practitioner resource
	case practitioner = "practitioner"
	
	/// RelatedPerson resource
	case relatedperson = "relatedperson"
}


/**
Codes indicating the type of validation to perform

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
The kind of response to a message

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

URL: http://hl7.org/fhir/restful-security-service
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
What Search Comparator Codes are supported in search

URL: http://hl7.org/fhir/search-comparator
ValueSet: http://hl7.org/fhir/ValueSet/search-comparator
*/
public enum SearchComparator: String {
	
	/// the value for the parameter in the resource is equal to the provided value
	case eq = "eq"
	
	/// the value for the parameter in the resource is not equal to the provided value
	case ne = "ne"
	
	/// the value for the parameter in the resource is greater than the provided value
	case gt = "gt"
	
	/// the value for the parameter in the resource is less than the provided value
	case lt = "lt"
	
	/// the value for the parameter in the resource is greater or equal to the provided value
	case ge = "ge"
	
	/// the value for the parameter in the resource is less or equal to the provided value
	case le = "le"
	
	/// the value for the parameter in the resource starts after the provided value
	case sa = "sa"
	
	/// the value for the parameter in the resource ends before the provided value
	case eb = "eb"
	
	/// the value for the parameter in the resource is approximately the same to the provided value.
	case ap = "ap"
}


/**
Why an entry is in the result set - whether it's included as a match or because of an _include requirement.

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
}


/**
Codes providing the status of the variant test result

URL: http://hl7.org/fhir/variant-state
ValueSet: http://hl7.org/fhir/ValueSet/variant-state
*/
public enum SequenceStatus: String {
	
	/// the variant is detected
	case positive = "positive"
	
	/// no variant is detected
	case negative = "negative"
	
	/// result of the variant is missing
	case absent = "absent"
}


/**
Type if a sequence -- DNA, RNA, or amino acid sequence

URL: http://hl7.org/fhir/sequence-type
ValueSet: http://hl7.org/fhir/ValueSet/sequence-type
*/
public enum SequenceType: String {
	
	/// Amino acid sequence
	case aa = "aa"
	
	/// DNA Sequence
	case dna = "dna"
	
	/// RNA Sequence
	case rna = "rna"
}


/**
The code(s) that detail the conditions under which the healthcare service is available/offered.

URL: http://hl7.org/fhir/service-provision-conditions
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
Codes that define what the server is capable of

URL: http://hl7.org/fhir/smart-capabilities
ValueSet: http://hl7.org/fhir/ValueSet/smart-capabilities
*/
public enum SmartCapabilities: String {
	
	/// support for SMART’s EHR Launch mode
	case launchEhr = "launch-ehr"
	
	/// support for SMART’s Standalone Launch mode
	case launchStandalone = "launch-standalone"
	
	/// support for SMART’s public client profile (no client authentication)
	case clientPublic = "client-public"
	
	/// support for SMART’s confidential client profile (symmetric client secret authentication)
	case clientConfidentialSymmetric = "client-confidential-symmetric"
	
	/// support for SMART’s OpenID Connect profile
	case ssoOpenidConnect = "sso-openid-connect"
	
	/// support for “need patient banner” launch context (conveyed via need_patient_banner token parameter)
	case contextPassthroughBanner = "context-passthrough-banner"
	
	/// support for “SMART style URL” launch context (conveyed via smart_style_url token parameter)
	case contextPassthroughStyle = "context-passthrough-style"
	
	/// support for patient-level launch context (requested by launch/patient scope, conveyed via patient token
	/// parameter)
	case contextEhrPatient = "context-ehr-patient"
	
	/// support for encounter-level launch context (requested by launch/encounter scope, conveyed via encounter token
	/// parameter)
	case contextEhrEncounter = "context-ehr-encounter"
	
	/// support for patient-level launch context (requested by launch/patient scope, conveyed via patient token
	/// parameter)
	case contextStandalonePatient = "context-standalone-patient"
	
	/// support for encounter-level launch context (requested by launch/encounter scope, conveyed via encounter token
	/// parameter)
	case contextStandaloneEncounter = "context-standalone-encounter"
	
	/// support for refresh tokens (requested by offline_access scope)
	case permissionOffline = "permission-offline"
	
	/// support for patient-level scopes (e.g. patient/Observation.read)
	case permissionPatient = "permission-patient"
	
	/// support for user-level scopes (e.g. user/Appointment.read)
	case permissionUser = "permission-user"
}


/**
The possible sort directions, ascending or descending

URL: http://hl7.org/fhir/sort-direction
ValueSet: http://hl7.org/fhir/ValueSet/sort-direction
*/
public enum SortDirection: String {
	
	/// Sort by the value ascending, so that lower values appear first
	case ascending = "ascending"
	
	/// Sort by the value descending, so that lower values appear last
	case descending = "descending"
}


/**
A set of generally useful codes defined so they can be included in value sets.

URL: http://hl7.org/fhir/special-values
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
Degree of preference of a type of conditioned specimen

URL: http://hl7.org/fhir/specimen-contained-preference
ValueSet: http://hl7.org/fhir/ValueSet/specimen-contained-preference
*/
public enum SpecimenContainedPreference: String {
	
	/// This type of contained specimen is preferred to collect this kind of specimen
	case preferred = "preferred"
	
	/// This type of conditioned specimen is an alternate
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
The validation status of the target

URL: http://hl7.org/fhir/status
ValueSet: http://hl7.org/fhir/ValueSet/status
*/
public enum Status: String {
	
	/// attested
	case attested = "attested"
	
	/// validated
	case validated = "validated"
	
	/// inProcess
	case inProcess = "in-process"
	
	/// reqRevalid
	case reqRevalid = "req-revalid"
	
	/// valFail
	case valFail = "val-fail"
	
	/// revalFail
	case revalFail = "reval-fail"
}


/**
Type for strand

URL: http://hl7.org/fhir/strand-type
ValueSet: http://hl7.org/fhir/ValueSet/strand-type
*/
public enum StrandType: String {
	
	/// Watson strand of reference sequence
	case watson = "watson"
	
	/// Crick strand of reference sequence
	case crick = "crick"
}


/**
A rating system that describes the strength of the recommendation, such as the GRADE, DynaMed, or HGPS systems

URL: http://hl7.org/fhir/recommendation-strength
ValueSet: http://hl7.org/fhir/ValueSet/recommendation-strength
*/
public enum StrengthOfRecommendationRating: String {
	
	/// Strong recommendation
	case strong = "strong"
	
	/// Weak recommendation
	case weak = "weak"
}


/**
Defines the type of structure that a definition is describing.

URL: http://hl7.org/fhir/structure-definition-kind
ValueSet: http://hl7.org/fhir/ValueSet/structure-definition-kind
*/
public enum StructureDefinitionKind: String {
	
	/// A primitive type that has a value and an extension. These can be used throughout Resource and extension
	/// definitions. Only the base specification can define primitive types.
	case primitiveType = "primitive-type"
	
	/// A  complex structure that defines a set of data elements. These can be used throughout Resource and extension
	/// definitions, and in logical models.
	case complexType = "complex-type"
	
	/// A resource defined by the FHIR specification.
	case resource = "resource"
	
	/// A conceptual package of data that will be mapped to resources for implementation.
	case logical = "logical"
}


/**
How to interpret the context

URL: http://hl7.org/fhir/map-context-type
ValueSet: http://hl7.org/fhir/ValueSet/map-context-type
*/
public enum StructureMapContextType: String {
	
	/// The context specifies a type
	case type = "type"
	
	/// The context specifies a variable
	case variable = "variable"
}


/**
If this is the default rule set to apply for the source type, or this combination of types

URL: http://hl7.org/fhir/map-group-type-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-group-type-mode
*/
public enum StructureMapGroupTypeMode: String {
	
	/// This group is not a default group for the types
	case none = "none"
	
	/// This group is a default mapping group for the specified types and for the primary source type
	case types = "types"
	
	/// This group is a default mapping group for the specified types
	case typeAndTypes = "type-and-types"
}


/**
Mode for this instance of data

URL: http://hl7.org/fhir/map-input-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-input-mode
*/
public enum StructureMapInputMode: String {
	
	/// Names an input instance used a source for mapping
	case source = "source"
	
	/// Names an instance that is being populated
	case target = "target"
}


/**
How the referenced structure is used in this mapping

URL: http://hl7.org/fhir/map-model-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-model-mode
*/
public enum StructureMapModelMode: String {
	
	/// This structure describes an instance passed to the mapping engine that is used a source of data
	case source = "source"
	
	/// This structure describes an instance that the mapping engine may ask for that is used a source of data
	case queried = "queried"
	
	/// This structure describes an instance passed to the mapping engine that is used a target of data
	case target = "target"
	
	/// This structure describes an instance that the mapping engine may ask to create that is used a target of data
	case produced = "produced"
}


/**
If field is a list, how to manage the source

URL: http://hl7.org/fhir/map-source-list-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-source-list-mode
*/
public enum StructureMapSourceListMode: String {
	
	/// Only process this rule for the first in the list
	case first = "first"
	
	/// Process this rule for all but the first
	case not_first = "not_first"
	
	/// Only process this rule for the last in the list
	case last = "last"
	
	/// Process this rule for all but the last
	case not_last = "not_last"
	
	/// Only process this rule is there is only item
	case only_one = "only_one"
}


/**
If field is a list, how to manage the production

URL: http://hl7.org/fhir/map-target-list-mode
ValueSet: http://hl7.org/fhir/ValueSet/map-target-list-mode
*/
public enum StructureMapTargetListMode: String {
	
	/// when the target list is being assembled, the items for this rule go first. If more than one rule defines a first
	/// item (for a given instance of mapping) then this is an error
	case first = "first"
	
	/// the target instance is shared with the target instances generated by another rule (up to the first common n
	/// items, then create new ones)
	case share = "share"
	
	/// when the target list is being assembled, the items for this rule go last. If more than one rule defines a last
	/// item (for a given instance of mapping) then this is an error
	case last = "last"
	
	/// re-use the first item in the list, and keep adding content to it
	case collate = "collate"
}


/**
How data is copied/created

URL: http://hl7.org/fhir/map-transform
ValueSet: http://hl7.org/fhir/ValueSet/map-transform
*/
public enum StructureMapTransform: String {
	
	/// create(type : string) - type is passed through to the application on the standard API, and must be known by it
	case create = "create"
	
	/// copy(source)
	case copy = "copy"
	
	/// truncate(source, length) - source must be stringy type
	case truncate = "truncate"
	
	/// escape(source, fmt1, fmt2) - change source from one kind of escaping to another (plain, java, xml, json). note
	/// that this is for when the string itself is escaped
	case escape = "escape"
	
	/// cast(source, type?) - case source from one type to another. target type can be left as implicit if there is one
	/// and only one target type known
	case cast = "cast"
	
	/// append(source...) - source is element or string
	case append = "append"
	
	/// translate(source, uri_of_map) - use the translate operation
	case translate = "translate"
	
	/// reference(source : object) - return a string that references the provided tree properly
	case reference = "reference"
	
	/// Perform a date operation. *Parameters to be documented*
	case dateOp = "dateOp"
	
	/// Generate a random UUID (in lowercase). No Parameters
	case uuid = "uuid"
	
	/// Return the appropriate string to put in a reference that refers to the resource provided as a parameter
	case pointer = "pointer"
	
	/// Execute the supplied FHIRPath expression and use the value returned by that
	case evaluate = "evaluate"
	
	/// Create a CodeableConcept. Parameters = (text) or (system. Code[, display])
	case cc = "cc"
	
	/// Create a Coding. Parameters = (system. Code[, display])
	case C = "c"
	
	/// Create a quantity. Parameters = (text) or (value, unit, [system, code]) where text is the natural representation
	/// e.g. [comparator]value[space]unit
	case qty = "qty"
	
	/// Create an identifier. Parameters = (system, value[, type]) where type is a code from the identifier type value
	/// set
	case id = "id"
	
	/// Create a contact details. Parameters = (value) or (system, value). If no system is provided, the system should
	/// be inferred from the content of the value
	case cp = "cp"
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

URL: http://hl7.org/fhir/subscription-tag
ValueSet: http://hl7.org/fhir/ValueSet/subscription-tag
*/
public enum SubscriptionTag: String {
	
	/// The message has been queued for processing on a destination systems.
	case queued = "queued"
	
	/// The message has been delivered to its intended recipient.
	case delivered = "delivered"
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
	/// it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".)
	case enteredInError = "entered-in-error"
}


/**
The reason why the supply item was requested

URL: http://hl7.org/fhir/supplyrequest-reason
ValueSet: http://hl7.org/fhir/ValueSet/supplyrequest-reason
*/
public enum SupplyRequestReason: String {
	
	/// The supply has been requested for use in direct patient care.
	case patientCare = "patient-care"
	
	/// The supply has been requested for creating or replenishing ward stock.
	case wardStock = "ward-stock"
}


/**
Status of the supply request

URL: http://hl7.org/fhir/supplyrequest-status
ValueSet: http://hl7.org/fhir/ValueSet/supplyrequest-status
*/
public enum SupplyRequestStatus: String {
	
	/// The request has been created but is not yet complete or ready for action
	case draft = "draft"
	
	/// The request is ready to be acted upon
	case active = "active"
	
	/// The authorization/request to act has been temporarily withdrawn but is expected to resume in the future
	case suspended = "suspended"
	
	/// The authorization/request to act has been terminated prior to the full completion of the intended actions.  No
	/// further activity should occur.
	case cancelled = "cancelled"
	
	/// Activity against the request has been sufficiently completed to the satisfaction of the requester
	case completed = "completed"
	
	/// This electronic record should never have existed, though it is possible that real-world decisions were based on
	/// it.  (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".)
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies for this request.  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}


/**
How to manage the intersection between a fixed version in a value set, and a fixed version of the system in the
expansion profile

URL: http://hl7.org/fhir/system-version-processing-mode
ValueSet: http://hl7.org/fhir/ValueSet/system-version-processing-mode
*/
public enum SystemVersionProcessingMode: String {
	
	/// Use this version of the code system if a value set doesn't specify a version
	case `default` = "default"
	
	/// Use this version of the code system. If a value set specifies a different version, the expansion operation
	/// should fail
	case check = "check"
	
	/// Use this version of the code system irrespective of which version is specified by a value set. Note that this
	/// has obvious safety issues, in that it may result in a value set expansion giving a different list of codes that
	/// is both wrong and unsafe, and implementers should only use this capability reluctantly. It primarily exists to
	/// deal with situations where specifications have fallen into decay as time passes. If the value is override, the
	/// version used SHALL explicitly be represented in the expansion parameters
	case override = "override"
}


/**
The type(s) of task performers allowed

URL: http://hl7.org/fhir/task-performer-type
ValueSet: http://hl7.org/fhir/ValueSet/task-performer-type
*/
public enum TaskPerformerType: String {
	
	/// A workflow participant that requests services.
	case requester = "requester"
	
	/// A workflow participant that dispatches services (assigns another task to a participant).
	case dispatcher = "dispatcher"
	
	/// A workflow participant that schedules (dispatches and sets the time or date for performance of) services.
	case scheduler = "scheduler"
	
	/// A workflow participant that performs services.
	case performer = "performer"
	
	/// A workflow participant that monitors task activity.
	case monitor = "monitor"
	
	/// A workflow participant that manages task activity.
	case manager = "manager"
	
	/// A workflow participant that acquires resources (specimens, images, etc.) necessary to perform the task.
	case acquirer = "acquirer"
	
	/// A workflow participant that reviews task inputs or outputs.
	case reviewer = "reviewer"
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
	
	/// A FHIR Client
	case client = "client"
	
	/// A FHIR Server
	case server = "server"
}


/**
The reported execution result.

URL: http://hl7.org/fhir/report-result-codes
ValueSet: http://hl7.org/fhir/ValueSet/report-result-codes
*/
public enum TestReportResult: String {
	
	/// All test operations successfully passed all asserts
	case pass = "pass"
	
	/// One or more test operations failed one or more asserts
	case fail = "fail"
	
	/// One or more test operations is pending execution completion
	case pending = "pending"
}


/**
The current status of the test report.

URL: http://hl7.org/fhir/report-status-codes
ValueSet: http://hl7.org/fhir/ValueSet/report-status-codes
*/
public enum TestReportStatus: String {
	
	/// All test operations have completed
	case completed = "completed"
	
	/// A test operations is currently executing
	case inProgress = "in-progress"
	
	/// A test operation is waiting for an external client request
	case waiting = "waiting"
	
	/// The test script execution was manually stopped
	case stopped = "stopped"
	
	/// This test report was entered or created in error
	case enteredInError = "entered-in-error"
}


/**
The allowable request method or HTTP operation codes.

URL: http://hl7.org/fhir/http-operations
ValueSet: http://hl7.org/fhir/ValueSet/http-operations
*/
public enum TestScriptRequestMethodCode: String {
	
	/// HTTP DELETE operation
	case delete = "delete"
	
	/// HTTP GET operation
	case get = "get"
	
	/// HTTP OPTIONS operation
	case options = "options"
	
	/// HTTP PATCH operation
	case patch = "patch"
	
	/// HTTP POST operation
	case post = "post"
	
	/// HTTP PUT operation
	case put = "put"
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
The type of trigger

URL: http://hl7.org/fhir/trigger-type
ValueSet: http://hl7.org/fhir/ValueSet/trigger-type
*/
public enum TriggerType: String {
	
	/// The trigger occurs in response to a specific named event, and no other information about the trigger is
	/// specified. Named events are completely pre-coordinated, and the formal semantics of the trigger are not provided
	case namedEvent = "named-event"
	
	/// The trigger occurs at a specific time or periodically as described by a timing or schedule. A periodic event
	/// cannot have any data elements, but may have a name assigned as a shorthand for the event
	case periodic = "periodic"
	
	/// The trigger occurs whenever data of a particular type is changed in any way, either added, modified, or removed
	case dataChanged = "data-changed"
	
	/// The trigger occurs whenever data of a particular type is added
	case dataAdded = "data-added"
	
	/// The trigger occurs whenever data of a particular type is modified
	case dataModified = "data-modified"
	
	/// The trigger occurs whenever data of a particular type is removed
	case dataRemoved = "data-removed"
	
	/// The trigger occurs whenever data of a particular type is accessed
	case dataAccessed = "data-accessed"
	
	/// The trigger occurs whenever access to data of a particular type is completed
	case dataAccessEnded = "data-access-ended"
}


/**
How a type relates to its baseDefinition.

URL: http://hl7.org/fhir/type-derivation-rule
ValueSet: http://hl7.org/fhir/ValueSet/type-derivation-rule
*/
public enum TypeDerivationRule: String {
	
	/// This definition defines a new type that adds additional elements to the base type
	case specialization = "specialization"
	
	/// This definition adds additional rules to an existing concrete type
	case constraint = "constraint"
}


/**
Codes to identify how UDI data was entered

URL: http://hl7.org/fhir/udi-entry-type
ValueSet: http://hl7.org/fhir/ValueSet/udi-entry-type
*/
public enum UDIEntryType: String {
	
	/// a barcodescanner captured the data from the device label
	case barcode = "barcode"
	
	/// An RFID chip reader captured the data from the device label
	case rfid = "rfid"
	
	/// The data was read from the label by a person and manually entered. (e.g.  via a keyboard)
	case manual = "manual"
	
	/// The data originated from a patient's implant card and was read by an operator.
	case card = "card"
	
	/// The data originated from a patient source and was not directly scanned or read from a label or card.
	case selfReported = "self-reported"
	
	/// The method of data capture has not been determined
	case unknown = "unknown"
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
A code that specifies a type of context being specified by a usage context

URL: http://hl7.org/fhir/usage-context-type
ValueSet: http://hl7.org/fhir/ValueSet/usage-context-type
*/
public enum UsageContextType: String {
	
	/// The gender of the patient. For this context type, appropriate values can be found in the
	/// http://hl7.org/fhir/ValueSet/administrative-gender value set
	case gender = "gender"
	
	/// The age of the patient. For this context type, the value could be a range that specifies the applicable ages or
	/// a code from an appropriate value set such as the MeSH value set
	/// http://hl7.org/fhir/ValueSet/v3-AgeGroupObservationValue
	case age = "age"
	
	/// The clinical concept(s) addressed by the artifact. For example, disease, diagnostic test interpretation,
	/// medication ordering as in http://hl7.org/fhir/ValueSet/condition-code
	case focus = "focus"
	
	/// The clinical specialty of the context in which the patient is being treated - For example, PCP, Patient,
	/// Cardiologist, Behavioral Professional, Oral Health Professional, Prescriber, etc... taken from a specialty value
	/// set such as the NUCC Health Care provider taxonomy value set http://hl7.org/fhir/ValueSet/provider-taxonomy
	case user = "user"
	
	/// The settings in which the artifact is intended for use. For example, admission, pre-op, etc. For example, the
	/// ActEncounterCode value set http://hl7.org/fhir/ValueSet/v3-ActEncounterCode
	case workflow = "workflow"
	
	/// The context for the clinical task(s) represented by this artifact. For example, this could be any task context
	/// represented by the HL7 ActTaskCode value set http://hl7.org/fhir/ValueSet/v3-ActTaskCode. General categories
	/// include: order entry, patient documentation and patient information review
	case task = "task"
	
	/// The venue in which an artifact could be used. For example, Outpatient, Inpatient, Home, Nursing home. The code
	/// value may originate from the HL7 ServiceDeliveryLocationRoleType value set
	/// (http://hl7.org/fhir/ValueSet/v3-ServiceDeliveryLocationRoleType)
	case venue = "venue"
	
	/// The species to which an artifact applies. For example, SNOMED - 387961004 | Kingdom Animalia (organism)
	case species = "species"
}


/**
Complete, proposed, exploratory, other

URL: http://hl7.org/fhir/claim-use
ValueSet: http://hl7.org/fhir/ValueSet/claim-use
*/
public enum Use: String {
	
	/// The treatment is complete and this represents a Claim for the services.
	case complete = "complete"
	
	/// The treatment is proposed and this represents a Pre-authorization for the services.
	case proposed = "proposed"
	
	/// The treatment is proposed and this represents a Pre-determination for the services.
	case exploratory = "exploratory"
	
	/// A locally defined or otherwise resolved status.
	case other = "other"
}


/**
The status of the user session

URL: http://hl7.org/fhir/usersession-status
ValueSet: http://hl7.org/fhir/ValueSet/usersession-status
*/
public enum UserSessionStatusEnum: String {
	
	/// The user session is activating
	case activating = "activating"
	
	/// The user session is active
	case active = "active"
	
	/// The user session is suspended
	case suspended = "suspended"
	
	/// The user session is closing
	case closing = "closing"
	
	/// The user session is closed
	case closed = "closed"
}


/**
The source of the status of the user session

URL: http://hl7.org/fhir/usersession-status-source
ValueSet: http://hl7.org/fhir/ValueSet/usersession-status-source
*/
public enum UserSessionStatusSource: String {
	
	/// The status was reported by the user
	case user = "user"
	
	/// The status was reported by the system
	case system = "system"
}


/**
The primary process by which the target is validated

URL: http://hl7.org/fhir/validation-process
ValueSet: http://hl7.org/fhir/ValueSet/validation-process
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

URL: http://hl7.org/fhir/validation-status
ValueSet: http://hl7.org/fhir/ValueSet/validation-status
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

URL: http://hl7.org/fhir/validation-type
ValueSet: http://hl7.org/fhir/ValueSet/validation-type
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
A coded concept listing the base codes.

URL: http://hl7.org/fhir/vision-base-codes
ValueSet: http://hl7.org/fhir/ValueSet/vision-base-codes
*/
public enum VisionBase: String {
	
	/// top
	case up = "up"
	
	/// bottom
	case down = "down"
	
	/// inner edge
	case `in` = "in"
	
	/// outer edge
	case out = "out"
}


/**
A coded concept listing the eye codes.

URL: http://hl7.org/fhir/vision-eye-codes
ValueSet: http://hl7.org/fhir/ValueSet/vision-eye-codes
*/
public enum VisionEyes: String {
	
	/// Right Eye
	case right = "right"
	
	/// Left Eye
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

