class  Dnd5eClassSpells2::Klass
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
    @@all
  end
  
end