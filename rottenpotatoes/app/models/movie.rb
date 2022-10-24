class Movie < ActiveRecord::Base
    def self.find_by_director_or_nil title
      movie = Movie.find_by_title(title)
      if movie.nil? or movie.director.nil? or movie.director.blank?
        return nil
      end
      Movie.where(director: movie.director)
    end
  end
  