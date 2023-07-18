class User < ApplicationRecord
    has_many :categories
    has_many :deals
    has_many :categorizations
end
