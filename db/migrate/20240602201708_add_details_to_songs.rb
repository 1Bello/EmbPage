class AddDetailsToSongs < ActiveRecord::Migration[7.1]
  def change
    add_column :songs, :artist_name, :string
    add_column :songs, :song_image, :string
  end
end
