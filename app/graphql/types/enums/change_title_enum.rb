# frozen_string_literal: true

module Types
    module Enums
        class ChangeTitleEnum < Types::Root::BaseEnum
            description "Choose a Number for my mutation"
            value("One","one-aa")
            value("Two", "two-aa")
            value("Three", "three-aa")
        end
    end
end
  