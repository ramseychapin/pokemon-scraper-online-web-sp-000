class Pokemon

  attr_reader :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

<<<<<<< HEAD
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type) VALUES (?, ?);
    SQL

    db.execute(sql, name, type)
  end

  def self.find(id, db)
    sql = <<-SQL
      SELECT * FROM pokemon WHERE id = ?;
    SQL

    given_pokemon = db.execute(sql, id).flatten
    Pokemon.new(id: given_pokemon[0], name: given_pokemon[1], type: given_pokemon[2], db: db)
  end
=======
  def save(name, type, db)

  end

  def find(id)

  end


>>>>>>> 9ef569c7c6ed2101c52a13babf8df8fce79d00f9
end
