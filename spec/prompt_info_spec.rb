require File.expand_path(File.dirname(__FILE__) + "/spec_helper.rb")

describe Virc do
  context "#prompt_info" do
    it "raises an error when .current file doesn't exist" do
      File.should_receive(:read).and_raise("File not found")
      expect { subject.prompt_info(nil) }.to raise_error("File not found")
    end
    it "displays the current configuration" do
      File.should_receive(:read).and_return("12345")
      capture(:stdout){ subject.prompt_info(:foo) }.should eq("virc:12345\n")
    end
  end
end

