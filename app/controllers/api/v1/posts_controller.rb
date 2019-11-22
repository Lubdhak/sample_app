module Api
    module V1
        class PostsController < ApplicationController
            def index
                tables = Post.order('created_at DESC');
                render json: {status:'SUCCESS',msg: 'Loaded Posts',data:tables},status: :ok
            end

            def show
                table = Post.find(params[:id]);
                puts params[:id]
                render json: {status:'SUCCESS',msg: 'Loaded Posts',data:table},status: :ok
            end

            def create
                table = Post.new(post_params);  
                if table.save
                    render json: {status:'SUCCESS',msg: 'saved to Posts',data:table},status: :ok
                else
                    render json: {status:'ERROR',msg: 'Failed saving Posts',data:table.errors},status: :ok
                end
            end

            def destroy
                table = Post.find(params[:id]);
                table.destroy
                render json: {status:'SUCCESS',msg: 'Deleted Posts',data:table},status: :ok
            end

            def update
                table = Post.find(params[:id]);
                if table.update_attributes(post_params)
                    render json: {status:'SUCCESS',msg: 'Updated Post',data:table},status: :ok
                else
                    render json: {status:'SUCCESS',msg: 'Failed updates',data:table},status: :ok
                end
            end

            private
            # The keyword private tells Ruby that all methods defined from now on, are supposed to be private. 
            # They can be called from within the object (from other methods that the class defines), but not from outside.
            def post_params
                params.permit(:title,:body)
            end
        end
    end
end