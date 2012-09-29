require File.expand_path(File.dirname(__FILE__) + "/spec_helper.rb")

module Vircs
  describe Virc do
    describe "#list" do
      context "the directory is set to the current directory" do

        subject { Virc.new File.expand_path(File.dirname(__FILE__) + '/..') }

        it "lists all of the folders in the same directory as vircs" do
          subject.stub_chain(:current).and_return("none_of_the_above")
          capture(:stdout) { subject.list }.should eq("bin\nlib\nspec\n")
        end

        it "lists all of the folders in the same directory as vircs with current *'ed" do
          subject.stub_chain(:current).and_return("spec")
          capture(:stdout) { subject.list }.should eq("bin\nlib\nspec*\n")
        end
      end

      context "configured path for vircs" do
        subject { Virc.new File.expand_path(File.dirname(__FILE__) + '/../lib') }
        it "lists all of the folders when the non standard path is specified in .vircs file" do
          subject.stub_chain(:current).and_return("none_of_the_above")
          capture(:stdout) { subject.list }.should eq("vircs\n")
        end
      end
    end
  end
end
