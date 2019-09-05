module Types
    module Root
        class LinkType < BaseObject
            field :id, ID, null: false
            field :body, String, null: false
            field :title, String, null: false
        end
    end
end