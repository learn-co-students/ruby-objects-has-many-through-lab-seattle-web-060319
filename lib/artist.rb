require 'pry'
require_relative 'song'

class Artist

	attr_accessor :name

	@@all= []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end
	#THESE ARE METHODS!!!!
	def new_song(name, genre)
		Song.new(name, self, genre)
	end

	def songs
		Song.all.select { |song| song.artist == self}
	end

	def genres
		Song.all.collect { |song| song.genre}
	end

end

#binding.pry