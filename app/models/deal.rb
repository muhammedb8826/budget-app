class Deal < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :categorizations
  has_many :categories, through: :categorizations

  validates :name, presence: true
  validates :amount, presence: true
end
