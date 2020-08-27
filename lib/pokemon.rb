class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id: nil, name:, type:, db: nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end 
  
  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon (name, type)
    VALUES (?, ?)
    SQL
    
    db.exeute(sql, name, type)
    #this time dont need the @id or :conn
  end 
  
  def self.find(id, db)
    sql = <<-SQL
    SELECT * FROM pokemon
    WHERE id = ?
    LIMIT 1
    SQL
  end 
  
end
