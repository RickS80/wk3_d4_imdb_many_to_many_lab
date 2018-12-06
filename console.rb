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


star3 = Star.new({
  'first_name' => 'Judi',
  'last_name' => 'Dench'
  })
star3.save

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


movie3 = Movie.new({
  'title' => 'Philadelphia',
  'genre' => 'biopic'
  })
movie3.save


movie4 = Movie.new({
  'title' => 'Incredibles',
  'genre' => 'children'
  })
movie4.save

casting1 = Casting.new({
  'movie_id' => movie1.id,
  'star_id' => star1.id,
  'fee' => 10000000
  })
casting1.save

casting2 = Casting.new({
  'movie_id' => movie3.id,
  'star_id' => star1.id,
  'fee' => 20000000
  })
casting2.save

casting3 = Casting.new({
  'movie_id' => movie2.id,
  'star_id' => star2.id,
  'fee' => 50000
  })
casting3.save

casting4 = Casting.new({
  'movie_id' => movie1.id,
  'star_id' => star3.id,
  'fee' => 50000
  })
casting4.save




binding.pry
nil
