require File.expand_path(File.dirname(__FILE__) + "/spec_helper.rb")

describe Virc do
  context "#use" do
    context "with args" do
      let(:args) { "foo" }
      it "saves the current config" do
        subject.stub_chain(:check_for).with("foo")
        subject.stub_chain(:unlink_current)
        subject.stub_chain(:setup_links).with("foo")
        subject.stub_chain(:save_current).with("foo")
        subject.use(args)
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
