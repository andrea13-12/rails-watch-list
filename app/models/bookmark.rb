class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validate :comment, length: { minimum: 6 }, presence: true
  validate :movie_id, uniqueness: { scope: :list_id }
end
