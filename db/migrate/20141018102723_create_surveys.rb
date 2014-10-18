class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.text :comment
      t.string :user_name
      t.string :user_email

      t.timestamps
    end
  end
end
