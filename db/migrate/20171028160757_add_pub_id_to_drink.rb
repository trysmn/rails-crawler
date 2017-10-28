class AddPubIdToDrink < ActiveRecord::Migration[5.0]
  def change
    add_column :drinks, :pub_id, :integer
  end
end
