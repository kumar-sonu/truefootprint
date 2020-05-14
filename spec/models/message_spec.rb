require 'rails_helper'

RSpec.describe Message do
  subject { FactoryBot.build(:message) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a body' do
    subject.body = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a sender' do
    subject.sender = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a posted_at' do
    subject.posted_at = nil
    expect(subject).to_not be_valid
  end
end
