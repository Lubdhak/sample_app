module Api
    module Mysidekiq
        class JobsController < ApplicationController
            # https://api.rubyonrails.org/v5.2.1/classes/ActionController/ParamsWrapper.html
            wrap_parameters false

            def add_job
                # id = params[:id]
                rando = rand(11..99)
                args = {:id => rando }

                # Inline Immediate
                MyWorker.new().perform(args.merge!(msg: "perform Sync"))
                
                # ActiveJob Background
                MyWorker.perform_at(Time.now()+30,args.merge!(msg: "perform After 30 sec"))

                # Sidekiq Native
                MyWorker.perform_async(args.merge!(msg: "perform Async"))
                
                return render json: {status:'SUCCESS',msg: 'Working..',ID: rando}, status: :ok
            end

            def clear_stats
                require 'sidekiq/api'
                # 1. Clear retry set
                Sidekiq::RetrySet.new.clear
                # 2. Clear scheduled jobs 
                Sidekiq::ScheduledSet.new.clear
                # 3. Clear 'Processed' and 'Failed' jobs
                Sidekiq::Stats.new.reset
                # 3. Clear 'Dead' jobs statistics
                Sidekiq::DeadSet.new.clear
                return render json: {status:'SUCCESS',msg: 'Cleared..',data: {}}, status: :ok

            end

            
            
        end
    end
end