class CreateRecipes < ActiveRecord::Migration[5.0]
  enable_extension 'hstore' unless extension_enabled?('hstore')
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :category
      t.hstore :procedure, default: {},null: false

      t.timestamps
    end
  end
end
