require 'capistrano/all'
require 'sshkit/dsl'
require File.expand_path('capistrano/configuration', __dir__)
require File.expand_path('sshkit/runners/abstract', __dir__)
require File.expand_path('sshkit/dsl', __dir__)