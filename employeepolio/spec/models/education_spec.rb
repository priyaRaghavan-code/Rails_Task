require 'rails_helper'

RSpec.describe Education, type: :model do
  let(:employee) { Employee.new }
    subject {
      described_class.new(institution_name: "Sample",grade: "Sample",start_date: "2020-03-02",end_date: "2021-03-02", employee: employee)
    }

  describe 'associations' do
    it "has a polymorphic relationship" do
      expect(subject).to belong_to(:employee)
    end
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without college' do
    
      subject.institution_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without degree' do
      subject.grade = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without start_date' do
      subject.start_date = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without end_date' do
      subject.end_date = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid when start date is greater than end_date' do
      subject.end_date = "2020-03-02"
      subject.start_date = "2021-03-02"
      expect(subject).to_not be_valid
    end
  end
end
