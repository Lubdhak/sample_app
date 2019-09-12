module Resolvers
    module Query
        class QueryName < Base
            def initialize(args,obj,ctx)
                @args = args
                @obj = obj
                @ctx = ctx
            end

            def resolve()
                puts @args
                puts @obj
                puts @ctx
                @args[:name] + " from resolver"
            end
            
        end

    end
end