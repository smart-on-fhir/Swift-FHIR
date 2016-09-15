#
#  Swift-FHIR
#
#  Swift FHIR data model classes, with some goodies.
#  Enjoy!
#

Pod::Spec.new do |s|
  s.name         = "FHIR"
  s.version      = "2.8"
  s.summary      = "Swift 🔥FHIR data model classes, with some goodies."
  s.description  = <<-DESC
                   Swift 🔥FHIR data model classes, generated from spec. Uses custom Date/Time structs to facilitate
                   working with dates. Contains server request/response classes and a FHIR server protocol intended to
                   help in building a full-fledged client, as implemented by SMART on FHIR.
                   DESC
  s.homepage     = "https://github.com/smart-on-fhir/Swift-FHIR"
  s.documentation_url = "http://docs.smarthealthit.org/Swift-SMART/"
  s.license      = "Apache 2"
  s.author       = { "Pascal Pfiffner" => "phase.of.matter@gmail.com" }
  s.source       = { :git => "https://github.com/smart-on-fhir/Swift-FHIR.git", :tag => "#{s.version}" }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.requires_arc          = true
  s.pod_target_xcconfig   = { 'OTHER_SWIFT_FLAGS' => '-DNO_MODEL_IMPORT' }
  s.source_files          = "Sources/*/*.swift"
end
