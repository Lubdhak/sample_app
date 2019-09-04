module Mutations
    class UpdateTableEntry < GraphQL::Schema::RelayClassicMutation
        null true 
        argument :id, ID, required: true, camelize: false
        argument :title, String, required: true, camelize: false
      
        field :table_entity, Types::MyTableType, null: true, camelize: false
        
        def resolve(**inputs)''
          entry = Mytable.find(id)
          entry.update!(title: title)
          {
            table_entity: entry
          }
        end
    end
end