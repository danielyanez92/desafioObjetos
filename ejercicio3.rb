class Store
  def initialize(name)
    @name=name
  end
  def name
    @name
  end
end
store = Store.new('Tienda 1')
puts store.name
