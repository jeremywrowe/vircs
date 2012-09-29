require File.expand_path(File.dirname(__FILE__) + "/spec_helper.rb")

module Vircs
  describe Virc do
    it "should display the version" do
      capture(:stdout) { subject.version }.should eq(Vircs::VERSION + "\n")
    end
  end
end
