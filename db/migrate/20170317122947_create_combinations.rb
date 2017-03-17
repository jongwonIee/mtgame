class CreateCombinations < ActiveRecord::Migration[5.0]
  def change
    create_table :combinations do |t|
      t.string :answer

      t.timestamps
    end
  end
end
