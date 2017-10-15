class CreatePubs < ActiveRecord::Migration[5.0]
  def change
    create_table :pubs do |t|
      t.string :name
      t.time :opening_time
      t.time :closing_time
      t.boolean :food

      t.timestamps
    end
  end
end
