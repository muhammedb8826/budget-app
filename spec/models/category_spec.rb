require 'rails_helper'

RSpec.describe Category, type: :model do
  let!(:user) { User.create name: 'John Doe' }
  let!(:category) { Category.create name: 'Money', icon: '$', user_id: user.id }

  it 'is valid with valid attributes' do
    expect(category).to be_valid
  end

  it 'is not valid without a name' do
    category.name = nil
    expect(category).to_not be_valid
  end

  it 'is not valid without an icon' do
    category.icon = nil
    expect(category).to_not be_valid
  end

  it 'has many deals' do
    expect(Category.reflect_on_association(:deals).macro).to eq(:has_many)
  end

  it 'has many categorizations' do
    expect(Category.reflect_on_association(:categorizations).macro).to eq(:has_many)
  end

  it 'belongs to a user' do
    expect(Category.reflect_on_association(:user).macro).to eq(:belongs_to)
  end
end
