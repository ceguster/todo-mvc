class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :list_id
      t.string  :name
      t.integer :priority
      t.text    :description
      t.timestamps null: false
    end
  end
end
