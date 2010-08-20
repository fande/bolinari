Factory.define :genre do |g|
  g.name Faker::Lorem.words(2)
end


Factory.define :album do |g|
  g.name Faker::Lorem.words(2)
  g.artist_id Factory.create(:artist)
end
