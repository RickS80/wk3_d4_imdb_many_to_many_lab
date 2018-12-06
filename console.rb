require('pry')
require_relative('models/star')
require_relative('models/movie')
require_relative('models/casting')

star1 = Star.new({
  'first_name' => 'Tom',
  'last_name' => 'Hanks'
  })
star1.save


star2 = Star.new({
  'first_name' => 'Dirk',
  'last_name' => 'Diggler'
  })
star2.save

movie1 = Movie.new({
  'title' => 'Forrest Gump',
  'genre' => 'drama'
  })
movie1.save

movie2 = Movie.new({
  'title' => 'Debbie does Dallas',
  'genre' => 'adult'
  })
movie2.save

casting1 = Casting.new({
  'movie_id' => movie1.id,
  'star_id' => star1.id,
  'fee' => 10000000
  })
casting1.save
binding.pry
nil
