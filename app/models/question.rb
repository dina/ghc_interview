class Question < ActiveRecord::Base

  serialize :test_cases, JSON

  def self.random
    i = Random.rand(count) + 1
    Question.find_by_number(i)
  end

  def self.index(i)
    Question.find_by_number(i)
  end
end
