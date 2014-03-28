namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
    make_portfolios
    make_videos
  end
end

def make_users
  User.create!(name:     "Creighton Vaughn",
               email:    "creightonvaughn@gmail.com",
               password: "jk2jk2",
               password_confirmation: "jk2jk2",
               admin: true,
               picture: "http://www.architerials.com/wp-content/uploads/2011/04/Nature_Flowers_Red_striped_tulip__Flowers_008324_.jpg")

  User.create!(name:     "Andy Perez",
               email:    "Agperez@gmail.com",
               password: "caseyokeefe",
               password_confirmation: "caseyokeefe",
               admin: true,
               picture: "http://www.carnivorous--plants.com/graphics/3305-sundew-plant-l2.jpg")

  User.create!(name:     "Isaac Deitz",
               email:    "IsaacDietz@email.com",
               password: "passw0rd",
               password_confirmation:"passw0rd" ,
               admin: true,
               picture: "http://www.whitegadget.com/attachments/pc-wallpapers/140284d1372052304-blue-orchid-blue-orchid-picture-.jpg")
end

def make_portfolios
  Portfolio.create!(feed: "http://poke-problems.tumblr.com",
                    cover_image: "http://fc02.deviantart.net/fs25/f/2008/152/c/b/Suicune_for_Laxia_by_chibi_jen_hen.jpg",
                    bio: "I love Pokemon",
                    user_id: 1)

  Portfolio.create!(feed: "http://isaacdeitz.tumblr.com",
                    cover_image: "http://b.vimeocdn.com/ps/531/177/5311778_300.jpg",
                    bio: "BA videos.",
                    user_id: 3)
end

def make_videos
  Video.create!(url: "79707968",
                cover: "https://lh3.googleusercontent.com/-rpc37qBUSyo/AAAAAAAAAAI/AAAAAAAAAAA/GchiW0GstXM/photo.jpg")

  Video.create!(url: "87489822",
                cover: "http://img1.wikia.nocookie.net/__cb20121004174456/leagueoflegends/images/c/cc/Genja_M5.jpg")
end

def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end

def make_microposts
  users = User.all(limit: 6)
  5.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end