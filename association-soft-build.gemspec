lib = File.expand_path('../lib', __FILE__)
rails_version = '~> 4.1'
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'association-soft-build/version'

Gem::Specification.new do |s|
  s.name        = 'association-soft-build'
  s.version     = AssociationSoftBuild::VERSION.dup
  s.authors     = 'Sergey Tokarenko'
  s.email       = 'private.tokarenko.sergey@gmail.com'
  s.homepage    = 'https://github.com/stokarenko/association-soft-build'
  s.summary     = 'ActiveRecord plugin which provides the possibility to build an association without affecting to parent object.'
  s.description = s.summary
  s.license     = 'MIT'

  s.files       = Dir['{lib}/**/*.rb', 'LICENSE', '*.md']

  s.add_dependency 'activerecord', rails_version
  s.add_dependency 'activesupport', rails_version
  s.add_dependency 'railties', rails_version

  s.add_development_dependency 'bundler'
end
