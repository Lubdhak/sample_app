module Resolvers
    module Mutation
        class ChangeTitle < Base
            
            def initialize(args,obj,ctx)
                @args = args
                @obj = obj
                @ctx = ctx
            end

            def resolve
                # puts @args
                # puts @obj
                # puts @ctx
                # puts "XXXXXXX"
                # Some Active Record Create/Update here..
        
                # Return type must be object
                # hii = ::Types::ChangeTitleReturnType.new().resolve
                # {"status":"something","data":"or the other"}
                "stringuu"
              end
            
        end

    end
end