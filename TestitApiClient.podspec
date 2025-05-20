Pod::Spec.new do |s|
  s.name = 'TestitApiClient'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = 'v2.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'vv2.0' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'TestitApiClient Swift SDK'
  s.source_files = 'Sources/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
