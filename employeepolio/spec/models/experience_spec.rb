require 'rails_helper'

RSpec.describe Experience, type: :model do
  let(:employee) { Employee.new }
    subject {
      described_class.new(company_name: "Sample",location: "Sample",role: "Sample",start_date: "2020-02-03",end_date: "2021-02-03",employement_type:"Full Time", employee: employee)
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

    it 'is not valid without company' do
      subject.company_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without designation' do
      subject.role = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without location' do
      subject.location = nil
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
      subject.end_date = "2020-02-03"
      subject.start_date = "2021-02-03"
      expect(subject).to_not be_valid
    end
  end
end
