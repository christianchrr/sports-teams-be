class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :sport
      t.belongs_to :state

      t.timestamps
    end
  end
end
