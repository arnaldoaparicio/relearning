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

  it 'returns last four digits of card number' do
    credit_check = CreditCheck.new("5541808923795240",15000)

    expect(credit_check.last_four).to eq('5240')
  end

  it 'checks to see if card number is valid' do
    credit_check = CreditCheck.new("5541808923795240",15000)

    expect(credit_check.is_valid?).to eq(true)
  end

  it 'checks to see that an American Express card number is valid' do
    credit_check = CreditCheck.new("342804633855673", 15000)

    expect(credit_check.is_valid_express?).to eq(true)
  end

  it 'checks to see that an American Express card number is invalid' do
    credit_check = CreditCheck.new("342801633855673", 15000)

    expect(credit_check.is_valid_express?).to eq(false)
  end
end