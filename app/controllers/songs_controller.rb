class SongsController < ApplicationController
  before_action :find_song, only: [:show, :destroy, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to songs_path
  end

  def edit
  end

  def update
    @song.update(song_params)
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist)
  end

  def find_song
    @song = Song.find(params[:id])
  end
end
