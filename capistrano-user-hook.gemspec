# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'capistrano-user-hook'

Gem::Specification.new do |s|
  s.name        = 'capistrano-user-hook'
  s.version     =  Capistrano::UserHook::VERSION
  s.date        = '2015-03-10'
  s.summary     = "server user manage deploy using switch user execute!!"
  s.description = "server user manage deploy using switch user execute"
  s.authors     = ["Ka Ka"]
  s.email       = 'huxinghai1988@gmail.com'
  s.files       = `git ls-files`.split($/)
  s.homepage    =
    'https://github.com/huxinghai1988/capistrano-user-hook.git'
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
  s.license       = 'MIT'

  s.add_dependency 'capistrano', '~> 3.0'
  s.add_dependency 'sshkit', '~> 1.2'
  s.add_development_dependency 'rspec'
end