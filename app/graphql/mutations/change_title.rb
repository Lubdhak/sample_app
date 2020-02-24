module Mutations
    class ChangeTitle < GraphQL::Schema::RelayClassicMutation
      null true
      # Server_request
      argument :number0, ::Types::Inputs::ChangeTitleInputType, required: true, camelize: false
      
      # Server_response
      field :outputkey, Types::ChangeTitleReturnType, null: false, camelize: false
      field :opkeu, String, null: false, camelize: false
      
      def resolve(**inputs)
        obj = "Dog"
        ctx = "Cat"
        outputval = Resolvers::Mutation::ChangeTitle.new(inputs,obj,ctx).resolve
        puts outputval

        # "outputkey" must contain as keyname in a object, regardless what value assigned,value will be 
        # automatically added from returntype class & should be last line of the resolve func."
        
        {
          outputkey: "this wont print if return type for this field isn't string",
          opkeu:"sss"
        }
        
      end
      
    end
end