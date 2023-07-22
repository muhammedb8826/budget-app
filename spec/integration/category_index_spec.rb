require 'rails_helper'

RSpec.describe 'Categories', type: :system do
  let!(:user) { User.create name: 'John', email: 'john@gmail.com', password: 'password' }
  let!(:category) { Category.create name: 'Food', icon: 'fas fa-utensils', user_id: user.id }
  let!(:category2) { Category.create name: 'Travel', icon: 'fas fa-plane', user_id: user.id }
  let!(:deal) { Deal.create name: 'Burger', amount: 10, author_id: user.id, category_ids: [category.id] }
  let!(:deal2) { Deal.create name: 'Flight', amount: 100, author_id: user.id, category_ids: [category2.id] }

  before do
    sign_in user
    visit categories_path
  end

  it 'shows all categories' do
    expect(page).to have_content 'Food'
    expect(page).to have_content 'Travel'
  end
end
