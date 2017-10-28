class AddDetailsToSearchDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :search_details, :start_address, :string
    add_column :search_details, :start_time, :time
  end
end
