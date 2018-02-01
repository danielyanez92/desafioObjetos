class Carta
  attr_accessor :pinta, :numero
  def initialize(pinta, numero)
    @pinta= pinta
    @numero= numero
  end

end
arreglo_cartas=[]
numero_cartas=[1,2,3,4,5,6,7,8,9,10,11,12]
pinta_cartas=['trebol', 'pica', 'corazon', 'diamante']

continuar = true
while continuar
  puts 'Ingrese Jugar para iniciar el juego'
  puts 'Ingrese mostrar para ver sus cartas'
  puts 'Ingrese salir para finalizar el juego'
  j=gets.chomp.downcase

  case j
  when 'jugar'
    5.times do
      arreglo_cartas.push(Carta.new(pinta_cartas.sample,numero_cartas.sample))
    end
    puts 'Se generaron 5 cartas'

  when 'mostrar'
    arreglo_cartas.each {|a| puts "La carta es un #{a.pinta} y el numero es #{a.numero}"}
    puts 'Debe elegir jugar para inicializar' if arreglo_cartas == []
  when 'salir'
    puts 'ha decidido salir'
    continuar=false
  else
    puts 'ha ingresado una opcion invalida'
  end
end
