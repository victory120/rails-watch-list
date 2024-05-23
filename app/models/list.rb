class List < ApplicationRecord
  # Associations
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # validation
  validates :name, presence: true, uniqueness: true
end
