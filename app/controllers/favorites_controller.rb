class FavoritesController < ApplicationController

	def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)
    authorize favorite
 
    if favorite.save  
      flash[:notice] = "Marked Favorite"
      redirect_to [post.topic, post]
    else
       flash[:error] = "Error with Favorite."
       redirect_to [post.topic, post]
    end
  end

  def destroy 
  post = Post.find(params[:post_id])
  favorite = current_user.favorites.find(params[:id])
  authorize favorite
 
  if favorite.destroy
    flash[:notice] = "Favorited removed."
    redirect_to [post.topic, post] 
  else
    flash[:error] = "Can't remove favorite, try again."
    redirect_to [@post.topic, @post]   
   end
  end
end
