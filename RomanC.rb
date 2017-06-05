class RomanNumeralCalculator
  def calculateDigit (myAmount, myPlace)
    if myPlace.to_i == 1
      myLetters = ["I","V"]
    elsif myPlace.to_i == 10
      myLetters = ["X","L"]
    elsif myPlace.to_i == 100
      myLetters = ["C","D"]
    elsif myPlace.to_i == 1000
      myLetters = ["M",""]
    end
    if myAmount.to_i < 4
      myAmount.to_i.times {myDResult += myLetters[1]}
    elsif myAmount.to_i == 4
      myDResult = myLetters[1] + myLetters[2]
    elsif myAmount.to_i == 5
      myDResult += myLetters[2]
    elsif myAmount.to_i > 5
      myDResult = "" + myLetters[2]
      myAmount.to_i -= 5
      myAmount.to_i.times {myDResult += myLetters[1]}
    end
  end
  def caluclateNumber (myNumber)
    myNumber.to_s!
    myPlaceNumber = 10**(myNumber.length-1)
    myNumber.each_char do |c|
      myNResult += calculateDigit (myNumber, myPlaceNumber)
      myPlaceNumber = myPlaceNumber.to_i / 10
    end
  end
end

print "Enter a number: "
convertThis = gets.chomp!
puts RomanNumeralCalculator(convertThis)
