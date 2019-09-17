class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.integer :parent_id
      t.text :body

      t.timestamps
    end
  end
end
