module Types
  module Root
    class MutationType < Types::Root::BaseObject
      graphql_name "Mutation"
      description "The mutation root for this schema"
      # TODO: remove me
      field :update_table_entry, mutation: Mutations::UpdateTableEntry,
      description: "mutation_1"
      # ------------------------------------------------------------------------
      field :change_title, mutation: Mutations::ChangeTitle,
      description: "This_is_change_title"
      # ------------------------------------------------------------------------
    end
  end
end
