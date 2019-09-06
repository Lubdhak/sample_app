module Types
    class MyTableType < Types::Root::BaseObject
      # Add root-level fields here.
      # They will be entry points for queries on your schema.
      # TODO: remove me
      field :title, String, null: false, camelize: false
      field :id, ID, null: false, camelize: false
      field :created_at, String, null: false, camelize: false

      def created_at
        puts "EXECUTED"
        object.created_at.to_s
      end

  end
end
  