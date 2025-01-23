class CommenttsController < ApplicationController
  def commentt_params
    params.require(:commentt).permit(:content, :user_id)
  end

  def create
    @post = Post.find(params[:post_id])

    @post.commentts.create!(commentt_params.merge(user: current_user))

    redirect_to @post
  end
end
