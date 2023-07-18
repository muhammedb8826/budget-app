class Categorization < ApplicationRecord
  belongs_to :category
  belongs_to :deal
  belongs_to :user

  # Prevent duplicate categorizations for the same user, category and transaction
  validates :category_id, uniqueness: { scope: %i[transaction_id user_id] }
end
