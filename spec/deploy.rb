require 'capistrano/setup'

set :root_user, 'ferrari'

role :web, '192.168.9.16'

set :unicorn_roles, {role: :web, root_use: 'prod'}