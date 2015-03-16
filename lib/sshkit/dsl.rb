require 'sshkit/dsl'
require 'capistrano/setup'

module SSHKit
  module DSL

    def on(hosts, options = {}, &block)
      if hosts.is_a?(Hash)
        root_user = hosts[:options][:root_user]
        options[:root_user] = root_user unless root_user && options[:root_user].to_s == "no"
        hosts = hosts[:servers]
      end

      Coordinator.new(hosts).each(options, &block)
    end
  end
end