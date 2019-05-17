class CreateUserDetail < ActiveRecord::Migration[5.2]

  def up
    create_table :users do |t|
      t.string :name
      t.string :encrypted_mobile_no
      t.string :encrypted_mobile_no_iv
      t.timestamps null: false
    end
  end

  def down
    drop_table(:users)
  end
end
