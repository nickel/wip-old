class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :type, null: false
      t.string :reference_url
      t.string :topics, array: true, default: []

      t.timestamps
    end
  end
end
