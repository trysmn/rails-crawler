class AddCityIdToSearchDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :search_details, :city_id, :integer
  end
end
