class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    # Return the name of the genre this song belongs to.
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # use .find_or_create_by on Artist class
    # .update on song instance so that the artist is now Drake (using drake variable)
    drake = Artist.find_or_create_by(name: "Drake")
    self.update(artist: drake)
  end
end