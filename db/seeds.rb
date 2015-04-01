
main_categories = ["Architecture", "Graphic Design", "Web Design", "Audio & Music", "Film & Video", "Photography", "Writing", "Web Development", "Other"]

Category.delete_all
main_categories.each do |category|
  Category.find_or_create_by(name: category)
end

