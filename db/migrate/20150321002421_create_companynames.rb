class CreateCompanynames < ActiveRecord::Migration
  def change
    create_table :companynames do |t|
      t.string :title
      t.string :name
      t.text :address
      t.text :phone

      t.timestamps
    end
  end
end
