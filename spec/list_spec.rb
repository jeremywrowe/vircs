require File.expand_path(File.dirname(__FILE__) + "/spec_helper.rb")

module Vircs
  describe Virc do
    context "#list" do
      it "lists all of the folders in the same directory as vircs" do
        subject.stub_chain(:current).and_return("none_of_the_above")
        capture(:stdout) { subject.list }.should eq("bin\nlib\nspec\n")
      end

      it "lists all of the folders in the same directory as vircs with current *'ed" do
        subject.stub_chain(:current).and_return("spec")
        capture(:stdout) { subject.list }.should eq("bin\nlib\nspec*\n")
      end
    end
  end
end
