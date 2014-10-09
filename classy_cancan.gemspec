$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'classy_cancan/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'classy_cancan'
  s.version     = ClassyCancan::VERSION
  s.authors     = ['Philippe Hässig']
  s.email       = ['phil@neckhair.ch']
  s.homepage    = 'http://github.com/neckhair/classy_cancan'
  s.summary     = 'Classify your cancancan abilities'
  s.description = 'Define an ability class for each of your models to separate authorizations.'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split($/)

  s.add_dependency 'cancancan'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
