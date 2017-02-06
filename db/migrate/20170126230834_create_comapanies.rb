class CreateComapanies < ActiveRecord::Migration
  def change
    create_table :comapanies do |t|
      t.string :name
      t.string :established
      t.string :intger

      t.timestamps
    end
  end
end
