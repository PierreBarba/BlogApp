class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.author_id = current_user.id
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) } if @like.save
    end
  end

  private

  def like_params
    params.permit(:author_id, :post_id)
  end
end
