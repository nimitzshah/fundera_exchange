class AnswersController < ApplicationController

  def create
    if params[:answer][:text]
      answer = Post.new(text:params[:answer][:text],type:"Answer",parent_id:params["parent_id"])
      answer.save
      redirect_to "/questions/#{params["parent_id"]}"
    else
      redirect_to "/questions/#{params["parent_id"]}",:flash => {:error => "You must put in a valid answer" }
    end
  end

  def edit
  end
end
