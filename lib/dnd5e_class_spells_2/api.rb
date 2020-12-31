
class  Dnd5eClassSpells2::API 

  BASE_URL = "https://www.dnd5eapi.co/api/"
  SPELL_URL = "https://www.dnd5eapi.co/api/spells/"
  


 def self.get_spell
    response = RestClient.get(BASE_URL + "/spells")
    data = JSON.parse(response)
    
    data["results"].each do |spell_data|
      name = spell_data["name"]
      spell_index = spell_data["index"]
      Dnd5eClassSpells2::Spell.new(name: name, spell_index: spell_index)
    end
end

  def self.get_spell_desc
    spells = Dnd5eClassSpells2::Spell.all
      spells.each do |spell|
      response = RestClient.get(SPELL_URL + "#{spell.spell_index}")
      data = JSON.parse(response)
      spell.desc = data["desc"].join
      spell.klass = data["classes"].name
    end
    binding.pry
  end
  
end