require './lib/parcels_oo'

@dimensions = []

def main_menu
  loop do
    puts "Press 'p' to add parcel or 'v' to view all shipping costs."
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'p'
      add_parcel
    elsif main_choice == 'x'
      puts "Ok thanks, bye"
      exit
    end
  end
end

def add_parcel
  puts "Enter the height of your package (in cm)"
  input_height = gets.chomp
  puts "Please enter its width (in cm)"
  input_width = gets.chomp
  puts "Now please enter the length (in cm)"
  input_length = gets.chomp
  @dimensions << Parcel.new(input_height, input_width, input_length)
  puts "Thank you, now we'll calculate your cost...\n\n"
end

main_menu
