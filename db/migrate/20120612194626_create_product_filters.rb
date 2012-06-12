class CreateProductFilters < ActiveRecord::Migration
  def change
    create_table :product_filters do |t|

      t.timestamps
    end
  end
end
