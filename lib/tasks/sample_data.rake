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
  User.create!(name:     "Creighton",
               email:    "creightonvaughn@gmail.com",
               password: "jk2jk2",
               password_confirmation: "jk2jk2",
               admin: true,
               picture: "http://www.architerials.com/wp-content/uploads/2011/04/Nature_Flowers_Red_striped_tulip__Flowers_008324_.jpg",
               last_name: "Vaughn")

  User.create!(name:     "Andy",
               email:    "Agperez@gmail.com",
               password: "caseyokeefe",
               password_confirmation: "caseyokeefe",
               admin: true,
               picture: "http://www.carnivorous--plants.com/graphics/3305-sundew-plant-l2.jpg",
               last_name: "Perez")

  User.create!(name:     "Isaac",
               email:    "IsaacDietz@email.com",
               password: "passw0rd",
               password_confirmation:"passw0rd" ,
               admin: true,
               picture: "http://www.whitegadget.com/attachments/pc-wallpapers/140284d1372052304-blue-orchid-blue-orchid-picture-.jpg",
               last_name: "Dietz")
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

  Portfolio.create!(feed: "http://stickytraps.tumblr.com/",
                    cover_image: "http://upload.wikimedia.org/wikipedia/commons/4/4b/Meal_worm_in_venus_fly_trap_1.jpg",
                    bio: "I love Plants",
                    user_id: 2)
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