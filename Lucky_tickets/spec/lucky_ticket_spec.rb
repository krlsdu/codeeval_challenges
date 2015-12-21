require './lib/lucky_ticket'
require 'rspec'

describe '::half_number' do

  it 'should cut a number in 2 parts' do

    expect(LuckyTicket.half).to eq "123 456"
  end
end