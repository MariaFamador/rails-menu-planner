class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :label
      t.string :amount
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
