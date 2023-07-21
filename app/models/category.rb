class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :deals, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true

  def recent_deals
    deals.order(created_at: :desc)
  end
end
