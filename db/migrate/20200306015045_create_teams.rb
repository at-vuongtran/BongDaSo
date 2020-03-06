class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.references :tournament, presence: true
      t.string :logo, default: "", length: { maximum: 255 }
    end
  end
end