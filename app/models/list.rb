class List < ApplicationRecord
  validate :name, uniqueness: true
  has_many :bookmark
end
