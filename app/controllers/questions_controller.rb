class QuestionsController < ApplicationController
  include QuestionHelper
  before_action :current_user?

  def index
  end

  def create
    if params[:comment][:text]
      @question = Post.new(text:params[:comment][:text],type:"Question")
      @question.save
      redirect_to '/questions',:flash=> {:notice => "Question completed"}
    else
      redirect_to "/questions/new",:flash=> {:error =>"You must enter a valid question to ask"}
    end
  end

  def show
  end

  helper_method :questions,:question
end
