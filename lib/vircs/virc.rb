module Vircs
  class Virc
  require 'fileutils'
  include FileUtils

    def initialize(_execution_path=nil)
      unless _execution_path
        _execution_path = File.expand_path(File.dirname(__FILE__))
        _execution_path = File.expand_path(File.dirname(File.readlink(__FILE__))) if File.symlink?(__FILE__)
      end
      @execution_path = _execution_path
    end

    def execution_path
      @execution_path
    end

    def usage(*args)
  usage = <<-USG
  |===============================================================
  |
  |                VIRCS - vim config management
  |
  |===============================================================
  |
  |    usage: lists this lovely help file :)
  |           EX: vircs usage
  |
  |    list: lists all of the available vim configurations
  |          EX: vircs list
  |
  |    use: switchs to the supplied vim configuration
  |          EX: vircs use foo
  |          (this will switch to the foo configuration)
  |
  |    current: displays the current vim configuration
  |          EX: vircs current
  |
  |    dir: shows you where your configuration files are stored
  |
  |    prompt_info: displays the current vim configuration as follows "vircs:config_x"
  |                 where config_x is the current configuration
  |          EX: vircs prompt_info
  |
  |    version: gem version
  USG
      $stdout.puts usage.gsub("|", "")
    end


    def list(*args)
      args.flatten!
      Dir[execution_path+"/*"].each do |p|
        if File.directory?(p)
          config = p.split("/").last
          config += "*" if config == current(true)
          puts config
        end
      end
    end

    def use(*args)
      args.flatten!
      if args.size == 1
        config = args[0]
        check_for(config)
        unlink_current
        setup_links(config)
        save_current(config)
      else
        usage
      end
    end

    def dir(*args)
      $stdout.puts execution_path
    end

    def version(*args)
      $stdout.puts Vircs::VERSION
    end

    def current(args)
      path = File.read(File.join(execution_path,  "vircs.current")).split("\n").first
      if args
        path
      else
        puts path
      end
    end

    def prompt_info(args)
      puts "virc:" + File.read(File.join(execution_path, "vircs.current"))
    end

    def method_missing(m, *args, &block)
      usage
    end

    private

    def check_for(name)
      raise "Could not find '#{name}' directory in [#{execution_path}]. Perhaps do a 'virc list'" unless Dir.glob(execution_path+"/**").include?("#{execution_path}/#{name}")
    end

    def save_current(config)
      File.open(File.join(execution_path, "vircs.current"), "w") {|f| f.puts config}
    end

    def unlink_current
      Dir.entries("#{ENV['HOME']}").each do |path|
        path = File.expand_path(File.join(ENV['HOME'], path))
        next if path[-1] == '.'
        if File.symlink? path
          link_path     = File.readlink(path)
          includes_base = link_path.start_with?(execution_path)
          if includes_base
            File.unlink(path)
            $stdout.puts "Removed [#{path}]"
          end
        end
      end
    end

    def setup_links(vim_config)
      vim_config_path = File.join(execution_path, vim_config)
      Dir.entries("#{vim_config_path}").each do |path|
        next if path[-1] == '.' or path == vim_config_path
        begin
          dest_path = File.join(ENV["HOME"], path)
          path = File.join(vim_config_path, path) unless path.start_with? vim_config_path
          File.symlink path, dest_path
          puts "Added   [#{dest_path}]"
        rescue Exception => e
          puts "#{e.message}. Continuing" if debug
        end
      end
    end

    def debug
      ENV["debug"] || ENV["DEBUG"]
    end
  end
end
