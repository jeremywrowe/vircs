load File.join(File.dirname(__FILE__), "..", "vircs")

require 'stringio'

def capture(*streams)
  streams.map! { |stream| stream.to_s }
  begin
    result = StringIO.new
    streams.each { |stream| eval "$#{stream} = result" }
    yield
  ensure
   streams.each { |stream| eval("$#{stream} = #{stream.upcase}") }
  end
  result.string
end

def usage_pattern
  /^.*?VIRCS - vim config management.*?SETUP.*?COMMANDS.*?usage:.*?list:.*?use:.*?current:.*?prompt_info.*$/m
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end
