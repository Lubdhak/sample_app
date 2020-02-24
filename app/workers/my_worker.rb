# class MyWorker < ActiveJob::Base
class MyWorker
    include Sidekiq::Worker
    priority = ["high_priority" , "low_priority"].sample
    sidekiq_options queue: priority, retry: false, backtrace: true, dead: false

    def perform(args)
      args = args.deep_symbolize_keys 
      # Complex Objects not supported, reads JSON
      # Even = Error
      begin
        if args[:id] % 2 == 0
          raise Exception.new("EVEN so failed with #{args.to_s}")
        else
          puts "ODD - Task Completed with #{args.to_s}"
        end
      rescue Exception => e
        puts e
        raise e 
      ensure
        return 0
      end
    end
end








