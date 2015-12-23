module LuckyTicket

  def self.half
    initial     = 0
    length      = 4
    min         = 100
    max         = ('9' * length).to_i
    luck_ticket = 0

    (min..max).each { |value|

      value = value.to_s

      middle = (value.count value)/2
      last   = value.count(value)

      half_left  = get_part(initial, middle, value)
      half_right = get_part(middle, last, value)

      half_left  = half_left.chars
      half_right = half_right.chars

      if check_size_of_parts(half_left, half_right)

        sum_l       = sum_part half_left
        sum_r       = sum_part half_right
        luck_ticket += 1 if sum_l == sum_r
      end

    }

    luck_ticket
  end

  def self.check_size_of_parts(half_left, half_right)
    (half_left.size).equal? half_right.size
  end

  def self.get_part(start, ending, value)
    value.slice(start...ending)
  end

  def self.sum_part(number)
    number.map!(&:to_i)
    number.reduce(:+)
  end
end