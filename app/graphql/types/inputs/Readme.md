all input type classes here
~~~~~~~~~~~~
module Types
	module Inputs
		class CustomFieldDataInputType < Types::Root::BaseinputObject

		graphql_name = "CustomFieldDataInputType"

		argument1 = {
			"custom_field_id" = "",
			"ID" = "",
			"required" = False,
		}

		argument2 = {
			"value" = "",
			"type" = Types>Scalars>NoType,
			"required" = False,
		}

~~~~~~~~~~~~