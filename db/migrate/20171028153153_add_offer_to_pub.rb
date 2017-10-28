class AddOfferToPub < ActiveRecord::Migration[5.0]
  def change
    add_column :pubs, :offer, :boolean
    add_column :pubs, :address, :string
  end
end
