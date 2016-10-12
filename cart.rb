class Cart

  attr_reader :items

  include ItemContainer

  def initialize(owner)
    @items = []
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each { |i| f.puts i } # car:100:5
    end
  end

  def read_from_file
    #return unless File.exist?("#{@owner}_cart.txt")
    File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item }
    @items.uniq!
  rescue Errno::ENOENT
    File.open("#{@owner}_cart.txt", "w") {}
    puts "File #{@owner}_cart.txt created"
    end

  end

end



# item_fields.map! { |i| i.chomp }                    # "car:100:50"
# item_fields.map! { |i| i.split(":") }               # ["car", "100", "50"]
# item_fields.each { |i| @items << RealItem.new(name: i[0], price: i[1].to_i, weight: i[2].to_i) }
