module Api
    module V1
        class MytablesController < ApplicationController
            def index
                tables = Mytable.order('created_at DESC');
                render json: {status:'SUCCESS',msg: 'Loaded Mytables',data:tables},status: :ok
            end

            def show
                table = Mytable.find(params[:id]);
                puts params[:id]
                render json: {status:'SUCCESS',msg: 'Loaded Mytables',data:table},status: :ok
            end

            def create
                table = Mytable.new(mytable_params);  
                if table.save
                    render json: {status:'SUCCESS',msg: 'saved to Mytables',data:table},status: :ok
                else
                    render json: {status:'ERROR',msg: 'Failed saving Mytables',data:table.errors},status: :ok
                end
            end

            def destroy
                table = Mytable.find(params[:id]);
                table.destroy
                render json: {status:'SUCCESS',msg: 'Deleted Mytables',data:table},status: :ok
            end

            def update
                table = Mytable.find(params[:id]);
                if table.update_attributes(mytable_params)
                    render json: {status:'SUCCESS',msg: 'Updated Mytables',data:table},status: :ok
                else
                    render json: {status:'SUCCESS',msg: 'Failed updates',data:table},status: :ok
                end
            end

            private
            # The keyword private tells Ruby that all methods defined from now on, are supposed to be private. 
            # They can be called from within the object (from other methods that the class defines), but not from outside.
            def mytable_params
                params.permit(:title,:body)
            end
        end
    end
end