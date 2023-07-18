class User < ApplicationRecord
    has_many :categories
    has_many :deals, foreign_key: :author_id
    has_many :categorizations

    validates :name, presence: true
end
