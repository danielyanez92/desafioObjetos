class Dog
  attr_accessor :nombre, :raza, :color
  def initialize (hash)
    @nombre=hash[:nombre]
    @raza=hash[:raza]
    @color=hash[:color]
  end
  def ladrar
    puts "#{@nombre} esta ladrando!"
  end
end
h = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
propiedades = Dog.new(h)
propiedades.ladrar
