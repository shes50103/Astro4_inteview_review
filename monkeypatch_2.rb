class Animal
  def fly
    puts "Animal can fly"
  end
end

class Cat < Animal
  def fly
    puts 'This is Cat 1'
    super
    puts 'This is Cat 2'
  end
end

cat = Cat.new
cat.fly
