module Vircs
  class ConfigurationReader
    def has_configuration?
      read_vircs_file do |answer|
        return !answer.nil?
      end
    end

    def configuration_path
      read_vircs_file do |answer|
        return answer
      end
    end

    private
    def read_vircs_file(&block)
      begin
        yield File.read(File.join ENV['HOME'], '.vircs').strip
      rescue
        if default_path
          yield default_path
        else
          yield nil
        end
      end
    end

    def default_path
      @default_path ||= begin
        path = File.join ENV['HOME'], '.vims'
        File.exists?(path) ? path : nil
      end
    end
  end
end
