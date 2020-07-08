class Animal
  def fly
    puts "Animal can fly"
  end
end

class Dog < Animal
end

class Cat < Animal
  def fly
    puts 'This is Cat'
  end
end

dog = Dog.new
dog.fly

cat = Cat.new
cat.fly
