# ripped from Homebrew
module RailsSlickgrid
  module Utils
    class ExecutionError < StandardError; end
    extend self
    def system cmd, *args
      #puts "#{cmd} #{args*' '}" if ARGV.verbose?
      fork do
        yield if block_given?
        args.collect!{|arg| arg.to_s}
        exec(cmd, *args) rescue nil
        exit! 1 # never gets here unless exec failed
      end
      Process.wait
      $?.success?
    end

    # Kernel.system but with exceptions
    def safe_system cmd, *args
      raise ExecutionError.new($?) unless system(cmd, *args)
    end

    # prints no output
    def quiet_system cmd, *args
      system(cmd, *args) do
        $stdout.close
        $stderr.close
      end
    end

    def curl *args
      safe_system '/usr/bin/curl', '-f#LA', 'Rails SlickGrid', *args unless args.empty?
    end
  end
end


