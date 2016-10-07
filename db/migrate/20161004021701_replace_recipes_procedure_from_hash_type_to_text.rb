class ReplaceRecipesProcedureFromHashTypeToText < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :procedure, :text
  end
end
