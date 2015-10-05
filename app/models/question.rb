class Question < ActiveRecord::Base

  serialize :test_cases, JSON

  def self.random
    i = Random.rand(count)
    Question.all[i] # lol
  end

  def self.index(i)
    Question.all[i.to_i]
  end
end
