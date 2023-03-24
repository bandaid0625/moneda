class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.datetime   :start_time,    null: false
      t.integer    :expense_price, null: false
      t.text       :memo
      t.integer    :genre
      t.integer    :category
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
