class Mascota
def initialize name
    @name = name
    @sleep = false
    @satisfied = 10 #  Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + '  nace  '
  end
  def walk
    puts 'Haces caminar a ' + @name + '.'
    @satisfied -= 2
    @fullIntestine += 2
    timeLapse
  end
  def feed
    puts "#{@nombre} esta comiendo"
    @satisfied = 10
    timeLapse
  end
  def sleep
    "#{@name} Esta durmiendo"
    @sleep = true
    @satisfied -= 2
    @fullIntestine += 2
    timeLapse
  end
  def timeLapse
    if @satisfied > 0
      #  Mueve el alimento del estomago al intestino.
      @satisfied      = @satisfied      - 1
      @fullIntestine  = @fullIntestine  + 1
    else  #  Nuestro mascota esta hambrienta!
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts '¡' + @name + ' esta hambriento!  En su desesperacion, ¡Murio de Hambre!'
      exit  #  Sale del programa.
    end
    if @fullIntestine  >= 9
      @fullIntestine  = 0
      puts '¡Uy!  ' + @name + ' tuvo un accidente...'
    end
    if hungry?
      if @sleep
        @sleep = false
        puts '¡Se despierta de repente!'
      end
      puts 'El estomago de ' + @name + 'retumba...'
    end
    if needToGo?
      if @sleep
        @sleep = false
        puts 'Se despierta de repente!'
      end
      puts @name + ' hace la danza del baño...'
    end
  end
  def hungry?
    @satisfied <= 2
  end
  def needToGo?
    @fullIntestine == 10
  end
  def bathroom
    puts "#{@nombre} hizo caca"
    @fullIntestine = 0
    timeLapse
  end
end
mascota = Mascota.new('Comenunca')
continuar = true
while continuar = true
  puts 'Menu'
  puts '1. Alimentar a tu mascota'
  puts '2. Hacer dormir a la mascota'
  puts '3. Salir a caminar'
  puts '4. Que vaya al baño'
  puts 'Ingrese opcion '
  opcion = gets.chomp.to_i
  case opcion
  when 1
    puts 'alimentar a mascota'
    mascota.feed
  when 2
    puts 'Hacer dormir a mascota'
    mascota.sleep
  when 3
    puts 'Salir a caminar'
    mascota.walk
  when 4
    puts 'Ir al baño'
    mascota.bathroom
  else
    puts 'Opcion invalida.. '
  end
end
