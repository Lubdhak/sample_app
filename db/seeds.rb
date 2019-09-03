5.times do
    Mytable.create({
    title: Faker::Book.title,
    body: Faker::Lorem.sentence
})
end