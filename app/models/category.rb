class Category < ApplicationRecord
  belongs_to :user
  has_many :categorizations
  has_many :deals, through: :categorizations
end
