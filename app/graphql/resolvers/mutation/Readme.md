~~~~~~~~~~~~
module Resolvers
    module Mutation
        class AddEmployee < Base
            self.@workspace_id = ""
            self.@ctx = ""
            self.@input_params = ""

        def init(input,ctx){

            self.workspace_id = ctx.get('workspace_id')
            self.ctx = ctx
            self.input_params = input.get('input_params')

        }

        def resolve(){
            ...
            someclass.create(input_params)
        }

~~~~~~~~~~~~