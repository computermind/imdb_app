class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
