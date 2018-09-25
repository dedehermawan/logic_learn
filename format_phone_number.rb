class FormatPhoneNumber
  def format(number)
    number = number.gsub(/[^0-9]/,'').scan(/.{1,3}/)
    for i in (0...number.length)
      if number[i].length == 1
        number[i] = number[i-1][2] + number [i]
        number[i-1] = number[i-1][0..1]
      end
    end
    result = number.join('-')
  end
end

phone = FormatPhoneNumber.new
puts phone.format('022 - 032 2368 4')
puts phone.format('022 - 032 2368')
puts phone.format('022 - 032 236')

