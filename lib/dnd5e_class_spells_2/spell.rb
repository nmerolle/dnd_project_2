class  Dnd5eClassSpells2::Spell
  
  attr_accessor :name, :desc, :spell_index 
  
  @@all = []
  
  
  def initialize(name:, spell_index:)
    self.name = name
    self.spell_index = spell_index
    self.save
  end
  
  def save 
    @@all << self
  end
    
  def self.all
    @@all
  end

end