# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'typeahead/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'typeahead-rails'
  spec.version       = Typeahead::Rails::VERSION
  spec.authors       = ['Maksim Berjoza']
  spec.email         = ['torbjon@gmail.com']
  spec.description   = 'Twitter Typeahead.js with Rails asset pipeline'
  spec.homepage      = 'https://github.com/torbjon/json2-rails'
  spec.summary       = 'Twitter Typeahead.js with Rails asset pipeline'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
