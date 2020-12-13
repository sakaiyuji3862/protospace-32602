class CommentsController < ApplicationController
  def create
    # binding.pry
    @comment = Comment.new(comment_params)
      @comment.save
      redirect_to prototype_path(@comment.prototype)
    # else
    #   render ("prototypes/show")
    # end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :image).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
