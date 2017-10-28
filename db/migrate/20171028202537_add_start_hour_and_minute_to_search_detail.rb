class AddStartHourAndMinuteToSearchDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :search_details, :start_hour, :string
    add_column :search_details, :start_minute, :string
  end
end
