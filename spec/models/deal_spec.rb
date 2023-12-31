require 'rails_helper'

RSpec.describe Deal, type: :model do
  let!(:user) { User.create name: 'John Doe', email: 'johny123@gmail.com', password: '123456' }
  let!(:deal) { Deal.create name: 'Money', amount: 100, author_id: user.id }

  it 'is valid with valid attributes' do
    expect(deal).to be_valid
  end

  it 'is not valid without a name' do
    deal.name = nil
    expect(deal).to_not be_valid
  end

  it 'is not valid without an amount' do
    deal.amount = nil
    expect(deal).to_not be_valid
  end

  it 'belongs to a user' do
    expect(Deal.reflect_on_association(:author).macro).to eq(:belongs_to)
  end

  it 'has many categories' do
    expect(Deal.reflect_on_association(:categories).macro).to eq(:has_and_belongs_to_many)
  end
end
