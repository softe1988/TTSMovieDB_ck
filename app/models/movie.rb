class Movie < ActiveRecord::Base
  belongs_to :genre
  has_and_belongs_to_many :actors
end
