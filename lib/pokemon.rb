class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id: nil, name:, type:, db: nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end 
  
  def self.save 
  end 
  
  def self.find 
  end 
  
end
