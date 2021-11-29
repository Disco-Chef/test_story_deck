categories = %w[18-25 26-35 36-45 tech garden kitchen fashion retro steampunk]

Category.destroy_all
Story.destroy_all
Business.destroy_all
Creator.destroy_all
User.destroy_all

# CATEGORIES 👇

categories.each do |category_name|
  p Category.create!(
    name: category_name
  )
end


# BUSINESS STUFF 👇

p business_owner_leyla = User.create!(
  first_name: "Leyla",
  last_name: "Opalopa",
  email: "l@l.l",
  password: "123123",
  business_owner: true
)

p business_owner_hans = User.create!(
  first_name: "Hans",
  last_name: "Ailaviu",
  email: "h@h.h",
  password: "123123",
  business_owner: true
)

p hans_business1 = Business.create!(
  user: business_owner_hans,
  name: "Hans' Emporium",
  description: Faker::Company.bs,
  website: Faker::Internet.url
)

p hans_business2 = Business.create!(
  user: business_owner_hans,
  name: "Hans' Exportium",
  description: Faker::Company.bs,
  website: Faker::Internet.url
)


p leyla_business1 = Business.create!(
  user: business_owner_leyla,
  name: "Leyla's Emporium",
  description: Faker::Company.bs,
  website: Faker::Internet.url
)

p leyla_business2 = Business.create!(
  user: business_owner_leyla,
  name: "Leyla's Exportium",
  description: Faker::Company.bs,
  website: Faker::Internet.url
)

p hans_story1_business1 = Story.create!(
  title: "Great Imports 15% off!",
  description: Faker::Company.bs,
  published: true,
  business: hans_business1
)
p hans_story1_business1.categories << Category.all.sample

p hans_story2_business1 = Story.create!(
  title: "Great Imports 25% off!",
  description: Faker::Company.bs,
  published: true,
  business: hans_business1
)
p hans_story2_business1.categories << Category.all.sample


p hans_story1_business2 = Story.create!(
  title: "Great Exports 15% off!",
  description: Faker::Company.bs,
  published: true,
  business: hans_business2
)
p hans_story1_business2.categories << Category.all.sample


p hans_story2_business2 = Story.create!(
  title: "Great Exports 25% off!",
  description: Faker::Company.bs,
  published: true,
  business: hans_business2
)
p hans_story2_business2.categories << Category.all.sample


p leyla_story1_business1 = Story.create!(
  title: "Great Imports 15% off!🐞",
  description: Faker::Company.bs,
  published: true,
  business: leyla_business1
)
p leyla_story1_business1.categories << Category.all.sample


p leyla_story2_business1 = Story.create!(
  title: "Great Imports 25% off!🐞",
  description: Faker::Company.bs,
  published: true,
  business: leyla_business1
)
p leyla_story2_business1.categories << Category.all.sample


p leyla_story1_business2 = Story.create!(
  title: "Great Exports 15% off!🐞",
  description: Faker::Company.bs,
  published: true,
  business: leyla_business2
)
p leyla_story1_business2.categories << Category.all.sample


p leyla_story2_business2 = Story.create!(
  title: "Great Exports 25% off!🐞",
  description: Faker::Company.bs,
  published: true,
  business: leyla_business2
)
p leyla_story2_business2.categories << Category.all.sample


# CREATOR STUFF 👇

p user_celine = User.create!(
  first_name: "Celine",
  last_name: "Dujardin",
  email: "c@c.c",
  password: "123123",
  business_owner: false
)

p user_alain = User.create!(
  first_name: "Alain",
  last_name: "Terrieur",
  email: "a@a.a",
  password: "123123",
  business_owner: false
)

p celine_creator = Creator.create!(
  stage_name: "Celine Dion",
  user: user_celine,
  description: Faker::Company.bs,
  website: Faker::Internet.url
)
p celine_creator.categories << Category.all.sample

p alain_creator = Creator.create!(
  stage_name: "AlainusMassimus",
  user: user_alain,
  description: Faker::Company.bs,
  website: Faker::Internet.url
)
p alain_creator.categories << Category.all.sample
