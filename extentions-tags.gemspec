# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'extentions/tags/version'

Gem::Specification.new do |gem|
  gem.name          = "extentions-tags"
  gem.version       = Extentions::Tags::VERSION
  gem.authors       = ["Alexander Paramonov"]
  gem.email         = ["alexander.n.paramonov@gmail.com"]
  gem.description   = %q{Tags extention}
  gem.summary       = %q{Add tags functionality to your application}
  gem.homepage      = "http://github.com/AlexParamonov/extentions-tags"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", ">= 2.6"
  gem.add_development_dependency "pry"
end
