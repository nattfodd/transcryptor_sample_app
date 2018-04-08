class AddSsnVersion < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ssn_version, :string, default: 20180401000000
  end
end
