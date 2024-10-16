class Index
  def initialize
    perform
  end

  def perform
    puts "quel projet voulez vous lancer?"
    puts " - 1  pour enregister les mail avec JSON"
    input = gets.chomp.to_i
    # fonction a lancer pour si j'apuis sur 1
    if input == 1
      Scrapper.new
    end

  end
end