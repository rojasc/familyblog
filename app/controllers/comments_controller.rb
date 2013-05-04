class CommentsController < ApplicationController

	def index
		@comments = Comment.find_all_by_post_id(params[:post_id])

		respond_to do |format|
			#format.html { render '_comments' }
			#format.json { render json: {data: {comments: @comments}} }
		end
	end

	def create
		@comment = Comment.new(params[:comment])

		respond_to do |format|
      if @comment.save
        format.json { render json: @comment, status: :created }
      else
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
	end
end
