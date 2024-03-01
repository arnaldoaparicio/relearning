require 'rspec'
require './lib/credit_check'

RSpec.describe CreditCheck do
  it 'exists' do
    credit_check = CreditCheck.new("5541808923795240",15000)

    expect(credit_check).to be_a CreditCheck
  end

  it 'has a number and a limit' do
    credit_check = CreditCheck.new("5541808923795240",15000)

    expect(credit_check.card_number).to eq("5541808923795240")
    expect(credit_check.limit).to eq(15000)
  end
end