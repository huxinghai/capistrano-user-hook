require 'spec_helper'
require 'deploy'
require 'debugger'

describe SSHKit::DSL do 
  let(:dsl) { Class.new.extend SSHKit::DSL }

  describe "setting root user" do 

    it "setting root user call on method" do
      block = Proc.new{}
  
      dsl.on(roles(:web), {}, &block)
    end

    it "setting an task not switch user"  do 
      block = Proc.new{}

      dsl.on(roles(:web), {root_user: :no}, &block)
    end

    it "roles result data" do 
      expect(roles(:web).has_key?(:servers) ).to be true
      expect(roles(:web).has_key?(:options) ).to be true
    end

    it "normal roles arguments result data" do 
      delete(:root_user)
      expect(fetch(:root_user)).to be_nil
      expect(roles(:web)).to be_kind_of(Array)
    end
  end
end