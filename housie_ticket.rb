require "byebug"
require 'colorize'
ROW = 3
COLUMNS = 9
NUMBERS_PER_ROW = 5
TOTAL_NUMBERS = 15

def number_pool_for_column(col)
  lower = col == 0 ? 1 : col * 10             #ie. 1,10,20,30..
  upper = col == 8 ? 90 : (col + 1) * 10 - 1  #ie. 9,19,29,39..
  (lower..upper).to_a.shuffle
end

def random_housie
  # 3×9 grid Initialization
  grid = Array.new(ROW) { Array.new(COLUMNS, "  ") }

  row_slots = nil

  loop do
    # Step 1: Choose 5 random COLUMNS for each row
    row_slots = Array.new(ROW) { (0...COLUMNS).to_a.shuffle.take(NUMBERS_PER_ROW).sort }
    # row_slots = Array.new(ROW) { (0...COLUMNS).to_a.take(5).sort }
    all_cols = row_slots.flatten

    
    # Step 2: Count how many times each column is used
    col_count = all_cols.tally
    
    # Step 3: Validate that no column is used more than 3 times
    break if col_count.values.all? { |v| v <= 3 }
  end
  # puts row_slots
  
  # Step 4: For each column, generate required random numbers
  col_values = {}
  (0...COLUMNS).each do |col|
    count = row_slots.count { |r| r.include?(col) }
    col_values[col] = number_pool_for_column(col).take(count).sort
  end

  # Step 5: Fill the grid
  (0...ROW).each do |r|
    row_slots[r].each do |col|
      grid[r][col] = col_values[col].shift.to_s.rjust(2)
      # puts "grid[#{r}][#{col}]--#{grid[r][col]}"
    end
    # puts "\n"
  end
  count = grid.flatten.count { |cell| cell.strip != '' } 
  # Final check
  raise "Invalid ticket: not 15 numbers" unless grid.flatten.reject { |c| c.strip.empty? }.size == TOTAL_NUMBERS
  grid
end

def print_housie_ticket(grid)
  puts "\nHousie Ticket:"
  grid.each do |row|
    puts row.join(" | ").concat("|")
  end
end

# Generate and print 1 ticket
1.upto(1){
  print_housie_ticket(random_housie)
}