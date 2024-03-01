require 'rspec'
require './lib/credit_check'

RSpec.describe CreditCheck do
  it 'exists' do
    credit_check = CreditCheck.new("5541808923795240",15000)

    expect(credit_check).to be_a CreditCheck
  end
end