require 'spec_helper'

describe Spree::Gateway::ElavonGateway do
  let (:gateway) { Spree::Gateway::ElavonGateway.create!(:name => "ElavonGateway") }

  describe "options" do
    it "should include :test => true when :test_mode is true" do
      gateway.preferred_test_mode = true
      gateway.options[:test].should == true
    end

    it "should not include :test when test_mode is false" do
      gateway.preferred_test_mode = false
      gateway.options[:test].should == false
    end
  end
  
  it "should be Elavon gateway" do
    gateway.provider_class.should == ::ActiveMerchant::Billing::ElavonGateway
  end
end
