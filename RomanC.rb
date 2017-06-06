class RomanNumeralCalculator
  def calculateDigit (myAmount, myPlace)
    if myPlace.to_i == 1
      myLetters = ["I","V","X"]
    elsif myPlace.to_i == 10
      myLetters = ["X","L","C"]
    elsif myPlace.to_i == 100
      myLetters = ["C","D","M"]
    elsif myPlace.to_i == 1000
      myLetters = ["M","",""]
    end
    if myAmount.to_i == 9
      myDResult =  myLetters[0] + myLetters[2]	  
    elsif myAmount.to_i > 6
      myDResult = "" + myLetters[1]
      myAmount.to_i -= 5
      myAmount.to_i.times {myDResult += myLetters[0]}
    elsif myAmount.to_i == 5
      myDResult = myLetters[1]
    elsif myAmount.to_i == 4
      myDResult = myLetters[0] + myLetters[1]
    elsif myAmount.to_i >= 1
     myAmount.to_i.times {myDResult += myLetters[0]}
    elsif myAmount.to_i == 0
      myDResult = ""
    end
	return myDResult
  end
  def calculateNumber (myNumber)
    myNumber = myNumber.to_s
    myPlaceNumber = 10**(myNumber.length-1)
    myNumber.each_char do |ch|
      myNResult += calculateDigit (ch, myPlaceNumber)
      myPlaceNumber = myPlaceNumber.to_i / 10
    end
	return myNResult
  end
end

print "Enter a number: "
convertThis = gets.chomp!
myCalc = RomanNumeralCalculator.new()
puts myCalc.calculateNumber(convertThis)
puts "\n\nAnd now we pause so that you can enjoy looking at the results.\nPress Enter to exit the program."
allDone = gets.chomp!
