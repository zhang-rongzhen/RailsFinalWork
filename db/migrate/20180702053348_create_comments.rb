class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :rsname
      t.string :city
      t.text :content
      t.text :imgURL1
      t.text :imgURL2
      t.text :imgURL3
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
