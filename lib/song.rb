require 'pry'

class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(name, artist, genre)
	  @name = name
	  @artist = artist
	  @genre = genre
		@@count += 1
		@@genres << genre
		@@artists << artist
	end

	def count
		@@count
	end

	def genres
		return @@genres.uniq
	end

	def artists
		return @@artists.uniq
	end

	def genre_count
		count = Hash.new(0)
		@@genres.each do |genre|
			count[genre] += 1
		end
	end

	def artist_count
		count = Hash.new(0)
		@@artists.each do |artist|
			count[artist] += 1
		end
	end
end
