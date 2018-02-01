class Punto
  attr_accessor :x, :y
  def initialize(x,y)
    @x=x
    @y=y
  end
end
posicion=[]
posicionX = [1,2,3,4,5,6,7,8,9,10]
posicionY = [1,2,3,4,5,6,7,8,9,10]
10.times do
  posicion << Punto.new(posicionX.sample, posicionY.sample)
end

posicionfinal=[]
posicionfinal = posicion.map { |a| "#{a.x},#{a.y}"}
print posicionfinal
