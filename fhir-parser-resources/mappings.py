# Mappings for the FHIR class generator

# Which class names to map to resources and elements. Classes not listed here
# will not be mapped, i.e. their (uppercased) FHIR name will be the class name
classmap = {
    'Any': 'Resource',
    'Practitioner.role': 'PractRole',   # to avoid Practinioner.role and PractitionerRole generating the same class
    'Protocol': 'ProtocolFHIR',
    
    'boolean': 'FHIRBool',
    'decimal': 'FHIRDecimal',
    'integer': 'FHIRInteger',
    'positiveInt': 'FHIRInteger',
    'unsignedInt': 'FHIRInteger',
    
    'string': 'FHIRString',
    'code': 'FHIRString',       # we're not generating enums for all codes
    'markdown': 'FHIRString',
    'xhtml': 'FHIRString',
    
    'id': 'FHIRString',
    'oid': 'FHIRURL',
    'uuid': 'FHIRURL',
    'uri': 'FHIRURL',
    'url': 'FHIRURL',
    'canonical': 'FHIRURL',
    
#   'base64Binary': 'Base64Binary',
    
    'date': 'FHIRDate',
    'time': 'FHIRTime',
#   'dateTime': 'DateTime',
#   'instant': 'Instant',
}

# Classes of properties to be replaced with different ones at resource rendering time
replacemap = {}

# Which class names in use for properties are native to the language (or can
# be treated this way)
natives = ['Bool', 'Int', 'UInt', 'Double', 'NSDecimalNumber']

# Which JSON type (dict value) is expected for a given class (dict key)
jsonmap = {
    'Bool': 'FHIRBool',
    
    'Int': 'Int',
    'UInt': 'UInt',
    'Double': 'NSNumber',
    'NSDecimalNumber': 'NSNumber',
    
    'FHIRString': 'String',
    'FHIRURL': 'String',
    'Base64Binary': 'String',
    
    'FHIRDate': 'String',
    'FHIRTime': 'String',
    'DateTime': 'String',
    'Instant': 'String',
}
jsonmap_default = 'FHIRJSON'

# Properties that need to be renamed because of language keyword conflicts
reservedmap = {
    'as': '`as`',
    'class': '`class`',
    'default': '`default`',
    'extension': 'extension_fhir',
    'false': '`false`',
    'for': 'for_fhir',
    'import': 'import_fhir',
    'in': '`in`',
    'protocol': 'protocol_fhir',
    'operator': 'operator_fhir',
    'repeat': 'repeat_fhir',
    'return': '`return`',
    'self': '`self`',
    'true': '`true`',
    'description': 'description_fhir',    # Reserved for `Printable` classes
}

# For enum codes where a computer just cannot generate reasonable names
enum_map = {
    '=': 'eq',
	'!=': 'neq',
    '<': 'lt',
    '<=': 'lte',
    '>': 'gt',
    '>=': 'gte',
    '*': 'max',
	'public': 'public_fhir',
	'private': 'private_fhir'
}

# If you want to give specific names to enums based on their URI
enum_namemap = {
	'http://terminology.hl7.org/CodeSystem/composition-altcode-kind': 'CompositionAlternativeCodeKind',
	'http://terminology.hl7.org/CodeSystem/codesystem-altcode-kind': 'CodeSystemAlternativeCodeKind',
	'http://hl7.org/fhir/contract-security-category': 'ContractResourceSecurityCategoryCodes',
	'http://hl7.org/fhir/contract-security-classification': 'ContractResourceSecurityClassificationCodes',
	'http://hl7.org/fhir/contracttermsubtypecodes': 'ContractTermSubtypeCodes',
	'http://hl7.org/fhir/coverage-exception': 'CoverageExceptionCodes',
	'http://hl7.org/fhir/device-definition-status': 'DeviceDefinitionStatusCodes',
	'http://hl7.org/fhir/CodeSystem/medication-statement-status': 'MedicationStatementStatusCodes',
	'http://terminology.hl7.org/CodeSystem/medication-statement-category': 'MedicationStatementCategoryCodes',
	'http://terminology.hl7.org/CodeSystem/practitioner-role': 'PractitionerRoleCodes',
    'http://hl7.org/fhir/resource-type-link': 'ResourceTypeLink',
	'http://hl7.org/fhir/secondary-finding': 'SecondaryFindingCodes',
	'http://hl7.org/fhir/usersession-status': 'UserSessionStatusEnum'
}

