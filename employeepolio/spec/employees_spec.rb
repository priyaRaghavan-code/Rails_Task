require 'rails_helper'

RSpec.describe 'employees', type: :system do
  describe 'home page' do
    it 'shows the right content' do
      visit employees_path
      expect(page).to have_content('Add Employee')
    end
  end

  describe 'show page' do
    it 'is valid with valid attributes' do
      expect(Employee.new).to be_valid
    end
  end

end