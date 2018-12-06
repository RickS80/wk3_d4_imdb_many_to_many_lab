require_relative('../db/sql_runner')

class Movie

attr_accessor :title, :genre
attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
  end

  def save()
    sql = "INSERT INTO movies (title, genre)
          VALUES ($1, $2)
          RETURNING id"
    values = [@title, @genre]
    @id = SqlRunner.run(sql, values).first['id'].to_i
  end

  def stars()
    sql = "SELECT stars.* FROM stars
INNER JOIN castings ON stars.id = castings.star_id
INNER JOIN movies ON castings.movie_id = movies.id
WHERE castings.movie_id = $1
    "
    values = [@id]
    star_hash = SqlRunner.run(sql, values)
    star_hash.map { |star| Star.new(star)}
  end
end
