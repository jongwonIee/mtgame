class CreateCombinations < ActiveRecord::Migration[5.0]
  def change
    create_table :combinations do |t|
      t.text    :answer
      t.integer :len

      t.timestamps
    end
  end
end
