require 'capistrano/configuration'

module Capistrano
  class Configuration
    def roles_for(names)
      root_user = fetch(:root_user)
      if root_user
        {servers: servers.roles_for(names), options: {root_user: root_user} }
      elsif names.is_a?(Array) && names[0].is_a?(Hash)
        {servers: servers.roles_for([names[0][:role]]), options: {root_user: names[0][:root_user]} }
      else
        servers.roles_for(names)
      end
    end
  end
end