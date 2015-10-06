class QuestionsController < ApplicationController

  before_action :authenticate_admin!

  def index
    @questions = Question.all
    @question = Question.random
    render :show
  end

  def show
    @questions = Question.all
    @question = Question.number(params[:id])
  end
end
