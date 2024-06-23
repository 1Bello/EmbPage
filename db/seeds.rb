User.delete_all

User.create([
    { name: "Tomás", email: "tomas@example.com", password: "password1" },
    { name: "Emma", email: "emma@example.com", password: "password2" },
    { name: "Liam", email: "liam@example.com", password: "password3" },
    { name: "Olivia", email: "olivia@example.com", password: "password4" },
    { name: "Noah", email: "noah@example.com", password: "password5" },
  ])


start_date = Time.parse('2020-01-01')
end_date = Time.now

Post.create([
    { title: "First Post", content: "Content for the first post.", user_id: 1, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) },
    { title: "Second Post", content: "Content for the second post.", user_id: 2, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) },
    { title: "Third Post", content: "Content for the third post.", user_id: 3, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) },
    { title: "Fourth Post", content: "Content for the fourth post.", user_id: 4, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) },
    { title: "Fifth Post", content: "Content for the fifth post.", user_id: 5, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) },
    { title: "Sixth Post", content: "Content for the sixth post.", user_id: 6, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) },
    { title: "Seventh Post", content: "Content for the seventh post.", user_id: 7, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) },
    { title: "Eighth Post", content: "Content for the eighth post.", user_id: 8, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) },
    { title: "Ninth Post", content: "Content for the ninth post.", user_id: 9, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) },
    { title: "Tenth Post", content: "Content for the tenth post.", user_id: 10, published_at: Time.at(rand(start_date..end_date)), answers_count: rand(0..20), likes_count: rand(0..200) }
  ])