require 'csv'
#csv located in: /movie-war-backend/lib/seeds
csv_text = File.read(Rails.root.join('lib', 'seeds', 'imdb.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Card.new
  t.tconst = row['tconst']
  t.title = row['title']
  t.year = row['year']
  t.runtime = row['runtime']
  t.genre = row['genre']
  t.director = row['director']
  t.rating = row['rating']
  t.num_votes = row['num_votes']
  t.img_url = row['img_url']
  t.save
  puts "#{t.tconst}, #{t.title},#{t.year}, #{t.runtime}, #{t.genre}, #{t.director}, #{t.rating},#{t.num_votes},#{t.img_url} saved"
end
puts "There are now #{Card.count} rows in the Card table"


# Example:
# Card.create(tconst: "tt0031381", title: "Gone with the Wind", year:1939, runtime: 238, genre: "Drama,History,Romance", director: "", rating: 8.1, num_votes: 267315, img_url: "https://m.media-amazon.com/images/M/MV5BYjUyZWZkM2UtMzYxYy00ZmQ3LWFmZTQtOGE2YjBkNjA3YWZlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,652,1000_AL_.jpg")



