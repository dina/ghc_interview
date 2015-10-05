class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.text :content
      t.text :test_cases
      t.string :format
    end
  end
end
