class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      
      # t.references :work, foreign_key: true
      t.text :comment
      t.timestamps
    end
  end
end
