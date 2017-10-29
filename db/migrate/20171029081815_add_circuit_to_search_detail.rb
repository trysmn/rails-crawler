class AddCircuitToSearchDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :search_details, :circuit_display, :boolean
    add_column :search_details, :circuit, :string
  end
end
