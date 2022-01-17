Post.destroy_all

10.times do
  Post.create!(title: Faker::Name.name,
               content: Faker::Lorem.paragraph(sentence_count: 2)
              )
end
