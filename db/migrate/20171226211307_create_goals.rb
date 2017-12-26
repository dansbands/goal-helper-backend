class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :notes
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
