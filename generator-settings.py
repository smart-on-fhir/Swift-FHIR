# These are settings for the FHIR class generator

from Swift3.mappings import *
from Swift3.settings import *

specification_url = 'http://hl7.org/fhir/dstu2/'

write_resources = True
write_searchparams = False
write_unittests = True

tpl_resource_target_ptrn = '../Sources/Models/{}.swift'
tpl_factory_target = '../Sources/Models/FHIRAbstractBase+Factory.swift'
tpl_unittest_target_ptrn = '../Tests/ModelTests/{}Tests.swift'
