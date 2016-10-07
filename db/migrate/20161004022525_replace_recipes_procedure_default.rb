class ReplaceRecipesProcedureDefault < ActiveRecord::Migration[5.0]
  def up
    remove_column :recipes, :procedure, :text
  end

  def down
    add_column :recipes, :procedure, :text, null: true
  end
end
