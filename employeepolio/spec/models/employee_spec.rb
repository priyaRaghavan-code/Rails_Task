require 'rails_helper'

RSpec.describe Employee, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      employee = Employee.new(email: 'Sample@gmail.com')
      expect(employee).to_not be_valid
    end

    it 'ensures email presence' do
      employee = Employee.new(name: 'Sample')
      expect(employee).to_not be_valid
    end

    it 'ensures email format' do
      employee = Employee.new(name: 'sample',email: 'Sample')
      expect(employee).to_not be_valid
    end

  end
end
