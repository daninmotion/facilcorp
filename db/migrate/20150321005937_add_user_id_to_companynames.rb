class AddUserIdToCompanynames < ActiveRecord::Migration
  def change
    add_column :companynames, :user_id, :integer
    add_index :companynames, :user_id
  end
end
