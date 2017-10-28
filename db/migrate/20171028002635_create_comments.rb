class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :description
      t.references :idea, foreign_key: true

      t.timestamps
    end
  end
end
