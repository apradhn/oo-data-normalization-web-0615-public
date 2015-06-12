require 'tempfile'
require 'pry'
require 'pathname'

class Song
  attr_accessor :title
  attr_reader :artist

  def artist=(artist)
    @artist = artist
  end

  def serialize
    file_name = @title.gsub(" ", "_").downcase+".txt"
    file = File.new("./tmp/#{file_name}", "w+")
    open(file, 'w') { |f|
      f.puts "#{artist.name} - #{title}"
    }
    file
  end
end
