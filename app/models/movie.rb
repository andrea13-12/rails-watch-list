class Movie < ApplicationRecord
  validate :title, uniqueness: true
  validate :overview, presence: true
  has_many :bookmark
end
