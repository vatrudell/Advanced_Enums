require 'pry'

class VendingMachine
  attr_reader :inventory
  def initialize
      @inventory = []
  end

  def add_snack(snack)
    @inventory << snack
  end

  def snacks_by_name
    @inventory.collect do |snack|
      snack.name
    end
  end

  def how_many_snacks
    @inventory.group_by do |snack|
      snack.quantity
    end
  end

  def inventory_by_alphabet
    @inventory.group_by do |snack|
      snack.name[0]
    end
  end

  def total_num_items
    #total = 0
    @inventory.reduce(0)  do |total, snack|
      total += snack.quantity
    end
  end

  def first_letters
    string = @inventory.collect do |snack|
      snack.name[0]
    end
    string.join("")
  end

  def change_indexes
    indexes = []
    @inventory.each_with_index do |snack, index|
      indexes << index += 1
    end
    indexes
  end
end
