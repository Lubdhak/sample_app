# frozen_string_literal: true

module Types
    module Inputs
        class ChangeTitleInputType < Types::Root::BaseInputObject
            graphql_name("ChangeTitle")
            argument :number , Enums::ChangeTitleEnum, required: true

        end
    end
end
  