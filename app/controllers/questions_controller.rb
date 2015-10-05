class QuestionsController < ApplicationController

  def index
    @question = Question.random
  end

  def show
    @question = Question.index(params[:index])
    render :index
  end
end
