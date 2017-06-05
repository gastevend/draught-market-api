class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
