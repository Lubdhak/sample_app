module Mutations
    class UpdateTableEntry < GraphQL::Schema::RelayClassicMutation
        null true 
        argument :id, ID, required: true, camelize: false
        argument :title, String, required: true, camelize: false
        
        field :table_entity, Types::PostType, null: true, camelize: false
        
        def resolve(**inputs)
          entry = Post.find(inputs[:id])
          entry.update!(title: inputs[:title])
          {
            table_entity: entry
          }

        end
    end
end