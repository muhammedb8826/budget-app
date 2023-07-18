class User < ApplicationRecord
  has_many :categories
  has_many :deals, foreign_key: :author_id

  validates :name, presence: true
end
