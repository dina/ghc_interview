class Question < ActiveRecord::Base

  has_one :solution

  serialize :test_cases, JSON

  def self.random
    i = Random.rand(count) + 1
    Question.find_by_number(i)
  end

  def self.number(i)
    Question.find_by_number(i)
  end
end
