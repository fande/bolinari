Factory.define(:genre, :class => Genre) do |g|
  g.name Faker::Lorem.words(2)
end

Factory.define :artist do |a|
  a.name Faker::Name.name
  a.genre_id Factory.create(:genre)
end

Factory.define :album do |g|
  g.name Faker::Lorem.words(2)
  g.artist_id Factory.create(:artist)
end
