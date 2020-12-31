class  Dnd5eClassSpells::Klass
  attr_accessor :name, :klass_index
  
  @@all = []
  
  def initialize(name:, klass_index:)
    self.name = name
    self.klass_index = klass_index
    @spells = []
    self.save
  end
  
  def save 
    @@all << self
  end
    
  def self.all
    Dnd5eClassSpells::API.get_klasses if @@all.empty? 
    @@all
  end
  
end