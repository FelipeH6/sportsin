class CreateAchievements < ActiveRecord::Migration[7.0]
  def change
    create_table :achievements do |t|
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
