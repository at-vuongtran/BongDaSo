class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :roles, precence: true
      t.string :name
      t.string :email, unique: true
      t.string :password_digest
      t.string :remember_digest
      t.boolean :activated, default: false
      t.datetime :activated_at
      t.string :reset_digest
      t.datetime :reset_send_at

      t.timestamps
    end
  end
end
