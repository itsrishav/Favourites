class CreateSavedTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_titles do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
