require 'sshkit/runners/abstract'

module SSHKit

  module Runner

    class Abstract


      private
      def backend(host, &block)
        puts "======================#{host}"
        back = SSHKit.config.backend.new(host, &block)
        back.instance_variable_set(:@user, @options[:root_user]) if @options[:root_user]
        back
      end

    end
  end
end