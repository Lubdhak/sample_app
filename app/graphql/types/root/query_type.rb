# frozen_string_literal: true

module Types
  module Root
    class QueryType < Types::Root::BaseObject
      # Add root-level fields here.
      # They will be entry points for queries on your schema.
      # TODO: remove me
      graphql_name "Query"
      description "All queries in query_type class"

      field :test_field, [String], null: false, camelize: false,
      description: "query_1"

      def test_field
        Post.pluck(:title)
      end
      # --------------------------------------------------------------
      field :table_entities, [Types::PostType], null: false, camelize: false,
      description: "query_2"

      def table_entities
        Post.all
      end
      # --------------------------------------------------------------

      field :table_entity, Types::PostType, null: false, camelize: false,
      description: "query_3" do
        argument :id, ID, required: true
      end

      def table_entity(id: )
        Post.find(id)
      end

      # --------------------------------------------------------------

      field :test_fieldw, String, null: false, camelize: false,
      description: "query_4"
      
      def test_fieldw
        "Hello World2!"
      end
      # --------------------------------------------------------------

      # query_name , return_type , return_type_properties , input_argument_properties
      field :query_name , String , null: false,camelize: false,description: "query_name_description" do
        argument :name, String, required: true
      end

      # Resolver function or a call to a Module.resolver()
      def query_name(**args)
        obj = "Dog"
        ctx = "Cat"
        Resolvers::Query::QueryName.new(args,obj,ctx).resolve
      end
      
      
    end
  end
end
