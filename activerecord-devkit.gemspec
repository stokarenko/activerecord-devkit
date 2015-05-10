lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord-devkit/version'

Gem::Specification.new do |s|
  s.name        = 'activerecord-devkit'
  s.version     = ActiveRecordDevkit::VERSION.dup
  s.authors     = 'Sergey Tokarenko'
  s.email       = 'private.tokarenko.sergey@gmail.com'
  s.homepage    = 'https://github.com/stokarenko/activerecord-devkit'
  s.summary     = 'ActiveRecord plugin which provides the scope of utility helpers.'
  s.description = s.summary
  s.license     = 'MIT'

  s.files       = Dir['{lib}/**/*.rb', 'LICENSE', '*.md']

  s.add_dependency 'activerecord', '>= 3.2.13'

  s.add_development_dependency 'bundler'
end
