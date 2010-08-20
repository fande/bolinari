Factory.define :genre do |g|
  g.name Faker::Lorem.words(2)
end

Factory.define :artist do |a|
  a.name Faker::Name.name
  a.association :genre
end

Factory.define :album do |g|
  g.name Faker::Lorem.words(2)
  g.association :artist
end

Factory.define :music do |m|
  m.name Faker::Lorem.words(2)
  m.file Faker::Name.first_name
  m.association :album
end
