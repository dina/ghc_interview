class QuestionsController < ApplicationController

  before_action :authenticate_admin!

  def random
    redirect_to action: :show, id: Question.random.number
  end

  def show
    @questions = Question.all
    @question = Question.number(params[:id])
  end
end
