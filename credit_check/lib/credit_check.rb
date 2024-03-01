# card_number = "6011797668868728"

# Your Luhn Algorithm Here

class CreditCheck
  attr_reader :card_number, :limit

  def initialize(card_number, credit_limit)
    @card_number = card_number
    @limit = credit_limit
  end
  def luhn_algorithm(credit_card_number)
    element = 0
    credit_array = credit_card_number.split('')
    new_card_number = []
    greater_than_9_card_number = []

    credit_array.each do |number|
      if element.even?
        new_number = number.to_i * 2
        new_card_number << new_number
      else
        new_card_number << number.to_i
      end
      element += 1
    end

    new_card_number.each do |card_number|
      if card_number > 9
        double_number = card_number.to_s.split('').map(&:to_i).sum
        greater_than_9_card_number << double_number
      else
        greater_than_9_card_number << card_number
      end
    end

    validity = greater_than_9_card_number.sum
    if validity % 10 == 0
      p "The number #{credit_card_number} is valid!"
    else
      p "The number #{credit_card_number} is invalid!"
    end
  end
end


  # luhn_algorithm(card_number)
# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"