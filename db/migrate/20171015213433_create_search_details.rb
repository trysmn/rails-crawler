class CreateSearchDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :search_details do |t|
      t.integer :number_of_pubs

      t.timestamps
    end
  end
end
