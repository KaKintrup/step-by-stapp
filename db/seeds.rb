# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Challenge.destroy_all

user_ids = User.all.sample.id
categories = ["sports", "mindfulness", "self-organisation", "studying", "nutrition", "others"]
Challenge.create!(
  title: "Improve Photography Skills",
  description: "Practice and learn new techniques to enhance photography skills",
  category: categories.sample,
  weekly_goal: (1..7).to_a.sample,
  start_date: "2023-07-01",
  end_date: "2023-11-30",
  public: [true, false].sample,
  user_id: user_ids
)
Challenge.create!(
  title: "Learn Mindfulness Meditation",
  description: "Dedicate time each day to practice mindfulness meditation for mental well-being",
  category: categories.sample,
  weekly_goal: (1..7).to_a.sample,
  start_date: "2023-08-15",
  end_date: "2023-12-15",
  public: [true, false].sample,
  user_id: user_ids
)
Challenge.create!(
  title: "Organize Time Effectively",
  description: "Implement time management strategies for better productivity and efficiency",
  category: categories.sample,
  weekly_goal: (1..7).to_a.sample,
  start_date: "2023-09-01",
  end_date: "2023-12-31",
  public: [true, false].sample,
  user_id: user_ids
)
Challenge.create!(
  title: "Study a New Language",
  description: "Dedicate time every day to learn and practice a new language",
  category: categories.sample,
  weekly_goal: (1..7).to_a.sample,
  start_date: "2023-07-15",
  end_date: "2023-11-15",
  public: [true, false].sample,
  user_id: user_ids
)
Challenge.create!(
  title: "Maintain a Healthy Diet",
  description: "Follow a balanced and nutritious diet for improved well-being",
  category: categories.sample,
  weekly_goal: (1..7).to_a.sample,
  start_date: "2023-08-01",
  end_date: "2023-11-30",
  public: [true, false].sample,
  user_id: user_ids
)
Challenge.create!(
  title: "Explore New Hobbies",
  description: "Try out different hobbies and discover new passions",
  category: categories.sample,
  weekly_goal: (1..7).to_a.sample,
  start_date: "2023-09-15",
  end_date: "2023-12-15",
  public: [true, false].sample,
  user_id: user_ids
)