require_relative "../housie_ticket"
require "byebug"

describe 'Housie Ticket Generator' do
  let(:ticket) { random_housie_ticket }

  it 'has 3 rows and 9 columns' do
    expect(ticket.size).to eq(3)
    ticket.each do |row|
      expect(row.size).to eq(9)
    end
  end

  it 'each row has exactly 5 numbers' do
    ticket.each do |row|
      filled_count = row.count { |cell| cell.strip != '' }
      expect(filled_count).to eq(5)
    end
  end

  it 'has exactly 15 numbers in total' do
    total_numbers = ticket.flatten.count { |cell| cell.strip != '' }
    expect(total_numbers).to eq(15)
  end

  it 'numbers are within valid column ranges' do
    ticket.each do |row|
      row.each_with_index do |cell, col|
        next if cell.strip == ''
        value = cell.to_i
        lower = col == 0 ? 1 : col * 10
        upper = col == 8 ? 90 : (col + 1) * 10 - 1
        expect(value).to be_between(lower, upper)
      end
    end
  end

  it 'no duplicate numbers in the ticket' do
    numbers = ticket.flatten.reject { |cell| cell.strip == '' }.map(&:to_i)
    expect(numbers.uniq.size).to eq(15)
  end
end

