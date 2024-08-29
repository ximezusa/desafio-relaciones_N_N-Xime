class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :publication, null: false, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
