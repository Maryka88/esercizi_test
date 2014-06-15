class TodoList

  def initialize
    @list = []
  end

  def add(item)
    @list << item
  end

  def remove(item)
    @list.delete(item)
  end

  def each
    @list.each { |p| yield p }
  end

  def length
    @list.length
  end

  def [](id)
    @list[id]
  end
end

class TodoItem
# provide reader and setter for name and state
  attr_accessor :name, :done
  alias_method :done?, :done

  def initialize(name)
# store name
# set state to undone
    @name = name
    @done = false
  end

  def toggle
    @done=!@done
  end

  def to_s
    "Item: #@name Fatto: #@done"
  end
end

uno = TodoItem.new("Fare la spesa.")
due = TodoItem.new("Comprare il giornale.")
tre = TodoItem.new("Portare a spasso il cane.")
quattro = TodoItem.new("Preparare la cena.")
puts uno.done?
uno.toggle
puts uno.done?

puts uno.to_s
puts due.to_s
puts tre.to_s
puts quattro.to_s
uno.done=true
puts uno.done?


lista = TodoList.new
lista.add(uno)
lista.add(due)
puts lista[0]


puts "Nella mia lista ci sono #{lista.length} elementi. Eccoli:"
lista.each  {|item| puts item.to_s}