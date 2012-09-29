require File.expand_path(File.dirname(__FILE__) + "/spec_helper.rb")

module Vircs
  describe Virc do
    context "#current" do
      it "returns the currently set vim config if set and args are set" do
        File.should_receive(:read).and_return("foo")
        subject.current("some args").should eq("foo")
      end

      it "displays the currently set vim config if set and args are nil" do
        File.should_receive(:read).and_return("foo")
        capture(:stdout) { subject.current(nil) }.should eq("foo\n")
      end

      it "throws an exception if the current vim config is not set" do
        File.should_receive(:read).and_raise("FROM DOWN TOWN")
        expect { subject.current("some args") }.to raise_error("FROM DOWN TOWN")
      end
    end
  end
end
