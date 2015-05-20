class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(comment_params)
    @comment.post = @post
    
    if @comment.save
  	 redirect_to [@post.topic, @post], notice: "Comment saved successfully."
    else
      redirect_to [@post.topic, @post], notice: "Error creating a comment. Please try again."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end