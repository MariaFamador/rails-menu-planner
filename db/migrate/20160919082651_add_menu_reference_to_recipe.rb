class AddMenuReferenceToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipes, :menu, index: true 
  end
end
