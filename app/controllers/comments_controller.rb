class CommentsController < ApplicationController

  def create
    #@topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = current_user.comment.new(comment_params)
    @comment.userid = current_user.id
    if @comment.save
  	 redirect_to [@topic, @post], notice: "Comment saved successfully."
    else
      redirect_to [@topic, @post] notice: "Error creating a comment. Please try again."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end