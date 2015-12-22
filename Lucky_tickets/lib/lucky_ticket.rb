module LuckyTicket
  @number = '328940'

  def self.half
    initial     = 0
    length      = 4
    max         = ('9' * length).to_i
    sum         = 0
    luck_ticket = 0

    (1..max).each { |value|

      value = value.to_s

      middle = (value.count value)/2
      last   = value.count(value)

      half_left  = value.slice(initial..middle)
      half_right = value.slice(middle+1..last)

      sum_l = sum_left(half_left)
      sum_r = sum_right(half_right)

      luck_ticket = luck_ticket + 1 if sum_l == sum_r


    }

    luck_ticket
  end

  def self.sum_left(half_left)
    ary_left = []
    ary_left = half_left.chars
    ary_left.map!(&:to_i)
    ary_left.reduce(:+)
  end

  def self.sum_right(half_right)
    ary_right = []
    ary_right = half_right.chars
    ary_right.map!(&:to_i)
    ary_right.reduce(:+)
  end
end