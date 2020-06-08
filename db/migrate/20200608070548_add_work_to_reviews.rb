class AddWorkToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :work, foreign_key: true
  end
end
