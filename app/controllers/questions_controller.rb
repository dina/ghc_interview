class QuestionsController < ApplicationController

  def index
    redirect_to Question.random
  end

  def show
    @question = Question.index(params[:index])
  end
end
