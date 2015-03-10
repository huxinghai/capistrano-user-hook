require 'sshkit/dsl'

module SSHKit
  module DSL

    def on(hosts, options, &block)
      user = fetch(:root_user)
      if user.nil? || options[:root_user] == "no"
        super
      else
        super(hosts, {root_user: user}.merge(options), &block)
      end
    end
  end
end