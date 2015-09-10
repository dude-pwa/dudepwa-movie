class CommentsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.build(comment_params)

    if @comment.save
      redirect_to @movie
    end
  end
  private
    def comment_params
      params.require(:comment).permit(:name, :body)
    end
end
