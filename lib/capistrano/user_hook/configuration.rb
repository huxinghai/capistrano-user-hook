require 'capistrano/configuration'

module Capistrano
  class Configuration

    alias_method :fetch_without_feature, :fetch

    def fetch_with_feature(*args)
      name = args.first
      user = fetch_root_users(name)
      value = fetch_without_feature(*args)
      user.nil? ? value : [{role: value, root_user: user, name: name}]
    end

    alias_method :fetch, :fetch_with_feature

    def roles_for(names)
      if names.is_a?(Array) && names[0].is_a?(Hash)
        role = names[0][:role]
        {servers: servers.roles_for(role.is_a?(Array) ? role : [role]), options: {root_user: names[0][:root_user]} }
      else
        servers.roles_for(names)
      end
    end

    private 

    def fetch_root_users(name)
      users = (fetch_without_feature(:root_users) || {})
      for k, v in users
        if v.is_a?(Array) && v.include?(name)
          return k
        elsif v == name
          return k
        end
      end
      return nil
    end
  end
end