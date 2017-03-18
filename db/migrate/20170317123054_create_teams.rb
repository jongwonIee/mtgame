class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string    :name
      t.text      :member
      t.integer   :score, default: 0

      t.timestamps
    end
  end
end
