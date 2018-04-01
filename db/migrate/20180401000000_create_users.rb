class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, index: { unique: true }
      t.string :password_hash
      t.string :encrypted_ssn
      t.string :encrypted_ssn_iv

      t.timestamps
    end
  end
end
