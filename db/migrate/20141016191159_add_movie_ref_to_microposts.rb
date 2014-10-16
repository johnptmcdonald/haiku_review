class AddMovieRefToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :movie_ref, :string
  end
end
