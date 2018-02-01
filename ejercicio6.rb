class Student
    attr_accessor :name, :notas
    def initialize(name, notas)
        @name = name
        @notas = notas
    end


end
nuevo_a = []
notas = [1,2,3,4,5,6]
nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

nombres.each_with_index do |e,i|
  nuevo_a.push(Student.new(e, notas[i]))
end
notas=[]
notas = nuevo_a.map { |e| e.notas  }
print notas
