Define your Mutation Classes here

Ex :
~~~~~~~~~~~~
module Mutations
    class ClassName < Mutations::BaseMutation
        
        SmCommonFuncCall
        
        argument_1 = {
            params:"",
            inputType:"",
            required:False,
            default_value:False,
        }

        argument_2 = {
            params:"",
            inputType:"",
            required:False,
            default_value:False,
        }

        return_type_1 = {
            field:"employee",
            inputType:"EmployeeType",
        }

        return_type_2 = {
            field:"employee_count",
            inputType:"EmployeeCountType",
        }

        def resolve(**inputs){
            emp = SomeClass.some_func(inputs,ctx)
            return {employee:emp,employee_count:len(emp)}
        }
~~~~~~~~~~~~