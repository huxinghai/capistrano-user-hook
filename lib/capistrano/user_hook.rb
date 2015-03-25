require 'capistrano/all'

require File.expand_path('user_hook/configuration', __dir__)
require File.expand_path('user_hook/ssh/runners/abstract', __dir__)
require File.expand_path('user_hook/ssh/dsl', __dir__)

module Capistrano
  module UserHook
    VERSION = "0.0.9"
  end
end