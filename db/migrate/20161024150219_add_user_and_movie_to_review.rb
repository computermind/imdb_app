class AddUserAndMovieToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :user, index: true, foreign_key: true
    add_reference :reviews, :movie, index: true, foreign_key: true
  end
end
