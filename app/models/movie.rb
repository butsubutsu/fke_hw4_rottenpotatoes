class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.same_director(id)
    film=Movie.find_by_id(id)
    return Movie.find_all_by_director(film.director)
  end
end
