class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validate :comment, length: { minimum: 6 }
  validate :movie, uniqueness: { scope: :list }
end
