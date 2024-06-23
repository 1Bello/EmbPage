class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.includes(:songs).all
    end

    def show
        @playlist = Playlist.find(params[:id])
    end


end