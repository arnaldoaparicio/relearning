require './lib/credit_check'

credit_check = CreditCheck.new(ARGV[0],ARGV[1])

p credit_check.is_valid?