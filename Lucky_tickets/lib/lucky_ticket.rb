module LuckyTicket
  @number = '328940'

  def self.half
    middle = (@number.count @number)/2
    last  = @number.count(@number)

    puts half_left = @number.slice(0...middle)
    puts half_right  = @number.slice(middle..last)

  end
end