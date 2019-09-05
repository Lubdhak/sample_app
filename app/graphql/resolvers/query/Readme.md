~~~~~~~~~~~~
module Resolvers
    module Query
        class VendorSearch < Base
            self.workspace_id = ""
            self.ctx = ""
            self.input_params = ""

        def init(input,ctx){

            self.@workspace_id = ctx.get('workspace_id')
            self.@ctx = ctx
            self.@input_params = input.get('input_params')

        }

        def resolve(){
            ...
            return some_long_Active_record_search_query 
        }

~~~~~~~~~~~~