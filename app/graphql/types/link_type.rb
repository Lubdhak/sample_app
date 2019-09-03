module Types
    class LinkType < BaseObject
        field :id, ID, null: false
        field :body, String, null: false
        field :title, String, null: false
    end
end