class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :founder
      t.integer :year

      t.timestamps
    end
  end
end
