class UsersController < ApplicationController
  def spotify
    Song.destroy_all
    Playlist.destroy_all
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])

    spotify_user.playlists.each do |spotify_playlist|
      playlist = Playlist.create(name: spotify_playlist.name, spotify_id: spotify_playlist.id)

      offset = 0
      limit = 100
      while (tracks = spotify_playlist.tracks(limit: limit, offset: offset)) && tracks.any?
        tracks.each do |track|
          playlist.songs << Song.create(name: track.name, spotify_id: track.id, artist_name: track.artists.first.name, song_image: track.album.images.first['url'])
        end
        offset += limit
      end
    end

    redirect_to playlists_path
  end
end