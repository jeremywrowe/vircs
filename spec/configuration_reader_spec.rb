require File.expand_path(File.dirname(__FILE__) + "/spec_helper.rb")

module Vircs
  describe ConfigurationReader do

    describe "#configuration_path" do
      it "provides the configuration path when there is one present" do
        File.should_receive(:read).with(File.join(ENV['HOME'], '.vircs')).and_return "/foo/man/shoe"
        subject.configuration_path.should eq "/foo/man/shoe"
      end

      it "provides a trimmed down path if there is extra spaces at the end of the path string" do
        File.should_receive(:read).with(File.join(ENV['HOME'], '.vircs')).and_return "/foo/man/shoe    "
        subject.configuration_path.should eq "/foo/man/shoe"
      end
      it "provides a trimmed down path if there are extra spaces at the beginning of the path string" do
        File.should_receive(:read).with(File.join(ENV['HOME'], '.vircs')).and_return "    /foo/man/shoe"
        subject.configuration_path.should eq "/foo/man/shoe"
      end
      it "defaults to the .vims path when a path can not be found" do
        File.should_receive(:read).with(File.join(ENV['HOME'], '.vircs')).and_throw Errno::ENOENT.new
        File.should_receive(:exists?).and_return true
        subject.configuration_path.should eq File.join(ENV['HOME'], '.vims')
      end
    end

    describe "#configuration_path_exists?" do
      it "is true when a configuration file exists" do
        File.should_receive(:read).with(File.join(ENV['HOME'], '.vircs')).and_return "/foo/man/shoe"
        subject.has_configuration?.should eq true
      end

      it "is false when a configuration file does not exist" do
        File.should_receive(:read).with(File.join(ENV['HOME'], '.vircs')).and_throw Errno::ENOENT.new
        File.should_receive(:exists?).and_return false
        subject.has_configuration?.should eq false
      end
    end
  end
end
