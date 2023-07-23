require 'rails_helper'

RSpec.describe 'Categories', type: :system do
  let!(:user) { User.create name: 'Test User', email: 'test@123', password: '123456' }
  let!(:category) { Category.create name: 'Test Category', icon: 'test', user_id: user.id }
  let!(:deal) { Deal.create name: 'Test Deal', amount: 100, author_id: user.id, category_ids: [category.id] }

  before do
    sign_in user
    visit categories_path
  end

    it 'shows the category name' do
        expect(page).to have_content('Test Category')
    end
end
