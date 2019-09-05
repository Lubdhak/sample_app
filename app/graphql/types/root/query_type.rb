module Types
  module Root
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    # TODO: remove me
    field :test_field, [String], null: false, camelize: false,
    description: "query_1"
    
    field :table_entities, [Types::MyTableType], null: false, camelize: false,
    description: "query_2"

    field :table_entity, Types::MyTableType, null: false, camelize: false,
    description: "query_3" do
      argument :id, ID, required: true
    end

    field :test_fieldw, String, null: false, camelize: false,
    description: "query_4"
    
    def table_entity(id: )
      Mytable.find(id)
    end

    def test_field
      Mytable.pluck(:title)
    end

    def table_entities
      Mytable.all
    end

    def test_fieldw
      "Hello World2!"
    end
  end
end
end
