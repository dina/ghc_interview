class SolutionsController < ApplicationController

  def show
    @questions = Question.all
    @question = Question.find_by_number(params[:question_id])
    @solution = @question.solution
  end

end
