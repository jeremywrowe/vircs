require File.expand_path(File.dirname(__FILE__) + "/spec_helper.rb")

module Vircs
  describe Virc do
    context "#use" do
      context "with args" do
        let(:args) { "foo" }
        it "saves the current config" do
          subject.should_receive(:check_for).with("foo")
          subject.should_receive(:unlink_current)
          subject.should_receive(:setup_links).with("foo")
          subject.should_receive(:save_current).with("foo")
          capture(:stdout) { subject.use(args) }.should == ""
        end

        it "saves the current configuration when files are present" do
          subject = Virc.new File.expand_path('examples', File.dirname(__FILE__))
          subject.should_receive(:check_for).with("flinstone")
          subject.should_receive(:unlink_current)
          # subject.setup_links: is called but we want it to execute
          #                      but without actually creating symbolic links
          File.stub(:symlink)
          subject.should_receive(:save_current).with("flinstone")
          capture(:stdout) { subject.use("flinstone") }.should =~ /Added\s+\[.+\/bambam\]/
        end

        it "raises an exception when the supplied folder is not present" do
          subject.stub_chain(:check_for).and_raise("KA-BOOM")
          expect { subject.use(args) }.to raise_error("KA-BOOM")
        end
      end
      context "without args" do
        it "shows usage when no args are provided" do
          capture(:stdout) { subject.use }.should =~ usage_pattern
        end
      end
    end
  end
end
