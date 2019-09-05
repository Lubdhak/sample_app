All Types Classes here 

module Types
    class UserType < Types::Root::BaseObject

    graphql_name = "UserType"
    description = "User Entity"

    field = {
        employee = employee()
        type = EmployeeType
    }

    argument = {
        status = employee()
        type = EmployeeType
    }

    employee(){
        <!-- ActiveRecord Query -->
        

    }

    status = <!-- Resolver -->