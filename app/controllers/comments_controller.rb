class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # POST /comments
  # POST /comments.json
  def create
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.create(comment_params)
    redirect_to idea_path(@idea)
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    @idea = Idea.find(params[:idea_id])
    respond_to do |format|
      format.html { redirect_to idea_path(@idea), notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:description, :idea_id)
    end
end