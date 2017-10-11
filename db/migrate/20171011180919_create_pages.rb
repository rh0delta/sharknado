class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :url, null: false
      t.json :content, null: false

      t.timestamps
    end
  end
end
