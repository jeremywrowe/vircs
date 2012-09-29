require File.expand_path(File.dirname(__FILE__) + "/spec_helper.rb")

module Vircs
  describe Virc do
    context "#usage" do
      it "displays the porper usage" do
        capture(:stdout) { subject.usage }.should =~ usage_pattern
      end

      it "displays usage when an improper command is provided" do
        capture(:stdout) { subject.some_random_missing_method }.should =~ usage_pattern
      end
    end
  end
end
