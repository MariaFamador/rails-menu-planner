class MakeRecipeProcedureDefaultNull < ActiveRecord::Migration[5.0]
  def up
    add_column :recipes, :procedure, :text, null: true
  end

  def down
    add_column :recipes, :procedure, :text
  end
end
