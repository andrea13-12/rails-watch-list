class List < ApplicationRecord
  has_many :bookmark, dependent: :destroy
  has_many :movie, through: :bookmark
  validate :name, uniqueness: true
end
