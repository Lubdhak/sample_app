module Mutations
    class ChangeTitle < GraphQL::Schema::RelayClassicMutation
      null true
      
      # Server_request
      argument :number0, ::Types::Inputs::ChangeTitleInputType, required: true, camelize: false
      
      # Server_response
      field :success, String ,null: true, camelize: false

      def resolve(**inputs)
        puts "XXXXXXX"
        puts inputs
        # Some Active Record Create/Update here..

        # Return type must be object
        {"success":"Done it seems"}
        # {"success" => true}
      end
    end
end