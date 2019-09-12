# frozen_string_literal: true

module Types
    class Mycq_one_Type < Types::Root::BaseObject
        graphql_name "Mycq_one_Type_name"
        description "Mycq_one_Type_description"

        field :has_percentage_model, Boolean
        field :incomplete_data, Boolean
        field :spend, [Types::Mycq_two_Type]
    end

    class Mycq_two_Type < Types::Root::BaseObject
        graphql_name "Mycq_two_Type_name"
        description "Mycq_two_Type_description"
    
        field :Working, Boolean
    end


end
  