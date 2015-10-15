class AddPropertyToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :emp_code, :string
    add_column :users, :mobile, :string
  end
end
