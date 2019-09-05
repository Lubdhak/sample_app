module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :update_table_entry, mutation: Mutations::UpdateTableEntry,
    description: "mutation_1"
  end
end
