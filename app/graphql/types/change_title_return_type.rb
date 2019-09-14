# frozen_string_literal: true

module Types
    class ChangeTitleReturnType < Types::Root::BaseObject
        # response json key name,scalar/user_defined type
        field :status, String, null: false, camelize: false
        field :data, String, null: false, camelize: false

        def status
            # Some AR Query

            # {
            #     statuskeyone: "This is OP",
            #     statuskeytwe: "This is OP2"

            # }
            # puts "from ChangeTitleReturnType"
            "this is ff status"
        end
        def data
            # Some AR Query

            # {
            #     datakey: ["This", "is" "OP"]
            # }

            "this is ff data"
            
        end
    end

    

end
  