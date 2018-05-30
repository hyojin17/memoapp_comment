class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment.content = params[:input_content]
    @comment.memo_id = params[:memo_id]
    @comment.user_email=params[:user_email]
    @comment.save
        
    redirect_to :back#"/notes/#{comment.note.id}"
    
    
  end

  def destroy
   
    #redirect_to @memo
    comment = Comment.find(params[:id])
    comment.destroy
        
    redirect_to :back#"/notes/#{comment.note.id}"
  end
end
