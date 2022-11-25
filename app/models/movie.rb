class Movie < ApplicationRecord
  has_many :bookmark, dependent: :destroy
  validate :title, uniqueness: true, presence: true
  validate :overview, presence: true
end
