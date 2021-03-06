lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord-devkit/version'

Gem::Specification.new do |s|
  s.name        = 'activerecord-devkit'
  s.version     = ActiveRecordDevkit::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = 'Sergey Tokarenko'
  s.email       = 'private.tokarenko.sergey@gmail.com'
  s.homepage    = 'https://github.com/stokarenko/activerecord-devkit'
  s.summary     = 'Collection of utility Ruby Features for ActiveRecord.'
  s.description = s.summary
  s.license     = 'MIT'

  s.files       = Dir['{lib}/**/*', 'LICENSE', 'README.md']
  s.test_files  = Dir['{spec}/**/*']

  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'ruby-features', '>= 1.1.1'
  s.add_dependency 'activerecord', '>= 3.2.13'

  s.add_development_dependency 'bundler'
end
