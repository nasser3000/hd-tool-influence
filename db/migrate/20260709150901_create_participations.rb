class CreateParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :participations do |t|
      t.string :first_name
      t.string :last_name
      t.string :instagram_handle
      t.string :email
      t.references :store, null: false, foreign_key: true
      t.string :token
      t.datetime :confirmed_at

      t.timestamps
    end
  end
end
