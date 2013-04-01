class LikesController < ComtsController
 before_filter :find_comt
  def create

    @like          = Like.new
    @like.user     = current_user
    @like.comt = @comt

   if !current_user.liked_comts.include?(@comt) && @like.save
      redirect_to @comt, notice: "You Liked the comt! Thanks"
    else
      redirect_to @comt, alert: "Sorry you have already been  liked it!!"
    end
  end
  


  def destroy
    @like = Like.find(params[:id])
    if @like.destroy
      redirect_to @comt, notice: "You UnLiked the question!"
    else
      redirect_to @comt, notice: "Sorry you couldn't unlike it!"
    end
  end

end